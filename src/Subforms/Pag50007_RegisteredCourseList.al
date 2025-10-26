page 50007 "Registered Course List"
{
    PageType = ListPart;
    SourceTable = "Registered Course";
    AutoSplitKey = true;
    DelayedInsert = true;
    MultipleNewLines = true;


    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Course Code"; Rec."Course Code")
                {
                    ApplicationArea = All;
                }
                field("Course Name"; Rec."Course Name")
                {
                    ApplicationArea = All;
                }
                field("Department Name"; Rec."Department Name") { ApplicationArea = All; }
                field("Faculty Name"; Rec."Faculty Name")
                {
                    ApplicationArea = All;
                }
                field(Semester; Rec.Semester) { ApplicationArea = All; }
                field(Level; Rec.Level) { ApplicationArea = All; }
                field("Student ID"; Rec."Student ID") { ApplicationArea = All; }
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
}