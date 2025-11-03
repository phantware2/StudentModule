codeunit 50001 "Custom Workflow Mgmt"
{
    procedure CheckApprovalsWorkflowEnabled(var RecRef: RecordRef): Boolean
    begin
        if not WorkflowMgt.CanExecuteWorkflow(RecRef, GetWorkflowCode(RunWorkflowOnSendForApprovalCode, RecRef)) then begin

            Error(NoWorkflowEnabledErr);
        end;
        exit(true);
    end;

    procedure GetWorkflowCode(WorkflowCode: Code[128]; RecordRef: RecordRef): Code[128]
    begin
        exit(DelChr(StrSubstNo(WorkflowCode, RecordRef.Name), '=', ' '))
    end;

    [IntegrationEvent(false, false)]
    procedure OnSendWorkflowForApproval(var RecordRef: RecordRef)
    begin

    end;

    [IntegrationEvent(false, false)]
    local procedure OnCancelWorkflowForApproval(var RecordRef: RecordRef)
    begin
    end;

    var
        WorkflowMgt: Codeunit "Workflow Management";
        RunWorkflowOnSendForApprovalCode: Label 'RunWorkflowOnSend%1ForApprovalCode';
        RunWorkflowOnCancelForApprovalCode: Label 'RunWorkflowOnCancel%1ForApprovalCode';
        NoWorkflowEnabledErr: Label 'No approval workflow for this record type is enabled.';
}