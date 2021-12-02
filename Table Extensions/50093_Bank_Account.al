tableextension 50093 "Bank Account" extends 270
{
    fields
    {
        field(50000; "Account used on Report Package"; Boolean)
        {
            CaptionML = DAN = 'Konto anvendes i rapportpakken', ENU = 'Account used on Report Package';
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}