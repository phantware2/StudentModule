table 50013 "Voucher Header"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Voucher Type"; Option)
        {
            Caption = 'Voucher Type';
            DataClassification = CustomerContent;
            OptionMembers = ApplicationFee,ExamFee,AcceptanceFee,TuitionFee,HostelFee,OtherFees;
        }
        field(2; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
        }
        field(3; Status; Option)
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
            OptionMembers = Open,"Pending Approval",Released,Cancelled;
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = CustomerContent;
        }
        field(5; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            DataClassification = CustomerContent;
        }
        field(6; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            DataClassification = CustomerContent;
        }
        field(7; "Bank Name"; Text[50])
        {
            Caption = 'Receiving Bank';
            DataClassification = CustomerContent;
        }
        field(8; "Receipt Amount"; Decimal)
        {
            Caption = 'Credit Amount';
            DataClassification = CustomerContent;
        }
        field(9; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = CustomerContent;
        }
        field(10; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            DataClassification = CustomerContent;
        }
        field(11; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            DataClassification = CustomerContent;
        }
        field(12; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            DataClassification = CustomerContent;
        }
        field(13; Narration; Text[100])
        {
            Caption = 'Narration';
            DataClassification = CustomerContent;
        }
        field(14; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            DataClassification = CustomerContent;
        }
        field(15; "Account Name"; Text[100])
        {
            Caption = 'Account Name';
            DataClassification = CustomerContent;
        }
        field(16; "Responsibility Center"; Code[20])
        {
            Caption = 'Responsibility Center';
            DataClassification = CustomerContent;
        }
        field(17; Nature; Option)
        {
            Caption = 'Nature';
            DataClassification = CustomerContent;
            OptionMembers = "Cash Advance","Direct Payment","Indirect Payment";
        }
        field(18; "Account Type"; Option)
        {
            Caption = 'Account Type';
            DataClassification = CustomerContent;
            OptionMembers = "G/L Account","Customer","Vendor","Bank Account";
        }
        field(19; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            DataClassification = CustomerContent;
        }
        field(20; "Approved By"; Text[50])
        {
            Caption = 'Approved By';
            DataClassification = CustomerContent;
        }
        field(21; "Debit Amount"; Decimal)
        {
            Caption = 'Debit Amount';
            DataClassification = CustomerContent;
        }
        field(22; "Credit Amount"; Decimal)
        {
            Caption = 'Credit Amount';
            DataClassification = CustomerContent;
        }
        field(23; " Posting Doc No."; Code[20])
        {
            Caption = 'Posting Doc No.';
            DataClassification = CustomerContent;
        }
        field(24; "ProspectiveStudentID"; Code[20])
        {
            Caption = 'Prospective Student ID';
            DataClassification = CustomerContent;
        }
        field(25;)
    }
    keys
    {
        key(PK; "Voucher Type", "Document No.")
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