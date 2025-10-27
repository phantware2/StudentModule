table 50012 "Admission Offer"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Offer ID"; Code[20])
        {
            Caption = 'Offer ID';
            DataClassification = CustomerContent;
        }
        field(2; "Application ID"; Code[20])
        {
            Caption = 'Application ID';
            DataClassification = CustomerContent;
            TableRelation = Application;
        }
        field(3; "Program Code"; Code[20])
        {
            Caption = 'Program Code';
            DataClassification = CustomerContent;
            TableRelation = Program;
        }
        field(4; "Offer Date"; Date)
        {
            Caption = 'Offer Date';
            DataClassification = CustomerContent;
        }
        field(5; "Offer Status"; Enum Status)
        {
            Caption = 'Offer Status';
            DataClassification = CustomerContent;
        }
        field(6; OfferExpiryDate; Date)
        {
            Caption = 'Offer Expiry Date';
            DataClassification = CustomerContent;
        }
        field(7; AcceptanceFeeReference; Text[50])
        {
            Caption = 'Acceptance Fee Reference';
            DataClassification = CustomerContent;
        }
        field(8; OfferLetterURL; Text[250])
        {
            Caption = 'Offer Letter URL';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Offer ID") { Clustered = true; }
        key(SK; "Application ID") { }
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