page 50012 "Entrance Exam List"
{
    Caption = 'Entrance Exam List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Entrance Exam";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Exam ID"; Rec."Exam ID") { ApplicationArea = All; }
                field("Exam Name"; Rec."Exam Name") { ApplicationArea = All; }
                field("Exam Date"; Rec."Exam Date") { ApplicationArea = All; }
                field(Venue; Rec.Venue) { ApplicationArea = All; }
                field("Exam Type"; Rec."Exam Type") { ApplicationArea = All; }
                field("Passing Score"; Rec."Passing Score") { ApplicationArea = All; }

            }
        }
    }
}