table 50000 "Student Information"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Student ID"; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(2; "First Name"; Text[50])
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                "Full Name" := "First Name" + ' ' + "Middle Name" + ' ' + "Last Name";
            end;
        }
        field(3; "Last Name"; Text[50])
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                "Full Name" := "First Name" + ' ' + "Middle Name" + ' ' + "Last Name";
            end;
        }
        field(4; "Middle Name"; Text[50])
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                "Full Name" := "First Name" + ' ' + "Middle Name" + ' ' + "Last Name";
            end;
        }
        field(5; DOB; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Date of Birth';

            trigger OnValidate()
            var
                StudentAge: Integer;
            begin
                // StudentAge := DOB - Today();
                // Age := StudentAge div 365;
                // Age := CalculateAge(DOB, Today());
                // Age := Date2DMY(Today(), 3) - Date2DMY(DOB, 3);
                If DOB > Today() then
                    Error('Date of Birth cannot be a future date.');
                If DOB <> 0D then
                    Age := Date2DMY(Today(), 3) - Date2DMY(DOB, 3)
                else
                    Age := 0;
            end;
        }
        field(6; Gender; Option)
        {
            OptionMembers = Male,"Female","Non-Binary",Other;
        }
        field(7; Email; Text[100])
        {
            DataClassification = CustomerContent;
            ExtendedDatatype = Email;
        }
        field(8; Phone; Text[15])
        {
            DataClassification = CustomerContent;
            ExtendedDatatype = PhoneNo;
        }
        field(9; Address; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(10; City; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(11; State; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(12; "Zip Code"; Text[10])
        {
            DataClassification = CustomerContent;
        }
        field(13; Country; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(14; "Enrollment Date"; Date)
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(15; "Graduation Date"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(16; Age; Integer)
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(17; Status; Enum Status)
        {
            Editable = false;
        }
        field(18; "Father's Name"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(19; "Mother's Name"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(20; Faculty; Text[50])
        {
            DataClassification = CustomerContent;
            tableRelation = Faculty.Code;
            Editable = false;
            // trigger OnValidate()
            // var
            //     FacultyRec: Record Faculty;
            // begin
            //     // FacultyRec.SetRange(Code, Faculty);
            //     // If FacultyRec.FindFirst() then begin
            //     IF FacultyRec.Get(Faculty) then
            //         "Faculty Name" := FacultyRec.Name
            //     else
            //         "Faculty Name" := '';
            // end;
        }
        field(21; Department; Text[50])
        {
            DataClassification = CustomerContent;
            TableRelation = Department.Code;
            Editable = false;
            // trigger OnValidate()
            // var
            //     DepartmentRec: Record Department;
            // begin
            //     if DepartmentRec.Get(Department) then
            //         "Department Name" := DepartmentRec.Name
            //     else
            //         "Department Name" := '';
            // end;
        }
        field(22; "Department Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(23; Program; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Program.Code;
            trigger OnValidate()
            var
                ProgramRec: Record Program;
            begin
                ProgramRec.SetRange(Code, Program);
                if ProgramRec.FindFirst() then begin
                    "Program Name" := ProgramRec.Name;
                    Department := ProgramRec.Department;
                    "Department Name" := ProgramRec."Department Name";
                    Faculty := ProgramRec.Faculty;
                    "Faculty Name" := ProgramRec."Faculty Name";
                end
                else begin
                    "Program Name" := '';
                    Department := '';
                    "Department Name" := '';
                    Faculty := '';
                    "Faculty Name" := '';
                end;

            end;
        }
        field(24; "Program Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(25; Level; Enum Level)
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(26; Semester; Enum Semester)
        {
            Editable = false;
        }
        field(27; "Faculty Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(28; "Full Name"; Text[550])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(29; "ProspectiveStudentID"; Code[20])
        {
            Caption = 'Prospective Student ID';
            DataClassification = CustomerContent;
        }
        field(30; "Student Type"; Option)
        {
            Caption = 'Student Type';
            DataClassification = CustomerContent;
            OptionMembers = Undergraduate,Postgraduate,PartTime;
        }
    }

    keys
    {
        key(PK; "Student ID", Department, Faculty)
        {
            Clustered = true;
        }
        key(SK; "Last Name", "First Name", Program, Level, Semester, ProspectiveStudentID)
        {
        }
    }


    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit "No. Series";
        SchoolSetup: Record "School Setup";
    begin
        SchoolSetup.Get();
        if "Student ID" = '' then begin
            // "Student ID" := NoSeriesMgt.GetNextNo('STUDENTID');
            "Student ID" := NoSeriesMgt.GetNextNo(SchoolSetup."Student Nos.");
        end;
    end;

}