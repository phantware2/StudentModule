page 50029 "SSCE Subjects"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "SSCE Subjects";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Subject No."; Rec."Subject No.")
                {
                    ApplicationArea = All;
                }
                field("Subject Name"; Rec."Subject Name")
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}