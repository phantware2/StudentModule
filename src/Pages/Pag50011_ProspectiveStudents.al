page 50011 "Prospective Student Card"
{
    PageType = Card;
    SourceTable = "Prospective Student";


    layout
    {
        area(Content)
        {
            group(General)
            {
                field(ProspectiveStudentID; Rec.ProspectiveStudentID) { ApplicationArea = All; }
                field("First Name"; Rec."First Name") { ApplicationArea = All; }
                field("Middle Name"; Rec."Middle Name") { ApplicationArea = All; }
                field("Last Name"; Rec."Last Name") { ApplicationArea = All; }
                field("Full Name"; Rec."Full Name") { ApplicationArea = All; }
                field(DateOfBirth; Rec.DateOfBirth) { ApplicationArea = All; }
                field(Gender; Rec.Gender) { ApplicationArea = All; }
                field(Email; Rec.Email) { ApplicationArea = All; }
                field(Phone; Rec.Phone) { ApplicationArea = All; }
                field(Address; Rec.Address) { ApplicationArea = All; }
                field(Country; Rec.Country) { ApplicationArea = All; }
                field(JAMBRegNo; Rec.JAMBRegNo) { ApplicationArea = All; }
                field(UTMEScore; Rec.UTMEScore) { ApplicationArea = All; }
                field("Preferred Program Code"; Rec."Preferred Program Code") { ApplicationArea = All; }
                field(ApplicationStatus; Rec.ApplicationStatus) { ApplicationArea = All; }
                field(ApplicationFormPaid; Rec.ApplicationFormPaid) { ApplicationArea = All; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(SubmitApplication)
            {
                Caption = 'Submit Application';
                trigger OnAction()
                begin
                    // Call CU_ApplicationManager.SubmitApplication
                end;
            }
        }
    }

    var
        myInt: Integer;
}