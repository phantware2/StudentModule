page 50018 Application
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Application;

    layout
    {
        area(Content)
        {
            group("Personal Information")
            {
                field("Application ID"; Rec."Application ID")
                {
                    ApplicationArea = All;
                }
                field("Student Name"; Rec."Student Name")
                {
                    ApplicationArea = All;
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                }
                field("Email Address"; Rec."Email Address")
                {
                    ApplicationArea = All;
                }
            }

            group("Application Status")
            {
                field("Application Date"; Rec."Application Date")
                {
                    ApplicationArea = All;
                }
                field(ApplicationStatus; Rec.ApplicationStatus)
                {
                    ApplicationArea = All;
                    Caption = 'Application Status';
                }
                field("Application Type"; Rec.ApplicationType)
                {
                    ApplicationArea = All;
                    Caption = 'Application Type';
                }
                field("Application Method"; Rec."Application Method")
                {
                    ApplicationArea = All;
                    Caption = 'Application Method';
                }
                field("Application Fee Paid"; Rec."Application Fee Paid")
                {
                    ApplicationArea = All;
                    Caption = 'Application Fee Paid';
                }
                field("Payment Reference"; Rec."Payment Reference")
                {
                    ApplicationArea = All;
                    Caption = 'Payment Reference';
                }
                field(ApplicationDocumentsComplete; Rec.ApplicationDocumentsComplete)
                {
                    ApplicationArea = All;
                    Caption = 'Documents Complete';
                }
            }
        }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}