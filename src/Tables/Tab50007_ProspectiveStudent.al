table 50007 "Prospective Student"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "ProspectiveStudentID"; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(2; "First Name"; Text[50])
        {
            Caption = 'First Name';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                "Full Name" := "First Name" + ' ' + "Middle Name" + ' ' + "Last Name";
            end;
        }
        field(3; "Middle Name"; Text[50])
        {
            Caption = 'Middle Name';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                "Full Name" := "First Name" + ' ' + "Middle Name" + ' ' + "Last Name";
            end;
        }
        field(4; "Last Name"; Text[50])
        {
            Caption = 'Last Name';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                "Full Name" := "First Name" + ' ' + "Middle Name" + ' ' + "Last Name";
            end;
        }
        field(5; "DateOfBirth"; Date)
        {
            Caption = 'Date of Birth';
            DataClassification = CustomerContent;
        }
        field(6; Gender; Option)
        {
            Caption = 'Gender';
            OptionMembers = Male,Female,Other;
            DataClassification = CustomerContent;
        }
        field(7; Email; Text[100])
        {
            Caption = 'Email';
            DataClassification = CustomerContent;
        }
        field(8; Phone; Text[30])
        {
            Caption = 'Phone';
            DataClassification = CustomerContent;
        }
        field(9; Address; Text[250])
        {
            Caption = 'Address';
            DataClassification = CustomerContent;
        }
        field(10; Country; Text[50])
        {
            Caption = 'Nationality';
            DataClassification = CustomerContent;
        }
        field(11; JAMBRegNo; Text[30])
        {
            Caption = 'JAMB Reg No';
            DataClassification = CustomerContent;
        }
        field(12; UTMEScore; Decimal)
        {
            Caption = 'UTME Score';
            DataClassification = CustomerContent;
        }
        field(13; "Preferred Program Code"; Code[20])
        {
            Caption = 'Preferred Program';
            DataClassification = CustomerContent;
            TableRelation = Program;
        }
        field(14; "ApplicationStatus"; Option)
        {
            Caption = 'Application Status';
            DataClassification = CustomerContent;
            OptionMembers = New,Applied;
        }
        field(15; Source; Option)
        {
            Caption = 'Source';
            OptionMembers = Portal,WalkIn,Agent;
            DataClassification = CustomerContent;
        }
        field(16; CreatedBy; Text[50])
        {
            Caption = 'Created By';
            DataClassification = CustomerContent;
        }
        field(17; CreatedDate; Date)
        {
            Caption = 'Created Date';
            DataClassification = CustomerContent;
        }
        field(18; ModifiedDate; Date)
        {
            Caption = 'Modified Date';
            DataClassification = CustomerContent;
        }
        field(19; ApplicationFormPaid; Boolean)
        {
            Caption = 'Application Form Paid';
            DataClassification = CustomerContent;
        }
        field(20; "Full Name"; Text[101])
        {
            Caption = 'Full Name';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(21; "Application Fee Paid"; Boolean)
        {
            DataClassification = CustomerContent;
        }
        field(22; "Application ID"; Code[20])
        {
            Caption = 'Application ID';
            DataClassification = CustomerContent;
        }
        field(23; "Source Document No."; Code[20])
        {
            Caption = 'Source Doc. no.';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "ProspectiveStudentID") { Clustered = true; }
    }

    fieldgroups
    {
        // Add changes to field groups here
        fieldgroup(DropDown; "ProspectiveStudentID", "Full Name", Address)
        {
        }
        fieldgroup(Brick; "ProspectiveStudentID", "Full Name", Address)
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