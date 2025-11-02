page 50028 "School Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "School Setup";
    DeleteAllowed = false;
    InsertAllowed = false;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Student Nos."; Rec."Student Nos.")
                {
                    ApplicationArea = All;
                }
                field("Prospective Student Nos."; Rec."Prospective Student Nos.")
                {
                    ApplicationArea = All;
                }
                field("Student Application Nos."; Rec."Student Application Nos.")
                {
                    ApplicationArea = All;
                }
                field("Voucher Nos."; Rec."Voucher Nos.")
                {
                    ApplicationArea = All;
                }
                field("Posted BRR Nos."; Rec."Posted BRR Nos.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.InsertRecord()
    end;
}
