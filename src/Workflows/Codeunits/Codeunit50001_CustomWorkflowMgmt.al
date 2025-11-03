codeunit 50001 "Custom Workflow Mgmt"
{
    // --------------------------------------------------------Second Step: Check if Worflow is enabled----------------------------------------------------
    procedure CheckApprovalsWorkflowEnabled(var RecRef: RecordRef): Boolean
    begin
        if not WorkflowMgt.CanExecuteWorkflow(RecRef, GetWorkflowCode(RunWorkflowOnSendForApprovalCode, RecRef)) then begin

            Error(NoWorkflowEnabledErr);
        end;
        exit(true);
    end;

    // -----------------------------------------------------------First Step: Check if Worflow is enabled -------------------------------------------------

    procedure GetWorkflowCode(WorkflowCode: Code[128]; RecordRef: RecordRef): Code[128]
    begin
        exit(DelChr(StrSubstNo(WorkflowCode, RecordRef.Name), '=', ' '))
    end;
    // -----------------------------------------------------------Third Step: Raise Event Integration -----------------------------------------------------
    [IntegrationEvent(false, false)]
    procedure OnSendWorkflowForApproval(var RecordRef: RecordRef)
    begin

    end;

    [IntegrationEvent(false, false)]
    local procedure OnCancelWorkflowForApproval(var RecordRef: RecordRef)
    begin
    end;
    // ----------------------------------------------------------------- Raise Event Integration ----------------------------------------------------------

    // --------------------------------------------------------------Fourth Step: Add Event to the Library-------------------------------------------------

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Event Handling", OnAddWorkflowEventsToLibrary, '', false, false)]
    local procedure OnAddWorkflowEventsToLibrary()
    var
        RecordRef: RecordRef;
        WorkflowEventHandling: Codeunit "Workflow Event Handling";
    begin
        RecordRef.Open(Database::"Custom Workflow Header");
        WorkflowEventHandling.AddEventToLibrary(GetWorkflowCode(RunWorkflowOnSendForApprovalCode, RecordRef), DATABASE::"Custom Workflow Header",
          GetWorkflowEventDesc(WorfkflowSendForApprovalEventDescTxt, RecordRef), 0, false);
        WorkflowEventHandling.AddEventToLibrary(GetWorkflowCode(RunWorkflowOnCancelForApprovalCode, RecordRef), DATABASE::"Custom Workflow Header",
          GetWorkflowEventDesc(WorfkflowCancelForApprovalEventDescTxt, RecordRef), 0, false);
    end;

    procedure GetWorkflowEventDesc(WorkflowEventDesc: Text; RecordRef: RecordRef): Text
    begin
        exit(StrSubstNo(WorkflowEventDesc, RecordRef.Name))
    end;

    // --------------------------------------------------------------Fifth Step: Add Event to the Library-------------------------------------------------

    var
        WorkflowMgt: Codeunit "Workflow Management";
        RunWorkflowOnSendForApprovalCode: Label 'RunWorkflowOnSend%1ForApprovalCode';
        RunWorkflowOnCancelForApprovalCode: Label 'RunWorkflowOnCancel%1ForApprovalCode';
        NoWorkflowEnabledErr: Label 'No approval workflow for this record type is enabled.';
        WorfkflowSendForApprovalEventDescTxt: Label 'Approval of a %1 is requested.';
        WorfkflowCancelForApprovalEventDescTxt: Label 'Approval of a %1 is canceled.';
}