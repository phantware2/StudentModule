table 50008 Application
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Application ID"; Code[20])
        {
            Caption = 'Application ID';
            DataClassification = CustomerContent;
        }
        field(2; ProspectiveStudentID; Code[20])
        {
            Caption = 'Prospective Student ID';
            DataClassification = CustomerContent;
            TableRelation = "Prospective Student";
        }
        field(3; "ApplicationType"; Option)
        {
            Caption = 'Application Type';
            OptionMembers = FullTime,PartTime,DirectEntry,JUPEB;
            DataClassification = CustomerContent;
        }
        field(4; "Application Date"; Date)
        {
            Caption = 'Application Date';
            DataClassification = CustomerContent;
        }
        field(5; "Application Method"; Option)
        {
            Caption = 'Application Method';
            OptionMembers = Portal,WalkIn;
            DataClassification = CustomerContent;
        }
        field(6; "Application Fee Paid"; Boolean)
        {
            Caption = 'Application Fee Paid';
            DataClassification = CustomerContent;
        }
        field(7; "Payment Reference"; Text[50])
        {
            Caption = 'Payment Reference';
            DataClassification = CustomerContent;
        }
        field(8; ApplicationDocumentsComplete; Boolean)
        {
            Caption = 'Documents Complete';
            DataClassification = CustomerContent;
        }
        field(9; SubmittedBy; Text[50])
        {
            Caption = 'Submitted By';
            DataClassification = CustomerContent;
        }
        field(10; SubmittedDate; Date)
        {
            Caption = 'Submitted Date';
            DataClassification = CustomerContent;
        }
        field(11; ApplicationStatus; Option)
        {
            Caption = 'Application Status';
            OptionMembers = New,UnderReview,Accepted,Rejected,Waitlisted;
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Application ID") { Clustered = true; }
        key(SK; ProspectiveStudentID) { }
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