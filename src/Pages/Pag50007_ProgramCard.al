page 50007 "Program Card"
{
    PageType = Card;
    SourceTable = Program;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Program; Rec.Program)
                {
                    ApplicationArea = All;
                }
                field(Department; Rec.Department) { ApplicationArea = All; }
                field("Department Name"; Rec."Department Name")
                {
                    ApplicationArea = All;
                }
                field(Level; Rec.Level)
                {
                    ApplicationArea = All;
                }
                field(Faculty; Rec.Faculty) { ApplicationArea = All; }
                field("Faculty Name"; Rec."Faculty Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}