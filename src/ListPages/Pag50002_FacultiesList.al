page 50002 Faculties
{
    Caption = 'Faculties';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = Faculty;

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
                field(Name; Rec.Name)
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
            action("Departments")
            {
                ApplicationArea = Basic, Suite;
                Image = Navigate;
                RunObject = page "Departments";
                RunPageLink = "Faculty Code" = FIELD(Code);
                RunPageMode = Edit;
            }
        }
    }
}