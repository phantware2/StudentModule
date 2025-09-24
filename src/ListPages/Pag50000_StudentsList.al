page 50000 Students
{
    PageType = List;
    SourceTable = "Student Information";
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "Student Card";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Student ID"; Rec."Student ID")
                {
                }
                field("First Name"; Rec."First Name")
                {
                }
                field("Last Name"; Rec."Last Name")
                {
                }
                field("Date of Birth"; Rec.DOB)
                {
                }
                field("Gender"; Rec."Gender")
                {
                }
                field(Status; Rec.Status)
                {
                }
                field(Department; Rec.Department)
                { }
            }
        }
    }

    actions
    {
        area(processing)
        {
            // Add actions if needed
        }
    }
}