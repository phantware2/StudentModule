page 50007 "Registered Course List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Registered Course";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Code Code"; Rec."Code Code")
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
            }
        }
        area(Factboxes)
        {

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