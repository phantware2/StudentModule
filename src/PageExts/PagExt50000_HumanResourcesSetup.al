pageextension 50000 HumanResourcesSetup extends "Human Resources Setup"
{
    layout
    {
        addlast(Content)
        {
            field("Student Nos."; Rec."Student Nos.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the extended student numbers.';
            }
        }
    }
}