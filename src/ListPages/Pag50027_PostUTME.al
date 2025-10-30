page 50027 "Post UTME"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Post UTME";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Registration No."; Rec."Registration No.")
                {
                    ApplicationArea = All;
                }
                field("UTME No."; Rec."UTME No.")
                {
                    ApplicationArea = All;
                }
                field("Jamb Reg No."; Rec."Jamb Reg No.")
                {
                    ApplicationArea = All;
                }
                field("Registration Date"; Rec."Registration Date")
                {
                    ApplicationArea = All;
                }
                field("Faculty Name"; Rec."Faculty Name")
                {
                    ApplicationArea = All;
                }
                field("Department Name"; Rec."Department Name")
                {
                    ApplicationArea = All;
                }
                field("Course Name"; Rec."Course Name")
                {
                    ApplicationArea = All;
                }
                field(Registered; Rec.Registered)
                {
                    ApplicationArea = All;
                }
                field("Utme Score"; Rec."Utme Score")
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