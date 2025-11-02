table 50017 "Voucher Header Workflow"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[10])
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(2; Description; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(3; Status; Blob)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "No. Series"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "No.")
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
        SchoolSetup: Record "School Setup";
        NoSeries: Codeunit "No. Series";
    begin
        SchoolSetup.Get();
        If "No." <> '' then begin
            NoSeries.GetNextNo(SchoolSetup."Voucher Workflow Nos.");
        end;
    end;
}