tableextension 50091 "Report Selections EX ERPG" extends 77

{
    // DSDK.01 LV 2019.02.05 - Params
    // DSDK.02 LV 2019.03.29 - Pass2
    // DSDK.04 LV 2019.05.27 - Param: "Country of Origin", "Same line", "Drop work description"
    // DSDK.05 LV 2019.06.03 - Param: SalesOrder - "Requested Delivery Date"
    // DSDK.06 LV 2019.08.30 - Param: "Pre-Assigned No."

    // Customized - but not in use here
    // DSDK.00 LV 2019.07.11 - DeltaElektronik - print Item.Description3
    // DSDK.00 LV 2019.12.04 - DeltaElektronik - Changed Caption: SalesPersonCaption

    // DSDK.07 LV 2019.09.18 - Shipment, Invoice, CrMemo: change DocDate to PostingDate
    // DSDK.08 LV 2019.10.07 - Param: "Show Customer Item No."
    // DSDK.09 LV 2019.10.30 - Param: "Show Weight"
    // DSDK.10 LV 2019.11.29 - param: "Quote Valid Until Date" - pass9
    // DSDK.11 LV 2019.12.04 - param: "Promised Delivery Date" - pass10
    // DSDK.12 LV 2020.01.17 - param: Purchase - "Promised & Requested Receipt Date" - pass11
    // DSDK.13 LV 2020.01.23 - param: PurchasePersonCaption - pass12

    fields
    {
        field(50000; "Do Not Delete"; Boolean)
        {
            Caption = 'Må ikke slettes';
            DataClassification = ToBeClassified;
        }
        field(50001; Param01; Option)
        {
            Caption = 'Felt01';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Sælger,Dato,Sidenr,Kundenr,SE/CVR-nr,Deres ref,Leveringsform,Betaling,Ordrenr,Eksternt bilagsnr.,Ønsket leveringsdato,Forhåndstildelt nr,Tilbud gyldigt til dato,Bekræftet leveringsdato',
                              ENU = ' ,Doc no,Sales person,Date,Page no,Customer no,Tax no,Your ref,Shipping Methode,Payment,Order no,External Document No.,Requested Delivery Date,Pre-Assigned No.,Quote Valid Until Date,Promised Delivery Date';
            OptionMembers = " ","Doc no","Sales person",Date,"Page no","Customer no","Tax no",Reference,"Shipping Methode",Payment,"Order no","External Document No.","Requested Delivery Date","Pre-Assigned No.","Quote Valid Until Date","Promised Delivery Date";

        }
        field(50002; Param02; Option)
        {
            Caption = 'Felt02';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Sælger,Dato,Sidenr,Kundenr,SE/CVR-nr,Deres ref,Leveringsform,Betaling,Ordrenr,Eksternt bilagsnr.,Ønsket leveringsdato,Forhåndstildelt nr,Tilbud gyldigt til dato,Bekræftet leveringsdato',
                              ENU = ' ,Doc no,Sales person,Date,Page no,Customer no,Tax no,Your ref,Shipping Methode,Payment,Order no,External Document No.,Requested Delivery Date,Pre-Assigned No.,Quote Valid Until Date,Promised Delivery Date';
            OptionMembers = " ","Doc no","Sales person",Date,"Page no","Customer no","Tax no",Reference,"Shipping Methode",Payment,"Order no","External Document No.","Requested Delivery Date","Pre-Assigned No.","Quote Valid Until Date","Promised Delivery Date";
        }
        field(50003; Param03; Option)
        {
            Caption = 'Felt03';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Sælger,Dato,Sidenr,Kundenr,SE/CVR-nr,Deres ref,Leveringsform,Betaling,Ordrenr,Eksternt bilagsnr.,Ønsket leveringsdato,Forhåndstildelt nr,Tilbud gyldigt til dato,Bekræftet leveringsdato',
                              ENU = ' ,Doc no,Sales person,Date,Page no,Customer no,Tax no,Your ref,Shipping Methode,Payment,Order no,External Document No.,Requested Delivery Date,Pre-Assigned No.,Quote Valid Until Date,Promised Delivery Date';
            OptionMembers = " ","Doc no","Sales person",Date,"Page no","Customer no","Tax no",Reference,"Shipping Methode",Payment,"Order no","External Document No.","Requested Delivery Date","Pre-Assigned No.","Quote Valid Until Date","Promised Delivery Date";
        }
        field(50004; Param04; Option)
        {
            Caption = 'Felt04';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Sælger,Dato,Sidenr,Kundenr,SE/CVR-nr,Deres ref,Leveringsform,Betaling,Ordrenr,Eksternt bilagsnr.,Ønsket leveringsdato,Forhåndstildelt nr,Tilbud gyldigt til dato,Bekræftet leveringsdato',
                              ENU = ' ,Doc no,Sales person,Date,Page no,Customer no,Tax no,Your ref,Shipping Methode,Payment,Order no,External Document No.,Requested Delivery Date,Pre-Assigned No.,Quote Valid Until Date,Promised Delivery Date';
            OptionMembers = " ","Doc no","Sales person",Date,"Page no","Customer no","Tax no",Reference,"Shipping Methode",Payment,"Order no","External Document No.","Requested Delivery Date","Pre-Assigned No.","Quote Valid Until Date","Promised Delivery Date";
        }
        field(50005; Param05; Option)
        {
            Caption = 'Felt05';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Sælger,Dato,Sidenr,Kundenr,SE/CVR-nr,Deres ref,Leveringsform,Betaling,Ordrenr,Eksternt bilagsnr.,Ønsket leveringsdato,Forhåndstildelt nr,Tilbud gyldigt til dato,Bekræftet leveringsdato',
                              ENU = ' ,Doc no,Sales person,Date,Page no,Customer no,Tax no,Your ref,Shipping Methode,Payment,Order no,External Document No.,Requested Delivery Date,Pre-Assigned No.,Quote Valid Until Date,Promised Delivery Date';
            OptionMembers = " ","Doc no","Sales person",Date,"Page no","Customer no","Tax no",Reference,"Shipping Methode",Payment,"Order no","External Document No.","Requested Delivery Date","Pre-Assigned No.","Quote Valid Until Date","Promised Delivery Date";
        }
        field(50006; Param06; Option)
        {
            Caption = 'Felt06';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Sælger,Dato,Sidenr,Kundenr,SE/CVR-nr,Deres ref,Leveringsform,Betaling,Ordrenr,Eksternt bilagsnr.,Ønsket leveringsdato,Forhåndstildelt nr,Tilbud gyldigt til dato,Bekræftet leveringsdato',
                              ENU = ' ,Doc no,Sales person,Date,Page no,Customer no,Tax no,Your ref,Shipping Methode,Payment,Order no,External Document No.,Requested Delivery Date,Pre-Assigned No.,Quote Valid Until Date,Promised Delivery Date';
            OptionMembers = " ","Doc no","Sales person",Date,"Page no","Customer no","Tax no",Reference,"Shipping Methode",Payment,"Order no","External Document No.","Requested Delivery Date","Pre-Assigned No.","Quote Valid Until Date","Promised Delivery Date";
        }
        field(50007; Param07; Option)
        {
            Caption = 'Felt07';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Sælger,Dato,Sidenr,Kundenr,SE/CVR-nr,Deres ref,Leveringsform,Betaling,Ordrenr,Eksternt bilagsnr.,Ønsket leveringsdato,Forhåndstildelt nr,Tilbud gyldigt til dato,Bekræftet leveringsdato',
                              ENU = ' ,Doc no,Sales person,Date,Page no,Customer no,Tax no,Your ref,Shipping Methode,Payment,Order no,External Document No.,Requested Delivery Date,Pre-Assigned No.,Quote Valid Until Date,Promised Delivery Date';
            OptionMembers = " ","Doc no","Sales person",Date,"Page no","Customer no","Tax no",Reference,"Shipping Methode",Payment,"Order no","External Document No.","Requested Delivery Date","Pre-Assigned No.","Quote Valid Until Date","Promised Delivery Date";
        }
        field(50008; Param08; Option)
        {
            Caption = 'Felt08';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Sælger,Dato,Sidenr,Kundenr,SE/CVR-nr,Deres ref,Leveringsform,Betaling,Ordrenr,Eksternt bilagsnr.,Ønsket leveringsdato,Forhåndstildelt nr,Tilbud gyldigt til dato,Bekræftet leveringsdato',
                              ENU = ' ,Doc no,Sales person,Date,Page no,Customer no,Tax no,Your ref,Shipping Methode,Payment,Order no,External Document No.,Requested Delivery Date,Pre-Assigned No.,Quote Valid Until Date,Promised Delivery Date';
            OptionMembers = " ","Doc no","Sales person",Date,"Page no","Customer no","Tax no",Reference,"Shipping Methode",Payment,"Order no","External Document No.","Requested Delivery Date","Pre-Assigned No.","Quote Valid Until Date","Promised Delivery Date";
        }
        field(50009; Param09; Option)
        {
            Caption = 'Felt09';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Sælger,Dato,Sidenr,Kundenr,SE/CVR-nr,Deres ref,Leveringsform,Betaling,Ordrenr,Eksternt bilagsnr.,Ønsket leveringsdato,Forhåndstildelt nr,Tilbud gyldigt til dato,Bekræftet leveringsdato',
                              ENU = ' ,Doc no,Sales person,Date,Page no,Customer no,Tax no,Your ref,Shipping Methode,Payment,Order no,External Document No.,Requested Delivery Date,Pre-Assigned No.,Quote Valid Until Date,Promised Delivery Date';
            OptionMembers = " ","Doc no","Sales person",Date,"Page no","Customer no","Tax no",Reference,"Shipping Methode",Payment,"Order no","External Document No.","Requested Delivery Date","Pre-Assigned No.","Quote Valid Until Date","Promised Delivery Date";
        }
        field(50010; Param10; Option)
        {
            Caption = 'Felt10';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Sælger,Dato,Sidenr,Kundenr,SE/CVR-nr,Deres ref,Leveringsform,Betaling,Ordrenr,Eksternt bilagsnr.,Ønsket leveringsdato,Forhåndstildelt nr,Tilbud gyldigt til dato,Bekræftet leveringsdato',
                              ENU = ' ,Doc no,Sales person,Date,Page no,Customer no,Tax no,Your ref,Shipping Methode,Payment,Order no,External Document No.,Requested Delivery Date,Pre-Assigned No.,Quote Valid Until Date,Promised Delivery Date';
            OptionMembers = " ","Doc no","Sales person",Date,"Page no","Customer no","Tax no",Reference,"Shipping Methode",Payment,"Order no","External Document No.","Requested Delivery Date","Pre-Assigned No.","Quote Valid Until Date","Promised Delivery Date";
        }
        field(50011; Param11; Option)
        {
            Caption = 'Felt11';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Sælger,Dato,Sidenr,Kundenr,SE/CVR-nr,Deres ref,Leveringsform,Betaling,Ordrenr,Eksternt bilagsnr.,Ønsket leveringsdato,Forhåndstildelt nr,Tilbud gyldigt til dato,Bekræftet leveringsdato',
                              ENU = ' ,Doc no,Sales person,Date,Page no,Customer no,Tax no,Your ref,Shipping Methode,Payment,Order no,External Document No.,Requested Delivery Date,Pre-Assigned No.,Quote Valid Until Date,Promised Delivery Date';
            OptionMembers = " ","Doc no","Sales person",Date,"Page no","Customer no","Tax no",Reference,"Shipping Methode",Payment,"Order no","External Document No.","Requested Delivery Date","Pre-Assigned No.","Quote Valid Until Date","Promised Delivery Date";
        }
        field(50012; Param12; Option)
        {
            Caption = 'Felt12';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Sælger,Dato,Sidenr,Kundenr,SE/CVR-nr,Deres ref,Leveringsform,Betaling,Ordrenr,Eksternt bilagsnr.,Ønsket leveringsdato,Forhåndstildelt nr,Tilbud gyldigt til dato,Bekræftet leveringsdato',
                              ENU = ' ,Doc no,Sales person,Date,Page no,Customer no,Tax no,Your ref,Shipping Methode,Payment,Order no,External Document No.,Requested Delivery Date,Pre-Assigned No.,Quote Valid Until Date,Promised Delivery Date';
            OptionMembers = " ","Doc no","Sales person",Date,"Page no","Customer no","Tax no",Reference,"Shipping Methode",Payment,"Order no","External Document No.","Requested Delivery Date","Pre-Assigned No.","Quote Valid Until Date","Promised Delivery Date";
        }
        field(50013; Param13; Option)
        {
            Caption = 'Felt13';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Sælger,Dato,Sidenr,Kundenr,SE/CVR-nr,Deres ref,Leveringsform,Betaling,Ordrenr,Eksternt bilagsnr.,Ønsket leveringsdato,Forhåndstildelt nr,Tilbud gyldigt til dato,Bekræftet leveringsdato',
                              ENU = ' ,Doc no,Sales person,Date,Page no,Customer no,Tax no,Your ref,Shipping Methode,Payment,Order no,External Document No.,Requested Delivery Date,Pre-Assigned No.,Quote Valid Until Date,Promised Delivery Date';
            OptionMembers = " ","Doc no","Sales person",Date,"Page no","Customer no","Tax no",Reference,"Shipping Methode",Payment,"Order no","External Document No.","Requested Delivery Date","Pre-Assigned No.","Quote Valid Until Date","Promised Delivery Date";
        }
        field(50014; Param14; Option)
        {
            Caption = 'Felt14';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Sælger,Dato,Sidenr,Kundenr,SE/CVR-nr,Deres ref,Leveringsform,Betaling,Ordrenr,Eksternt bilagsnr.,Ønsket leveringsdato,Forhåndstildelt nr,Tilbud gyldigt til dato,Bekræftet leveringsdato',
                              ENU = ' ,Doc no,Sales person,Date,Page no,Customer no,Tax no,Your ref,Shipping Methode,Payment,Order no,External Document No.,Requested Delivery Date,Pre-Assigned No.,Quote Valid Until Date,Promised Delivery Date';
            OptionMembers = " ","Doc no","Sales person",Date,"Page no","Customer no","Tax no",Reference,"Shipping Methode",Payment,"Order no","External Document No.","Requested Delivery Date","Pre-Assigned No.","Quote Valid Until Date","Promised Delivery Date";
        }
        field(50015; Param15; Option)
        {
            Caption = 'Felt15';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Sælger,Dato,Sidenr,Kundenr,SE/CVR-nr,Deres ref,Leveringsform,Betaling,Ordrenr,Eksternt bilagsnr.,Ønsket leveringsdato,Forhåndstildelt nr,Tilbud gyldigt til dato,Bekræftet leveringsdato',
                              ENU = ' ,Doc no,Sales person,Date,Page no,Customer no,Tax no,Your ref,Shipping Methode,Payment,Order no,External Document No.,Requested Delivery Date,Pre-Assigned No.,Quote Valid Until Date,Promised Delivery Date';
            OptionMembers = " ","Doc no","Sales person",Date,"Page no","Customer no","Tax no",Reference,"Shipping Methode",Payment,"Order no","External Document No.","Requested Delivery Date","Pre-Assigned No.","Quote Valid Until Date","Promised Delivery Date";
        }
        field(50016; "Drop Delivery Address"; Boolean)
        {
            Caption = 'Drop leveringsadresse';
            DataClassification = ToBeClassified;
        }
        field(50017; "Drop Item No Column"; Boolean)
        {
            Caption = 'Drop varenr kolonne';
            DataClassification = ToBeClassified;
        }
        field(50018; "Drop Bank Info at FIK"; Boolean)
        {
            Caption = 'Drop bankinfo ved FIK';
            DataClassification = ToBeClassified;
        }
        field(50019; "Show Tariff. No"; Option)
        {
            Caption = 'Vis varekode/toldposnr.';
            DataClassification = ToBeClassified;
            OptionMembers = No,Yes,"Yes - with leading text";
            OptionCaptionML = DAN = 'Nej,Ja,Ja - med ledetekst', ENU = 'No,Yes,Yes - with leading text';
        }
        field(50020; "Show Vendor Item No."; Option)
        {
            Caption = 'Vis leverandørs varenr.';
            DataClassification = ToBeClassified;
            OptionMembers = No,Yes,"Yes - with leading text";
            OptionCaptionML = DAN = 'Nej,Ja,Ja - med ledetekst', ENU = 'No,Yes,Yes - with leading text';
        }
        field(50021; "Show Barcode"; Option)
        {
            Caption = 'Vis stregkode';
            DataClassification = ToBeClassified;
            OptionMembers = No,Yes,"Yes - with leading text";
            OptionCaptionML = DAN = 'Nej,Ja,Ja - med ledetekst', ENU = 'No,Yes,Yes - with leading text';
        }

        field(50022; "Show Country of Origin"; Option)
        {
            Caption = 'Vis oprindelsesland';
            DataClassification = ToBeClassified;
            OptionMembers = No,Yes,"Yes - with leading text";
            OptionCaptionML = DAN = 'Nej,Ja,Ja - med ledetekst', ENU = 'No,Yes,Yes - with leading text';
        }
        field(50023; "Show Country Same Line"; Boolean)
        {
            CaptionML = DAN = 'Vis varekode og opr.land på samme linje', ENU = 'Show Tariff and Country on same line';
            DataClassification = ToBeClassified;
        }
        field(50024; "Drop Work Description"; Boolean)
        {
            Caption = 'Drop arbejdsbeskrivelse';
            DataClassification = ToBeClassified;
        }
        field(50025; "Show Customer Item No."; Option)
        {
            Caption = 'Vis kundens varenr.';
            DataClassification = ToBeClassified;
            OptionMembers = No,Yes,"Yes - with leading text";
            OptionCaptionML = DAN = 'Nej,Ja,Ja - med ledetekst', ENU = 'No,Yes,Yes - with leading text';
        }
        field(50026; "Show Weight"; Option)
        {
            Caption = 'Vis brutto/netto vægt';
            DataClassification = ToBeClassified;
            OptionMembers = No,"Only Gross","Only Net",Both;
            OptionCaptionML = DAN = 'Nej,Kun brutto,Kun netto,Begge', ENU = 'No,Only Gross,Only Net,Both';
        }

        field(50051; PParam01; Option)
        {
            Caption = 'Felt01';
            DataClassification = ToBeClassified;
            Description = 'PURCHASE';
            OptionCaptionML = DAN = ' ,Bilagsnr,Kreditornr,Dato,Sidenr,Indkøberkode,SE/CVR-nr,Betaling,Kreditor ordrenr,Kreditor leverancenr,Ønsket modtagelsesdato,Bekræftet modtagelsesdato',
                              ENU = ' ,Doc no,Vendor no,Date,Page no,Purchaser Code,Tax no,Payment,Vendor Order No.,Vendor Shipment No.,Requested Receipt Date,Promised Receipt Date';
            OptionMembers = " ","Doc no","Vendor no",Date,"Page no","Purchaser Code","Tax no",Payment,"Vendor Order No.","Vendor Shipment No.","Requested Receipt Date","Promised Receipt Date";
        }
        field(50052; PParam02; Option)
        {
            Caption = 'Felt02';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Kreditornr,Dato,Sidenr,Indkøberkode,SE/CVR-nr,Betaling,Kreditor ordrenr,Kreditor leverancenr,Ønsket modtagelsesdato,Bekræftet modtagelsesdato',
                              ENU = ' ,Doc no,Vendor no,Date,Page no,Purchaser Code,Tax no,Payment,Vendor Order No.,Vendor Shipment No.,Requested Receipt Date,Promised Receipt Date';
            OptionMembers = " ","Doc no","Vendor no",Date,"Page no","Purchaser Code","Tax no",Payment,"Vendor Order No.","Vendor Shipment No.","Requested Receipt Date","Promised Receipt Date";
        }
        field(50053; PParam03; Option)
        {
            Caption = 'Felt03';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Kreditornr,Dato,Sidenr,Indkøberkode,SE/CVR-nr,Betaling,Kreditor ordrenr,Kreditor leverancenr,Ønsket modtagelsesdato,Bekræftet modtagelsesdato',
                              ENU = ' ,Doc no,Vendor no,Date,Page no,Purchaser Code,Tax no,Payment,Vendor Order No.,Vendor Shipment No.,Requested Receipt Date,Promised Receipt Date';
            OptionMembers = " ","Doc no","Vendor no",Date,"Page no","Purchaser Code","Tax no",Payment,"Vendor Order No.","Vendor Shipment No.","Requested Receipt Date","Promised Receipt Date";
        }
        field(50054; PParam04; Option)
        {
            Caption = 'Felt04';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Kreditornr,Dato,Sidenr,Indkøberkode,SE/CVR-nr,Betaling,Kreditor ordrenr,Kreditor leverancenr,Ønsket modtagelsesdato,Bekræftet modtagelsesdato',
                              ENU = ' ,Doc no,Vendor no,Date,Page no,Purchaser Code,Tax no,Payment,Vendor Order No.,Vendor Shipment No.,Requested Receipt Date,Promised Receipt Date';
            OptionMembers = " ","Doc no","Vendor no",Date,"Page no","Purchaser Code","Tax no",Payment,"Vendor Order No.","Vendor Shipment No.","Requested Receipt Date","Promised Receipt Date";
        }
        field(50055; PParam05; Option)
        {
            Caption = 'Felt05';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Kreditornr,Dato,Sidenr,Indkøberkode,SE/CVR-nr,Betaling,Kreditor ordrenr,Kreditor leverancenr,Ønsket modtagelsesdato,Bekræftet modtagelsesdato',
                              ENU = ' ,Doc no,Vendor no,Date,Page no,Purchaser Code,Tax no,Payment,Vendor Order No.,Vendor Shipment No.,Requested Receipt Date,Promised Receipt Date';
            OptionMembers = " ","Doc no","Vendor no",Date,"Page no","Purchaser Code","Tax no",Payment,"Vendor Order No.","Vendor Shipment No.","Requested Receipt Date","Promised Receipt Date";
        }
        field(50056; PParam06; Option)
        {
            Caption = 'Felt06';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Kreditornr,Dato,Sidenr,Indkøberkode,SE/CVR-nr,Betaling,Kreditor ordrenr,Kreditor leverancenr,Ønsket modtagelsesdato,Bekræftet modtagelsesdato',
                              ENU = ' ,Doc no,Vendor no,Date,Page no,Purchaser Code,Tax no,Payment,Vendor Order No.,Vendor Shipment No.,Requested Receipt Date,Promised Receipt Date';
            OptionMembers = " ","Doc no","Vendor no",Date,"Page no","Purchaser Code","Tax no",Payment,"Vendor Order No.","Vendor Shipment No.","Requested Receipt Date","Promised Receipt Date";
        }
        field(50057; PParam07; Option)
        {
            Caption = 'Felt07';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Kreditornr,Dato,Sidenr,Indkøberkode,SE/CVR-nr,Betaling,Kreditor ordrenr,Kreditor leverancenr,Ønsket modtagelsesdato,Bekræftet modtagelsesdato',
                              ENU = ' ,Doc no,Vendor no,Date,Page no,Purchaser Code,Tax no,Payment,Vendor Order No.,Vendor Shipment No.,Requested Receipt Date,Promised Receipt Date';
            OptionMembers = " ","Doc no","Vendor no",Date,"Page no","Purchaser Code","Tax no",Payment,"Vendor Order No.","Vendor Shipment No.","Requested Receipt Date","Promised Receipt Date";
        }
        field(50058; PParam08; Option)
        {
            Caption = 'Felt08';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Kreditornr,Dato,Sidenr,Indkøberkode,SE/CVR-nr,Betaling,Kreditor ordrenr,Kreditor leverancenr,Ønsket modtagelsesdato,Bekræftet modtagelsesdato',
                              ENU = ' ,Doc no,Vendor no,Date,Page no,Purchaser Code,Tax no,Payment,Vendor Order No.,Vendor Shipment No.,Requested Receipt Date,Promised Receipt Date';
            OptionMembers = " ","Doc no","Vendor no",Date,"Page no","Purchaser Code","Tax no",Payment,"Vendor Order No.","Vendor Shipment No.","Requested Receipt Date","Promised Receipt Date";
        }
        field(50059; PParam09; Option)
        {
            Caption = 'Felt09';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Kreditornr,Dato,Sidenr,Indkøberkode,SE/CVR-nr,Betaling,Kreditor ordrenr,Kreditor leverancenr,Ønsket modtagelsesdato,Bekræftet modtagelsesdato',
                              ENU = ' ,Doc no,Vendor no,Date,Page no,Purchaser Code,Tax no,Payment,Vendor Order No.,Vendor Shipment No.,Requested Receipt Date,Promised Receipt Date';
            OptionMembers = " ","Doc no","Vendor no",Date,"Page no","Purchaser Code","Tax no",Payment,"Vendor Order No.","Vendor Shipment No.","Requested Receipt Date","Promised Receipt Date";
        }
        field(50060; PParam10; Option)
        {
            Caption = 'Felt10';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Kreditornr,Dato,Sidenr,Indkøberkode,SE/CVR-nr,Betaling,Kreditor ordrenr,Kreditor leverancenr,Ønsket modtagelsesdato,Bekræftet modtagelsesdato',
                              ENU = ' ,Doc no,Vendor no,Date,Page no,Purchaser Code,Tax no,Payment,Vendor Order No.,Vendor Shipment No.,Requested Receipt Date,Promised Receipt Date';
            OptionMembers = " ","Doc no","Vendor no",Date,"Page no","Purchaser Code","Tax no",Payment,"Vendor Order No.","Vendor Shipment No.","Requested Receipt Date","Promised Receipt Date";
        }
        field(50061; PParam11; Option)
        {
            Caption = 'Felt11';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Kreditornr,Dato,Sidenr,Indkøberkode,SE/CVR-nr,Betaling,Kreditor ordrenr,Kreditor leverancenr,Ønsket modtagelsesdato,Bekræftet modtagelsesdato',
                              ENU = ' ,Doc no,Vendor no,Date,Page no,Purchaser Code,Tax no,Payment,Vendor Order No.,Vendor Shipment No.,Requested Receipt Date,Promised Receipt Date';
            OptionMembers = " ","Doc no","Vendor no",Date,"Page no","Purchaser Code","Tax no",Payment,"Vendor Order No.","Vendor Shipment No.","Requested Receipt Date","Promised Receipt Date";
        }
        field(50062; PParam12; Option)
        {
            Caption = 'Felt12';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Kreditornr,Dato,Sidenr,Indkøberkode,SE/CVR-nr,Betaling,Kreditor ordrenr,Kreditor leverancenr,Ønsket modtagelsesdato,Bekræftet modtagelsesdato',
                              ENU = ' ,Doc no,Vendor no,Date,Page no,Purchaser Code,Tax no,Payment,Vendor Order No.,Vendor Shipment No.,Requested Receipt Date,Promised Receipt Date';
            OptionMembers = " ","Doc no","Vendor no",Date,"Page no","Purchaser Code","Tax no",Payment,"Vendor Order No.","Vendor Shipment No.","Requested Receipt Date","Promised Receipt Date";
        }
        field(50063; PParam13; Option)
        {
            Caption = 'Felt13';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Kreditornr,Dato,Sidenr,Indkøberkode,SE/CVR-nr,Betaling,Kreditor ordrenr,Kreditor leverancenr,Ønsket modtagelsesdato,Bekræftet modtagelsesdato',
                              ENU = ' ,Doc no,Vendor no,Date,Page no,Purchaser Code,Tax no,Payment,Vendor Order No.,Vendor Shipment No.,Requested Receipt Date,Promised Receipt Date';
            OptionMembers = " ","Doc no","Vendor no",Date,"Page no","Purchaser Code","Tax no",Payment,"Vendor Order No.","Vendor Shipment No.","Requested Receipt Date","Promised Receipt Date";
        }
        field(50064; PParam14; Option)
        {
            Caption = 'Felt14';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Kreditornr,Dato,Sidenr,Indkøberkode,SE/CVR-nr,Betaling,Kreditor ordrenr,Kreditor leverancenr,Ønsket modtagelsesdato,Bekræftet modtagelsesdato',
                              ENU = ' ,Doc no,Vendor no,Date,Page no,Purchaser Code,Tax no,Payment,Vendor Order No.,Vendor Shipment No.,Requested Receipt Date,Promised Receipt Date';
            OptionMembers = " ","Doc no","Vendor no",Date,"Page no","Purchaser Code","Tax no",Payment,"Vendor Order No.","Vendor Shipment No.","Requested Receipt Date","Promised Receipt Date";
        }
        field(50065; PParam15; Option)
        {
            Caption = 'Felt15';
            DataClassification = ToBeClassified;
            OptionCaptionML = DAN = ' ,Bilagsnr,Kreditornr,Dato,Sidenr,Indkøberkode,SE/CVR-nr,Betaling,Kreditor ordrenr,Kreditor leverancenr,Ønsket modtagelsesdato,Bekræftet modtagelsesdato',
                              ENU = ' ,Doc no,Vendor no,Date,Page no,Purchaser Code,Tax no,Payment,Vendor Order No.,Vendor Shipment No.,Requested Receipt Date,Promised Receipt Date';
            OptionMembers = " ","Doc no","Vendor no",Date,"Page no","Purchaser Code","Tax no",Payment,"Vendor Order No.","Vendor Shipment No.","Requested Receipt Date","Promised Receipt Date";
        }

    }


    trigger OnDelete()
    begin
        //>>DSDK.Param
        IF "Do Not Delete" THEN
            EXIT;
        //<<DSDK.Param
    end;


    var
        "//DSDK.Params": Integer;

        SalesReport_Option: Option " ","Doc no","Sales person",Date,"Page no","Customer no","Tax no",Reference,"Shipping Methode",Payment,"Order No","External Document No.","Requested Delivery Date","Pre-Assigned No.","Quote Valid Until Date","Promised Delivery Date";
        //DSDK.Pass11
        PurchaseReport_Option: Option " ","Doc no","Vendor no",Date,"Page no","Purchaser Code","Tax no",Payment,"Vendor Order No.","Vendor Shipment No.","Requested Receipt Date","Promised Receipt Date";
        "//DSDK.Params.text": Integer;
        CustomerNoCaption: TextConst DAN = 'Kundenr.', DEU = 'Kundennr.', ENU = 'Customer No.';
        SalesPersonCaption: TextConst DAN = 'Sælger', DEU = 'Vertreter', ENU = 'Sales Rep.';
        //>>DSDK.Custom.DeltaElektronik
        //SalesPersonCaption: TextConst DAN = 'Vor ref.', DEU = 'Unsere Ref.', ENU = 'Our Ref.';
        //>>DSDK.Custom.DeltaElektronik
        PageCaption: TextConst DAN = 'Side', DEU = 'Seite', ENU = 'Page';
        ShipmentMethodCaption: TextConst DAN = 'Levering', DEU = 'Lieferung', ENU = 'Shipment';
        YourRefCaption: TextConst DAN = 'Deres ref.', DEU = 'Ihre ref.', ENU = 'Your ref.';
        RefNoCaption: TextConst DAN = 'Ref.nr.', DEU = 'Ref.nr.', ENU = 'Ref. No.';
        PaymentCaption: TextConst DAN = 'Betaling', DEU = 'Zahlung', ENU = 'Payment';
        DateCaption: TextConst DAN = 'Dato', DEU = 'Datum', ENU = 'Date';
        OrderNoCaption: TextConst DAN = 'Ordrenr.', DEU = 'Auftrag Nr.', ENU = 'Order No.';
        VATRegNoCaption: TextConst DAN = 'SE/CVR-nr.', DEU = 'USt-IdNr.', ENU = 'VAT';
        DocNoCaption: TextConst DAN = 'Nummer', DEU = 'Nummer', ENU = 'Number';
        "//Pass3.txt": Integer;
        VendorItemNoCaption: TextConst DAN = 'Vare ref.: ', DEU = 'Varen Ref.: ', ENU = 'Item Ref.: ';
        TariffNoCaption: TextConst DAN = 'Varekode: ', DEU = 'Tariff Nr.: ', ENU = 'Tariff No.: ';
        BarcodeCaption: TextConst DAN = 'EAN: ', DEU = 'EAN: ', ENU = 'EAN: ';
        VendorNoCaption: TextConst DAN = 'Kreditornr.', DEU = 'Kreditornr.', ENU = 'Vendor No.';
        PurchaserCodeCaption: TextConst DAN = 'Vores ref.', DEU = 'Unsere Ref.', ENU = 'Our Ref.';
        VendorOrderNoCaption: TextConst DAN = 'Deres ordrenr.', DEU = 'Ihr Ref.', ENU = 'Your Order no.';
        VendorShipmentNoCaption: TextConst DAN = 'Deres lev.nr.', DEU = 'Ihre Liefer.nr.', ENU = 'Your Ship. No.';
        "//Pass4.txt": Integer;
        CountryOfOriginCaption1: Label 'Origin: ';
        CountryOfOriginCaption2: Label 'Country of Origin: ';
        "//Pass5.txt": Integer;
        RequestedDeliveryDateCaption: TextConst DAN = 'Ønsket lev.dato', DEU = 'Gew. Lieferung', ENU = 'Req. Delivery';
        "//Pass6.txt": Integer;
        PreAssignedNoCaption: TextConst DAN = 'Forhåndsnr.', DEU = 'Vorbelegte Nr.', ENU = 'Pre-Assign. No.';
        //Pass8.txt
        CustomerItemNoCaption: TextConst DAN = 'Deres varenr.: ', DEU = 'Ihr Varen Nr.: ', ENU = 'Your Item No.: ';
        //Pass9.txt
        QuoteValidUntilDateCaption: TextConst DAN = 'Gyldigt til', DEU = 'Gültig bis', ENU = 'Valid Until';
        //pass10
        PropmisedDeliveryDateCaption: TextConst DAN = 'Bekræft lev.dato', DEU = 'Bestätigt Liefer', ENU = 'Prom. Receipt.';
        //Pass11
        RequestedReceiptDateCaption: TextConst DAN = 'Ønsket mod.dato', DEU = 'Gew. Empfang', ENU = 'Req. Receipt';
        PropmisedReceiptDateCaption: TextConst DAN = 'Bekræft mod.dato', DEU = 'Bestät. Empfang', ENU = 'Prom. Receipt.';
        //Pass12
        PurchasePersonCaption: TextConst DAN = 'Indkøber', DEU = 'Käufer', ENU = 'Purchaser';
        DeliveryDateCaption: TextConst DAN = 'Levering', DEU = 'Lieferung', ENU = 'Delivery';


    local procedure "//DSDK.Params.func"()
    begin
    end;

    procedure GetParam_SalesOrder(var SalesHeader: Record "Sales Header"; var ParamNumber: Integer; var ParamText: Text; var ParamValue: Text)
    var
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        Customer: Record Customer;

    begin
        IF SalesHeader."Document Type" = SalesHeader."Document Type"::Order THEN
            IF Rec.GET(Rec.Usage::"S.Order", 1) THEN;
        IF SalesHeader."Document Type" = SalesHeader."Document Type"::Quote THEN
            IF Rec.GET(Rec.Usage::"S.Quote", 1) THEN;

        //>>DSDK.Pass3
        IF ParamText = 'ItemText3' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Vendor Item No.", SalesHeader."Sell-to Customer No.");
            EXIT;
        END;
        IF ParamText = 'VendorItemNo' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Vendor Item No.", SalesHeader."Sell-to Customer No.");
            EXIT;
        END;
        IF ParamText = 'TariffNo' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Tariff. No", SalesHeader."Sell-to Customer No.");
            EXIT;
        END;
        IF ParamText = 'Barcode' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Barcode", SalesHeader."Sell-to Customer No.");
            EXIT;
        END;
        //<<DSDK.Pass3

        //>>DSDK.Pass4
        IF ParamText = 'CountryOfOrigin' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Country of Origin", SalesHeader."Sell-to Customer No.");
            EXIT;
        END;
        //<<DSDK.Pass4

        //>>DSDK.Pass8
        IF ParamText = 'CustomerItemNo' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Customer Item No.", SalesHeader."Sell-to Customer No.");
            EXIT;
        END;
        //<<DSDK.Pass8

        IF ParamNumber = 1 THEN SalesReport_Option := Rec.Param01;
        IF ParamNumber = 2 THEN SalesReport_Option := Rec.Param02;
        IF ParamNumber = 3 THEN SalesReport_Option := Rec.Param03;
        IF ParamNumber = 4 THEN SalesReport_Option := Rec.Param04;
        IF ParamNumber = 5 THEN SalesReport_Option := Rec.Param05;
        IF ParamNumber = 6 THEN SalesReport_Option := Rec.Param06;
        IF ParamNumber = 7 THEN SalesReport_Option := Rec.Param07;
        IF ParamNumber = 8 THEN SalesReport_Option := Rec.Param08;
        IF ParamNumber = 9 THEN SalesReport_Option := Rec.Param09;
        IF ParamNumber = 10 THEN SalesReport_Option := Rec.Param10;
        IF ParamNumber = 11 THEN SalesReport_Option := Rec.Param11;
        IF ParamNumber = 12 THEN SalesReport_Option := Rec.Param12;
        IF ParamNumber = 13 THEN SalesReport_Option := Rec.Param13;
        IF ParamNumber = 14 THEN SalesReport_Option := Rec.Param14;
        IF ParamNumber = 15 THEN SalesReport_Option := Rec.Param15;

        ParamText := '';
        ParamValue := '';

        IF SalesReport_Option = SalesReport_Option::"Customer no" THEN BEGIN
            ParamText := CustomerNoCaption;
            ParamValue := SalesHeader."Sell-to Customer No.";
        END;

        IF SalesReport_Option = SalesReport_Option::Date THEN BEGIN
            ParamText := DateCaption;
            ParamValue := FORMAT(SalesHeader."Document Date", 0, '<Day,2>/<Month,2>-<Year4>');
        END;

        IF SalesReport_Option = SalesReport_Option::"Doc no" THEN BEGIN
            ParamText := DocNoCaption;
            ParamValue := SalesHeader."No.";
        END;

        IF SalesReport_Option = SalesReport_Option::"Page no" THEN BEGIN
            ParamText := PageCaption;
            ParamValue := 'PageNo';
        END;

        IF SalesReport_Option = SalesReport_Option::Payment THEN BEGIN
            ParamText := PaymentCaption;
            IF SalesHeader."Payment Terms Code" = '' THEN
                PaymentTerms.INIT
            ELSE BEGIN
                PaymentTerms.GET(SalesHeader."Payment Terms Code");
                PaymentTerms.TranslateDescription(PaymentTerms, SalesHeader."Language Code");
            END;

            ParamValue := PaymentTerms.Description;
        END;

        IF SalesReport_Option = SalesReport_Option::"Sales person" THEN BEGIN
            ParamText := SalesPersonCaption;
            IF SalesPurchPerson.GET(SalesHeader."Salesperson Code") THEN
                ParamValue := SalesPurchPerson.Name;
        END;

        IF SalesReport_Option = SalesReport_Option::"Shipping Methode" THEN BEGIN
            ParamText := ShipmentMethodCaption;
            IF SalesHeader."Shipment Method Code" = '' THEN
                ShipmentMethod.INIT
            ELSE BEGIN
                ShipmentMethod.GET(SalesHeader."Shipment Method Code");
                ShipmentMethod.TranslateDescription(ShipmentMethod, SalesHeader."Language Code");
            END;
            ParamValue := ShipmentMethod.Description;
        END;

        IF SalesReport_Option = SalesReport_Option::"Tax no" THEN BEGIN
            ParamText := VATRegNoCaption;
            ParamValue := SalesHeader."VAT Registration No.";
        END;

        //>>DSDK.Pass3
        IF SalesReport_Option = SalesReport_Option::Reference THEN BEGIN
            ParamText := YourRefCaption;
            ParamValue := SalesHeader."Your Reference";
        END;
        IF SalesReport_Option = SalesReport_Option::"External Document No." THEN BEGIN
            ParamText := RefNoCaption;
            ParamValue := SalesHeader."External Document No.";
        END;
        //<<DSDK.Pass3

        //>>DSDK.Pass5
        IF SalesReport_Option = SalesReport_Option::"Requested Delivery Date" THEN BEGIN
            ParamText := RequestedDeliveryDateCaption;
            ParamValue := FORMAT(SalesHeader."Requested Delivery Date", 0, '<Day,2>/<Month,2>-<Year4>');
        END;
        //<<DSDK.Pass5

        //>>DSDK.Pass9
        IF SalesReport_Option = SalesReport_Option::"Quote Valid Until Date" THEN BEGIN
            ParamText := QuoteValidUntilDateCaption;
            ParamValue := FORMAT(SalesHeader."Quote Valid Until Date", 0, '<Day,2>/<Month,2>-<Year4>');
        END;
        //<<DSDK.Pass9
        //>>DSDK.Pass10
        IF SalesReport_Option = SalesReport_Option::"Promised Delivery Date" THEN BEGIN
            ParamText := PropmisedDeliveryDateCaption;
            ParamValue := FORMAT(SalesHeader."Promised Delivery Date", 0, '<Day,2>/<Month,2>-<Year4>');
        END;
        //<<DSDK.Pass10
    end;

    procedure GetData_SalesOrder(var SalesHeader: Record "Sales Header"; var Pass_DropDeliveryAddress: Boolean; var Pass_DropItemNoColumn: Boolean; var Pass_DropWorkDescription: Boolean)

    begin
        IF SalesHeader."Document Type" = SalesHeader."Document Type"::Order THEN
            IF Rec.GET(Rec.Usage::"S.Order", 1) THEN;
        IF SalesHeader."Document Type" = SalesHeader."Document Type"::Quote THEN
            IF Rec.GET(Rec.Usage::"S.Quote", 1) THEN;

        IF Rec.Param01 = Rec.Param01::" " THEN BEGIN
            Rec.Param01 := SalesReport_Option::"Doc no";
            Rec.Param02 := SalesReport_Option::"Customer no";
            Rec.Param03 := SalesReport_Option::Date;
            Rec.Param04 := SalesReport_Option::"Page no";
            Rec.Param05 := SalesReport_Option::"Sales person";
            Rec.Param06 := SalesReport_Option::"Tax no";
            Rec.Param07 := SalesReport_Option::Reference;                      //Pass3
            Rec.Param08 := SalesReport_Option::"External Document No.";        //Pass3
            Rec.Param09 := SalesReport_Option::"Shipping Methode";
            Rec.Param10 := SalesReport_Option::Payment;
            Rec.MODIFY;
        END;

        Pass_DropDeliveryAddress := Rec."Drop Delivery Address";
        Pass_DropItemNoColumn := Rec."Drop Item No Column";
        //>>DSDK.Pass4
        Pass_DropWorkDescription := Rec."Drop Work Description";
        //<<DSDK.Pass4        
    end;

    procedure GetParam_SalesShipment(var SalesShipmentHeader: Record "Sales Shipment Header"; var ParamNumber: Integer; var ParamText: Text; var ParamValue: Text)
    var
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        Customer: Record Customer;

    begin
        IF Rec.GET(Rec.Usage::"S.Shipment", 1) THEN;

        //>>DSDK.Pass3
        IF ParamText = 'ItemText3' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Vendor Item No.", SalesShipmentHeader."Sell-to Customer No.");
            EXIT;
        END;
        IF ParamText = 'VendorItemNo' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Vendor Item No.", SalesShipmentHeader."Sell-to Customer No.");
            EXIT;
        END;
        IF ParamText = 'TariffNo' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Tariff. No", SalesShipmentHeader."Sell-to Customer No.");
            EXIT;
        END;
        IF ParamText = 'Barcode' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Barcode", SalesShipmentHeader."Sell-to Customer No.");
            EXIT;
        END;
        //<<DSDK.Pass3

        //>>DSDK.Pass4
        IF ParamText = 'CountryOfOrigin' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Country of Origin", SalesShipmentHeader."Sell-to Customer No.");
            EXIT;
        END;
        //<<DSDK.Pass4

        //>>DSDK.Pass8
        IF ParamText = 'CustomerItemNo' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Customer Item No.", SalesShipmentHeader."Sell-to Customer No.");
            EXIT;
        END;
        //<<DSDK.Pass8

        IF ParamNumber = 1 THEN SalesReport_Option := Rec.Param01;
        IF ParamNumber = 2 THEN SalesReport_Option := Rec.Param02;
        IF ParamNumber = 3 THEN SalesReport_Option := Rec.Param03;
        IF ParamNumber = 4 THEN SalesReport_Option := Rec.Param04;
        IF ParamNumber = 5 THEN SalesReport_Option := Rec.Param05;
        IF ParamNumber = 6 THEN SalesReport_Option := Rec.Param06;
        IF ParamNumber = 7 THEN SalesReport_Option := Rec.Param07;
        IF ParamNumber = 8 THEN SalesReport_Option := Rec.Param08;
        IF ParamNumber = 9 THEN SalesReport_Option := Rec.Param09;
        IF ParamNumber = 10 THEN SalesReport_Option := Rec.Param10;
        IF ParamNumber = 11 THEN SalesReport_Option := Rec.Param11;
        IF ParamNumber = 12 THEN SalesReport_Option := Rec.Param12;
        IF ParamNumber = 13 THEN SalesReport_Option := Rec.Param13;
        IF ParamNumber = 14 THEN SalesReport_Option := Rec.Param14;
        IF ParamNumber = 15 THEN SalesReport_Option := Rec.Param15;

        ParamText := '';
        ParamValue := '';

        IF SalesReport_Option = SalesReport_Option::"Customer no" THEN BEGIN
            ParamText := CustomerNoCaption;
            ParamValue := SalesShipmentHeader."Sell-to Customer No.";
        END;

        IF SalesReport_Option = SalesReport_Option::Date THEN BEGIN
            ParamText := DateCaption;
            ParamValue := FORMAT(SalesShipmentHeader."Posting Date", 0, '<Day,2>/<Month,2>-<Year4>');
        END;

        IF SalesReport_Option = SalesReport_Option::"Doc no" THEN BEGIN
            ParamText := DocNoCaption;
            ParamValue := SalesShipmentHeader."No.";
        END;

        IF SalesReport_Option = SalesReport_Option::"Page no" THEN BEGIN
            ParamText := PageCaption;
            ParamValue := 'PageNo';
        END;

        IF SalesReport_Option = SalesReport_Option::Payment THEN BEGIN
            ParamText := PaymentCaption;
            IF SalesShipmentHeader."Payment Terms Code" = '' THEN
                PaymentTerms.INIT
            ELSE BEGIN
                PaymentTerms.GET(SalesShipmentHeader."Payment Terms Code");
                PaymentTerms.TranslateDescription(PaymentTerms, SalesShipmentHeader."Language Code");
            END;

            ParamValue := PaymentTerms.Description;
        END;

        IF SalesReport_Option = SalesReport_Option::"Sales person" THEN BEGIN
            ParamText := SalesPersonCaption;
            IF SalesPurchPerson.GET(SalesShipmentHeader."Salesperson Code") THEN
                ParamValue := SalesPurchPerson.Name;
        END;

        IF SalesReport_Option = SalesReport_Option::"Shipping Methode" THEN BEGIN
            ParamText := ShipmentMethodCaption;
            IF SalesShipmentHeader."Shipment Method Code" = '' THEN
                ShipmentMethod.INIT
            ELSE BEGIN
                ShipmentMethod.GET(SalesShipmentHeader."Shipment Method Code");
                ShipmentMethod.TranslateDescription(ShipmentMethod, SalesShipmentHeader."Language Code");
            END;
            ParamValue := ShipmentMethod.Description;
        END;

        IF SalesReport_Option = SalesReport_Option::"Tax no" THEN BEGIN
            ParamText := VATRegNoCaption;
            ParamValue := SalesShipmentHeader."VAT Registration No.";
        END;

        IF SalesReport_Option = SalesReport_Option::"Order No" THEN BEGIN
            ParamText := OrderNoCaption;
            ParamValue := SalesShipmentHeader."Order No.";
        END;

        //>>DSDK.Pass3
        IF SalesReport_Option = SalesReport_Option::Reference THEN BEGIN
            ParamText := YourRefCaption;
            ParamValue := SalesShipmentHeader."Your Reference";
        END;
        IF SalesReport_Option = SalesReport_Option::"External Document No." THEN BEGIN
            ParamText := RefNoCaption;
            ParamValue := SalesShipmentHeader."External Document No.";
        END;
        //<<DSDK.Pass3

        //>>DSDK.Pass5
        IF SalesReport_Option = SalesReport_Option::"Requested Delivery Date" THEN BEGIN
            ParamText := RequestedDeliveryDateCaption;
            ParamValue := FORMAT(SalesShipmentHeader."Requested Delivery Date", 0, '<Day,2>/<Month,2>-<Year4>');
        END;
        //<<DSDK.Pass5

        //>>DSDK.Pass10
        IF SalesReport_Option = SalesReport_Option::"Promised Delivery Date" THEN BEGIN
            ParamText := PropmisedDeliveryDateCaption;
            ParamValue := FORMAT(SalesShipmentHeader."Promised Delivery Date", 0, '<Day,2>/<Month,2>-<Year4>');
        END;
        //<<DSDK.Pass10
    end;

    procedure GetData_SalesShipment(var SalesShipmentHeader: Record "Sales Shipment Header"; var Pass_DropDeliveryAddress: Boolean; var Pass_DropItemNoColumn: Boolean; var Pass_DropWorkDescription: Boolean; var Pass_Weight: Option No,"Only Gross","Only Net",Both)

    begin
        IF Rec.GET(Rec.Usage::"S.Shipment", 1) THEN;

        IF Rec.Param01 = Rec.Param01::" " THEN BEGIN
            Rec.Param01 := SalesReport_Option::"Doc no";
            Rec.Param02 := SalesReport_Option::"Customer no";
            Rec.Param03 := SalesReport_Option::Date;
            Rec.Param04 := SalesReport_Option::"Page no";
            Rec.Param05 := SalesReport_Option::"Order No";
            Rec.Param06 := SalesReport_Option::"Sales person";
            Rec.Param07 := SalesReport_Option::"Tax no";
            Rec.Param08 := SalesReport_Option::Reference;                      //Pass3
            Rec.Param09 := SalesReport_Option::"External Document No.";        //Pass3
            Rec.Param10 := SalesReport_Option::"Shipping Methode";
            Rec.Param11 := SalesReport_Option::Payment;
            Rec.MODIFY;
        END;

        Pass_DropDeliveryAddress := Rec."Drop Delivery Address";
        Pass_DropItemNoColumn := Rec."Drop Item No Column";
        //>>DSDK.Pass4
        Pass_DropWorkDescription := Rec."Drop Work Description";
        //<<DSDK.Pass4   

        //>>DSDK.pass9
        Pass_Weight := Rec."Show Weight";
        //<<DSDK.pass9     
    end;

    procedure GetParam_SalesInvoice(var SalesInvoiceHeader: Record "Sales Invoice Header"; var ParamNumber: Integer; var ParamText: Text; var ParamValue: Text)
    var
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        Customer: Record Customer;

    begin
        IF Rec.GET(Rec.Usage::"S.Invoice", 1) THEN;

        //>>DSDK.Pass3
        IF ParamText = 'ItemText3' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Vendor Item No.", SalesInvoiceHeader."Sell-to Customer No.");
            EXIT;
        END;
        IF ParamText = 'VendorItemNo' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Vendor Item No.", SalesInvoiceHeader."Sell-to Customer No.");
            EXIT;
        END;
        IF ParamText = 'TariffNo' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Tariff. No", SalesInvoiceHeader."Sell-to Customer No.");
            EXIT;
        END;
        IF ParamText = 'Barcode' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Barcode", SalesInvoiceHeader."Sell-to Customer No.");
            EXIT;
        END;
        //<<DSDK.Pass3

        //>>DSDK.Pass4
        IF ParamText = 'CountryOfOrigin' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Country of Origin", SalesInvoiceHeader."Sell-to Customer No.");
            EXIT;
        END;
        //<<DSDK.Pass4

        //>>DSDK.Pass8
        IF ParamText = 'CustomerItemNo' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Customer Item No.", SalesInvoiceHeader."Sell-to Customer No.");
            EXIT;
        END;
        //<<DSDK.Pass8

        IF ParamNumber = 1 THEN SalesReport_Option := Rec.Param01;
        IF ParamNumber = 2 THEN SalesReport_Option := Rec.Param02;
        IF ParamNumber = 3 THEN SalesReport_Option := Rec.Param03;
        IF ParamNumber = 4 THEN SalesReport_Option := Rec.Param04;
        IF ParamNumber = 5 THEN SalesReport_Option := Rec.Param05;
        IF ParamNumber = 6 THEN SalesReport_Option := Rec.Param06;
        IF ParamNumber = 7 THEN SalesReport_Option := Rec.Param07;
        IF ParamNumber = 8 THEN SalesReport_Option := Rec.Param08;
        IF ParamNumber = 9 THEN SalesReport_Option := Rec.Param09;
        IF ParamNumber = 10 THEN SalesReport_Option := Rec.Param10;
        IF ParamNumber = 11 THEN SalesReport_Option := Rec.Param11;
        IF ParamNumber = 12 THEN SalesReport_Option := Rec.Param12;
        IF ParamNumber = 13 THEN SalesReport_Option := Rec.Param13;
        IF ParamNumber = 14 THEN SalesReport_Option := Rec.Param14;
        IF ParamNumber = 15 THEN SalesReport_Option := Rec.Param15;

        ParamText := '';
        ParamValue := '';

        IF SalesReport_Option = SalesReport_Option::"Customer no" THEN BEGIN
            ParamText := CustomerNoCaption;
            ParamValue := SalesInvoiceHeader."Sell-to Customer No.";
        END;

        IF SalesReport_Option = SalesReport_Option::Date THEN BEGIN
            ParamText := DateCaption;
            ParamValue := FORMAT(SalesInvoiceHeader."Posting Date", 0, '<Day,2>/<Month,2>-<Year4>');
        END;

        IF SalesReport_Option = SalesReport_Option::"Doc no" THEN BEGIN
            ParamText := DocNoCaption;
            ParamValue := SalesInvoiceHeader."No.";
        END;

        IF SalesReport_Option = SalesReport_Option::"Page no" THEN BEGIN
            ParamText := PageCaption;
            ParamValue := 'PageNo';
        END;

        IF SalesReport_Option = SalesReport_Option::Payment THEN BEGIN
            ParamText := PaymentCaption;
            IF SalesInvoiceHeader."Payment Terms Code" = '' THEN
                PaymentTerms.INIT
            ELSE BEGIN
                PaymentTerms.GET(SalesInvoiceHeader."Payment Terms Code");
                PaymentTerms.TranslateDescription(PaymentTerms, SalesInvoiceHeader."Language Code");
            END;

            ParamValue := PaymentTerms.Description;
        END;

        IF SalesReport_Option = SalesReport_Option::"Sales person" THEN BEGIN
            ParamText := SalesPersonCaption;
            IF SalesPurchPerson.GET(SalesInvoiceHeader."Salesperson Code") THEN
                ParamValue := SalesPurchPerson.Name;
        END;

        IF SalesReport_Option = SalesReport_Option::"Shipping Methode" THEN BEGIN
            ParamText := ShipmentMethodCaption;
            IF SalesInvoiceHeader."Shipment Method Code" = '' THEN
                ShipmentMethod.INIT
            ELSE BEGIN
                ShipmentMethod.GET(SalesInvoiceHeader."Shipment Method Code");
                ShipmentMethod.TranslateDescription(ShipmentMethod, SalesInvoiceHeader."Language Code");
            END;
            ParamValue := ShipmentMethod.Description;
        END;

        IF SalesReport_Option = SalesReport_Option::"Tax no" THEN BEGIN
            ParamText := VATRegNoCaption;
            ParamValue := SalesInvoiceHeader."VAT Registration No.";
        END;

        IF SalesReport_Option = SalesReport_Option::"Order No" THEN BEGIN
            ParamText := OrderNoCaption;
            ParamValue := SalesInvoiceHeader."Order No.";
        END;

        //>>DSDK.Pass3
        IF SalesReport_Option = SalesReport_Option::Reference THEN BEGIN
            ParamText := YourRefCaption;
            ParamValue := SalesInvoiceHeader."Your Reference";
        END;
        IF SalesReport_Option = SalesReport_Option::"External Document No." THEN BEGIN
            ParamText := RefNoCaption;
            ParamValue := SalesInvoiceHeader."External Document No.";
        END;
        //<<DSDK.Pass3

        //>>DSDK.pass6
        IF SalesReport_Option = SalesReport_Option::"Pre-Assigned No." THEN BEGIN
            ParamText := PreAssignedNoCaption;
            ParamValue := SalesInvoiceHeader."Pre-Assigned No.";
        END;
        //<<DSDK.pass6

        //>>DSDK.Pass11 - all kind of delivery dates uses 'Shipment Date' on invoice
        IF SalesReport_Option = SalesReport_Option::"Requested Delivery Date" THEN BEGIN
            ParamText := DeliveryDateCaption;
            ParamValue := FORMAT(SalesInvoiceHeader."Shipment Date", 0, '<Day,2>/<Month,2>-<Year4>');
        END;
        IF SalesReport_Option = SalesReport_Option::"Promised Delivery Date" THEN BEGIN
            ParamText := DeliveryDateCaption;
            ParamValue := FORMAT(SalesInvoiceHeader."Shipment Date", 0, '<Day,2>/<Month,2>-<Year4>');
        END;
        //<<DSDK.Pass11
    end;

    procedure GetData_SalesInvoice(var SalesInvoiceHeader: Record "Sales Invoice Header"; var Pass_DropDeliveryAddress: Boolean; var Pass_DropItemNoColumn: Boolean; var Pass_DropBankInfoAtFIK: Boolean; var Pass_DropWorkDescription: Boolean; var Pass_Weight: Option No,"Only Gross","Only Net",Both)


    begin
        IF Rec.GET(Rec.Usage::"S.Invoice", 1) THEN;

        IF Rec.Param01 = Rec.Param01::" " THEN BEGIN
            Rec.Param01 := SalesReport_Option::"Doc no";
            Rec.Param02 := SalesReport_Option::"Customer no";
            Rec.Param03 := SalesReport_Option::Date;
            Rec.Param04 := SalesReport_Option::"Page no";
            Rec.Param05 := SalesReport_Option::"Order No";
            Rec.Param06 := SalesReport_Option::"Sales person";
            Rec.Param07 := SalesReport_Option::"Tax no";
            Rec.Param08 := SalesReport_Option::Reference;                      //Pass3
            Rec.Param09 := SalesReport_Option::"External Document No.";        //Pass3
            Rec.Param10 := SalesReport_Option::"Shipping Methode";
            Rec.Param11 := SalesReport_Option::Payment;
            Rec.MODIFY;
        END;

        Pass_DropDeliveryAddress := Rec."Drop Delivery Address";
        Pass_DropItemNoColumn := Rec."Drop Item No Column";
        Pass_DropBankInfoAtFIK := Rec."Drop Bank Info at FIK";
        //>>DSDK.Pass4
        Pass_DropWorkDescription := Rec."Drop Work Description";
        //<<DSDK.Pass4        

        //>>DSDK.pass9
        Pass_Weight := Rec."Show Weight";
        //<<DSDK.pass9
    end;

    procedure GetParam_SalesCrMemo(var SalesCrMemoHeader: Record "Sales Cr.Memo Header"; var ParamNumber: Integer; var ParamText: Text; var ParamValue: Text)
    var
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        Customer: Record Customer;

    begin
        IF Rec.GET(Rec.Usage::"S.Cr.Memo", 1) THEN;

        //>>DSDK.Pass3
        IF ParamText = 'ItemText3' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Vendor Item No.", SalesCrMemoHeader."Sell-to Customer No.");
            EXIT;
        END;
        IF ParamText = 'VendorItemNo' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Vendor Item No.", SalesCrMemoHeader."Sell-to Customer No.");
            EXIT;
        END;
        IF ParamText = 'TariffNo' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Tariff. No", SalesCrMemoHeader."Sell-to Customer No.");
            EXIT;
        END;
        IF ParamText = 'Barcode' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Barcode", SalesCrMemoHeader."Sell-to Customer No.");
            EXIT;
        END;
        //<<DSDK.Pass3

        //>>DSDK.Pass4
        IF ParamText = 'CountryOfOrigin' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Country of Origin", SalesCrMemoHeader."Sell-to Customer No.");
            EXIT;
        END;
        //<<DSDK.Pass4

        //>>DSDK.Pass8
        IF ParamText = 'CustomerItemNo' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Customer Item No.", SalesCrMemoHeader."Sell-to Customer No.");
            EXIT;
        END;
        //<<DSDK.Pass8

        IF ParamNumber = 1 THEN SalesReport_Option := Rec.Param01;
        IF ParamNumber = 2 THEN SalesReport_Option := Rec.Param02;
        IF ParamNumber = 3 THEN SalesReport_Option := Rec.Param03;
        IF ParamNumber = 4 THEN SalesReport_Option := Rec.Param04;
        IF ParamNumber = 5 THEN SalesReport_Option := Rec.Param05;
        IF ParamNumber = 6 THEN SalesReport_Option := Rec.Param06;
        IF ParamNumber = 7 THEN SalesReport_Option := Rec.Param07;
        IF ParamNumber = 8 THEN SalesReport_Option := Rec.Param08;
        IF ParamNumber = 9 THEN SalesReport_Option := Rec.Param09;
        IF ParamNumber = 10 THEN SalesReport_Option := Rec.Param10;
        IF ParamNumber = 11 THEN SalesReport_Option := Rec.Param11;
        IF ParamNumber = 12 THEN SalesReport_Option := Rec.Param12;
        IF ParamNumber = 13 THEN SalesReport_Option := Rec.Param13;
        IF ParamNumber = 14 THEN SalesReport_Option := Rec.Param14;
        IF ParamNumber = 15 THEN SalesReport_Option := Rec.Param15;

        ParamText := '';
        ParamValue := '';

        IF SalesReport_Option = SalesReport_Option::"Customer no" THEN BEGIN
            ParamText := CustomerNoCaption;
            ParamValue := SalesCrMemoHeader."Sell-to Customer No.";
        END;

        IF SalesReport_Option = SalesReport_Option::Date THEN BEGIN
            ParamText := DateCaption;
            ParamValue := FORMAT(SalesCrMemoHeader."Posting Date", 0, '<Day,2>/<Month,2>-<Year4>');
        END;

        IF SalesReport_Option = SalesReport_Option::"Doc no" THEN BEGIN
            ParamText := DocNoCaption;
            ParamValue := SalesCrMemoHeader."No.";
        END;

        IF SalesReport_Option = SalesReport_Option::"Page no" THEN BEGIN
            ParamText := PageCaption;
            ParamValue := 'PageNo';
        END;

        IF SalesReport_Option = SalesReport_Option::Payment THEN BEGIN
            ParamText := PaymentCaption;
            IF SalesCrMemoHeader."Payment Terms Code" = '' THEN
                PaymentTerms.INIT
            ELSE BEGIN
                PaymentTerms.GET(SalesCrMemoHeader."Payment Terms Code");
                PaymentTerms.TranslateDescription(PaymentTerms, SalesCrMemoHeader."Language Code");
            END;

            ParamValue := PaymentTerms.Description;
        END;

        IF SalesReport_Option = SalesReport_Option::"Sales person" THEN BEGIN
            ParamText := SalesPersonCaption;
            IF SalesPurchPerson.GET(SalesCrMemoHeader."Salesperson Code") THEN
                ParamValue := SalesPurchPerson.Name;
        END;

        IF SalesReport_Option = SalesReport_Option::"Shipping Methode" THEN BEGIN
            ParamText := ShipmentMethodCaption;
            IF SalesCrMemoHeader."Shipment Method Code" = '' THEN
                ShipmentMethod.INIT
            ELSE BEGIN
                ShipmentMethod.GET(SalesCrMemoHeader."Shipment Method Code");
                ShipmentMethod.TranslateDescription(ShipmentMethod, SalesCrMemoHeader."Language Code");
            END;
            ParamValue := ShipmentMethod.Description;
        END;

        IF SalesReport_Option = SalesReport_Option::"Tax no" THEN BEGIN
            ParamText := VATRegNoCaption;
            ParamValue := SalesCrMemoHeader."VAT Registration No.";
        END;

        //>>DSDK.Pass3
        IF SalesReport_Option = SalesReport_Option::Reference THEN BEGIN
            ParamText := YourRefCaption;
            ParamValue := SalesCrMemoHeader."Your Reference";
        END;
        IF SalesReport_Option = SalesReport_Option::"External Document No." THEN BEGIN
            ParamText := RefNoCaption;
            ParamValue := SalesCrMemoHeader."External Document No.";
        END;
        //<<DSDK.Pass3

        //>>DSDK.pass6
        IF SalesReport_Option = SalesReport_Option::"Pre-Assigned No." THEN BEGIN
            ParamText := PreAssignedNoCaption;
            ParamValue := SalesCrMemoHeader."Pre-Assigned No.";
        END;
        //<<DSDK.pass6
    end;

    procedure GetData_SalesCrMemo(var SalesCrMemoHeader: Record "Sales Cr.Memo Header"; var Pass_DropDeliveryAddress: Boolean; var Pass_DropItemNoColumn: Boolean; var Pass_DropWorkDescription: Boolean)

    begin
        IF Rec.GET(Rec.Usage::"S.Cr.Memo", 1) THEN;

        IF Rec.Param01 = Rec.Param01::" " THEN BEGIN
            Rec.Param01 := SalesReport_Option::"Doc no";
            Rec.Param02 := SalesReport_Option::"Customer no";
            Rec.Param03 := SalesReport_Option::Date;
            Rec.Param04 := SalesReport_Option::"Page no";
            Rec.Param05 := SalesReport_Option::"Sales person";
            Rec.Param06 := SalesReport_Option::"Tax no";
            Rec.Param07 := SalesReport_Option::Reference;                      //Pass3
            Rec.Param08 := SalesReport_Option::"External Document No.";        //Pass3
            Rec.Param09 := SalesReport_Option::"Shipping Methode";
            Rec.Param10 := SalesReport_Option::Payment;
            Rec.MODIFY;
        END;

        Pass_DropDeliveryAddress := Rec."Drop Delivery Address";
        Pass_DropItemNoColumn := Rec."Drop Item No Column";
        //>>DSDK.Pass4
        Pass_DropWorkDescription := Rec."Drop Work Description";
        //<<DSDK.Pass4        
    end;

    local procedure FindItemValue(var Pass_ParamText: Text; var Pass_ParamValue: Text; var Pass_ShowOption: Option No,Yes,"Yes - with leading text"; VAR Pass_CustomerNo: Code[20])
    var
        Item: Record Item;
        ItemCrossReference: Record "Item Cross Reference";
        ItemNo: Code[20];

    begin
        //>>DSDK.Pass3
        ItemNo := FORMAT(Pass_ParamValue);
        IF Item.GET(ItemNo) THEN;

        //>>DSDK.Item.Description3 - DeltaElektronik
        /*
        IF Pass_ParamText = 'ItemText3' THEN BEGIN
            // Item Description 3
            Pass_ParamValue := Item."Description 3";                     //value
            Pass_ParamText := Pass_ParamValue;
            exit;
        END;
        */
        //<<DSDK.Item.Description3 - DeltaElektronik

        IF Pass_ShowOption = Pass_ShowOption::No THEN BEGIN
            Pass_ParamText := '';
            EXIT;
        END;

        IF Pass_ParamText = 'VendorItemNo' THEN BEGIN
            // VendorItemNo
            Pass_ParamValue := Item."Vendor Item No.";                      //value
            IF (Pass_ShowOption = Pass_ShowOption::"Yes - with leading text") AND (Pass_ParamValue <> '') THEN
                Pass_ParamValue := VendorItemNoCaption + Pass_ParamValue;   //caption
            Pass_ParamText := Pass_ParamValue;
        END;

        IF Pass_ParamText = 'TariffNo' THEN BEGIN
            // TariffNo
            Pass_ParamValue := Item."Tariff No.";                           //value
            IF (Pass_ShowOption = Pass_ShowOption::"Yes - with leading text") AND (Pass_ParamValue <> '') THEN
                Pass_ParamValue := TariffNoCaption + Pass_ParamValue;       //caption
            Pass_ParamText := Pass_ParamValue;
            //>>Pass4
            IF (Rec."Show Country of Origin" <> Rec."Show Country of Origin"::No) AND (Rec."Show Country Same Line" = TRUE) AND (Item."Country/Region of Origin Code" <> '') THEN BEGIN
                IF Pass_ParamText <> '' THEN
                    Pass_ParamText += ' / ';
                IF Rec."Show Country of Origin" = Rec."Show Country of Origin"::"Yes - with leading text" THEN
                    Pass_ParamText += CountryOfOriginCaption1 + Item."Country/Region of Origin Code"
                ELSE
                    Pass_ParamText += Item."Country/Region of Origin Code";
            END;
            //<<Pass4            
        END;

        //>>Pass4
        IF (Pass_ParamText = 'CountryOfOrigin') THEN BEGIN
            IF (Rec."Show Country Same Line" = FALSE) THEN BEGIN
                // Item Country of Origin
                Pass_ParamValue := Item."Country/Region of Origin Code";                    //value
                IF (Pass_ShowOption = Pass_ShowOption::"Yes - with leading text") AND (Pass_ParamValue <> '') THEN
                    Pass_ParamValue := CountryOfOriginCaption2 + Pass_ParamValue;   //caption
                Pass_ParamText := Pass_ParamValue;
            END ELSE BEGIN
                Pass_ParamText := '';
            END;
        END;
        //<<Pass4        

        IF Pass_ParamText = 'Barcode' THEN BEGIN
            // Barcode
            CLEAR(ItemCrossReference);
            ItemCrossReference.SETRANGE(ItemCrossReference."Item No.", ItemNo);
            ItemCrossReference.SETRANGE(ItemCrossReference."Cross-Reference Type", ItemCrossReference."Cross-Reference Type"::"Bar Code");
            IF ItemCrossReference.FINDSET THEN;

            Pass_ParamValue := ItemCrossReference."Cross-Reference No.";      //value
            IF (Pass_ShowOption = Pass_ShowOption::"Yes - with leading text") AND (Pass_ParamValue <> '') THEN
                Pass_ParamValue := BarcodeCaption + Pass_ParamValue;          //caption
            Pass_ParamText := Pass_ParamValue;
        END;
        //<<DSDK.Pass3

        //>>DSDK.Pass8
        IF Pass_ParamText = 'CustomerItemNo' THEN BEGIN
            // Customer Item No.
            CLEAR(ItemCrossReference);
            ItemCrossReference.SETRANGE(ItemCrossReference."Item No.", ItemNo);
            ItemCrossReference.SETRANGE(ItemCrossReference."Cross-Reference Type", ItemCrossReference."Cross-Reference Type"::Customer);
            ItemCrossReference.SETRANGE(ItemCrossReference."Cross-Reference Type No.", Pass_CustomerNo);
            IF ItemCrossReference.FINDSET THEN;

            Pass_ParamValue := ItemCrossReference."Cross-Reference No.";      //value
            IF (Pass_ShowOption = Pass_ShowOption::"Yes - with leading text") AND (Pass_ParamValue <> '') THEN
                Pass_ParamValue := CustomerItemNoCaption + Pass_ParamValue;   //caption
            Pass_ParamText := Pass_ParamValue;
        END;
        //<<DSDK.Pass8

    end;

    procedure GetParam_PurchaseOrder(var PurchaseHeader: Record "Purchase Header"; var ParamNumber: Integer; var ParamText: Text; var ParamValue: Text)
    var
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";

    begin
        /// PURCHASE ORDER
        IF PurchaseHeader."Document Type" = PurchaseHeader."Document Type"::Order THEN
            IF Rec.GET(Rec.Usage::"P.Order", 1) THEN;
        IF PurchaseHeader."Document Type" = PurchaseHeader."Document Type"::Quote THEN
            IF Rec.GET(Rec.Usage::"P.Quote", 1) THEN;

        //>>DSDK.Pass3
        IF ParamText = 'ItemText3' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Vendor Item No.", PurchaseHeader."Buy-from Vendor No.");
            EXIT;
        END;
        IF ParamText = 'VendorItemNo' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Vendor Item No.", PurchaseHeader."Buy-from Vendor No.");
            EXIT;
        END;
        IF ParamText = 'TariffNo' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Tariff. No", PurchaseHeader."Buy-from Vendor No.");
            EXIT;
        END;
        IF ParamText = 'Barcode' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Barcode", PurchaseHeader."Buy-from Vendor No.");
            EXIT;
        END;
        //<<DSDK.Pass3

        //>>DSDK.Pass4
        IF ParamText = 'CountryOfOrigin' THEN BEGIN
            FindItemValue(ParamText, ParamValue, Rec."Show Vendor Item No.", PurchaseHeader."Buy-from Vendor No.");
            EXIT;
        END;
        //<<DSDK.Pass4

        IF ParamNumber = 1 THEN PurchaseReport_Option := Rec.PParam01;
        IF ParamNumber = 2 THEN PurchaseReport_Option := Rec.PParam02;
        IF ParamNumber = 3 THEN PurchaseReport_Option := Rec.PParam03;
        IF ParamNumber = 4 THEN PurchaseReport_Option := Rec.PParam04;
        IF ParamNumber = 5 THEN PurchaseReport_Option := Rec.PParam05;
        IF ParamNumber = 6 THEN PurchaseReport_Option := Rec.PParam06;
        IF ParamNumber = 7 THEN PurchaseReport_Option := Rec.PParam07;
        IF ParamNumber = 8 THEN PurchaseReport_Option := Rec.PParam08;
        IF ParamNumber = 9 THEN PurchaseReport_Option := Rec.PParam09;
        IF ParamNumber = 10 THEN PurchaseReport_Option := Rec.PParam10;
        IF ParamNumber = 11 THEN PurchaseReport_Option := Rec.PParam11;
        IF ParamNumber = 12 THEN PurchaseReport_Option := Rec.PParam12;
        IF ParamNumber = 13 THEN PurchaseReport_Option := Rec.PParam13;
        IF ParamNumber = 14 THEN PurchaseReport_Option := Rec.PParam14;
        IF ParamNumber = 15 THEN PurchaseReport_Option := Rec.PParam15;

        ParamText := '';
        ParamValue := '';

        IF PurchaseReport_Option = PurchaseReport_Option::"Vendor no" THEN BEGIN
            ParamText := VendorNoCaption;
            ParamValue := PurchaseHeader."Buy-from Vendor No.";
        END;

        IF PurchaseReport_Option = PurchaseReport_Option::Date THEN BEGIN
            ParamText := DateCaption;
            ParamValue := FORMAT(PurchaseHeader."Document Date", 0, '<Day,2>/<Month,2>-<Year4>');
        END;

        IF PurchaseReport_Option = PurchaseReport_Option::"Doc no" THEN BEGIN
            ParamText := DocNoCaption;
            ParamValue := PurchaseHeader."No.";
        END;

        IF PurchaseReport_Option = PurchaseReport_Option::"Page no" THEN BEGIN
            ParamText := PageCaption;
            ParamValue := 'PageNo';
        END;

        IF PurchaseReport_Option = PurchaseReport_Option::Payment THEN BEGIN
            ParamText := PaymentCaption;
            IF PurchaseHeader."Payment Terms Code" = '' THEN
                PaymentTerms.INIT
            ELSE BEGIN
                PaymentTerms.GET(PurchaseHeader."Payment Terms Code");
                PaymentTerms.TranslateDescription(PaymentTerms, PurchaseHeader."Language Code");
            END;

            ParamValue := PaymentTerms.Description;
        END;

        IF PurchaseReport_Option = PurchaseReport_Option::"Purchaser Code" THEN BEGIN
            ParamText := PurchasePersonCaption;
            IF SalesPurchPerson.GET(PurchaseHeader."Purchaser Code") THEN
                ParamValue := SalesPurchPerson.Name;
        END;
        /*
        IF PurchaseReport_Option = PurchaseReport_Option::"Shipping Methode" THEN BEGIN
          ParamText := ShipmentMethodCaption;
          IF PurchaseHeader."Shipment Method Code" = '' THEN
            ShipmentMethod.INIT
          ELSE BEGIN
            ShipmentMethod.GET(PurchaseHeader."Shipment Method Code");
            ShipmentMethod.TranslateDescription(ShipmentMethod, PurchaseHeader."Language Code");
          END;
          ParamValue := ShipmentMethod.Description;
        END;
        */
        IF PurchaseReport_Option = PurchaseReport_Option::"Tax no" THEN BEGIN
            ParamText := VATRegNoCaption;
            ParamValue := PurchaseHeader."VAT Registration No.";
        END;

        //>>DSDK.Pass3
        /*
        IF PurchaseReport_Option = PurchaseReport_Option::Reference THEN BEGIN
          ParamText := YourRefCaption;
          ParamValue := PurchaseHeader."Your Reference";
        END;
        */
        IF PurchaseReport_Option = PurchaseReport_Option::"Vendor Order No." THEN BEGIN
            ParamText := VendorOrderNoCaption;
            ParamValue := PurchaseHeader."Vendor Order No.";
        END;
        IF PurchaseReport_Option = PurchaseReport_Option::"Vendor Shipment No." THEN BEGIN
            ParamText := VendorShipmentNoCaption;
            ParamValue := PurchaseHeader."Vendor Shipment No.";
        END;
        //<<DSDK.Pass3

        //>>DSDK.Pass11
        IF PurchaseReport_Option = PurchaseReport_Option::"Requested Receipt Date" THEN BEGIN
            ParamText := RequestedReceiptDateCaption;
            ParamValue := FORMAT(PurchaseHeader."Requested Receipt Date", 0, '<Day,2>/<Month,2>-<Year4>');
        END;

        IF PurchaseReport_Option = PurchaseReport_Option::"Promised Receipt Date" THEN BEGIN
            ParamText := PropmisedReceiptDateCaption;
            ParamValue := FORMAT(PurchaseHeader."Promised Receipt Date", 0, '<Day,2>/<Month,2>-<Year4>');
        END;
        //<<DSDK.Pass11

    end;

    procedure GetData_PurchaseOrder(var PurchaseHeader: Record "Purchase Header"; var Pass_DropDeliveryAddress: Boolean; var Pass_DropItemNoColumn: Boolean; var Pass_DropWorkDescription: Boolean)
    begin
        IF PurchaseHeader."Document Type" = PurchaseHeader."Document Type"::Order THEN
            IF Rec.GET(Rec.Usage::"P.Order", 1) THEN;
        IF PurchaseHeader."Document Type" = PurchaseHeader."Document Type"::Quote THEN
            IF Rec.GET(Rec.Usage::"P.Quote", 1) THEN;

        IF Rec.PParam01 = Rec.PParam01::" " THEN BEGIN
            // default init
            Rec.PParam01 := PurchaseReport_Option::"Doc no";
            Rec.PParam02 := PurchaseReport_Option::"Vendor no";
            Rec.PParam03 := PurchaseReport_Option::Date;
            Rec.PParam04 := PurchaseReport_Option::"Page no";
            Rec.PParam05 := PurchaseReport_Option::"Purchaser Code";
            Rec.PParam06 := PurchaseReport_Option::"Tax no";
            Rec.PParam07 := PurchaseReport_Option::"Vendor Order No.";
            Rec.PParam08 := PurchaseReport_Option::"Vendor Shipment No.";
            Rec.PParam09 := PurchaseReport_Option::Payment;
            Rec.MODIFY;
        END;

        Pass_DropDeliveryAddress := Rec."Drop Delivery Address";
        Pass_DropItemNoColumn := Rec."Drop Item No Column";
        //>>DSDK.Pass4
        Pass_DropWorkDescription := Rec."Drop Work Description";
        //<<DSDK.Pass4
    end;

}

