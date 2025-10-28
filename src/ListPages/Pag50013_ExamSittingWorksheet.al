
page 50013 "Exam Sitting Worksheet"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Exam Sitting";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Sitting ID"; Rec."Sitting ID") { ApplicationArea = All; }
                field("Application ID"; Rec."Application ID") { ApplicationArea = All; }
                field("Exam ID"; Rec."Exam ID") { ApplicationArea = All; }
                field("Sitting DateTime"; Rec."Sitting DateTime") { ApplicationArea = All; }
                field("Seat Number"; Rec."Seat Number") { ApplicationArea = All; }
                field("Center Code"; Rec."Center Code") { ApplicationArea = All; }
                field(Status; Rec.Status) { ApplicationArea = All; }
                field(Score; Rec.Score) { ApplicationArea = All; }
            }
        }
    }
}