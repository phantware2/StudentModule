page 50005 Courses
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Courses;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Course Title"; Rec."Course Title")
                {
                    ApplicationArea = All;
                }
                field(Semester; Rec.Semester) { ApplicationArea = All; }
                field(Grades; Rec.Grades) { ApplicationArea = All; }
                field("Department Name"; Rec."Department Name") { ApplicationArea = All; }
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
}