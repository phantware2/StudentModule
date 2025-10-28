table 50009 "Entrance Exam"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Exam ID"; Code[20])
        {
            Caption = 'Exam ID';
            DataClassification = CustomerContent;
        }
        field(2; "Exam Name"; Text[100])
        {
            Caption = 'Exam Name';
            DataClassification = CustomerContent;
        }
        field(3; "Exam Type"; Option)
        {
            Caption = 'Exam Type';
            DataClassification = CustomerContent;
            OptionMembers = CBT,Paper;
        }
        field(4; "Exam Date"; Date)
        {
            Caption = 'Exam Date';
            DataClassification = CustomerContent;
        }
        field(5; Venue; Text[100])
        {
            Caption = 'Venue';
            DataClassification = CustomerContent;
        }
        field(6; "Duration Mins"; Integer)
        {
            Caption = 'Duration (mins)';
            DataClassification = CustomerContent;
        }
        field(7; "Max Score"; Decimal)
        {
            Caption = 'Max Score';
            DataClassification = CustomerContent;
        }
        field(8; "Passing Score"; Decimal)
        {
            Caption = 'Passing Score';
            DataClassification = CustomerContent;
        }
        field(9; "IsActive"; Boolean)
        {
            Caption = 'Is Active';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Exam ID") { Clustered = true; }
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