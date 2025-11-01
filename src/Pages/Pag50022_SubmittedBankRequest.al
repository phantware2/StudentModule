page 50022 "Submitted Bank Request"
{
    PageType = Card;
    SourceTable = "Voucher Header";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field(ProspectiveStudentID; Rec.ProspectiveStudentID)
                {
                    ApplicationArea = All;
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    Caption = 'Prospective Student Full Name';
                }
                field(Nature; Rec.Nature)
                {
                    ApplicationArea = All;
                }
                field("Bank No."; Rec."Bank No.")
                {
                    ApplicationArea = All;
                }
                field("Bank Name"; Rec."Bank Name")
                {
                    ApplicationArea = All;
                    Caption = 'Receiving Bank';
                }
                field("Depositor Name"; Rec."Depositor Name")
                {
                    ApplicationArea = All;
                }
                field("Credit Amount"; Rec."Credit Amount")
                {
                    ApplicationArea = All;
                }
                field("Paid Date"; Rec."Paid Date")
                {
                    ApplicationArea = All;
                }
                field("Credit Date"; Rec."Credit Date")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                    Caption = 'Cost Center';
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                    Caption = 'Division';
                }
                field(Narration; Rec.Narration)
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
            action(Reopen)
            {

                trigger OnAction()
                begin

                end;
            }
            group("Documeent Approval")
            {
                action("Send Approval Request")
                {
                    ApplicationArea = All;
                }
                action("Cancel Approval Request")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    var
        myInt: Integer;
}