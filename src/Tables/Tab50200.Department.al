table 50200 Department
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
        }
        field(4; "Faculty Name"; Code[200])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
}