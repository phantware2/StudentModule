table 50004 Courses
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Code; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Course Title"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Semester; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Grades; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = A,B,C,D,F;
        }
        field(5; "Department Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Department.Code;
        }
        field(6; "Department Name"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Faculty Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Faculty.Code;
        }
        field(8; "Faculty Name"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(9; Units; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(10; Level; Enum Level)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Code, "Course Title", "Faculty Code", "Department Code")
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