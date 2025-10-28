page 50016 "Convert Applicant to Student"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Admission Offer";

    layout
    {
        area(Content)
        {
            group(Offer)
            {
                field("Offer ID"; Rec."Offer ID") { ApplicationArea = All; }
                field("Application ID"; Rec."Application ID") { ApplicationArea = All; }
                field("Program Code"; Rec."Program Code") { ApplicationArea = All; }
                field("Offer Status"; Rec."Offer Status") { ApplicationArea = All; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Convert)
            {
                Caption = 'Convert to Student';
                trigger OnAction()
                begin
                    // Call CU_ApplicantToStudentConverter.Convert(Rec)
                end;
            }
        }
    }

    var
        myInt: Integer;
}