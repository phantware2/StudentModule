table 50006 "Registered Course"
{
    DataClassification = ToBeClassified;



    fields
    {
        field(1; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Course Name"; Text[200])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(3; Department; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;

            trigger OnValidate()
            var
                DepartmentRec: Record Department;
            begin
                DepartmentRec.SetRange(Code, Department);
                if DepartmentRec.FindFirst() then begin
                    "Department Name" := DepartmentRec.Name;
                end else begin
                    "Department Name" := '';
                end;
            end;
        }
        field(4; "Department Name"; Text[200])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(5; Faculty; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;

            trigger OnValidate()
            var
                FacultyRec: Record Faculty;
            begin
                FacultyRec.SetRange(Code, Faculty);
                if FacultyRec.FindFirst() then begin
                    "Faculty Name" := FacultyRec.Name;
                end else begin
                    "Faculty Name" := '';
                end;
            end;
        }
        field(6; "Faculty Name"; Text[200])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(7; Level; Enum Level)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(8; Semester; Enum Semester)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(9; "Student ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Student Information"."Student ID";
            Editable = false;
        }
        field(10; "Course Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Courses.Code where("Department Code" = field(Department), "Faculty Code" = field(Faculty));

            // trigger OnValidate()
            // var
            //     CourseRec: Record Courses;
            // begin
            //     CourseRec.SetRange(Code, "Course Code");
            //     if CourseRec.FindFirst() then begin
            //         "Course Name" := CourseRec."Course Title";
            //         "Department Code" := CourseRec."Department Code";
            //         "Department Name" := CourseRec."Department Name";
            //         "Faculty Code" := CourseRec."Faculty Code";
            //         "Faculty Name" := CourseRec."Faculty Name";
            //         Level := CourseRec.Level;
            //         Semester := CourseRec.Semester;
            //     end else begin
            //         "Course Name" := '';
            //         "Department Code" := '';
            //         "Department Name" := '';
            //         "Faculty Code" := '';
            //         "Faculty Name" := '';
            //         // Level := Level::'';
            //         // Semester := Semester::'';
            //     end;
            // end;
        }
    }

    keys
    {
        key(PK; "Student ID", Department, Faculty, "Line No.")
        {
            Clustered = true;
        }
        key(SK; Level, Department, Faculty, "Student ID")
        {
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

    VAR
        PAGE: Page 42;

}