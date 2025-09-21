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
            group(Group)
            {
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                }
                field("Middle Name"; Rec."Middle Name") { }
                field("Date of Birth"; Rec.DOB)
                {
                    ApplicationArea = All;
                }
                field("Email"; Rec."Email")
                {
                    ApplicationArea = All;
                }
                field("Phone Number"; Rec."Phone")
                {
                    ApplicationArea = All;
                }

                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                }
                field(Address; Rec.Address) { }
                field(City; Rec.City) { }
                field(State; Rec.State) { }
                field("Zip Code"; Rec."Zip Code") { }
                field(Country; Rec.Country) { }
                field("Enrollment Date"; Rec."Enrollment Date") { }
                field("Graduation Date"; Rec."Graduation Date") { }
                field(Age; Rec.Age) { }
                field(Status; Rec.Status) { }
                field("Father's Name"; Rec."Father's Name") { }
                field("Mother's Name"; Rec."Mother's Name") { }
                field(Faculty; Rec.Faculty) { }
                field(Department; Rec.Department) { }
                field("Department Name"; Rec."Department Name") { }
                field(Program; Rec.Program) { }
                field("Program Name"; Rec."Program Name") { }
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