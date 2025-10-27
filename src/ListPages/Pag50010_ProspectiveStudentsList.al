page 50010 "Prospective Students List"
{
    Caption = 'Prospective Students List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Prospective Student";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(ProspectiveStudentID; Rec.ProspectiveStudentID) { ApplicationArea = All; }
                field("First Name"; Rec."First Name") { ApplicationArea = All; }
                field("Last Name"; Rec."Last Name") { ApplicationArea = All; }
                field(Email; Rec.Email) { ApplicationArea = All; }
                field(Phone; Rec.Phone) { ApplicationArea = All; }
                field(ApplicationStatus; Rec.ApplicationStatus) { ApplicationArea = All; }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ScheduleExam)
            {
                Caption = 'Schedule Exam';
                Image = Calendar;
                trigger OnAction()
                begin
                    // Call codeunit to schedule exam (implement logic in CU_ExamManager)
                end;
            }
            action(ConvertToStudent)
            {
                Caption = 'Convert to Student';
                Image = Save;
                trigger OnAction()
                begin
                    // Call CU_ApplicantToStudentConverter
                end;
            }
        }
    }
}