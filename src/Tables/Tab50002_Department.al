table 50002 Department
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
        field(3; "Faculty Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Faculty.Code;

            trigger OnValidate()
            var
                Faculty: Record Faculty;
            begin
                if Faculty.Get("Faculty Code") then begin
                    "Faculty Name" := Faculty.Name
                end else
                    "Faculty Name" := ' ';
            end;
        }
        field(4; "Faculty Name"; Code[200])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(Brick; Code, Name, "Faculty Code", "Faculty Name") { }
        fieldgroup(Dropdown; Code, Name, "Faculty Code", "Faculty Name") { }
    }
}