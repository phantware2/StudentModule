page 50030 "SSCE Subject Requirements"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "SSCE Subject Required";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Department Code"; Rec."Department Code")
                {
                    ApplicationArea = All;
                }
                field("Subject No."; Rec."Subject No.")
                {
                    ApplicationArea = All;
                }
                field("Subject Name"; Rec."Subject Name")
                {
                    ApplicationArea = All;
                }
                field("UTME Score"; Rec."UTME Score")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field("Jamb Score"; Rec."Jamb Score")
                {
                    ApplicationArea = All;
                }
                field("Jamb Required"; Rec."Jamb Required")
                {
                    ApplicationArea = All;
                    ShowMandatory = Rec."Jamb Required";
                }
                field("CA Score"; Rec."CA Score")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}