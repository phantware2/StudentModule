page 50100 "Student Card"
{
    PageType = Card;
    SourceTable = "Student Information";
    ApplicationArea = All;
    Caption = 'Student Card';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field("Middle Name"; Rec."Middle Name") { }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field("Enrollment Date"; Rec."Enrollment Date") { }
                field(Status; Rec.Status) { }
                field(Program; Rec.Program)
                {
                    ShowMandatory = true;
                    NotBlank = true;
                    ApplicationArea = All;
                }
                field("Program Name"; Rec."Program Name") { }
            }
            group("Personal Information")
            {
                field("Date of Birth"; Rec.DOB)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field(Age; Rec.Age) { }
                field(Country; Rec.Country)
                {
                    ShowMandatory = true;
                    NotBlank = true;
                    ApplicationArea = All;
                }
                field("Father's Name"; Rec."Father's Name") { }
                field("Mother's Name"; Rec."Mother's Name") { }
            }
            group("Contact Information")
            {

                field(Address; Rec.Address)
                {
                    ShowMandatory = true;
                    NotBlank = true;
                    ApplicationArea = All;
                }
                field(City; Rec.City) { }
                field(State; Rec.State) { }
                field("Zip Code"; Rec."Zip Code") { }
                field("Email"; Rec."Email")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field("Phone Number"; Rec."Phone")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }
            }
            group("Academic Information")
            {
                field(Faculty; Rec.Faculty)
                {
                    ShowMandatory = true;
                    NotBlank = true;
                    ApplicationArea = All;
                }
                field("Faculty Name"; Rec."Faculty Name") { }
                field(Department; Rec.Department)
                {
                    ShowMandatory = true;
                    NotBlank = true;
                    ApplicationArea = All;
                }
                field("Department Name"; Rec."Department Name") { }
                field("Graduation Date"; Rec."Graduation Date") { }
                field(Level; Rec.Level) { }
                field(Semester; Rec.Semester) { }
            }
        }
    }

    actions
    {
        area(processing)
        {
            // Add actions if needed
        }
    }
}