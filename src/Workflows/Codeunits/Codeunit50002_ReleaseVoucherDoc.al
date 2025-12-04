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

    var
        Text003: Label 'The approval process must be cancelled or completed to reopen this document.';
}