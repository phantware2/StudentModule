page 50003 Departments
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = Department;

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
                field("Faculty Code"; Rec."Faculty Code") { ApplicationArea = All; }
                field("Faculty Name"; Rec."Faculty Name") { ApplicationArea = All; }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Departments Requirements")
            {
                ApplicationArea = Basic, Suite;
                Image = Navigate;
                RunObject = page "SSCE Subject Requirements";
                RunPageLink = "Department Code" = FIELD(Code);
                RunPageMode = Edit;
            }
        }
    }
}