table 50018 "SSCE Subject Required"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Department Code"; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(2; "Subject No."; Code[20])
        {
            DataClassification = CustomerContent;

            TableRelation = "SSCE Subjects"."Subject No.";

            trigger OnValidate()
            var
                subjectRec: Record "SSCE Subjects";
            begin
                if subjectRec.Get("Subject No.") then begin
                    "Subject Name" := subjectRec."Subject Name";
                end else begin
                    Error('Subject No. %1 does not exist in SSCE Subjects table.', "Subject No.");
                end;
            end;
        }
        field(3; "Subject Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(4; "UTME Score"; Integer)
        {
            DataClassification = CustomerContent;
            MinValue = 0;
            MaxValue = 100;
        }
        field(5; "Jamb Score"; Integer)
        {
            DataClassification = CustomerContent;
            MinValue = 0;
            MaxValue = 100;
        }
        field(6; "Jamb Required"; Boolean)
        {
            DataClassification = CustomerContent;
        }
        field(7; "CA Score"; Integer)
        {
            DataClassification = CustomerContent;
            MinValue = 0;
            MaxValue = 50;
        }
    }

    keys
    {
        key(PK; "Department Code", "Subject No.")
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