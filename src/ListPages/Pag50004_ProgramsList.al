page 50004 Programs
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Program;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Program; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                }
                field("Department Name"; Rec."Department Name")
                {
                    ApplicationArea = All;
                }
                field(Faculty; Rec.Faculty)
                {
                    ApplicationArea = All;
                }
                field("Faculty Name"; Rec."Faculty Name")
                {
                    ApplicationArea = All;
                }
                field(Level; Rec.Level)
                {
                    ApplicationArea = All;
                }
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