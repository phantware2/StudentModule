tableextension 50000 HumanResourcesSetup extends "Human Resources Setup"
{
    fields
    {
        field(50000; "Student Nos."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Student Nos.';
        }
    }
}