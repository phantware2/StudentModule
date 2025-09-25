table 50005 Result
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Student Information"."Student ID";
        }
        field(2; "Course Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Courses.Code;
        }
        field(3; "Course Title"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Level; Enum Level)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Semester; Enum Semester)
        {
            DataClassification = ToBeClassified;
        }
        field(6; Score; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(7; Grade; Enum Grade)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Department Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Department.Code;
        }
        field(9; "Department Name"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Faculty Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Faculty.Code;
        }
        field(11; "Faculty Name"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Student ID", "Course Code")
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