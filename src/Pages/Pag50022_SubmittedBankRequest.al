page 50022 "Submitted Bank Request"
{
    PageType = Card;
    SourceTable = "Voucher Header";
    SourceTableView = where("Request Status" = filter("Pending Processing"));
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        Rec.TestField(rec."Request Status", Rec."Request Status"::Open);
                    end;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        Rec.TestField(rec."Request Status", Rec."Request Status"::Open);
                    end;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        Rec.TestField(rec."Request Status", Rec."Request Status"::Open);
                    end;
                }
                field(ProspectiveStudentID; Rec.ProspectiveStudentID)
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        Rec.TestField(rec."Request Status", Rec."Request Status"::Open);
                    end;
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    Caption = 'Prospective Student Full Name';
                }
                field(Nature; Rec.Nature)
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        Rec.TestField(rec."Request Status", Rec."Request Status"::Open);
                    end;
                }
                field("Bank No."; Rec."Bank No.")
                {
                    ApplicationArea = All;
                }
                field("Bank Name"; Rec."Bank Name")
                {
                    ApplicationArea = All;
                    Caption = 'Receiving Bank';

                    trigger OnValidate()
                    begin
                        Rec.TestField(rec."Request Status", Rec."Request Status"::Open);
                    end;
                }
                field("Depositor Name"; Rec."Depositor Name")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        Rec.TestField(rec."Request Status", Rec."Request Status"::Open);
                    end;
                }
                field("Receipt Amount"; Rec."Receipt Amount")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        Rec.TestField(rec."Request Status", Rec."Request Status"::Open);
                    end;
                }
                field("Paid Date"; Rec."Paid Date")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        Rec.TestField(rec."Request Status", Rec."Request Status"::Open);
                    end;
                }
                field("Credit Date"; Rec."Credit Date")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        Rec.TestField(rec."Request Status", Rec."Request Status"::Open);
                    end;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                    Caption = 'Cost Center';

                    trigger OnValidate()
                    begin
                        Rec.TestField(rec."Request Status", Rec."Request Status"::Open);
                    end;
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                    Caption = 'Division';

                    trigger OnValidate()
                    begin
                        Rec.TestField(rec."Request Status", Rec."Request Status"::Open);
                    end;
                }
                field(Narration; Rec.Narration)
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        Rec.TestField(rec."Request Status", Rec."Request Status"::Open);
                    end;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            group("Request Approval")
            {
                Image = SendApprovalRequest;
                action(SendApprovalRequest)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Send A&pproval Request';
                    Enabled = not OpenApprovalEntriesExist;
                    Image = SendApprovalRequest;
                    ToolTip = 'Request approval to change the record.';
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    var
                        CustomWorkflow: Codeunit "Custom Workflow Mgmt";
                        RecRef: RecordRef;
                    begin
                        RecRef.GetTable(Rec);
                        if CustomWorkflow.CheckApprovalsWorkflowEnabled(RecRef) then
                            CustomWorkflow.OnSendWorkflowForApproval(RecRef);
                    end;
                }
                action(CancelApprovalRequest)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Cancel Approval Re&quest';
                    Enabled = CanCancelApprovalForRecord or CanCancelApprovalForFlow;
                    Image = CancelApprovalRequest;
                    ToolTip = 'Cancel the approval request.';
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    var
                        CustomWorkflow: Codeunit "Custom Workflow Mgmt";
                        RecRef: RecordRef;
                    begin
                        RecRef.GetTable(Rec);
                        CustomWorkflow.OnSendWorkflowForApproval(RecRef);
                    end;
                }
                action(Reopen)
                {
                    ApplicationArea = All;
                    Caption = 'Reopen';
                    Image = ReOpen;
                    ToolTip = 'Reopen the document after approval is completed.';
                    Enabled = Rec.Status <> Rec.Status::Open;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    var
                        ReleaseVoucherDocument: Codeunit "ReleaseVoucherDocument";
                    begin
                        ReleaseVoucherDocument.PerformManualReopen(Rec);
                    end;
                }
            }
        }
        area(Creation)
        {
            group(Approval)
            {
                Caption = 'Approval';
                action(Approve)
                {
                    ApplicationArea = All;
                    Caption = 'Approve';
                    Image = Approve;
                    ToolTip = 'Approve the requested changes.';
                    Visible = OpenApprovalEntriesExistCurrUser;

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalsMgmt.ApproveRecordApprovalRequest(Rec.RecordId);
                    end;
                }
                action(Reject)
                {
                    ApplicationArea = All;
                    Caption = 'Reject';
                    Image = Reject;
                    ToolTip = 'Reject the approval request.';
                    Visible = OpenApprovalEntriesExistCurrUser;

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalsMgmt.RejectRecordApprovalRequest(Rec.RecordId);
                    end;
                }
                action(Delegate)
                {
                    ApplicationArea = All;
                    Caption = 'Delegate';
                    Image = Delegate;
                    ToolTip = 'Delegate the approval to a substitute approver.';
                    Visible = OpenApprovalEntriesExistCurrUser;

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalsMgmt.DelegateRecordApprovalRequest(Rec.RecordId);
                    end;
                }
                action(Comment)
                {
                    ApplicationArea = All;
                    Caption = 'Comments';
                    Image = ViewComments;
                    ToolTip = 'View or add comments for the record.';
                    Visible = OpenApprovalEntriesExistCurrUser;

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalsMgmt.GetApprovalComment(Rec);
                    end;
                }
            }
            action(CreateBRV)
            {
                Caption = 'Create Voucher';
                ApplicationArea = All;
                Image = Create;
                ToolTip = 'Create Bank Receipt Voucher from released Bank Request.';
                trigger OnAction()
                var
                    UserSetup: Record "User Setup";
                    ReleaseVoucher: Codeunit "ReleaseVoucherDocument";
                begin
                    Rec.TestField("Bank No.");
                    UserSetup.Get(UserId);
                    UserSetup.TestField("Bank Selector");
                    Rec."Request Status" := Rec."Request Status"::Processed;
                    ReleaseVoucher.CreateBRVFromBankRequest(Rec);
                end;
            }
        }
    }

    var
        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
        OpenApprovalEntriesExistCurrUser: Boolean;
        OpenApprovalEntriesExist: Boolean;
        CanCancelApprovalForRecord: Boolean;
        CanCancelApprovalForFlow: Boolean;
        CanRequestApprovalForFlow: Boolean;
        WorkflowWebhookMgt: Codeunit "Workflow Webhook Management";


    trigger OnAfterGetRecord()
    begin
        OpenApprovalEntriesExistCurrUser := ApprovalsMgmt.HasOpenApprovalEntriesForCurrentUser(Rec.RECORDID);
        OpenApprovalEntriesExist := ApprovalsMgmt.HasOpenApprovalEntries(Rec.RECORDID);
        CanCancelApprovalForRecord := ApprovalsMgmt.CanCancelApprovalForRecord(Rec.RECORDID);
        WorkflowWebhookMgt.GetCanRequestAndCanCancel(Rec.RecordId, CanRequestApprovalForFlow, CanCancelApprovalForFlow);
    end;
}
