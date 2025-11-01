table 50014 "Student Registration"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Registration No."; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(2; "Jamb Reg No."; Code[50])
        {
            DataClassification = CustomerContent;
        }
        field(3; "First Name"; Text[200])
        {
            DataClassification = CustomerContent;
        }
        field(4; "Middle Name"; Text[200])
        {
            DataClassification = CustomerContent;
        }
        field(5; DOB; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Date of Birth';
        }
        field(6; Age; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(7; "Course Of Study"; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(8; "Course Name"; Text[200])
        {
            DataClassification = CustomerContent;
        }
        field(9; "Department Code"; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(10; "Department Name"; text[200])
        {
            DataClassification = CustomerContent;
        }
        field(11; "Faculty Code"; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(12; "Faculty Name"; Text[200])
        {
            DataClassification = CustomerContent;
        }
        field(13; Registered; Boolean)
        {
            DataClassification = CustomerContent;
        }
        field(14; "Jamb Score"; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(15; "Registration Date"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(16; "Registered by"; Code[50])
        {
            DataClassification = CustomerContent;
        }
        field(17; "Application ID"; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(18; "ProspectiveStudentID"; Code[20])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Registration No.")
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