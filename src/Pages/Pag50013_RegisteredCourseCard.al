page 50013 "Registered Course Card"
{
    PageType = Card;
    SourceTable = "Registered Course";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Code Code"; Rec."Code Code") { ApplicationArea = All; }
                field("Course Name"; Rec."Course Name") { ApplicationArea = All; }
                field("Department Code"; Rec."Department Code") { ApplicationArea = All; }
                field("Department Name"; Rec."Department Name") { ApplicationArea = All; }
                field("Faculty Code"; Rec."Faculty Code") { ApplicationArea = All; }
                field("Faculty Name"; Rec."Faculty Name") { ApplicationArea = All; }
                field(Level; Rec.Level) { ApplicationArea = All; }
                field(Semester; Rec.Semester) { ApplicationArea = All; }
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