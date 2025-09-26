table 50006 "Registered Course"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code Code"; Code[20])
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
    }

    keys
    {
        key(PK; "Code Code", "Department Code", Level)
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