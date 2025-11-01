page 50019 "Bank Requests"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Voucher Header";
    CardPageId = "Bank Request";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field("Credit Amount"; Rec."Credit Amount")
                {
                    ApplicationArea = All;
                }
                field("Receipt Date"; Rec."Receipt Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}