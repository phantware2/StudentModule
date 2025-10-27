table 50011 "Screening Score"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; ScreeningScoreID; Code[20])
        {
            Caption = 'Screening Score ID';
            DataClassification = CustomerContent;
        }
        field(2; "Application ID"; Code[20])
        {
            Caption = 'Application ID';
            DataClassification = CustomerContent;
        }
        field(3; "UTME Score"; Decimal)
        {
            Caption = 'UTME Score';
            DataClassification = CustomerContent;
        }
        field(4; "Exam Score"; Decimal)
        {
            Caption = 'Exam Score';
            DataClassification = CustomerContent;
        }
        field(5; "OLevel Score"; Decimal)
        {
            Caption = 'OLevel Score';
            DataClassification = CustomerContent;
        }
        field(6; "Weighted Score"; Decimal)
        {
            Caption = 'Weighted Score';
            DataClassification = CustomerContent;
        }
        field(7; Ranking; Integer)
        {
            Caption = 'Ranking';
            DataClassification = CustomerContent;
        }
        field(8; "Calculated Date"; Date)
        {
            Caption = 'Calculated Date';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; ScreeningScoreID) { Clustered = true; }
        key(SK; "Application ID") { }
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