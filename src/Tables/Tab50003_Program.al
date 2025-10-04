table 50003 Program
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Code; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Name; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Department; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Department.Code;

            trigger OnValidate()
            var
                DepartmentRecord: Record Department;
            begin
                If DepartmentRecord.Get(Department) then begin
                    "Department Name" := DepartmentRecord.Name;
                    Faculty := DepartmentRecord."Faculty Code";
                    "Faculty Name" := DepartmentRecord."Faculty Name";
                end else begin
                    "Department Name" := '';
                    Faculty := '';
                    "Faculty Name" := '';
                end

            end;

        }
        field(4; "Department Name"; Text[200])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(5; Faculty; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Faculty.Code;
            Editable = false;
        }
        field(6; "Faculty Name"; Text[200])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(7; Level; Enum Level)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Code, Level, Name)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}