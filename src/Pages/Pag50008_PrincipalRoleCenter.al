page 50008 "Principal Role Center"
{
    Editable = false;
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            part(Control6; "Headline RC Security Admin")
            {
                ApplicationArea = Basic, Suite;
            }
            part("Job Queue Tasks Activities"; "Job Queue Tasks Activities")
            {
                ApplicationArea = Suite;
            }
            part("Emails"; "Email Activities")
            {
                ApplicationArea = Basic, Suite;
            }
            part("Job Queue"; "Job Queue Activities")
            {
                ApplicationArea = Basic, Suite;
            }
            part(ApprovalsActivities; "Approvals Activities")
            {
                ApplicationArea = Suite;
            }
            part(PowerBIEmbeddedReportPart; "Power BI Embedded Report Part")
            {
                AccessByPermission = TableData "Power BI Context Settings" = I;
                ApplicationArea = Basic, Suite;
            }
            part("My Job Queue"; "My Job Queue")
            {
                ApplicationArea = Basic, Suite;
                Visible = false;
            }
            part(Control37; "Report Inbox Part")
            {
                AccessByPermission = TableData "Report Inbox" = R;
                ApplicationArea = Basic, Suite;
            }
            systempart(MyNotes; MyNotes)
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }

    actions
    {
        area(embedding)
        {
            action(Students)
            {
                ApplicationArea = Basic, Suite;
                RunObject = Page Students;
            }
            action(Courses)
            {
                ApplicationArea = Basic, Suite;
                RunObject = Page Courses;
            }
            action(RegisteredCourses)
            {
                ApplicationArea = Basic, Suite;
                RunObject = Page "Registered Course List";
            }
            action(Faculties)
            {
                ApplicationArea = Basic, Suite;
                RunObject = Page Faculties;
            }
            action(Departments)
            {
                ApplicationArea = Basic, Suite;
                RunObject = Page Departments;
            }
        }
        area(sections)
        {
            group("Teachers Management")
            {
                Caption = 'Teachers Management';
                action(Teachers)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Teachers';
                    // RunObject = Page Teachers;
                }
                action(TeachersAttendance)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Teacher Attendance';
                    // RunObject = Page "Teacher Attendance";
                    RunPageMode = View;
                    ToolTip = 'View teacher attendance records.';
                }
            }
            group(StudentManagement)
            {
                Caption = 'Student Management';
                action("Students Information")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Students';
                    RunObject = Page Students;
                }
                action(StudentAttendance)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Student Attendance';
                    // RunObject = Page "Student Attendance";
                    RunPageMode = View;
                    ToolTip = 'View student attendance records.';
                }
                action(Results)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Results';
                    RunObject = Page Results;
                }
                action("Registered Courses")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Registered Courses';
                    RunObject = Page "Registered Course List";
                }
            }
            group("Schools Management")
            {
                Caption = 'Schools Management';
                action(Faculty)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Faculties';
                    RunObject = Page Faculties;
                }
                action(Department)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Departments';
                    RunObject = Page Departments;
                }
                action(Programs)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Programs';
                    // RunObject = Page Programs;
                }
                action(Course)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Courses';
                    RunObject = Page Courses;
                }
                action(Semesters)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Semesters';
                    // RunObject = Page Semesters;
                }
                action(Levels)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Levels';
                    // RunObject = Page Levels;
                }
                action(Grades)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Grades';
                    // RunObject = Page Grades;
                }
            }
        }
    }
}
