page 50011 "Result Card"
{
    PageType = Card;
    SourceTable = Result;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Student ID"; Rec."Student ID") { ApplicationArea = All; }
                field("Course Code"; Rec."Course Code") { ApplicationArea = All; }
                field("Course Title"; Rec."Course Title") { ApplicationArea = All; }
                field(Level; Rec.Level) { ApplicationArea = All; }
                field(Semester; Rec.Semester) { ApplicationArea = All; }
                field(Score; Rec.Score) { ApplicationArea = All; }
                field(Grade; rEC.Grade) { ApplicationArea = All; }
                field("Department Code"; Rec."Department Code") { ApplicationArea = All; }
                field("Department Name"; Rec."Department Name") { ApplicationArea = All; }
                field("Faculty Code"; Rec."Faculty Code") { ApplicationArea = All; }
                field("Faculty Name"; Rec."Faculty Name") { ApplicationArea = All; }
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