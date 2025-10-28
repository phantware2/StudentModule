page 50015 "Admission Offers List"
{
    PageType = List;
    CardPageId = "Convert Applicant To Student";
    SourceTable = "Admission Offer";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Offer ID"; Rec."Offer ID") { ApplicationArea = All; }
                field("Application ID"; Rec."Application ID") { ApplicationArea = All; }
                field("Program Code"; Rec."Program Code") { ApplicationArea = All; }
                field("Offer Date"; Rec."Offer Date") { ApplicationArea = All; }
                field("Offer Status"; Rec."Offer Status") { ApplicationArea = All; }
                field(OfferExpiryDate; Rec.OfferExpiryDate) { ApplicationArea = All; }
            }
        }
    }
}