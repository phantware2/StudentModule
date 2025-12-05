codeunit 50002 ReleaseVoucherDocument
{
    trigger OnRun()
    begin

    end;

    //Check if Voucher Header is pending approval 
    procedure IsVoucherHeaderPendingApproval(recordRef: RecordRef): Boolean
    var
        AllDocumentWorkflow: Codeunit "Custom Workflow Mgmt";
        voucherHeader: Record "Voucher Header";
    begin
        if VoucherHeader.status <> VoucherHeader.status::Open then
            exit(false);

        exit(AllDocumentWorkflow.CheckApprovalsWorkflowEnabled(recordRef))
    end;


    procedure PerformManualReopen(voucherHeader: Record "Voucher Header")
    begin
        CheckReopenStatus(voucherHeader);
    end;

    local procedure CheckReopenStatus(voucherHeader: Record "Voucher Header")

    begin
        if voucherHeader.Status = voucherHeader.Status::"Pending Approval" then
            Error(Text003);
    end;


    procedure CreateBRVFromBankRequest(var BankRequest: Record "Voucher Header")
    var
        GLSetup: Record "General Ledger Setup";
        VoucherHeader: Record "Voucher Header";
        GenJnlLine: Record "Gen. Journal Line";
        GenJnlLine2: Record "Gen. Journal Line";
        PostedVoucherHeader: Record "Posted Voucher Header";
        Customer: Record Customer;
        RecordLinks: Record "Record Link";
        UserSetup: Record "User Setup";
        LineNo: Integer;
        BRVNumberLbl: Label 'Bank Receipt Voucher %1 created', Comment = '%1-Bank receipt number';
    begin
        // Implementation for creating BRV from released voucher document
        UserSetup.Get(UserId);
        UserSetup.TestField(UserSetup."Allow to Create BRV");
        BankRequest.TestField("Customer No.");
        BankRequest.TestField(Status, BankRequest.Status::Released);
        Customer.Get(BankRequest."Customer No.");
        if Customer."SG_ Retail Customer" then
            BankRequest.TestField("ProspectiveStudentID");
        BankRequest.TestField("Receipt Amount");
        VoucherHeader.Init();
        VoucherHeader."Voucher Type" := VoucherHeader."Voucher Type"::BRV;
        VoucherHeader."Posting Date" := BankRequest."Posting Date";
        VoucherHeader.Validate(Nature, BankRequest.Nature);
        VoucherHeader."Responsibility Center" := BankRequest."Responsibility Center";
        VoucherHeader."Request No." := BankRequest."Document No.";
        VoucherHeader."Depositor Name" := BankRequest."Depositor Name";
        VoucherHeader."Paid Date" := BankRequest."Paid Date";
        VoucherHeader.Insert();
        RecordLinks.Reset();
        RecordLinks.SetFilter("Record ID", Format(BankRequest.RecordId));
        RecordLinks.FindSet();
        RecordLinks.ModifyAll("Record ID", VoucherHeader.RecordId);

        GenJnlLine2.SetRange("Journal Template Name", 'BRV');
        GenJnlLine2.SetRange("Journal Batch Name", 'BRV');
        IF GenJnlLine2.FindFirst() then;
        LineNo := GenJnlLine2."Line No." + 10000;
        GenJnlLine.Init();
        GenJnlLine."Document No." := VoucherHeader."Document No.";
        GenJnlLine."Posting Date" := VoucherHeader."Posting Date";
        GenJnlLine."Document Type" := GenJnlLine."Document Type"::Payment;
        IF VoucherHeader.Nature = 2 then
            GenJnlLine."Document Type" := GenJnlLine."Document Type"::Refund;
        GenJnlLine."Journal Template Name" := 'BRV';
        GenJnlLine."Journal Batch Name" := 'BRV';
        GenJnlLine."Voucher Type" := VoucherHeader."Voucher Type"::BRV;
        GenJnlLine.Validate("Account Type", GenJnlLine."Account Type"::Customer);
        GenJnlLine.Validate("Account No.", BankRequest."Customer No.");
        GenJnlLine."Source Document No." := BankRequest."Document No.";
        GenJnlLine."Depositor Name" := BankRequest."Depositor Name";
        GenJnlLine."Paid Date" := BankRequest."Paid Date";
        GenJnlLine.ProspectiveStudentID := BankRequest.ProspectiveStudentID;
        GenJnlLine."Receipt Amount" := BankRequest."Receipt Amount";
        if BankRequest."Global Dimension 1 Code" <> '' then
            GenJnlLine.Validate("Shortcut Dimension 1 Code", BankRequest."Global Dimension 1 Code");
        if BankRequest."Global Dimension 2 Code" <> '' then
            GenJnlLine.Validate("Shortcut Dimension 2 Code", BankRequest."Global Dimension 2 Code");
        GenJnlLine.Narration := BankRequest.Narration;
        if GenJnlLine."Account Type" = GenJnlLine."Account Type"::Customer then
            if Format(VoucherHeader.Nature) <> '' then
                GenJnlLine.Validate(Nature, BankRequest.Nature);
        GenJnlLine.Insert(true);

        // Bank
        LineNo := LineNo + 10000;
        GenJnlLine.Init();
        GenJnlLine."Document No." := VoucherHeader."Document No.";
        GenJnlLine."Posting Date" := VoucherHeader."Posting Date";
        GenJnlLine."Document Type" := GenJnlLine."Document Type"::Payment;
        if VoucherHeader.Nature = 2 then
            GenJnlLine."Document Type" := GenJnlLine."Document Type"::Refund;
        GenJnlLine."Line No." := LineNo;
        GenJnlLine."Journal Template Name" := 'BRV';
        GenJnlLine."Journal Batch Name" := 'BRV';
        GenJnlLine."Voucher Type" := GenJnlLine."Voucher Type"::BRV;
        GenJnlLine.Validate("Account Type", GenJnlLine."Account Type"::"Bank Account");
        GenJnlLine.Validate("Account No.", BankRequest."Bank No.");

        GenJnlLine."Source Document No." := VoucherHeader."Document No.";
        GenJnlLine."Depositor Name" := VoucherHeader."Depositor Name";
        GenJnlLine."Paid Date" := VoucherHeader."Paid Date";
        GenJnlLine.Validate("Debit Amount", BankRequest."Debit Amount");
        if BankRequest."Global Dimension 1 Code" <> '' then
            GenJnlLine.Validate("Shortcut Dimension 1 Code", BankRequest."Global Dimension 1 Code");
        if BankRequest."Global Dimension 2 Code" <> '' then
            GenJnlLine.Validate("Shortcut Dimension 2 Code", BankRequest."Global Dimension 2 Code");
        GenJnlLine.Narration := BankRequest.Narration;
        GenJnlLine.Validate(Nature, VoucherHeader.Nature);
        GenJnlLine.Insert(true);

        // PostedVoucherHeader.Init();
        // PostedVoucherHeader.TransferFields(BankRequest);
        // PostedVoucherHeader.Insert();
        // BankRequest.Delete();
        // GLSetup.Get()

    end;

    var
        Text003: Label 'The approval process must be cancelled or completed to reopen this document.';
}