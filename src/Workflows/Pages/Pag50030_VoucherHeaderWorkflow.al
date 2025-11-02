page 50030 "Voucher Header Workflow"
{
    PageType = Card;
    SourceTable = "Voucher Header Workflow";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
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
                    ApplicationArea = Basic, Suites;
                    Caption = 'Send A&pproval Request';
                    Image = SendApprovalRequest;
                    Enabled = NOT OpenApprovalEntriesExist;
                    ToolTip = 'Request Approval to change the record';
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    begin

                    end;
                }
                action(CancelApprovalRequest)
                {
                    ApplicationArea = Basic, Suites;
                    Caption = 'Cancel A&pproval Request';
                    Image = CancelApprovalRequest;
                    Enabled = CanCancelApprovalForRecord;
                    ToolTip = 'Cancel the approval request';
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    begin

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
                    Caption = 'Approve';
                    ApplicationArea = All;
                    Image = Approve;
                    ToolTip = 'Approve the requested changes.';
                    Promoted = true;
                    PromotedCategory = New;
                    Visible = OpenApprovalEntriesExistCurrUser;

                    trigger OnAction()
                    begin
                        ApprovalsMgt.ApproveRecordApprovalRequest(Rec.RecordId)
                    end;
                }
                action(Reject)
                {
                    Caption = 'Reject';
                    ApplicationArea = All;
                    Image = Reject;
                    ToolTip = 'Reject the requested changes.';
                    Promoted = true;
                    PromotedCategory = New;

                    trigger OnAction()
                    begin
                        ApprovalsMgt.RejectRecordApprovalRequest(Rec.RecordId)
                    end;
                }
                action(Delegate)
                {
                    Caption = 'Delegate';
                    ApplicationArea = All;
                    Image = Delegate;
                    ToolTip = 'Delegate the requested changes.';
                    Promoted = true;
                    PromotedCategory = New;

                    trigger OnAction()
                    begin
                        ApprovalsMgt.DelegateRecordApprovalRequest(Rec.RecordId)
                    end;
                }
                action(Comment)
                {
                    ApplicationArea = All;
                    Caption = 'Comments';
                    Image = ViewComments;
                    ToolTip = 'View or add comments for the record.';
                    Visible = OpenApprovalEntriesExistCurrUser;
                    Promoted = true;
                    PromotedCategory = New;

                    trigger OnAction()
                    begin
                        ApprovalsMgt.GetApprovalComment(Rec.);
                    end;
                }
                action(Approvals)
                {
                    ApplicationArea = All;
                    Caption = 'Approvals';
                    Image = Approvals;
                    ToolTip = 'View approval requests';
                    Promoted = true;
                    PromotedCategory = New;

                    trigger OnAction()
                    begin
                        ApprovalsMgt.OpenApprovalEntriesPage(Rec.RecordId);
                    end;
                }
            }
        }
    }

    var
        myInt: Integer;

    trigger OnAfterGetCurrRecord()
    begin

    end;
}