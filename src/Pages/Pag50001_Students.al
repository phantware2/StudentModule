page 50001 "Student Card"
{
    PageType = Card;
    SourceTable = "Student Information";
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
                field("Middle Name"; Rec."Middle Name")
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
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field("Enrollment Date"; Rec."Enrollment Date") { ApplicationArea = All; }
                field(Status; Rec.Status) { ApplicationArea = All; }
                field(Program; Rec.Program)
                {
                    ShowMandatory = true;
                    NotBlank = true;
                    ApplicationArea = All;
                }
                field("Program Name"; Rec."Program Name") { ApplicationArea = All; }
            }
            group("Personal Information")
            {
                field("Date of Birth"; Rec.DOB)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field(Age; Rec.Age) { ApplicationArea = All; }
                field(Country; Rec.Country)
                {
                    ShowMandatory = true;
                    NotBlank = true;
                    ApplicationArea = All;
                }
                field("Father's Name"; Rec."Father's Name") { ApplicationArea = All; }
                field("Mother's Name"; Rec."Mother's Name") { ApplicationArea = All; }
            }
            group("Contact Information")
            {

                field(Address; Rec.Address)
                {
                    ShowMandatory = true;
                    NotBlank = true;
                    ApplicationArea = All;
                }
                field(City; Rec.City) { ApplicationArea = All; }
                field(State; Rec.State) { ApplicationArea = All; }
                field("Zip Code"; Rec."Zip Code") { ApplicationArea = All; }
                field("Email"; Rec."Email")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                    ExtendedDatatype = EMail;
                }
                field("Phone Number"; Rec."Phone")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                    ExtendedDatatype = PhoneNo;
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
                field("Faculty Name"; Rec."Faculty Name") { ApplicationArea = All; }
                field(Department; Rec.Department)
                {
                    ShowMandatory = true;
                    NotBlank = true;
                    ApplicationArea = All;
                }
                field("Department Name"; Rec."Department Name") { ApplicationArea = All; }
                field("Graduation Date"; Rec."Graduation Date") { ApplicationArea = All; }
                field(Level; Rec.Level) { ApplicationArea = All; }
                field(Semester; Rec.Semester) { ApplicationArea = All; }
            }
            part(Courses; Courses)
            {
                ApplicationArea = All;
                SubPageLink = "Student ID" = FIELD("Student ID");
            }
        }

        area(factboxes)
        {
            part(StudentInfoFactBox; "Student Info FactBox")
            {
                ApplicationArea = All;
                SubPageLink = "Student ID" = FIELD("Student ID");

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