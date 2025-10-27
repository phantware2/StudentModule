page 50012 "Exam List"
{
    Caption = 'Exam List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = Exam;

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