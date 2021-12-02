tableextension 50090 "Company Information EX ERPG" extends 79

//DSDK.00 LV 2018.12.27 - Company Information EXT

// DSDK.05 LV 2019.07.18 - Translate Country Name
// DSDK.06 LV 2019.08.12 - add country to bottom lines options
// DSDK.07 LV 2020.01.14 - FIK75
// DSDK.08 LV 2020.01.21 - FIK73
// DSDK.09 LV 2020.01.23 - bottom lines 4 to 5 fields per line & bottom caption
// DSDK.10 LV 2020.01.24 - GetCompanyName - param

{

    fields
    {
        // Add changes to table fields here
        field(50000; "FIK Bank Creditor No."; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50001; Param01; Option)
        {
            Caption = 'Felt01';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Navn,Adresse,Adresse 2,Postnr-Bynavn,SE/CVR-nr,Hjemmeside,Email,Telefon,Land',
                              ENU = ' ,Name,Address,Address 2,PostCode-City,VAT Reg.no,Homepage,Email,Phone,Country';
            OptionMembers = " ",Name,Address,"Address 2","PostCode-City","VAT Reg.no",Homepage,Email,Phone,Country;
        }
        field(50002; Param02; Option)
        {
            Caption = 'Felt02';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Navn,Adresse,Adresse 2,Postnr-Bynavn,SE/CVR-nr,Hjemmeside,Email,Telefon,Land',
                              ENU = ' ,Name,Address,Address 2,PostCode-City,VAT Reg.no,Homepage,Email,Phone,Country';
            OptionMembers = " ",Name,Address,"Address 2","PostCode-City","VAT Reg.no",Homepage,Email,Phone,Country;
        }
        field(50003; Param03; Option)
        {
            Caption = 'Felt03';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Navn,Adresse,Adresse 2,Postnr-Bynavn,SE/CVR-nr,Hjemmeside,Email,Telefon,Land',
                              ENU = ' ,Name,Address,Address 2,PostCode-City,VAT Reg.no,Homepage,Email,Phone,Country';
            OptionMembers = " ",Name,Address,"Address 2","PostCode-City","VAT Reg.no",Homepage,Email,Phone,Country;
        }
        field(50004; Param04; Option)
        {
            Caption = 'Felt04';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Navn,Adresse,Adresse 2,Postnr-Bynavn,SE/CVR-nr,Hjemmeside,Email,Telefon,Land',
                              ENU = ' ,Name,Address,Address 2,PostCode-City,VAT Reg.no,Homepage,Email,Phone,Country';
            OptionMembers = " ",Name,Address,"Address 2","PostCode-City","VAT Reg.no",Homepage,Email,Phone,Country;
        }
        field(50005; Param05; Option)
        {
            Caption = 'Felt05';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Navn,Adresse,Adresse 2,Postnr-Bynavn,SE/CVR-nr,Hjemmeside,Email,Telefon,Land',
                              ENU = ' ,Name,Address,Address 2,PostCode-City,VAT Reg.no,Homepage,Email,Phone,Country';
            OptionMembers = " ",Name,Address,"Address 2","PostCode-City","VAT Reg.no",Homepage,Email,Phone,Country;
        }
        field(50006; Param06; Option)
        {
            Caption = 'Felt06';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Navn,Adresse,Adresse 2,Postnr-Bynavn,SE/CVR-nr,Hjemmeside,Email,Telefon,Land',
                              ENU = ' ,Name,Address,Address 2,PostCode-City,VAT Reg.no,Homepage,Email,Phone,Country';
            OptionMembers = " ",Name,Address,"Address 2","PostCode-City","VAT Reg.no",Homepage,Email,Phone,Country;
        }
        field(50007; Param07; Option)
        {
            Caption = 'Felt07';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Navn,Adresse,Adresse 2,Postnr-Bynavn,SE/CVR-nr,Hjemmeside,Email,Telefon,Land',
                              ENU = ' ,Name,Address,Address 2,PostCode-City,VAT Reg.no,Homepage,Email,Phone,Country';
            OptionMembers = " ",Name,Address,"Address 2","PostCode-City","VAT Reg.no",Homepage,Email,Phone,Country;
        }
        field(50008; Param08; Option)
        {
            Caption = 'Felt08';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Navn,Adresse,Adresse 2,Postnr-Bynavn,SE/CVR-nr,Hjemmeside,Email,Telefon,Land',
                              ENU = ' ,Name,Address,Address 2,PostCode-City,VAT Reg.no,Homepage,Email,Phone,Country';
            OptionMembers = " ",Name,Address,"Address 2","PostCode-City","VAT Reg.no",Homepage,Email,Phone,Country;
        }
        field(50009; "Report Encoding"; Option)
        {
            Caption = 'Report Encoding';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = 'Windows,UTF-8',
                              ENU = 'Windows,UTF-8';
            OptionMembers = Windows,"UTF-8";
        }
        //DSDK.09
        field(50010; Param09; Option)
        {
            Caption = 'Felt09';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Navn,Adresse,Adresse 2,Postnr-Bynavn,SE/CVR-nr,Hjemmeside,Email,Telefon,Land',
                              ENU = ' ,Name,Address,Address 2,PostCode-City,VAT Reg.no,Homepage,Email,Phone,Country';
            OptionMembers = " ",Name,Address,"Address 2","PostCode-City","VAT Reg.no",Homepage,Email,Phone,Country;
        }
        field(50011; Param10; Option)
        {
            Caption = 'Felt10';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Navn,Adresse,Adresse 2,Postnr-Bynavn,SE/CVR-nr,Hjemmeside,Email,Telefon,Land',
                              ENU = ' ,Name,Address,Address 2,PostCode-City,VAT Reg.no,Homepage,Email,Phone,Country';
            OptionMembers = " ",Name,Address,"Address 2","PostCode-City","VAT Reg.no",Homepage,Email,Phone,Country;
        }
    }

    var
        myInt: Integer;

    local procedure "//DSDK.02.FIK"();
    begin
    end;

    procedure CreateFIKCheckSum(String: Text; Weight: Text; var Total: Integer; var CheckSum: Integer): Integer;
    var
        StringDigit: Integer;
        WeightDigit: Integer;
        ProductDigit: Integer;
    begin
        //>>DSDK.01.FIK
        EVALUATE(StringDigit, COPYSTR(String, 1, 1));
        EVALUATE(WeightDigit, COPYSTR(Weight, 1, 1));
        ProductDigit := StringDigit * WeightDigit;
        IF ProductDigit >= 10 THEN
            Total += 1 + (ProductDigit MOD 10)
        ELSE
            Total += ProductDigit;

        IF STRLEN(String) > 1 THEN BEGIN
            String := COPYSTR(String, 2, STRLEN(String) - 1);
            Weight := COPYSTR(Weight, 2, STRLEN(Weight) - 1);
            CreateFIKCheckSum(String, Weight, Total, CheckSum);
        END ELSE BEGIN
            CheckSum := 10 - (Total MOD 10);
            IF CheckSum = 10 THEN
                CheckSum := 0;
        END;
        EXIT(CheckSum);
        //<<DSDK.01.FIK
    end;

    local procedure ValidateFIKCheckSum(FikString: Text; Weight: Text): Boolean;
    var
        ActualCheckSum: Text;
        Total: Integer;
        ExpectedCheckSum: Integer;
    begin
        //>>DSDK.01.FIK
        ActualCheckSum := COPYSTR(FikString, STRLEN(FikString), 1);
        FikString := COPYSTR(FikString, 1, STRLEN(FikString) - 1);
        CreateFIKCheckSum(FikString, Weight, Total, ExpectedCheckSum);
        EXIT(ActualCheckSum = FORMAT(ExpectedCheckSum));
        //<<DSDK.01.FIK
    end;

    procedure EvaluateFIK(PaymentReference: Text; PaymentMethodCode: Code[10]): Text;
    var
        PaymentMethod: Record "Payment Method";
        Result: Boolean;
    begin
        //>>DSDK.01.FIK
        /*
        
        IF PaymentReference = '' THEN
          EXIT;
        Result := FALSE;
        PaymentMethod.GET(PaymentMethodCode);
        CASE PaymentMethod."Payment Type Validation" OF
          PaymentMethod."Payment Type Validation"::"FIK 71":
            BEGIN
              IF STRLEN(PaymentReference) > 15 THEN
                ERROR(FIKLengthErr,PaymentMethod."Payment Type Validation"::"FIK 71",15);
              PaymentReference := PADSTR('',15 - STRLEN(PaymentReference),'0') + PaymentReference;
              Result := ValidateFIKCheckSum(PaymentReference,WeightFIK71Txt);
            END;
          PaymentMethod."Payment Type Validation"::"FIK 04":
            BEGIN
              PaymentReference := PADSTR('',16 - STRLEN(PaymentReference),'0') + PaymentReference;
              Result := ValidateFIKCheckSum(PaymentReference,WeightFIK04Txt);
            END;
          PaymentMethod."Payment Type Validation"::"FIK 01",PaymentMethod."Payment Type Validation"::"FIK 73":
            ERROR(PmtReferenceErr,PaymentMethod."Payment Type Validation");
          ELSE
            ERROR(FIKPmtErr);
        END;
        IF NOT Result THEN
          ERROR(WrongCheckCypherErr);
        EXIT(PaymentReference);
        
        */
        //<<DSDK.01.FIK

    end;

    procedure GetFIK71String(var FIK_No: Code[20]): Text;
    var
        CompanyInformation: Record "Company Information";
        StringLen: Integer;
        CheckSum: Integer;
        Total: Integer;
        Weight: Text;
        String: Text;
    begin
        //>>DSDK.03.FIK
        StringLen := 15;

        IF STRLEN(FIK_No) > (StringLen - 1) THEN
            EXIT;

        IF DELCHR(FIK_No, '=', '0123456789') <> '' THEN
            EXIT;

        CompanyInformation.GET;
        IF CompanyInformation."FIK Bank Creditor No." = '' THEN
            EXIT;

        String := PADSTR('', (StringLen - 1 - STRLEN(FIK_No)), '0') + FIK_No;
        Weight := '12121212121212';
        CreateFIKCheckSum(String, Weight, Total, CheckSum);

        EXIT('+71<' + String + FORMAT(CheckSum) + '+' + CompanyInformation."FIK Bank Creditor No.");
        //<<DSDK.03.FIK
    end;

    //>>DSDK.FIK73
    procedure GetFIK73String(var FIK_No: Code[20]): Text;
    var
        CompanyInformation: Record "Company Information";
        StringLen: Integer;
        CheckSum: Integer;
        Total: Integer;
        Weight: Text;
        String: Text;
    begin
        //>>DSDK.03.FIK
        //StringLen := 15;
        StringLen := 16;

        IF STRLEN(FIK_No) > (StringLen - 1) THEN
            EXIT;

        IF DELCHR(FIK_No, '=', '0123456789') <> '' THEN
            EXIT;

        CompanyInformation.GET;
        IF CompanyInformation."FIK Bank Creditor No." = '' THEN
            EXIT;

        EXIT('+73<' + '                ' + '+' + CompanyInformation."FIK Bank Creditor No.");
        //<<DSDK.03.FIK
    end;
    //<<DSDK.FIK73


    //>>DSDK.FIK75
    procedure GetFIK75String(var FIK_No: Code[20]): Text;
    var
        CompanyInformation: Record "Company Information";
        StringLen: Integer;
        CheckSum: Integer;
        Total: Integer;
        Weight: Text;
        String: Text;
    begin
        //>>DSDK.03.FIK
        //StringLen := 15;
        StringLen := 16;

        IF STRLEN(FIK_No) > (StringLen - 1) THEN
            EXIT;

        IF DELCHR(FIK_No, '=', '0123456789') <> '' THEN
            EXIT;

        CompanyInformation.GET;
        IF CompanyInformation."FIK Bank Creditor No." = '' THEN
            EXIT;

        String := PADSTR('', (StringLen - 1 - STRLEN(FIK_No)), '0') + FIK_No;
        //Weight := '12121212121212';
        Weight := '212121212121212';
        CreateFIKCheckSum(String, Weight, Total, CheckSum);

        EXIT('+75<' + String + FORMAT(CheckSum) + '+' + CompanyInformation."FIK Bank Creditor No.");
        //<<DSDK.03.FIK
    end;
    //<<DSDK.FIK75

    local procedure "//DSDK.Bottom.func"();
    begin
    end;

    procedure GetBottom(var Pass_Bottom1: text; var Pass_Bottom2: text; VAR Pass_LanguageCode: Code[10])
    begin
        IF Rec.GET THEN;

        Pass_Bottom1 := '';
        Pass_Bottom2 := '';

        IF Param01 = Param01::" " THEN BEGIN
            // Init: line 1
            Rec.Param01 := Rec.Param01::Name;
            Rec.Param02 := Rec.Param02::Address;
            Rec.Param03 := Rec.Param03::"PostCode-City";
            Rec.Param04 := Rec.Param04::"VAT Reg.no";

            // Init: line 2
            Rec.Param05 := Rec.Param05::Homepage;
            Rec.Param06 := Rec.Param06::Email;
            Rec.Param07 := Rec.Param07::Phone;
            Rec.MODIFY
        END;

        AddBottomField(Rec.Param01, Pass_Bottom1, Pass_LanguageCode);
        AddBottomField(Rec.Param02, Pass_Bottom1, Pass_LanguageCode);
        AddBottomField(Rec.Param03, Pass_Bottom1, Pass_LanguageCode);
        AddBottomField(Rec.Param04, Pass_Bottom1, Pass_LanguageCode);
        AddBottomField(Rec.Param09, Pass_Bottom1, Pass_LanguageCode);       //DSDK.09

        AddBottomField(Rec.Param05, Pass_Bottom2, Pass_LanguageCode);
        AddBottomField(Rec.Param06, Pass_Bottom2, Pass_LanguageCode);
        AddBottomField(Rec.Param07, Pass_Bottom2, Pass_LanguageCode);
        AddBottomField(Rec.Param08, Pass_Bottom2, Pass_LanguageCode);
        AddBottomField(Rec.Param10, Pass_Bottom2, Pass_LanguageCode);       //DSDK.09

    end;

    local procedure AddBottomField(var BottomLine_Option: option " ",Name,Address,"Address 2","PostCode-City","VAT Reg.no",Homepage,Email,Phone,Country; VAR BottomLine: Text; VAR LanguageCode: Code[10])
    var
        CountryRegionTranslation: Record 11;
        CountryRegion: Record 9;
        CountryName: text[50];
        //DSDK.12
        VatNoCaption: TextConst DAN = 'SE/CVR-nr.', ENU = 'VAT No.';
        PhoneNoCaption: TextConst DAN = 'Tlf.', ENU = 'Tel. No.';

    begin
        IF (BottomLine_Option <> BottomLine_Option::" ") and (BottomLine <> '') THEN
            // field separation
            BottomLine := BottomLine + ' - ';


        IF BottomLine_Option = BottomLine_Option::Name THEN BEGIN
            BottomLine += Rec.Name;
        END;
        IF BottomLine_Option = BottomLine_Option::Address THEN BEGIN
            BottomLine += Rec.Address;
        END;
        IF BottomLine_Option = BottomLine_Option::"Address 2" THEN BEGIN
            BottomLine += Rec."Address 2";
        END;
        IF BottomLine_Option = BottomLine_Option::"PostCode-City" THEN BEGIN
            BottomLine += Rec."Post Code" + '  ' + Rec.City;
        END;
        IF BottomLine_Option = BottomLine_Option::"VAT Reg.no" THEN BEGIN
            BottomLine += VatNoCaption + ': ' + Rec."VAT Registration No.";      //DSDK.12
        END;
        IF BottomLine_Option = BottomLine_Option::Homepage THEN BEGIN
            BottomLine += Rec."Home Page";
        END;
        IF BottomLine_Option = BottomLine_Option::Email THEN BEGIN
            BottomLine += Rec."E-Mail";                                         //DSDK.12
        END;
        IF BottomLine_Option = BottomLine_Option::Phone THEN BEGIN
            BottomLine += PhoneNoCaption + ': ' + Rec."Phone No.";              //DSDK.12
        END;
        //>>DSDK.06
        IF BottomLine_Option = BottomLine_Option::Country THEN BEGIN
            // find and translate company country name
            FindCompanyCountryName(CountryName, Rec."Country/Region Code", LanguageCode);
            // add to bottom line
            BottomLine += CountryName;
        END;
        //<<DSDK.06
    end;

    procedure FindCompanyCountryName(var CountryName: Text[50]; var CountryCode: Code[10]; var LanguageCode: Code[10])
    var
        CountryRegionTranslation: Record 11;
        CountryRegion: Record 9;
    begin
        //>>DSDK.01
        IF CountryCode = '' then
            CountryCode := 'DK';
        if LanguageCode = '' then
            LanguageCode := 'DAN';

        IF CountryRegion.GET(CountryCode) THEN
            CountryName := CountryRegion.Name;

        // translate country name in this array
        CountryRegionTranslation.SETRANGE(CountryRegionTranslation."Country/Region Code", CountryCode);
        CountryRegionTranslation.SETRANGE(CountryRegionTranslation."Language Code", LanguageCode);
        IF NOT CountryRegionTranslation.FINDSET OR (CountryRegionTranslation.Name = '') THEN
            EXIT;

        // country-translation found
        CountryName := CountryRegionTranslation.Name;
        //<<DSDK.01
    end;

    procedure TranslateCountryName(var AddrArray: array[8] of Text[90]; var CountryCode: Code[10]; var LanguageCode: Code[10])
    var
        CountryRegionTranslation: Record 11;
        CountryRegion: Record 9;
        i: Integer;
    begin
        //>>DSDK.01
        IF CountryCode = '' then
            CountryCode := 'DK';
        if LanguageCode = '' then
            LanguageCode := 'DAN';

        // translate country name in this array
        CountryRegionTranslation.SETRANGE(CountryRegionTranslation."Country/Region Code", CountryCode);
        CountryRegionTranslation.SETRANGE(CountryRegionTranslation."Language Code", LanguageCode);
        IF NOT CountryRegionTranslation.FINDSET OR (CountryRegionTranslation.Name = '') THEN
            EXIT;

        // country-translation found
        IF NOT CountryRegion.GET(CountryCode) THEN;

        FOR i := 1 TO 8 DO BEGIN
            IF AddrArray[i] = CountryRegion.Name THEN
                AddrArray[i] := CountryRegionTranslation.Name;
        END;
        //<<DSDK.01
    end;

    //DSDK.10
    procedure GetCompanyName(var ParamCompanyName: Text)
    var
        SetCompanyName: Codeunit 50091;
    begin
        SetCompanyName.InitCompanyName(ParamCompanyName);
    end;


}