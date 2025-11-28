table 50017 "SSCE Subjects"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Subject No."; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(2; "Subject Name"; Text[100])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Subject No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
        fieldgroup(DropDown; "Subject No.", "Subject Name")
        {
        }
        fieldgroup(Brick; "Subject No.", "Subject Name")
        {
        }
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