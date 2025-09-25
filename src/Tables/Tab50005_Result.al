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
    }

    keys
    {
        key(Key1; MyField)
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