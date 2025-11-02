table 50016 "School Setup"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(2; "Student Nos."; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
        field(3; "Prospective Student Nos."; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
        field(4; "Student Application Nos."; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
        field(5; "Voucher Nos."; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
        field(6; "Posted BRR Nos."; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
        field(7; "Voucher Workflow Nos."; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    procedure InsertRecord()
    begin
        If Not FindFirst() then
            Insert();
    end;
}