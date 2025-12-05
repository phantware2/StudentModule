pageextension 50001 UserSetupExt extends "User Setup"
{
    layout
    {
        // Add changes to page layout here
        addafter("Allow Deferral Posting To")
        {
            field("Allow to Create BRV"; Rec."Allow to Create BRV")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies whether the user is allowed to create Bank Release Vouchers (BRV).';
            }
            field("Bank Selector"; Rec."Bank Selector")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies whether the bank selector feature is enabled for the user.';
            }
        }
    }
}