table 50010 "Exam Sitting"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Sitting ID"; Code[20])
        {
            Caption = 'Sitting ID';
            DataClassification = CustomerContent;
        }
        field(2; "Application ID"; Code[20])
        {
            Caption = 'Application ID';
            DataClassification = CustomerContent;
        }
        field(3; "Exam ID"; Code[20])
        {
            Caption = 'Exam ID';
            DataClassification = CustomerContent;
        }
        field(4; "Sitting DateTime"; DateTime)
        {
            Caption = 'Sitting DateTime';
            DataClassification = CustomerContent;
        }
        field(5; "Seat Number"; Text[20])
        {
            Caption = 'Seat Number';
            DataClassification = CustomerContent;
        }
        field(6; "Center Code"; Code[20])
        {
            Caption = 'Center Code';
        }
        field(7; Invigilator; Text[100])
        {
            Caption = 'Invigilator';
        }
        field(8; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = Scheduled,Sat,Absent,Cancelled;
        }
        field(9; "Raw Score"; Decimal)
        {
            Caption = 'Raw Score';
            DataClassification = CustomerContent;
        }
        field(10; Score; Decimal)
        {
            Caption = 'Score';
            DataClassification = CustomerContent;
        }
        field(11; "Graded By"; Text[50])
        {
            Caption = 'Graded By';
            DataClassification = CustomerContent;
        }
        field(12; "Graded Date"; Date)
        {
            Caption = 'Graded Date';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Sitting ID") { Clustered = true; }
        key(SK1; "Application ID") { }
        key(SK2; "Exam ID") { }
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