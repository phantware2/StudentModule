page 50003 "Faculty Card"
{
    PageType = Card;
    UsageCategory = Administration;
    SourceTable = Faculty;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = all;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
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