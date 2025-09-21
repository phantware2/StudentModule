table 50000 "Student Information"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(2; "First Name"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(3; "Last Name"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(4; "Middle Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(5; DOB; Date)
        {
            DataClassification = CustomerContent;
        }
        field(6; Gender; Option)
        {
            OptionMembers = Male,"Female","Non-Binary",Other;
        }
        field(7; Email; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(8; Phone; Text[15])
        {
            DataClassification = CustomerContent;
        }
        field(9; Address; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(10; City; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(11; State; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(12; "Zip Code"; Text[10])
        {
            DataClassification = CustomerContent;
        }
        field(13; Country; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(14; "Enrollment Date"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(15; "Graduation Date"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(16; Age; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(17; Status; Option)
        {
            OptionMembers = "Processing Admission",Admitted,Probation,Rosticated,Graduated;
        }
        field(18; "Father's Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(19; "Mother's Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(20; Faculty; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(21; Department; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(22; "Department Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(23; Program; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(24; "Program Name"; Blob)
        {
            DataClassification = ToBeClassified;
        }
        field(25; Level; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(26; Semester; Option)
        {
            OptionMembers = "1st Semester","2nd Semester","3rd Semester";
        }
    }

    keys
    {
        key(PK; "Student ID")
        {
            Clustered = true;
        }
    }
}