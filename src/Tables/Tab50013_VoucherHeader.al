table 50013 "Voucher Header"
{
    DataCaptionFields = "Voucher Type", "Document No.";
    DataClassification = CustomerContent;

    fields
    {

        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
        }
        field(2; "Voucher Type"; Option)
        {
            Caption = 'Voucher Type';
            DataClassification = CustomerContent;
            OptionMembers = BRR,BPR,BRV,BPV,CRV,CPV,JV;
        }
        field(3; Status; Option)
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
            OptionMembers = Open,"Pending Approval",Submitted,Released,Cancelled;
            // Editable = false;
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
            TableRelation = "Gen. Journal Template".Name;
        }
        field(6; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            DataClassification = CustomerContent;
            TableRelation = "Gen. Journal Batch".Name where("Journal Template Name" = field("Journal Template Name"));
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
            TableRelation = Customer."No.";

            trigger OnValidate()
            var
                CustRec: Record Customer;
            begin
                if CustRec.Get(Rec."Customer No.") then
                    "Customer Name" := CustRec.Name;
            end;
        }
        field(10; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(11; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            DataClassification = CustomerContent;
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1));
        }
        field(12; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            DataClassification = CustomerContent;
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(2));
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
            TableRelation = "G/L Account"."Account Type" where("No." = field("Account No."));

            trigger OnValidate()
            var
                GLAccRec: Record "G/L Account";
            begin
                if GLAccRec.Get(Rec."Account No.") then
                    "Account Name" := GLAccRec.Name;
            end;
        }
        field(15; "Account Name"; Text[100])
        {
            Caption = 'Account Name';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(16; "Responsibility Center"; Code[20])
        {
            Caption = 'Responsibility Center';
            DataClassification = CustomerContent;
            TableRelation = "Responsibility Center".Code;
        }
        field(17; Nature; Option)
        {
            Caption = 'Nature';
            DataClassification = CustomerContent;
            OptionMembers = "Direct Payment","Indirect Payment",Refund;
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
            TableRelation = "Prospective Student".ProspectiveStudentID;

            trigger OnValidate()
            var
                ProsStudRec: Record "Prospective Student";
            begin
                if ProsStudRec.Get(Rec."ProspectiveStudentID") then
                    "Full Name" := ProsStudRec."Full Name";
            end;
        }
        field(25; "Full Name"; Text[100])
        {
            Caption = 'Prospective Student Full Name';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(26; "Created By"; Text[50])
        {
            Caption = 'Created By';
            DataClassification = CustomerContent;
        }
        field(27; "Depositor Name"; Text[100])
        {
            Caption = 'Depositor Name';
            DataClassification = CustomerContent;
        }
        field(28; "Paid Date"; Date)
        {
            Caption = 'Paid Date';
            DataClassification = CustomerContent;
        }
        field(29; "Bank No."; Code[20])
        {
            Caption = 'Bank No.';
            DataClassification = CustomerContent;
        }
        field(30; "Credit Date"; Date)
        {
            Caption = 'Credit Date';
            DataClassification = CustomerContent;
        }
        field(31; "Receipt Date"; Date)
        {
            Caption = 'Receipt Date';
            DataClassification = CustomerContent;
        }
        field(32; "Request No."; Code[20])
        {
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Document No.", "Voucher Type")
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
    var
        NoSeries: Codeunit "No. Series";
        SchoolSetup: Record "School Setup";
    begin
        SchoolSetup.Get();
        If "Document No." <> '' then begin
            "Document No." := NoSeries.GetNextNo(SchoolSetup."Voucher Nos.")
        end;
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