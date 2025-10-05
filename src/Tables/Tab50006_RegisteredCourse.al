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
        }
        field(3; "Department Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Department Name"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Faculty Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Faculty Name"; Blob)
        {
            DataClassification = ToBeClassified;
        }
        field(7; Level; Enum Level)
        {
            DataClassification = ToBeClassified;
        }
        field(8; Semester; Enum Semester)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Student ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Student Information"."Student ID";
        }
        field(10; "Course Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Courses.Code;
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