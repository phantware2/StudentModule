tableextension 50002 MyExtension extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50000; "SG_ Retail Customer"; Boolean)
        {
            Caption = 'SG_ Retail Customer';
            DataClassification = ToBeClassified;
        }
    }
}