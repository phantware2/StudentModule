table 50003 Program
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Code; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Program; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Department; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Department.Code;
        }
        field(4; "Department Name"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(5; Faculty; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Faculty.Code;
        }
        field(6; "Faculty Name"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(7; Level; Enum Level)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Code)
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