tableextension 50092 "Currency NotUsed" extends 4
{
    fields
    {
        field(50000; "Bank Name"; text[50])
        {
            CaptionML = DAN = 'Banknavn', ENU = 'Bank Name';
            DataClassification = ToBeClassified;
        }
        field(50001; "Bank Branch No."; text[20])
        {
            CaptionML = DAN = 'Bankregistreringsnr.', ENU = 'Bank Branch No.';
            DataClassification = ToBeClassified;
        }
        field(50002; "Bank Account No."; text[30])
        {
            CaptionML = DAN = 'Bankkontonr.', ENU = 'Bank Account No.';
            DataClassification = ToBeClassified;
        }
        field(50003; "IBAN"; Code[50])
        {
            CaptionML = DAN = 'IBAN', ENU = 'IBAN';
            DataClassification = ToBeClassified;
        }
        field(50004; "SWIFT Code"; Code[20])
        {
            CaptionML = DAN = 'SWIFT-kode', ENU = 'SWIFT Code';
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}