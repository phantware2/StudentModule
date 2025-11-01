page 50020 "Bank Request"
{
    PageType = Card;
    SourceTable = "Voucher Header";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field("Responsibility Center"; Rec."Responsibility Center")
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
                field(ProspectiveStudentID; Rec.ProspectiveStudentID)
                {
                    ApplicationArea = All;
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    Caption = 'Prospective Student Full Name';
                }
                field(Nature; Rec.Nature)
                {
                    ApplicationArea = All;
                }
                field("Bank Name"; Rec."Bank Name")
                {
                    ApplicationArea = All;
                    Caption = 'Receiving Bank';
                }
                field("Depositor Name"; Rec."Depositor Name")
                {
                    ApplicationArea = All;
                }
                field("Credit Amount"; Rec."Credit Amount")
                {
                    ApplicationArea = All;
                }
                field("Paid Date"; Rec."Paid Date")
                {
                    ApplicationArea = All;
                }
                field("Credit Date"; Rec."Credit Date")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                    Caption = 'Cost Center';
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                    Caption = 'Division';
                }
                field(Narration; Rec.Narration)
                {
                    ApplicationArea = All;
                }
            }
        }
        area(FactBoxes)
        {
            part(Attachments; "Doc. Attachment List Factbox")
            {
                ApplicationArea = All;
                SubPageLink = "Table ID" = CONST(Database::"Voucher Header"), "No." = FIELD("Document No.");
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(SubmitRequest)
            {
                Caption = 'Submit Request';
                ApplicationArea = All;
                Image = SendConfirmation;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    // DocAttachment: Record "Document Attachment";
                    // VoucherHeader: Record "Voucher Header";

                    mycode: Codeunit "File Upload";
                begin
                    // VoucherHeader.SetRange("Document No.", DocAttachment."No.");
                    // IF VoucherHeader.FindSet() THEN begin
                    //     Message('This is table attachment number %1', Rec."Document No.");
                    //     Rec.Status := Rec.Status::Released;
                    // end;
                    mycode.OnBeforeInsertAttachment();
                    // Message('Outside the code');
                end;
            }
        }
    }

    var
        myInt: Integer;
}