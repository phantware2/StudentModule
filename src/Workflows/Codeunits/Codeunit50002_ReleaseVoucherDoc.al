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
        UserSetup.TestField();
    end;



    var
        Text003: Label 'The approval process must be cancelled or completed to reopen this document.';
}