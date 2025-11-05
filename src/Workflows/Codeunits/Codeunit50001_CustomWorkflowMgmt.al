codeunit 50001 "Custom Workflow Mgmt"
{
    // --------------------------------------------------------First Step: Check if Worflow is enabled-----------------------------------------------------
    procedure CheckApprovalsWorkflowEnabled(var RecRef: RecordRef): Boolean
    begin
        if not WorkflowMgt.CanExecuteWorkflow(RecRef, GetWorkflowCode(RunWorkflowOnSendForApprovalCode, RecRef)) then
            Error(NoWorkflowEnabledErr);
        exit(true);
    end;
    // --------------------------------------------------------First Step: Check if Worflow is enabled-----------------------------------------------------
    // --------------------------------------------------------Second Step: Procedure to ge the workflow---------------------------------------------------

    procedure GetWorkflowCode(WorkflowCode: Code[128]; RecordRef: RecordRef): Code[128]
    begin
        exit(DelChr(StrSubstNo(WorkflowCode, RecordRef.Name), '=', ' '))
    end;

    // --------------------------------------------------------Second Step: Procedure to ge the workflow---------------------------------------------------
    // --------------------------------------------------------Third Step: Raise Event Integration---------------------------------------------------------
    [IntegrationEvent(false, false)]
    procedure OnSendWorkflowForApproval(var RecordRef: RecordRef)
    begin

    end;

    [IntegrationEvent(false, false)]
    procedure OnCancelWorkflowForApproval(var RecordRef: RecordRef)
    begin
    end;
    // --------------------------------------------------------Third Step: Raise Event Integration---------------------------------------------------------

    // --------------------------------------------------------------Fourth Step: Add Event to the Library-------------------------------------------------

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Event Handling", OnAddWorkflowEventsToLibrary, '', false, false)]
    local procedure OnAddWorkflowEventsToLibrary()
    var
        RecordRef: RecordRef;
        WorkflowEventHandling: Codeunit "Workflow Event Handling";
    begin
        RecordRef.Open(Database::"Voucher Header");
        WorkflowEventHandling.AddEventToLibrary(GetWorkflowCode(RunWorkflowOnSendForApprovalCode, RecordRef), DATABASE::"Voucher Header",
          GetWorkflowEventDesc(WorfkflowSendForApprovalEventDescTxt, RecordRef), 0, false);
        WorkflowEventHandling.AddEventToLibrary(GetWorkflowCode(RunWorkflowOnCancelForApprovalCode, RecordRef), DATABASE::"Voucher Header",
          GetWorkflowEventDesc(WorfkflowCancelForApprovalEventDescTxt, RecordRef), 0, false);
    end;

    procedure GetWorkflowEventDesc(WorkflowEventDesc: Text; RecordRef: RecordRef): Text
    begin
        exit(StrSubstNo(WorkflowEventDesc, RecordRef.Name))
    end;
    // --------------------------------------------------------------Fourth Step: Add Event to the Library-------------------------------------------------
    // --------------------------------------------------------------Fifth Step: Subscribe to Event Integration--------------------------------------------
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Custom Workflow Mgmt", OnSendWorkflowForApproval, '', false, false)]
    local procedure RunWorkflowOnSendWorkflowForApproval(var RecordRef: RecordRef)
    begin
        WorkflowMgt.HandleEvent(GetWorkflowCode(RunWorkflowOnSendForApprovalCode, RecordRef), RecordRef);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Custom Workflow Mgmt", OnCancelWorkflowForApproval, '', false, false)]
    local procedure RunWorkflowCanceldWorkflowForApproval(var RecordRef: RecordRef)
    begin
        WorkflowMgt.HandleEvent(GetWorkflowCode(RunWorkflowOnCancelForApprovalCode, RecordRef), RecordRef);
    end;
    // --------------------------------------------------------------Fifth Step: Subscribe to Event Integration--------------------------------------------
    // --------------------------------------------------Sixth Step: Handle the document status(OnOpenDocument)--------------------------------------------
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", OnOpenDocument, '', false, false)]
    local procedure OnOpenDocument(RecRef: RecordRef; var Handled: Boolean)
    var
        VoucherHeader: Record "Voucher Header";
    begin
        case RecRef.Number of
            Database::"Voucher Header":
                begin
                    RecRef.SetTable(VoucherHeader);
                    VoucherHeader.Validate(Status, VoucherHeader.Status::Open);
                    VoucherHeader.Modify(true);
                    Handled := true;
                end;
        end;
    end;
    // --------------------------------------------------Sixth Step: Handle the document status(OnOpenDocument)--------------------------------------------
    // ------------------------------------------------Seventh Step: Handle the document status(OnOpenDocument)--------------------------------------------
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Mgmt.", OnSetStatusToPendingApproval, '', false, false)]
    local procedure OnSetStatusToPendingApproval(RecRef: RecordRef; var Variant: Variant; var IsHandled: Boolean)
    var
        VoucherHeader: Record "Voucher Header";
    begin
        case RecRef.Number of
            Database::"Voucher Header":
                begin
                    RecRef.SetTable(VoucherHeader);
                    VoucherHeader.Validate(Status, VoucherHeader.Status::"Pending Approval");
                    VoucherHeader.Modify(true);
                    Variant := VoucherHeader;
                    IsHandled := true;
                end;
        end;
    end;
    // ------------------------------------------------Seventh Step: Handle the document status(OnOpenDocument)--------------------------------------------
    // ------------------------------------------------Eightth Step: Subscribe to Event Argument(OnOpenDocument)-------------------------------------------
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Mgmt.", OnPopulateApprovalEntryArgument, '', false, false)]
    local procedure OnPopulateApprovalEntryArgument(var RecRef: RecordRef; var ApprovalEntryArgument: Record "Approval Entry"; WorkflowStepInstance: Record "Workflow Step Instance")
    var
        VoucherHeader: Record "Voucher Header";
    begin
        RecRef.SetTable(VoucherHeader);
        ApprovalEntryArgument."Document No." := VoucherHeader."Document No.";
    end;
    // ------------------------------------------------Eightth Step: Subscribe to Event Argument(OnOpenDocument)-------------------------------------------
    // ------------------------------------------------Ninth Step: Handle the document status(OnReleaseDocument)-------------------------------------------
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", OnReleaseDocument, '', false, false)]
    local procedure OnReleaseDocument(RecRef: RecordRef; var Handled: Boolean)
    var
        VoucherHeader: Record "Voucher Header";
    begin
        case RecRef.Number of
            Database::"Voucher Header":
                begin
                    RecRef.SetTable(VoucherHeader);
                    VoucherHeader.Validate(Status, VoucherHeader.Status::Released);
                    VoucherHeader.Modify(true);
                    Handled := true;
                end;
        end;
    end;
    // ------------------------------------------------Ninth Step: Handle the document status(OnReleaseDocument)-------------------------------------------
    // ------------------------------------------------Tenth Step: Handle the document status(OnOpenDocument)--------------------------------------------
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Mgmt.", OnRejectApprovalRequest, '', false, false)]
    local procedure OnRejectApprovalRequest(var ApprovalEntry: Record "Approval Entry")
    var
        RecRef: RecordRef;
        VoucherHeader: Record "Voucher Header";
    begin
        case ApprovalEntry."Table ID" of
            Database::"Voucher Header":
                begin
                    If VoucherHeader.Get(ApprovalEntry."Document No.") then begin
                        VoucherHeader.Validate(Status, VoucherHeader.Status::Cancelled);
                        VoucherHeader.Modify(true);
                    end;
                end;
        end;
    end;
    // ------------------------------------------------Seventh Step: Handle the document status(OnOpenDocument)--------------------------------------------
    var
        WorkflowMgt: Codeunit "Workflow Management";
        RunWorkflowOnSendForApprovalCode:
                Label 'RunWorkflowOnSend%1ForApprovalCode';
        RunWorkflowOnCancelForApprovalCode:
                Label 'RunWorkflowOnCancel%1ForApprovalCode';
        NoWorkflowEnabledErr:
                Label 'No approval workflow for this record type is enabled.';
        WorfkflowSendForApprovalEventDescTxt:
                Label 'Approval of a %1 is requested.';
        WorfkflowCancelForApprovalEventDescTxt:
                Label 'Approval of a %1 is canceled.';
}