page 50005 "Department Card"
{
    PageType = Card;
    UsageCategory = Administration;
    SourceTable = Department;

    layout
    {
        area(Content)
        {
            group(GroupName)
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
}