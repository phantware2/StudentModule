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
            OptionMembers = New,Submitted,UnderReview,ExamScheduled,ExamCompleted,ScreeningPending,Screened,Qualified,NotQualified,OfferIssued,OfferAccepted,OfferDeclined,Admitted,Rejected,Cancelled;
            OptionCaption = 'New,Submitted,Under Review,Exam Scheduled,Exam Completed,Screening Pending,Screened,Qualified,Not Qualified,Offer Issued,Offer Accepted,Offer Declined,Admitted,Rejected,Cancelled';
            DataClassification = CustomerContent;
        }
        field(12; "Student Name"; Text[100])
        {
            Caption = 'Student Name';
            DataClassification = CustomerContent;
        }
        field(13; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';
            DataClassification = CustomerContent;
        }
        field(14; Gender; Option)
        {
            Caption = 'Gender';
            optionMembers = Male,Female,Other;
            DataClassification = CustomerContent;
        }
        field(15; "Phone Number"; Text[30])
        {
            Caption = 'Phone Number';
            DataClassification = CustomerContent;
        }
        field(16; "Email Address"; Text[100])
        {
            Caption = 'Email Address';
            DataClassification = CustomerContent;
        }
        field(18; "UTME Score"; Decimal)
        {
            Caption = 'UTME Score';
            DataClassification = CustomerContent;
        }
        field(19; "JAMB Registration No"; Text[30])
        {
            Caption = 'JAMB Registration No';
            DataClassification = CustomerContent;
        }
        field(20; "Preferred Program Code"; Code[20])
        {
            Caption = 'Preferred Program';
            DataClassification = CustomerContent;
            TableRelation = Program;
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

    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit "No. Series";
        SchoolSetup: Record "School Setup";
    begin
        SchoolSetup.Get();
        if "Application ID" = '' then begin
            "Application ID" := NoSeriesMgt.GetNextNo(SchoolSetup."Application Nos.");
        end;
    end;
}