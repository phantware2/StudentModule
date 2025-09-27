page 50009 "Courses Card"
{
    PageType = Card;
    UsageCategory = Administration;
    SourceTable = Courses;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Code; Rec.Code[20]) { ApplicationArea = All; }
                field("Course Title"; Rec."Course Title") { ApplicationArea = All; }
                field(Semester; Rec.Semester) { ApplicationArea = All; }
                field(Grades; Rec.Grades) { ApplicationArea = All; }
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