table 50006 "Registered Course"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Code; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Course Name"; Text[200])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(3; "Department Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(4; "Department Name"; Text[200])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(5; "Faculty Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
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
            TableRelation = Courses.Code where("Department Code" = field("Department Code"), "Faculty Code" = field("Faculty Code"));

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
        key(PK; Code, "Department Code", Level, "Student ID")
        {
            Clustered = true;
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

}