codeunit 50001 "Voucher Header Workflow"
{
    procedure CheckApprovalsWorkflowEnabled(var RecRef: RecordRef): Boolean
    begin
        if not WorkflowMgt.CanExecuteWorkflow(RecRef, WorkflowEventHandling RunWorkflowOnSendVendorForApprovalCode()) then begin

            Error(NoWorkflowEnabledErr);
        end;
        exit(true);
    end;

    var
        WorkflowMgt: Codeunit "Workflow Management";



}