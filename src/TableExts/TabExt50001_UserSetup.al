tableextension 50001 UserSetupExt extends "User Setup"
{
    fields
    {
        // Add changes to table fields here
        field(50000; "Allow to Create BRV"; Boolean)
        {
            Caption = 'Allow to Create BRV';
            DataClassification = CustomerContent;
        }
        field(50001; "Bank Selector"; Boolean)
        {
            DataClassification = CustomerContent;
        }
    }
}