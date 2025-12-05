tableextension 50003 GenJournalLineExt extends "Gen. Journal Line"
{
    fields
    {
        // Add changes to table fields here
        field(50000; "Voucher Type"; Option)
        {
            Caption = 'Voucher Type';
            DataClassification = CustomerContent;
            OptionMembers = BRR,BPR,BRV,BPV,CRV,CPV,JV;
        }
        field(50001; "Source Document No."; Code[20])
        {
            Caption = 'Source Doc. no.';
            DataClassification = CustomerContent;
        }
        field(50002; "Depositor Name"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50003; "Paid Date"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(50004; "ProspectiveStudentID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50005; "Receipt Amount"; Decimal)
        {
            Caption = 'Credit Amount';
        }
        field(50006; Narration; Text[100])
        {
            Caption = 'Narration';
            DataClassification = CustomerContent;
        }
        field(50007; Nature; Option)
        {
            Caption = 'Nature';
            DataClassification = CustomerContent;
            OptionMembers = "Direct Payment","Indirect Payment",Refund;
        }
    }
}