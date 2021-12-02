report 50023 "Sales - Shipment DSDK2018"
{
    // version DSDK.std.2018,DSDK.09

    // DSDK - Datasign.dk - Standard report std.2
    // 
    // DSDK.2016 --> dropped - needs codeunit 6503 ItemTrackingDocMgt
    // 
    // DSDK.00 LV 2016.01.29 - Ny standard (Alflow) - changed texts and layout
    // DSDK.01 LV 2017.05.10 - 2 lines bottom
    // DSDK.02 LV 2017.05.15 - Print Tempory Shipment via Invoice
    // DSDK.03 LV 2017.05.24 - "Picture 2"
    // DSDK.06 LV 2017.09.13 - print "Our Ref", "Your Ref", "Your Order No."
    // DSDK.08 LV 2017.10.09 - print Description 2+3
    // DSDK.09 LV 2017.10.10 - print Shipment Metode Code
    // 
    // DSDK.00 LV 2018.02.12 - ERPgruppen.dk - 2018 Standard report
    // DSDK.10 LV 2018.12.27 - clean up and remove other customers changes
    // DSDK.20 LV 2019.02.06 - Report Params
    // DSDK.21 LV 2019.03.12 - same address - then drop Shipment Address
    // DSDK.23 LV 2019.03.29 - Report Params - Pass2
    // DSDK.24 LV 2019.04.08 - Report Params -TextLines
    // DSDK.25 LV 2019.04.17 - Report Encoding
    // DSDK.27 LV 2019.05.27 - "Drop Work Description", "Show Country of Origin", Show on same line"
    // DSDK.28 LV 2019.05.29 - full layout
    // DSDK.30 LV 2019.06.19 - Tracking with detailed print
    // DSDK.31 LV 2019.07.08 - German texts

    // DSDK.33 LV 2019.07.12 - CustomerAdjustnent.01: Print Item."Desription 3"
    // DSDK.35 LV 2019.07.18 - Translate Country Name
    // DSDK.36 LV 2019.08.14 - Body captions on after page 1
    // DSDK.37 LV 2019.08.30 - Tracking with detailed print - Show/hide Item No
    // DSDK.38 LV 2019.09.06 - Tracking: "Expiration Date" & custom-fields: ColumnTxt1, ColumnValue1
    // DSDK.39 LV 2019.09.06 - calc total Gross Weight - Custom.02 (Ørbæk) + Net Weight

    //      ØRBÆK 
    // DSDK.Custom.01 2019.09.06  LV - print Colli pr. line - custom-fields: ColumnTxt1, ColumnValue1

    //      CABOLA
    // DSDK.Custom.03 2019.10.08 Picture 2

    //      AUSTROTERM - MIA CASA
    // DSDK.Custom.05 2019.12.19 - Show always all addresses

    // DSDK.41 LV 2019.09.11 - find tracking expiration date
    // DSDK.42 LV 2019.09.13 - print text: Delivery address
    // DSDK.43 LV 2019.10.07 - Report Params - Pass8 - "Show Customer Item No."
    // DSDK.44 LV 2019.10.30 - Report Params - Pass9 - "Show Weight"
    // DSDK.45 LV 2019.11.04 - version 15
    // DSDK.45 LV 2019.12.19 - added fields for print "Sell-to"
    // DSDK.47 LV 2020.01.16 - Variant


    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/50023 Sales - Shipment DSDK2018.rdlc';

    CaptionML = DAN = 'Salg - leverance',
                ENU = 'Sales - Shipment';
    Permissions = TableData "Sales Shipment Header" = rimd,
                  TableData "Sales Shipment Line" = rimd;

    dataset
    {
        dataitem("Sales Shipment Header"; "Sales Shipment Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeadingML = DAN = 'Bogført salgsleverance',
                                     ENU = 'Posted Sales Shipment';
            column(No_SalesShptHeader; "No.")
            {
            }
            column(PageCaption; PageCaptionCap)
            {
            }
            column(ParamText01; ParamText[1])
            {
            }
            column(ParamText02; ParamText[2])
            {
            }
            column(ParamText03; ParamText[3])
            {
            }
            column(ParamText04; ParamText[4])
            {
            }
            column(ParamText05; ParamText[5])
            {
            }
            column(ParamText06; ParamText[6])
            {
            }
            column(ParamText07; ParamText[7])
            {
            }
            column(ParamText08; ParamText[8])
            {
            }
            column(ParamText09; ParamText[9])
            {
            }
            column(ParamText10; ParamText[10])
            {
            }
            column(ParamText11; ParamText[11])
            {
            }
            column(ParamText12; ParamText[12])
            {
            }
            column(ParamText13; ParamText[13])
            {
            }
            column(ParamText14; ParamText[14])
            {
            }
            column(ParamText15; ParamText[15])
            {
            }
            column(ParamValue01; ParamValue[1])
            {
            }
            column(ParamValue02; ParamValue[2])
            {
            }
            column(ParamValue03; ParamValue[3])
            {
            }
            column(ParamValue04; ParamValue[4])
            {
            }
            column(ParamValue05; ParamValue[5])
            {
            }
            column(ParamValue06; ParamValue[6])
            {
            }
            column(ParamValue07; ParamValue[7])
            {
            }
            column(ParamValue08; ParamValue[8])
            {
            }
            column(ParamValue09; ParamValue[9])
            {
            }
            column(ParamValue10; ParamValue[10])
            {
            }
            column(ParamValue11; ParamValue[11])
            {
            }
            column(ParamValue12; ParamValue[12])
            {
            }
            column(ParamValue13; ParamValue[13])
            {
            }
            column(ParamValue14; ParamValue[14])
            {
            }
            column(ParamValue15; ParamValue[15])
            {
            }
            column(DropItemNoColumn; ParamDropItemNoColumn)
            {
            }

            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = CONST(1));
                    column(CompanyInfo2Picture; CompanyInfo2.Picture)
                    {
                    }
                    column(CompanyInfo1Picture; CompanyInfo1.Picture)
                    {
                    }
                    column(CompanyInfo3Picture; CompanyInfo3.Picture)
                    {
                    }
                    column(SalesShptCopyText; uppercase(STRSUBSTNO(Text002, CopyText)))
                    {
                    }
                    column(ShipToAddr1; ShipToAddr[1])
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(ShipToAddr2; ShipToAddr[2])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(ShipToAddr3; ShipToAddr[3])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(ShipToAddr4; ShipToAddr[4])
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(ShipToAddr5; ShipToAddr[5])
                    {
                    }
                    column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
                    {
                    }
                    column(ShipToAddr6; ShipToAddr[6])
                    {
                    }
                    column(CompanyInfoHomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoEmail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoFaxNo; CompanyInfo."Fax No.")
                    {
                    }
                    column(CompanyInfoVATRegtnNo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoGiroNo; CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName; CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccountNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(SelltoCustNo_SalesShptHeader; "Sales Shipment Header"."Sell-to Customer No.")
                    {
                    }
                    column(DocDate_SalesShptHeader; FORMAT("Sales Shipment Header"."Document Date", 0, '<Day,2>/<Month,2>-<Year4>'))
                    {
                    }
                    column(SalesPersonText; SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(ReferenceText; ReferenceText)
                    {
                    }
                    column(ShipToAddr7; ShipToAddr[7])
                    {
                    }
                    column(ShipToAddr8; ShipToAddr[8])
                    {
                    }
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(ShptDate_SalesShptHeader; FORMAT("Sales Shipment Header"."Shipment Date"))
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(ItemTrackingAppendixCaption; ItemTrackingAppendixCaptionLbl)
                    {
                    }
                    column(PhoneNoCaption; PhoneNoCaptionLbl)
                    {
                    }
                    column(VATRegNoCaption; VATRegNoCaptionLbl)
                    {
                    }
                    column(GiroNoCaption; GiroNoCaptionLbl)
                    {
                    }
                    column(BankNameCaption; BankNameCaptionLbl)
                    {
                    }
                    column(BankAccNoCaption; BankAccNoCaptionLbl)
                    {
                    }
                    column(ShipmentNoCaption; ShipmentNoCaptionLbl)
                    {
                    }
                    column(ShipmentDateCaption; ShipmentDateCaptionLbl)
                    {
                    }
                    column(HomePageCaption; HomePageCaptionLbl)
                    {
                    }
                    column(EmailCaption; EmailCaptionLbl)
                    {
                    }
                    column(DocumentDateCaption; DocumentDateCaptionLbl)
                    {
                    }
                    column(SelltoCustNo_SalesShptHeaderCaption; SellToCustCaptionLbl)
                    {
                    }
                    column(VATRegNo; "Sales Shipment Header"."VAT Registration No.")
                    {
                    }
                    column(BottomLine1; BottomLine[1])
                    {
                    }
                    column(BottomLine2; BottomLine[2])
                    {
                    }
                    column(BilltoCustNo_SalesShptHeader; "Sales Shipment Header"."Bill-to Customer No.")
                    {
                    }
                    column(CustAddr1; CustAddr[1])
                    {
                    }
                    column(CustAddr2; CustAddr[2])
                    {
                    }
                    column(CustAddr3; CustAddr[3])
                    {
                    }
                    column(CustAddr4; CustAddr[4])
                    {
                    }
                    column(CustAddr5; CustAddr[5])
                    {
                    }
                    column(CustAddr6; CustAddr[6])
                    {
                    }
                    column(CustAddr7; CustAddr[7])
                    {
                    }
                    column(CustAddr8; CustAddr[8])
                    {
                    }
                    column(BilltoAddressCaption; BilltoAddressCaptionLbl)
                    {
                    }
                    column(BilltoCustNo_SalesShptHeaderCaption; SellToCustCaptionLbl)
                    {
                    }
                    column(PageCaptionText; PageCaptionText)
                    {
                    }
                    column(OrderNoCaption; OrderNoCaptionLbl)
                    {
                    }
                    column(OrdreNo; OrderNo)
                    {
                    }
                    column(YourOrderNoCaption; YourOrderNoCaptionLbl)
                    {
                    }
                    column(ExternalDocumentNo; "Sales Shipment Header"."External Document No.")
                    {
                    }
                    column(OurRefCaption; OurRefCaptionLbl)
                    {
                    }
                    column(YourRefCaption; YourRefCaptionLbl)
                    {
                    }
                    column(YourRef; "Sales Shipment Header"."Your Reference")
                    {
                    }
                    column(ShptMethodDescCaption; ShptMethodDescCaptionLbl)
                    {
                    }
                    column(ShipmentMethodDesc; ShipmentMethod.Description)
                    {
                    }
                    column(ShiptoAddrCaption; ShiptoAddrCaptionLbl)
                    {
                    }
                    column(SellToAddr1; SellToAddr[1])
                    {
                    }
                    column(SellToAddr2; SellToAddr[2])
                    {
                    }
                    column(SellToAddr3; SellToAddr[3])
                    {
                    }
                    column(SellToAddr4; SellToAddr[4])
                    {
                    }
                    column(SellToAddr5; SellToAddr[5])
                    {
                    }
                    column(SellToAddr6; SellToAddr[6])
                    {
                    }
                    column(SellToAddr7; SellToAddr[7])
                    {
                    }
                    column(SellToAddr8; SellToAddr[8])
                    {
                    }
                    column(InvoiceAddrCaption; InvoiceAddrCaption)
                    {
                    }
                    column(CustomerAddrCaption; CustomerAddrCaption)
                    {
                    }

                    dataitem(DimensionLoop1; Integer)
                    {
                        DataItemLinkReference = "Sales Shipment Header";
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(HeaderDimensionsCaption; HeaderDimensionsCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN BEGIN
                                IF NOT DimSetEntry1.FINDSET THEN
                                    CurrReport.BREAK;
                            END ELSE
                                IF NOT Continue THEN
                                    CurrReport.BREAK;

                            CLEAR(DimText);
                            Continue := FALSE;
                            REPEAT
                                OldDimText := DimText;
                                IF DimText = '' THEN
                                    DimText := STRSUBSTNO('%1 - %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1; %2 - %3', DimText,
                                        DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
                                IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                    DimText := OldDimText;
                                    Continue := TRUE;
                                    EXIT;
                                END;
                            UNTIL DimSetEntry1.NEXT = 0;
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF NOT ShowInternalInfo THEN
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem("Sales Shipment Line"; "Sales Shipment Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Shipment Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(Description_SalesShptLine; Description)
                        {
                        }
                        column(Description2_SalesShptLine; "Description 2")
                        {
                        }
                        column(ShowInternalInfo; ShowInternalInfo)
                        {
                        }
                        column(ShowCorrectionLines; ShowCorrectionLines)
                        {
                        }
                        column(Type_SalesShptLine; FORMAT(Type, 0, 2))
                        {
                        }
                        column(AsmHeaderExists; AsmHeaderExists)
                        {
                        }
                        column(DocumentNo_SalesShptLine; "Document No.")
                        {
                        }
                        column(LinNo; LinNo)
                        {
                        }
                        column(Qty_SalesShptLine; Quantity)
                        {
                        }
                        column(UOM_SalesShptLine; "Unit of Measure")
                        {
                        }
                        column(No_SalesShptLine; "No.")
                        {
                        }
                        column(LineNo_SalesShptLine; "Line No.")
                        {
                        }
                        column(Description_SalesShptLineCaption; DescriptionCaptionLbl)
                        {
                        }
                        column(Qty_SalesShptLineCaption; QuantityCaptionLbl)
                        {
                        }
                        column(UOM_SalesShptLineCaption; UOMCaptionLbl)
                        {
                        }
                        column(No_SalesShptLineCaption; NoCaptionLbl)
                        {
                        }
                        column(TextLine1; TextLine[1])
                        {
                        }
                        column(TextLine2; TextLine[2])
                        {
                        }
                        column(TextLine3; TextLine[3])
                        {
                        }
                        column(TextLine4; TextLine[4])
                        {
                        }
                        column(TextLine5; TextLine[5])
                        {
                        }
                        column(ColumnTxt1; ColumnTxt1)
                        {
                        }
                        column(ColumnValue1; ColumnValue1)
                        {
                        }
                        column(VariantCaption; VariantCaption)
                        { }
                        column(VariantCode; "Variant Code")
                        { }

                        dataitem(DimensionLoop2; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = FILTER(1 ..));
                            column(DimText1; DimText)
                            {
                            }
                            column(LineDimensionsCaption; LineDimensionsCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN BEGIN
                                    IF NOT DimSetEntry2.FINDSET THEN
                                        CurrReport.BREAK;
                                END ELSE
                                    IF NOT Continue THEN
                                        CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := FALSE;
                                REPEAT
                                    OldDimText := DimText;
                                    IF DimText = '' THEN
                                        DimText := STRSUBSTNO('%1 - %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    ELSE
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1; %2 - %3', DimText,
                                            DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code");
                                    IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                        DimText := OldDimText;
                                        Continue := TRUE;
                                        EXIT;
                                    END;
                                UNTIL DimSetEntry2.NEXT = 0;
                            end;

                            trigger OnPreDataItem();
                            begin
                                IF NOT ShowInternalInfo THEN
                                    CurrReport.BREAK;
                            end;
                        }
                        dataitem(DisplayAsmInfo; Integer)
                        {
                            DataItemTableView = SORTING(Number);
                            column(PostedAsmLineItemNo; BlanksForIndent + PostedAsmLine."No.")
                            {
                            }
                            column(PostedAsmLineDescription; BlanksForIndent + PostedAsmLine.Description)
                            {
                            }
                            column(PostedAsmLineQuantity; PostedAsmLine.Quantity)
                            {
                                DecimalPlaces = 0 : 5;
                            }
                            column(PostedAsmLineUOMCode; GetUnitOfMeasureDescr(PostedAsmLine."Unit of Measure Code"))
                            {
                            }

                            trigger OnAfterGetRecord();
                            var
                                ItemTranslation: Record "Item Translation";
                            begin
                                IF Number = 1 THEN
                                    PostedAsmLine.FINDSET
                                ELSE
                                    PostedAsmLine.NEXT;

                                IF ItemTranslation.GET(PostedAsmLine."No.",
                                     PostedAsmLine."Variant Code",
                                     "Sales Shipment Header"."Language Code")
                                THEN
                                    PostedAsmLine.Description := ItemTranslation.Description;
                            end;

                            trigger OnPreDataItem();
                            begin
                                IF NOT DisplayAssemblyInformation THEN
                                    CurrReport.BREAK;
                                IF NOT AsmHeaderExists THEN
                                    CurrReport.BREAK;

                                PostedAsmLine.SETRANGE(PostedAsmLine."Document No.", PostedAsmHeader."No.");
                                SETRANGE(Number, 1, PostedAsmLine.COUNT);
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            //>>DSDK.Custom.01
                            /*
                            IF ("Sales Shipment Line".Type = "Sales Shipment Line".Type::"G/L Account") AND ("Sales Shipment Line"."Fee Line" = true) then
                                CurrReport.SKIP;
                            */
                            //<<DSDK.Custom.01

                            LinNo := "Line No.";
                            IF NOT ShowCorrectionLines AND Correction THEN
                                CurrReport.SKIP;

                            DimSetEntry2.SETRANGE("Dimension Set ID", "Dimension Set ID");
                            IF DisplayAssemblyInformation THEN
                                AsmHeaderExists := AsmToShipmentExists(PostedAsmHeader);

                            //>>DSDK.04
                            CLEAR(Item);
                            IF Type = Type::Item THEN
                                IF Item.GET("No.") THEN;
                            //<<DSDK.04

                            //>>DSDK.24.TextLines
                            CLEAR(TextLine);
                            TextLineIdx := 0;

                            IF Type = Type::Item THEN BEGIN

                                //>>DSDK.CustomerAdjustnent.01
                                // Item."Description 3"
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'ItemText3';
                                ParamValue[ParamIdx] := FORMAT("No.");
                                ReportSelections.GetParam_SalesShipment("Sales Shipment Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;
                                //<<DSDK.CustomerAdjustnent.01

                                //>>DSDK.43
                                // CustomerItemNo - Pass8
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'CustomerItemNo';
                                ParamValue[ParamIdx] := FORMAT("No.");
                                ReportSelections.GetParam_SalesShipment("Sales Shipment Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;
                                //<<DSDK.43

                                // VendorItemNo
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'VendorItemNo';
                                ParamValue[ParamIdx] := FORMAT("No.");
                                ReportSelections.GetParam_SalesShipment("Sales Shipment Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;

                                // TariffNo
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'TariffNo';
                                ParamValue[ParamIdx] := FORMAT("No.");
                                ReportSelections.GetParam_SalesShipment("Sales Shipment Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;

                                //>>DSDK.27
                                // CountryOfOrigin
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'CountryOfOrigin';
                                ParamValue[ParamIdx] := FORMAT("No.");
                                ReportSelections.GetParam_SalesShipment("Sales Shipment Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;
                                //<<DSDK.27  

                                // Barcode
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'Barcode';
                                ParamValue[ParamIdx] := FORMAT("No.");
                                ReportSelections.GetParam_SalesShipment("Sales Shipment Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;

                            END;
                            //<<DSDK.24.TextLines

                            //>>DSDK.Custom.01
                            /* Ørbæk
                            ColumnTxt1 := ColliCaption;
                            ColumnValue1 := '';
                            IF Type = Type::Item THEN begin
                                IF Item."Quantity per Colli" <> 0 then
                                    ColumnValue1 := Format(Round((Quantity / Item."Quantity per Colli"), 1, '='));
                            end;
                            */
                            //<<DSDK.Custom.01

                        end;

                        trigger OnPostDataItem();
                        begin
                            //>>DSDK.Tracking
                            IF ShowLotSN THEN BEGIN
                                ItemTrackingDocMgt.SetRetrieveAsmItemTracking(TRUE);
                                TrackingSpecCount :=
                                  ItemTrackingDocMgt.RetrieveDocumentItemTracking(TrackingSpecBuffer,
                                    "Sales Shipment Header"."No.", DATABASE::"Sales Shipment Header", 0);
                                ItemTrackingDocMgt.SetRetrieveAsmItemTracking(FALSE);
                            END;
                            //<<DSDK.Tracking

                        end;

                        trigger OnPreDataItem();
                        begin
                            MoreLines := FIND('+');
                            WHILE MoreLines AND (Description = '') AND ("No." = '') AND (Quantity = 0) DO
                                MoreLines := NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                                CurrReport.BREAK;
                            SETRANGE("Line No.", 0, "Line No.");
                        end;
                    }
                    dataitem(WorkDescriptionLines; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = FILTER(1 .. 99999));
                        column(WorkDescriptionLineNumber; Number)
                        {
                        }
                        column(WorkDescriptionLine; WorkDescriptionLine)
                        {
                        }
                        column(MaxWorkDescription; MaxWorkDescription)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            //<<DSDK.10
                            IF NOT TempBlobWorkDescription.MoreTextLines THEN
                                CurrReport.BREAK;
                            WorkDescriptionLine := TempBlobWorkDescription.ReadTextLine;
                            //<<DSDK.10
                        end;

                        trigger OnPostDataItem()
                        begin
                            //>>DSDK.10
                            CLEAR(TempBlobWorkDescription);
                            //<<DSDK.10
                        end;

                        trigger OnPreDataItem()
                        begin
                            //>>DSDK.10
                            IF NOT ShowWorkDescription THEN
                                CurrReport.BREAK;
                            TempBlobWorkDescription.Blob := "Sales Shipment Header"."Work Description";

                            // find number of lines
                            MaxWorkDescription := 0;
                            WHILE TempBlobWorkDescription.MoreTextLines DO BEGIN
                                WorkDescriptionLine := TempBlobWorkDescription.ReadTextLine;
                                MaxWorkDescription += 1;
                            END;
                            WorkDescriptionLine := '';
                            CLEAR(TempBlobWorkDescription);
                            TempBlobWorkDescription.Blob := "Sales Shipment Header"."Work Description";

                            //>>DSDK.25.StartEncoding
                            IF CompanyInfo."Report Encoding" = CompanyInfo."Report Encoding"::Windows THEN
                                TempBlobWorkDescription.StartReadingTextLines(TEXTENCODING::Windows);
                            IF CompanyInfo."Report Encoding" = CompanyInfo."Report Encoding"::"UTF-8" THEN
                                TempBlobWorkDescription.StartReadingTextLines(TEXTENCODING::UTF8);
                            //<<DSDK.25.StartEncoding
                            //<<DSDK.10
                        end;
                    }
                    dataitem(MessageLines; "Extended Text Line")
                    {
                        UseTemporary = true;
                        column(MessageLineNo; MessageLines."Line No.")
                        {
                        }
                        column(MessageText; MessageLines.Text)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            //<<DSDK.Message
                            //<<DSDK.Message
                        end;

                        trigger OnPostDataItem()
                        begin
                            //>>DSDK.Message
                            //<<DSDK.Message
                        end;

                        trigger OnPreDataItem()
                        begin
                            //>>DSDK.Message
                            MessageNo := '50023';
                            MessageLanguage := "Sales Shipment Header"."Language Code";

                            CLEAR(MessageLines);
                            MessageLines.SETRANGE(MessageLines."Table Name", MessageLines."Table Name"::"Standard Text");
                            MessageLines.SETRANGE(MessageLines."No.", MessageNo);
                            MessageLines.DELETEALL;

                            CLEAR(ExtendedTextLine);
                            ExtendedTextLine.SETRANGE(ExtendedTextLine."Table Name", ExtendedTextLine."Table Name"::"Standard Text");
                            ExtendedTextLine.SETRANGE(ExtendedTextLine."No.", MessageNo);
                            ExtendedTextLine.SETRANGE(ExtendedTextLine."Language Code", MessageLanguage);  // specific language
                            IF ExtendedTextLine.COUNT = 0 THEN BEGIN
                                CLEAR(ExtendedTextLine);
                                ExtendedTextLine.SETRANGE(ExtendedTextLine."Table Name", ExtendedTextLine."Table Name"::"Standard Text");
                                ExtendedTextLine.SETRANGE(ExtendedTextLine."No.", MessageNo);
                                ExtendedTextLine.SETRANGE(ExtendedTextLine."Language Code", 'DAN');          // Dansk
                            END;
                            IF ExtendedTextLine.COUNT = 0 THEN BEGIN
                                CLEAR(ExtendedTextLine);
                                ExtendedTextLine.SETRANGE(ExtendedTextLine."Table Name", ExtendedTextLine."Table Name"::"Standard Text");
                                ExtendedTextLine.SETRANGE(ExtendedTextLine."No.", MessageNo);
                                ExtendedTextLine.SETRANGE(ExtendedTextLine."Language Code", '');             // General
                            END;

                            IF ExtendedTextLine.FINDSET THEN
                                REPEAT
                                    MessageLines := ExtendedTextLine;
                                    MessageLines.INSERT;
                                UNTIL ExtendedTextLine.NEXT = 0;

                            //>>DSDK.Custom.03.Cabola
                            /*
                            IF Customer.GET("Sales Shipment Header"."Sell-to Customer No.") THEN BEGIN
                                Customer.CALCFIELDS(Customer."Work Description");
                                CLEAR(TempBlobWorkDescription);
                                TempBlobWorkDescription.Blob := "Customer"."Work Description";

                                //>>DSDK.25.StartEncoding
                                IF CompanyInfo."Report Encoding" = CompanyInfo."Report Encoding"::Windows THEN
                                    TempBlobWorkDescription.StartReadingTextLines(TEXTENCODING::Windows);
                                IF CompanyInfo."Report Encoding" = CompanyInfo."Report Encoding"::"UTF-8" THEN
                                    TempBlobWorkDescription.StartReadingTextLines(TEXTENCODING::UTF8);
                                //<<DSDK.25.StartEncoding

                                // transfer lines
                                MessageLineNo := 0;
                                WHILE TempBlobWorkDescription.MoreTextLines DO BEGIN
                                    WorkDescriptionLine := TempBlobWorkDescription.ReadTextLine;
                                    MessageLineNo += 1;

                                    MessageLines."Table Name" := MessageLines."Table Name"::"Standard Text";
                                    MessageLines."No." := MessageNo;
                                    MessageLines."Text No." := 8888;
                                    MessageLines."Line No." := MessageLineNo;
                                    MessageLines.Text := WorkDescriptionLine;
                                    MessageLines.INSERT;
                                END;
                                WorkDescriptionLine := '';
                                CLEAR(TempBlobWorkDescription);
                            END;
                            */
                            //<<DSDK.Custom.03.Cabola

                            //>>DSDK.44
                            IF ParamShowWeight <> ParamShowWeight::No THEN BEGIN
                                MessageLines."Table Name" := MessageLines."Table Name"::"Standard Text";
                                MessageLines."No." := MessageNo;
                                MessageLines."Text No." := 9999;
                                MessageLines."Line No." := 1;
                                MessageLines.Text := ' ';
                                MessageLines.INSERT;

                                MessageLines."Table Name" := MessageLines."Table Name"::"Standard Text";
                                MessageLines."No." := MessageNo;
                                MessageLines."Text No." := 9999;
                                MessageLines."Line No." := 2;

                                IF ParamShowWeight = ParamShowWeight::"Only Gross" THEN BEGIN
                                    MessageLines.Text := '          ' + GrossWeightCaption + ' ' + FORMAT(TotalGrossWeight, 0, '<Precision,2:2><Standard Format,2><Comma,,>') + ' Kg';
                                END;
                                IF ParamShowWeight = ParamShowWeight::"Only Net" THEN BEGIN
                                    MessageLines.Text := '          ' + NetWeightCaption + ' ' + FORMAT(TotalNetWeight, 0, '<Precision,2:2><Standard Format,2><Comma,,>') + ' Kg';
                                END;
                                IF ParamShowWeight = ParamShowWeight::Both THEN BEGIN
                                    MessageLines.Text := '   OK       ' + BothWeightCaption + ' ' + FORMAT(TotalGrossWeight, 0, '<Precision,2:2><Standard Format,2><Comma,,>') + ' Kg'
                                                                                          + ' / ' + FORMAT(TotalNetWeight, 0, '<Precision,2:2><Standard Format,2><Comma,,>') + ' Kg';
                                END;

                                MessageLines.INSERT;
                            END;
                            //<<DSDK.44 
                        end;
                    }


                    dataitem(Total; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                    }
                    dataitem(ItemTrackingLine; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(TrackingSpecBufferNo; TrackingSpecBuffer."Item No.")
                        {
                        }
                        column(TrackingSpecBufferDesc; TrackingSpecBuffer.Description)
                        {
                        }
                        column(TrackingSpecBufferLotNo; TrackingSpecBuffer."Lot No.")
                        {
                        }
                        column(TrackingSpecBufferSerNo; TrackingSpecBuffer."Serial No.")
                        {
                        }
                        column(TrackingSpecBufferQty; TrackingSpecBuffer."Quantity (Base)")
                        {
                        }
                        column(ShowTotal; ShowTotal)
                        {
                        }
                        column(ShowGroup; ShowGroup)
                        {
                        }
                        column(QuantityCaption; QuantityCaptionLbl)
                        {
                        }
                        column(SerialNoCaption; SerialNoCaptionLbl)
                        {
                        }
                        column(LotNoCaption; LotNoCaptionLbl)
                        {
                        }
                        column(DescriptionCaption; DescriptionCaptionLbl)
                        {
                        }
                        column(NoCaption; NoCaptionLbl)
                        {
                        }
                        column(ExpirationDateCaption; ExpirationDateCaption)
                        {
                        }
                        column(TrackingSpecBufferExpirationDate; FORMAT(TrackingSpecBuffer."Expiration Date", 0, '<Day,2>/<Month,2>-<Year4>'))
                        {
                        }
                        dataitem(TotalItemTracking; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = CONST(1));
                            column(Quantity1; TotalQty)
                            {
                            }
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN
                                TrackingSpecBuffer.FINDSET
                            ELSE
                                TrackingSpecBuffer.NEXT;

                            IF NOT ShowCorrectionLines AND TrackingSpecBuffer.Correction THEN
                                CurrReport.SKIP;
                            IF TrackingSpecBuffer.Correction THEN
                                TrackingSpecBuffer."Quantity (Base)" := -TrackingSpecBuffer."Quantity (Base)";

                            ShowTotal := FALSE;
                            IF ItemTrackingAppendix.IsStartNewGroup(TrackingSpecBuffer) THEN
                                ShowTotal := TRUE;

                            ShowGroup := FALSE;
                            IF (TrackingSpecBuffer."Source Ref. No." <> OldRefNo) OR
                               (TrackingSpecBuffer."Item No." <> OldNo)
                            THEN BEGIN
                                OldRefNo := TrackingSpecBuffer."Source Ref. No.";
                                OldNo := TrackingSpecBuffer."Item No.";
                                TotalQty := 0;
                            END ELSE
                                ShowGroup := TRUE;
                            TotalQty += TrackingSpecBuffer."Quantity (Base)";

                            //>>DSDK.41
                            TrackingSpecBuffer."Expiration Date" := 0D;
                            CLEAR(ItemLedgerEntry);
                            ItemLedgerEntry.SETRANGE(ItemLedgerEntry."Document No.", "Sales Shipment Header"."No.");
                            ItemLedgerEntry.SETRANGE(ItemLedgerEntry."Entry Type", ItemLedgerEntry."Entry Type"::Sale);
                            ItemLedgerEntry.SETRANGE(ItemLedgerEntry."Item No.", TrackingSpecBuffer."Item No.");
                            ItemLedgerEntry.SETRANGE(ItemLedgerEntry."Serial No.", TrackingSpecBuffer."Serial No.");
                            ItemLedgerEntry.SETRANGE(ItemLedgerEntry."Lot No.", TrackingSpecBuffer."Lot No.");
                            IF ItemLedgerEntry.FINDSET THEN
                                TrackingSpecBuffer."Expiration Date" := ItemLedgerEntry."Expiration Date";
                            //<<DSDK.41
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF TrackingSpecCount = 0 THEN
                                CurrReport.BREAK;
                            ///CurrReport.NEWPAGE;
                            SETRANGE(Number, 1, TrackingSpecCount);
                            TrackingSpecBuffer.SETCURRENTKEY(TrackingSpecBuffer."Source ID", TrackingSpecBuffer."Source Type", TrackingSpecBuffer."Source Subtype",
                            TrackingSpecBuffer."Source Batch Name", TrackingSpecBuffer."Source Prod. Order Line", TrackingSpecBuffer."Source Ref. No.");
                        end;
                    }

                    trigger OnPreDataItem();
                    begin
                        // Item Tracking:
                        IF ShowLotSN THEN BEGIN
                            TrackingSpecCount := 0;
                            OldRefNo := 0;
                            ShowGroup := FALSE;
                        END;
                    end;
                }

                trigger OnAfterGetRecord();
                begin
                    IF Number > 1 THEN BEGIN
                        CopyText := Text001;
                        OutputNo += 1;
                    END;
                    ///CurrReport.PAGENO := 1;
                    TotalQty := 0;           // Item Tracking
                end;

                trigger OnPostDataItem();
                begin
                    IF NOT CurrReport.PREVIEW THEN
                        ShptCountPrinted.RUN("Sales Shipment Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := 1 + ABS(NoOfCopies);
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                CurrReport.LANGUAGE := Language.GetLanguageIDOrDefault("Language Code");       //DSDK.45

                //>>DSDK.Params
                ReportSelections.GetData_SalesShipment("Sales Shipment Header", ParamDropDeliveryAddress, ParamDropItemNoColumn, ParamDropWorkDescription, ParamShowWeight);  //DSDK.27,pass9
                FOR ParamIdx := 1 TO 15 DO BEGIN
                    ReportSelections.GetParam_SalesShipment("Sales Shipment Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                END;
                //<<DSDK.Params

                IF RespCenter.GET("Responsibility Center") THEN BEGIN
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                END ELSE
                    FormatAddr.Company(CompanyAddr, CompanyInfo);

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");

                IF "Salesperson Code" = '' THEN BEGIN
                    SalesPurchPerson.INIT;
                    SalesPersonText := '';
                END ELSE BEGIN
                    SalesPurchPerson.GET("Salesperson Code");
                    SalesPersonText := Text000;
                END;

                ReferenceText := FIELDCAPTION("Your Reference");
                FormatAddr.SalesShptShipTo(ShipToAddr, "Sales Shipment Header");
                FormatAddr.SalesShptBillTo(CustAddr, ShipToAddr, "Sales Shipment Header");
                //>>DSDK.35
                CompanyInfo.TranslateCountryName(CustAddr, "Sales Shipment Header"."Bill-to Country/Region Code", "Sales Shipment Header"."Language Code");
                CompanyInfo.TranslateCountryName(ShipToAddr, "Sales Shipment Header"."Ship-to Country/Region Code", "Sales Shipment Header"."Language Code");
                //<<DSDK.35
                ShowCustAddr := "Bill-to Customer No." <> "Sell-to Customer No.";
                FOR i := 1 TO ARRAYLEN(CustAddr) DO
                    IF CustAddr[i] <> ShipToAddr[i] THEN
                        ShowCustAddr := TRUE;

                //>>DSDK.Custom.05
                //ShowCustAddr := true;
                //<<DSDK.Custom.05

                //>>DSDK.ShipAddr
                IF ShowCustAddr = FALSE THEN BEGIN
                    FOR i := 1 TO ARRAYLEN(ShipToAddr) DO
                        CustAddr[i] := '';
                END;
                //<<DSDK.ShipAddr

                IF LogInteraction THEN
                    IF NOT CurrReport.PREVIEW THEN
                        SegManagement.LogDocument(
                          5, "No.", 0, 0, DATABASE::Customer, "Sell-to Customer No.", "Salesperson Code",
                          "Campaign No.", "Posting Description", '');

                //>>DSDK.bund
                CLEAR(BottomLine);
                CompanyInfo.GetBottom(BottomLine[1], BottomLine[2], "Language Code");
                //<<DSDK.bund


                //>>DSDK.09
                IF "Shipment Method Code" = '' THEN
                    ShipmentMethod.INIT
                ELSE BEGIN
                    ShipmentMethod.GET("Shipment Method Code");
                    ShipmentMethod.TranslateDescription(ShipmentMethod, "Language Code");
                END;
                //<<DSDK.09

                CALCFIELDS("Work Description");

                //>>DSDK.WorkDescription
                ShowWorkDescription := "Work Description".HASVALUE;
                IF ParamDropWorkDescription THEN    //DSDK.27
                    ShowWorkDescription := false;
                //<<DSDK.WorkDescription

                //>>DSDK.39
                TotalGrossWeight := 0;
                TotalNetWeight := 0;
                CLEAR(SalesShipmentLine);
                SalesShipmentLine.SETRANGE("Document No.", "Sales Shipment Header"."No.");
                SalesShipmentLine.SETRANGE(Type, SalesShipmentLine.Type::Item);
                IF SalesShipmentLine.FINDSET THEN
                    REPEAT
                        IF Item.GET(SalesShipmentLine."No.") THEN BEGIN
                            SalesShipmentLine."Gross Weight" := Item."Gross Weight";
                            TotalGrossWeight += SalesShipmentLine.Quantity * SalesShipmentLine."Gross Weight";
                            SalesShipmentLine."Net Weight" := Item."Net Weight";
                            TotalNetWeight += SalesShipmentLine.Quantity * SalesShipmentLine."Net Weight";
                        END;
                    UNTIL SalesShipmentLine.NEXT = 0;
                //<<DSDK.39

                //>>DSDK.45
                FormatAddr.SalesShptSellTo(SellToAddr, "Sales Shipment Header");
                CompanyInfo.TranslateCountryName(SellToAddr, "Sales Shipment Header"."Sell-to Country/Region Code", "Sales Shipment Header"."Language Code");
                //<<DSDK.45
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Indstillinger)
                {
                    CaptionML = DAN = 'Indstillinger',
                                ENU = 'Options';
                    field(NoOfCopies; NoOfCopies)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Antal kopier',
                                    ENU = 'No. of Copies';
                    }
                    field(ShowInternalInfo; ShowInternalInfo)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Vis interne oplysninger',
                                    ENU = 'Show Internal Information';
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Logfør interaktion',
                                    ENU = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                    }
                    field("Show Correction Lines"; ShowCorrectionLines)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Vis rettelseslinjer',
                                    ENU = 'Show Correction Lines';
                    }
                    field(ShowLotSN; ShowLotSN)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Vis appendiks for serie-/lotnummer',
                                    ENU = 'Show Serial/Lot Number Appendix';
                    }
                    field(DisplayAsmInfo; DisplayAssemblyInformation)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Vis montagekomponenter',
                                    ENU = 'Show Assembly Components';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit();
        begin
            LogInteractionEnable := TRUE;
        end;

        trigger OnOpenPage();
        begin
            InitLogInteraction;
            LogInteractionEnable := LogInteraction;

            /*
            //>>DSDK.temporary
            IF PassSalesHeader."No." <> '' THEN BEGIN
              // test if Quantity to Ship
              PassSalesLine.SETRANGE(PassSalesLine."Document Type", PassSalesHeader."Document Type");
              PassSalesLine.SETRANGE(PassSalesLine."Document No.", PassSalesHeader."No.");
              PassSalesLine.SETFILTER(PassSalesLine."SETIKET Qty. to Ship", '<> %1',0);
              IF NOT PassSalesLine.FINDSET THEN
                ERROR(ErrorNothingToShip);
            
              // find next Shipment No.
              SalesSetup.GET;
              FindNo := NoSeriesMgt.GetNextNo(SalesSetup."Posted Shipment Nos.",WORKDATE,TRUE);
            
              "Sales Shipment Header".INIT;
              "Sales Shipment Header".TRANSFERFIELDS(PassSalesHeader);
              "Sales Shipment Header"."Order No." := PassSalesHeader."No.";
              "Sales Shipment Header"."No." := FindNo;
              "Sales Shipment Header".INSERT;
            
              "Sales Shipment Header".SETFILTER( "Sales Shipment Header"."No.", FindNo);
            
              PassSalesLine.SETRANGE(PassSalesLine."Document Type", PassSalesHeader."Document Type");
              PassSalesLine.SETRANGE(PassSalesLine."Document No.", PassSalesHeader."No.");
              IF PassSalesLine.FINDSET THEN
                REPEAT
                  "Sales Shipment Line".INIT;
                  "Sales Shipment Line".TRANSFERFIELDS(PassSalesLine);
                  "Sales Shipment Line"."Document No." := FindNo;
                  "Sales Shipment Line".Quantity := PassSalesLine."SETIKET Qty. to Ship";
                  "Sales Shipment Line".INSERT;
            
                  PassSalesLine."SETIKET Quantity Shipped" += PassSalesLine."SETIKET Qty. to Ship";
                  PassSalesLine."SETIKET Qty. to Ship" := 0;
                  PassSalesLine.MODIFY;
            
              UNTIL PassSalesLine.NEXT = 0;
            
              //// 01. Make Pass Sales Line - Shipment info lines
              // save language code
              SaveLanguageCode := GLOBALLANGUAGE;
              GLOBALLANGUAGE := Language.GetLanguageIDOrDefault("Sales Shipment Header"."Language Code");
            
              CreateEmptySalesLine;
              PassSalesLine.Type := PassSalesLine.Type::" ";
              PassSalesLine.Description := ShipmentInfoTxt;
              PassSalesLine.MODIFY;
            
              //// 02. Make Pass Sales Line - Shipment info lines
              CreateEmptySalesLine;
              PassSalesLine.Type := PassSalesLine.Type::" ";
              PassSalesLine.Description := FindNo +'  '+AtDateTxt+'  '+ FORMAT("Sales Shipment Header"."Document Date",0,'<Day,2>/<Month,2>-<Year4>');
              PassSalesLine.MODIFY;
            
              // return language code
              GLOBALLANGUAGE := SaveLanguageCode;
            
            END;
            //<<DSDK.temporary
            */

        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        CompanyInfo.GET;
        SalesSetup.GET;

        CompanyInfo2.GET;
        CompanyInfo2.CALCFIELDS(Picture);

        //>>DSDK.Custom.03.Cabola
        /*
        CompanyInfo2.CALCFIELDS("Picture Bottom");
        CompanyInfo2.Picture := CompanyInfo2."Picture Bottom";
        CompanyInfo1.Picture := CompanyInfo2."Picture Bottom";
        */
        //<<DSDK.Custom.03.Cabola

    end;

    trigger OnPreReport();
    begin
        IF NOT CurrReport.USEREQUESTPAGE THEN
            InitLogInteraction;
        AsmHeaderExists := FALSE;
    end;

    var
        Text000: TextConst DAN = 'Sælger', DEU = 'Verkaufer', ENU = 'Sales Person';
        Text001: TextConst DAN = 'KOPI', DEU = 'KOPIE', ENU = 'COPY';
        Text002: TextConst DAN = 'Følgeseddel %1', DEU = 'Lieferschein %1', ENU = 'Delivery Note %1';
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        //DSDK.45_Language: Record "Language";
        Language: Codeunit "Language";
        TrackingSpecBuffer: Record "Tracking Specification" temporary;
        PostedAsmHeader: Record "Posted Assembly Header";
        PostedAsmLine: Record "Posted Assembly Line";
        ShptCountPrinted: Codeunit "Sales Shpt.-Printed";
        SegManagement: Codeunit "SegManagement";
        RespCenter: Record "Responsibility Center";
        ItemTrackingAppendix: Report "Item Tracking Appendix";
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        SalesPersonText: Text[20];
        ReferenceText: Text[80];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        OutputNo: Integer;
        NoOfLoops: Integer;
        TrackingSpecCount: Integer;
        OldRefNo: Integer;
        OldNo: Code[20];
        CopyText: Text[30];
        ShowCustAddr: Boolean;
        i: Integer;
        FormatAddr: Codeunit "Format Address";
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        LogInteraction: Boolean;
        ShowCorrectionLines: Boolean;
        ShowLotSN: Boolean;
        ShowTotal: Boolean;
        ShowGroup: Boolean;
        TotalQty: Decimal;
        [InDataSet]
        LogInteractionEnable: Boolean;
        DisplayAssemblyInformation: Boolean;
        AsmHeaderExists: Boolean;
        LinNo: Integer;
        ItemTrackingAppendixCaptionLbl: TextConst DAN = 'Appendiks for varesporing', DEU = 'Anhang zur Sendungsverfolgung', ENU = 'Item Tracking - Appendix';
        PhoneNoCaptionLbl: TextConst DAN = 'Telefon', DEU = 'Telefon', ENU = 'Phone No.';
        VATRegNoCaptionLbl: TextConst DAN = 'SE/CVR-nr.', DEU = 'USt-IdNr.', ENU = 'VAT';
        GiroNoCaptionLbl: TextConst DAN = 'Gironr.', DEU = 'Giro Nr.', ENU = 'Giro No.';
        BankNameCaptionLbl: TextConst DAN = 'Bank', DEU = 'Bank', ENU = 'Bank';
        BankAccNoCaptionLbl: TextConst DAN = 'Kontonr.', DEU = 'Konten Nr.', ENU = 'Account No.';
        ShipmentNoCaptionLbl: TextConst DAN = 'Nummer', DEU = 'Nummer', ENU = 'Number';
        ShipmentDateCaptionLbl: TextConst DAN = 'Afsendelsesdato', DEU = 'Versandsdatum', ENU = 'Shipment Date';
        HomePageCaptionLbl: TextConst DAN = 'Hjemmeside', DEU = 'Web Seite', ENU = 'Home Page';
        EmailCaptionLbl: TextConst DAN = 'E-mail', DEU = 'E-Mail', ENU = 'E-Mail';
        DocumentDateCaptionLbl: TextConst DAN = 'Dato', DEU = 'Datum', ENU = 'Date';
        HeaderDimensionsCaptionLbl: TextConst DAN = 'Dimensioner - hoved', DEU = 'Dimensionen - Kopf', ENU = 'Header Dimensions';
        LineDimensionsCaptionLbl: TextConst DAN = 'Linjedimensioner', DEU = 'Pos. Dimensionen', ENU = 'Line Dimensions';
        BilltoAddressCaptionLbl: TextConst DAN = 'Faktureringsadresse', DEU = 'Rechnungsaddresse', ENU = 'Bill-to Address';
        QuantityCaptionLbl: TextConst DAN = 'Antal', DEU = 'Menge', ENU = 'Quantity';
        SerialNoCaptionLbl: TextConst DAN = 'Serienr.', DEU = 'Serien-Nr.', ENU = 'Serial No.';
        LotNoCaptionLbl: TextConst DAN = 'Lotnr.', DEU = 'Los-Nr.', ENU = 'Lot No.';
        DescriptionCaptionLbl: TextConst DAN = 'Beskrivelse', DEU = 'Beschreibung', ENU = 'Description';
        NoCaptionLbl: TextConst DAN = 'Nummer', DEU = 'Artikel', ENU = 'No.';
        PageCaptionCap: TextConst DAN = '%1 af %2', DEU = '%1 von %2', ENU = '%1 of %2';
        BottomLine: array[2] of Text[250];
        PageCaptionText: TextConst DAN = 'Side', DEU = 'Seite', ENU = 'Page';
        SellToCustCaptionLbl: TextConst DAN = 'Kundenr.', DEU = 'Kundennr.', ENU = 'Customer No.';
        YourRefCaptionLbl: TextConst DAN = 'Deres ref.', DEU = 'Ihre ref.', ENU = 'Your ref.';
        YourOrderNoCaptionLbl: TextConst DAN = 'Deres ordrenr.', DEU = 'Ihre Auftragsnr.', ENU = 'Your Order No.';
        UOMCaptionLbl: TextConst DAN = 'Enhed', DEU = 'Einh.', ENU = 'Unit';
        OrderNoCaptionLbl: TextConst DAN = 'Vores ordrenr.', DEU = 'Unser Auftragsnr.', ENU = 'Our Order No.';
        ItemTrackingDocMgt: Codeunit "Item Tracking Doc. Management";
        "//DSDK.Temporary": Integer;
        PassSalesHeader: Record "Sales Header";
        PassSalesLine: Record "Sales Line";
        FindNo: Code[20];
        NoSeriesMgt: Codeunit "NoSeriesManagement";
        NextLineNumber: Integer;
        "//DSDK.04": Integer;
        Item: Record "Item";
        OurRefCaptionLbl: TextConst DAN = 'Vores ref.', DEU = 'Unsere Ref.', ENU = 'Our Ref.';
        "//DSDK.Temporary.txt": Integer;
        ErrorNothingToShip: TextConst DAN = 'Der er intet til levering.', ENU = 'There is nothing to ship.';
        "//DSDK.07": Integer;
        OrderNo: Code[20];
        "/DSDK.09": Integer;
        "//DSDK.ShipInfo": Integer;
        ShipmentInfoTxt: TextConst DAN = 'Ovennævnte varer er leveret på følgeseddel nr.:', ENU = 'The above items are delivered on delivery note:';
        AtDateTxt: TextConst DAN = 'den', ENU = 'from';
        "//DSDK.09.txt": Integer;
        ShipmentMethod: Record "Shipment Method";
        ShptMethodDescCaptionLbl: TextConst DAN = 'Levering', DEU = 'Lieferung', ENU = 'Shipment';
        SaveLanguageCode: Integer;
        "//DSDK.16.WorkDescription": Integer;
        ShowWorkDescription: Boolean;
        TempBlobWorkDescription: Record ERPBlob;  //DSDK.45   "TempBlob";
        WorkDescriptionLine: Text;
        MaxWorkDescription: Integer;
        "//DSDKK.Params": Integer;
        ReportSelections: Record "Report Selections";
        ParamText: array[15] of Text;
        ParamValue: array[15] of Text;
        ParamIdx: Integer;
        ParamDropDeliveryAddress: Boolean;
        ParamDropItemNoColumn: Boolean;
        //Param.Pass2
        ParamShowTariffNo: Boolean;
        ParamShowVendorItemNo: Boolean;
        ParamShowBarcode: Boolean;
        ParamShowWeight: Option No,"Only Gross","Only Net",Both;
        "//DSDK.Tracking": Integer;
        SerialLotNoTxt: Text[50];
        "//MessageLines": Integer;
        MessageNo: Code[20];
        MessageLanguage: Code[10];
        "//TextLines": Integer;
        TextLine: array[10] of Text[100];
        TextLineIdx: Integer;
        ParamDropWorkDescription: Boolean;
        "//DSDK.38.txt": Integer;
        ExpirationDateCaption: Label 'Expiration';
        "//DSDK.38": Integer;
        ColumnTxt1: Text;
        ColumnValue1: Text;
        //DSDK.39
        TotalGrossWeight: Decimal;
        TotalNetWeight: Decimal;

        SalesShipmentLine: Record "Sales Shipment Line";
        ExtendedTextLine: Record "Extended Text Line";

        //DSDK.39.txt
        GrossWeightCaption: TextConst DAN = 'Bruttovægt:', DEU = 'Bruttogewicht:', ENU = 'Gross Weight:';
        NetWeightCaption: TextConst DAN = 'Nettovægt:', DEU = 'Nettogewicht:', ENU = 'Net Weight:';
        BothWeightCaption: TextConst DAN = 'Brutto / nettovægt:', DEU = 'Brutto / Nettogewicht:', ENU = 'Gross / Net Weight:';
        //DSDK.Custom.01
        ColliCaption: TextConst DAN = 'Kolli', DEU = 'Kolli', ENU = 'Colli';
        //DSDK.41
        ItemLedgerEntry: Record "Item Ledger Entry";
        //DSDK.42
        ShiptoAddrCaptionLbl: TextConst DAN = 'Leveringsadresse', DEU = 'Lieferaddresse', ENU = 'Ship-to Address';

        //DSDK.Custom.03.CABOLA
        Customer: Record "Customer";
        MessageLineNo: Integer;
        //DSDK.SellToAddr
        SellToAddr: array[8] of Text[50];
        InvoiceAddrCaption: TextConst DAN = 'Faktureringsadresse', DEU = 'Rechnungsadresse ', ENU = 'Invoice Address';
        CustomerAddrCaption: TextConst DAN = 'Kundeadresse', DEU = 'Kundenadresse', ENU = 'Customer Address';
        //DSDK.47
        VariantCaption: TextConst DAN = 'Variant', DEU = 'Variante', ENU = 'Variant';


    procedure InitLogInteraction();
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(5) <> '';
    end;

    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewLogInteraction: Boolean; NewShowCorrectionLines: Boolean; NewShowLotSN: Boolean; DisplayAsmInfo: Boolean);
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
        ShowCorrectionLines := NewShowCorrectionLines;
        ShowLotSN := NewShowLotSN;
        DisplayAssemblyInformation := DisplayAsmInfo;
    end;

    procedure GetUnitOfMeasureDescr(UOMCode: Code[10]): Text[10];
    var
        UnitOfMeasure: Record "Unit of Measure";
    begin
        IF NOT UnitOfMeasure.GET(UOMCode) THEN
            EXIT(UOMCode);
        EXIT(UnitOfMeasure.Description);
    end;

    procedure BlanksForIndent(): Text[10];
    begin
        EXIT(PADSTR('', 2, ' '));
    end;

    local procedure "//DSDK.Temporary.func"();
    begin
    end;

    procedure PassTemporary(var TempSalesHeader: Record "Sales Header");
    begin
        //>>DSDK.Temporary
        PassSalesHeader := TempSalesHeader;
        //<<DSDK.Temporary
    end;

    local procedure CreateEmptySalesLine();
    begin
        // make empty line
        NextLineNumber := 10000;
        CLEAR(PassSalesLine);
        PassSalesLine.SETRANGE(PassSalesLine."Document Type", PassSalesHeader."Document Type");
        PassSalesLine.SETRANGE(PassSalesLine."Document No.", PassSalesHeader."No.");
        IF PassSalesLine.FINDLAST THEN
            NextLineNumber := NextLineNumber + PassSalesLine."Line No.";

        PassSalesLine.INIT;
        PassSalesLine."Document Type" := PassSalesHeader."Document Type";
        PassSalesLine."Document No." := PassSalesHeader."No.";
        PassSalesLine."Line No." := NextLineNumber;
        PassSalesLine.INSERT;
    end;
}

