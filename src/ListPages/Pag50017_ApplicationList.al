page 50017 "Application List"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Application;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Application ID"; Rec."Application ID")
                {
                    ApplicationArea = All;
                }
                field(ProspectiveStudentID; Rec.ProspectiveStudentID)
                {
                    ApplicationArea = All;
                }
                field(ApplicationType; Rec.ApplicationType)
                {
                    ApplicationArea = All;
                }
                field("Application Date"; Rec."Application Date")
                {
                    ApplicationArea = All;
                }
                field("Application Fee Paid"; Rec."Application Fee Paid")
                {
                    ApplicationArea = All;
                }
                field(ApplicationStatus; Rec.ApplicationStatus)
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