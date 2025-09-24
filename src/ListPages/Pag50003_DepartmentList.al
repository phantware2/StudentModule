page 50004 Department
{
    Caption = 'PageName';
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
}