report 50022 "Sales - Quote DSDK2018"
{
    // version DSDK.std.2018,DSDK.04

    // DSDK - Datasign.dk - Standard report std.2
    // 
    // DSDK.00 LV 2016.01.29 - Ny standard (Alflow) - changed texts and layout
    // DSDK.01 LV 2017.05.10 - 2 lines bottom
    // DSDK.02 LV 2017.05.24 - "Picture 2"
    // 
    // DSDK.00 LV 2018.02.12 - ERPgruppen.dk - 2018 Standard report
    // DSDK.03 LV 2018.03.06 - print "Net Amount" & "Taxable Amount"
    // DSDK.04 LV 2018.05.16 - print line changed size from 7 to 9
    // 
    // DSDK.06 LV 2019.01.28 - Work Description in Header
    // DSDK.20 LV 2019.02.06 - Report Params
    // DSDK.21 LV 2019.03.12 - same address - then drop Shipment Address
    // DSDK.23 LV 2019.03.29 - Report Params - Pass2
    // DSDK.24 LV 2019.04.08 - Report Params - TextLines    
    // DSDK.25 LV 2019.04.17 - Report Encoding
    // DSDK.27 LV 2019.05.27 - "Drop Work Description", "Show Country of Origin", Show on same line"
    // DSDK.28 LV 2019.05.29 - full layout + Logo on Quote
    // DSDK.31 LV 2019.07.08 - German texts
    // DSDK.32 LV 2018.07.09 - Body lines like Sales Order - Print "Delivery Date" on ordre line - New feature

    // DSDK.33 LV 2019.07.12 - CustomerAdjustnent.01: Print Item."Desription 3"
    // DSDK.35 LV 2019.07.18 - Translate Country Name
    // DSDK.36 LV 2019.08.14 - Body captions on after page 1
    // DSDK.41 LV 2019.10.07 - Report Params - Pass8 - "Show Customer Item No." 

    //      CABOLA
    // DSDK.Custom.03 2019.10.08 Picture 2

    // DSDK.45 LV 2019.11.04 - version 15
    // DSDK.45 LV 2019.12.19 - added fields for print "Sell-to"
    // DSDK.47 LV 2020.01.16 - Variant

    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/50022 Sales - Quote DSDK2018.rdlc';

    CaptionML = DAN = 'Salg - tilbud',
                ENU = 'Sales - Quote';

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = SORTING("Document Type", "No.")
                                WHERE("Document Type" = CONST(Quote));
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeadingML = DAN = 'Salgstilbud',
                                     ENU = 'Sales Quote';
            column(DocType_SalesHeader; "Document Type")
            {
            }
            column(No_SalesHeader; "No.")
            {
            }
            column(SalesLineVATIdentifierCaption; SalesLineVATIdentifierCaptionLbl)
            {
            }
            column(PaymentTermsDescriptionCaption; PaymentTermsDescriptionCaptionLbl)
            {
            }
            column(ShipmentMethodDescriptionCaption; ShipmentMethodDescriptionCaptionLbl)
            {
            }
            column(CompanyInfoHomePageCaption; CompanyInfoHomePageCaptionLbl)
            {
            }
            column(CompanyInfoEmailCaption; CompanyInfoEmailCaptionLbl)
            {
            }
            column(DocumentDateCaption; DocumentDateCaptionLbl)
            {
            }
            column(SalesLineAllowInvoiceDiscCaption; SalesLineAllowInvoiceDiscCaptionLbl)
            {
            }
            column(ShowLineDiscCaption; ShowLineDiscCaption)
            {
            }
            column(CurrencyCodeCaption; CurrencyCodeLbl)
            {
            }
            column(ShowShippingAddr; ShowShippingAddr)
            {
            }
            column(ShipToAddr1; ShipToAddr[1])
            {
            }
            column(ShipToAddr2; ShipToAddr[2])
            {
            }
            column(ShipToAddr3; ShipToAddr[3])
            {
            }
            column(ShipToAddr4; ShipToAddr[4])
            {
            }
            column(ShipToAddr5; ShipToAddr[5])
            {
            }
            column(ShipToAddr6; ShipToAddr[6])
            {
            }
            column(ShipToAddr7; ShipToAddr[7])
            {
            }
            column(ShipToAddr8; ShipToAddr[8])
            {
            }
            column(ShiptoAddressCaption; ShiptoAddressCaptionLbl)
            {
            }
            column(BottomLine1; BottomLine[1])
            {
            }
            column(BottomLine2; BottomLine[2])
            {
            }
            column(LastLine; LastLine)
            {
            }
            column(TotalInclVATText; TotalInclVATText)
            {
            }
            column(TotalExclVATText; TotalExclVATText)
            {
            }
            column(TotalAmountExclVAT; TotalAmountExclVAT)
            {
                AutoFormatExpression = "Sales Header"."Currency Code";
                AutoFormatType = 1;
            }
            column(TotalVATAmount; TotalVATAmount)
            {
                AutoFormatExpression = "Sales Header"."Currency Code";
                AutoFormatType = 1;
            }
            column(InvoiceTotalAmountInclVAT; TotalAmountInclVAT)
            {
                AutoFormatExpression = "Sales Header"."Currency Code";
                AutoFormatType = 1;
            }
            column(VATAmtLineVATAmtTxt; VATAmountCaptionLbl)
            {
            }
            column(TotalAmountInclVAT; TotalAmountInclVAT)
            {
                AutoFormatExpression = "Sales Header"."Currency Code";
                AutoFormatType = 1;
            }
            column(NettoCaption; NettoCaptionLbl)
            {
            }
            column(InvTotalTaxable; InvTotalTaxable)
            {
            }
            column(HideDiscCaption; HideDiscCaption)
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
                    column(PaymentTermsDescription; PaymentTerms.Description)
                    {
                    }
                    column(ShipmentMethodDescription; ShipmentMethod.Description)
                    {
                    }
                    column(CompanyInfo3Picture; CompanyInfo3.Picture)
                    {
                    }
                    column(CompanyInfo1Picture; CompanyInfo1.Picture)
                    {
                    }
                    column(SalesCopyText; UpperCase(STRSUBSTNO(Text004, CopyText)))
                    {
                    }
                    column(CustAddr1; CustAddr[1])
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(CustAddr2; CustAddr[2])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(CustAddr3; CustAddr[3])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(CustAddr4; CustAddr[4])
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(CustAddr5; CustAddr[5])
                    {
                    }
                    column(CompanyInfoEmail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoHomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
                    {
                    }
                    column(CustAddr6; CustAddr[6])
                    {
                    }
                    column(CompanyInfoVATRegNo; CompanyInfo."VAT Registration No.")
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
                    column(BilltoCustNo_SalesHeader; "Sales Header"."Bill-to Customer No.")
                    {
                    }
                    column(DocDate_SalesHeader; FORMAT("Sales Header"."Document Date", 0, '<Day,2>/<Month,2>-<Year4>'))
                    {
                    }
                    column(VATNoText; CompanyInfoVATRegNoCaptionLbl)
                    {
                    }
                    column(VATRegNo_SalesHeader; "Sales Header"."VAT Registration No.")
                    {
                    }
                    column(ShipmentDate_SalesHeader; FORMAT("Sales Header"."Shipment Date"))
                    {
                    }
                    column(SalesPersonText; SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(No1_SalesHeader; "Sales Header"."No.")
                    {
                    }
                    column(ReferenceText; ReferenceText)
                    {
                    }
                    column(YourReference_SalesHeader; "Sales Header"."Your Reference")
                    {
                    }
                    column(CustAddr7; CustAddr[7])
                    {
                    }
                    column(CustAddr8; CustAddr[8])
                    {
                    }
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(PricesIncludingVAT_SalesHdr; "Sales Header"."Prices Including VAT")
                    {
                    }
                    column(PageCaptionLbl; PageCaptionCapLbl)
                    {
                    }
                    column(PageCaption; PageCaptionCap)
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(PricesInclVATYesNo_SalesHdr; FORMAT("Sales Header"."Prices Including VAT"))
                    {
                    }
                    column(CompanyInfoPhoneNoCaption; CompanyInfoPhoneNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoVATRegNoCaption; CompanyInfoVATRegNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoGiroNoCaption; CompanyInfoGiroNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoBankNameCaption; CompanyInfoBankNameCaptionLbl)
                    {
                    }
                    column(CompanyInfoBankAccountNoCaption; CompanyInfoBankAccountNoCaptionLbl)
                    {
                    }
                    column(SalesHeaderShipmentDateCaption; SalesHeaderShipmentDateCaptionLbl)
                    {
                    }
                    column(SalesHeaderNoCaption; SalesHeaderNoCaptionLbl)
                    {
                    }
                    column(BilltoCustNo_SalesHeaderCaption; "Sales Header".FIELDCAPTION("Bill-to Customer No."))
                    {
                    }
                    column(PricesIncludingVAT_SalesHdrCaption; "Sales Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    column(PaymentInfo; PaymentInfo)
                    {
                    }
                    column(PaymentTermsDesc; PaymentTerms.Description)
                    {
                    }
                    column(PaymentTermsDesc2; PaymentTermsDesc2)
                    {
                    }
                    column(CurrencyCodeText; CurrencyCodeText)
                    {
                    }
                    column(CustomerCaption; CustomerCaptionLbl)
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
                        DataItemLinkReference = "Sales Header";
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
                                    DimText := STRSUBSTNO('%1 %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1, %2 %3', DimText, DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
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
                    dataitem("Sales Line"; "Sales Line")
                    {
                        DataItemLink = "Document Type" = FIELD("Document Type"),
                                       "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Header";
                        DataItemTableView = SORTING("Document Type", "Document No.", "Line No.");

                        trigger OnPreDataItem();
                        begin
                            CurrReport.BREAK;
                        end;
                    }
                    dataitem(RoundLoop; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(Desc_SalesLine; "Sales Line".Description)
                        {
                        }
                        column(Desc2_SalesLine; "Sales Line"."Description 2")
                        {
                        }
                        column(No2_SalesLine; SalesLine."No.")
                        {
                        }
                        column(Qty_SalesLine; "Sales Line".Quantity)
                        {
                        }
                        column(UOM_SalesLine; "Sales Line"."Unit of Measure")
                        {
                        }
                        column(UnitPrice_SalesLine; "Sales Line"."Unit Price")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 2;
                        }
                        column(LineDisc_SalesLine; "Sales Line"."Line Discount %")
                        {
                        }
                        column(LineAmt_SalesLine; "Sales Line"."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(AllowInvDisc_SalesLine; "Sales Line"."Allow Invoice Disc.")
                        {
                        }
                        column(VATIdentifier_SalesLine; "Sales Line"."VAT Identifier")
                        {
                        }
                        column(Type_SalesLine; FORMAT("Sales Line".Type))
                        {
                        }
                        column(No_SalesLine; "Sales Line"."Line No.")
                        {
                        }
                        column(AllowInvDiscountYesNo_SalesLine; FORMAT("Sales Line"."Allow Invoice Disc."))
                        {
                        }
                        column(SalesLineInvDiscAmt; SalesLine."Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalText; TotalText)
                        {
                        }
                        column(SalsLinAmtExclLineDiscAmt; SalesLine."Line Amount" - SalesLine."Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmount; VATAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(SalesLineAmtExclLineDisc; SalesLine."Line Amount" - SalesLine."Inv. Discount Amount" + VATAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATDiscountAmount; VATDiscountAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseAmount; VATBaseAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(DiscountPercentCaption; DiscountPercentCaptionLbl)
                        {
                        }
                        column(SubtotalCaption; SubtotalCaptionLbl)
                        {
                        }
                        column(UnitPriceCaption; UnitPriceCaptionLbl)
                        {
                        }
                        column(AmountCaption; AmountCaptionLbl)
                        {
                        }
                        column(SalesLineInvDiscAmtCaption; SalesLineInvDiscAmtCaptionLbl)
                        {
                        }
                        column(VATDiscountAmountCaption; VATDiscountAmountCaptionLbl)
                        {
                        }
                        column(No2_SalesLineCaption; NoCaptionLbl)
                        {
                        }
                        column(Desc_SalesLineCaption; DescriptionCaptionLbl)
                        {
                        }
                        column(Qty_SalesLineCaption; QtyCaptionLbl)
                        {
                        }
                        column(UOM_SalesLineCaption; UnitOfMessureCaptionLbl)
                        {
                        }
                        column(VATAmtLineVATAmtText; VATAmountLine.VATAmountText)
                        {
                        }
                        column(LineNo; "Sales Line"."Line No.")
                        {
                        }
                        column(PlannedDeliveryDateCaption; PlannedDeliveryDateCaption)
                        {
                        }
                        column(PlannedDeliveryDate; FORMAT("Sales Line"."Planned Delivery Date", 0, '<Day,2>/<Month,2>'))
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
                        column(VariantCaption; VariantCaption)
                        { }
                        column(VariantCode; "Sales Line"."Variant Code")
                        { }

                        dataitem(DimensionLoop2; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = FILTER(1 ..));
                            column(DimText_DimnLoop2; DimText)
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
                                        DimText := STRSUBSTNO('%1 %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    ELSE
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1, %2 %3', DimText,
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

                                DimSetEntry2.SETRANGE(DimSetEntry2."Dimension Set ID", "Sales Line"."Dimension Set ID");
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN
                                SalesLine.FIND('-')
                            ELSE
                                SalesLine.NEXT;
                            "Sales Line" := SalesLine;

                            IF NOT "Sales Header"."Prices Including VAT" AND
                               (SalesLine."VAT Calculation Type" = SalesLine."VAT Calculation Type"::"Full VAT")
                            THEN
                                SalesLine."Line Amount" := 0;

                            IF (SalesLine.Type = SalesLine.Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                                "Sales Line"."No." := '';

                            //>>DSDK.24.TextLines
                            CLEAR(TextLine);
                            TextLineIdx := 0;

                            IF SalesLine.Type = SalesLine.Type::Item THEN BEGIN

                                //>>DSDK.CustomerAdjustnent.01
                                // Item."Description 3"
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'ItemText3';
                                ParamValue[ParamIdx] := FORMAT(SalesLine."No.");
                                ReportSelections.GetParam_SalesOrder("Sales Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;
                                //<<DSDK.CustomerAdjustnent.01

                                //>>DSDK.41
                                // CustomerItemNo - Pass8
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'CustomerItemNo';
                                ParamValue[ParamIdx] := FORMAT(SalesLine."No.");
                                ReportSelections.GetParam_SalesOrder("Sales Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;
                                //<<DSDK.41

                                // VendorItemNo
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'VendorItemNo';
                                ParamValue[ParamIdx] := FORMAT(SalesLine."No.");
                                ReportSelections.GetParam_SalesOrder("Sales Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;

                                // TariffNo
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'TariffNo';
                                ParamValue[ParamIdx] := FORMAT(SalesLine."No.");
                                ReportSelections.GetParam_SalesOrder("Sales Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;

                                //>>DSDK.27
                                // CountryOfOrigin
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'CountryOfOrigin';
                                ParamValue[ParamIdx] := FORMAT(SalesLine."No.");
                                ReportSelections.GetParam_SalesOrder("Sales Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;
                                //<<DSDK.27

                                // Barcode
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'Barcode';
                                ParamValue[ParamIdx] := FORMAT(SalesLine."No.");
                                ReportSelections.GetParam_SalesOrder("Sales Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;

                            END;
                            //<<DSDK.24.TextLines

                        end;

                        trigger OnPostDataItem();
                        begin
                            SalesLine.DELETEALL;
                        end;

                        trigger OnPreDataItem();
                        begin
                            MoreLines := SalesLine.FIND('+');
                            WHILE MoreLines AND (SalesLine.Description = '') AND (SalesLine."Description 2" = '') AND
                                  (SalesLine."No." = '') AND (SalesLine.Quantity = 0) AND
                                  (SalesLine.Amount = 0)
                            DO
                                MoreLines := SalesLine.NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                                CurrReport.BREAK;
                            SalesLine.SETRANGE(SalesLine."Line No.", 0, SalesLine."Line No.");
                            SETRANGE(Number, 1, SalesLine.COUNT);
                            ///CurrReport.CREATETOTALS(SalesLine."Line Amount",SalesLine."Inv. Discount Amount");
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
                            TempBlobWorkDescription.Blob := "Sales Header"."Work Description";

                            // find number of lines
                            MaxWorkDescription := 0;
                            WHILE TempBlobWorkDescription.MoreTextLines DO BEGIN
                                WorkDescriptionLine := TempBlobWorkDescription.ReadTextLine;
                                MaxWorkDescription += 1;
                            END;
                            WorkDescriptionLine := '';
                            CLEAR(TempBlobWorkDescription);
                            TempBlobWorkDescription.Blob := "Sales Header"."Work Description";

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
                            MessageNo := '50022';
                            MessageLanguage := "Sales Header"."Language Code";

                            CLEAR(MessageLines);
                            MessageLines.SETRANGE(MessageLines."Table Name", MessageLines."Table Name"::"Standard Text");
                            MessageLines.SETRANGE(MessageLines."No.", MessageNo);
                            MessageLines.SETRANGE(MessageLines."Language Code", MessageLanguage);  // specific language
                            IF MessageLines.COUNT = 0 THEN BEGIN
                                CLEAR(MessageLines);
                                MessageLines.SETRANGE(MessageLines."Table Name", MessageLines."Table Name"::"Standard Text");
                                MessageLines.SETRANGE(MessageLines."No.", MessageNo);
                                MessageLines.SETRANGE(MessageLines."Language Code", 'DAN');          // Dansk
                            END;
                            IF MessageLines.COUNT = 0 THEN BEGIN
                                CLEAR(MessageLines);
                                MessageLines.SETRANGE(MessageLines."Table Name", MessageLines."Table Name"::"Standard Text");
                                MessageLines.SETRANGE(MessageLines."No.", MessageNo);
                                MessageLines.SETRANGE(MessageLines."Language Code", '');             // General
                            END;
                            //<<DSDK.Message
                        end;
                    }

                    dataitem(VATCounter; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATBase_VATAmtLine; VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmt_VATAmtLine; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(LineAmount_VATAmtLine; VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(InvDiscBaseAmt_VATAmtLine; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(InvoiceDiscAmt_VATAmtLine; VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VAT_VATAmtLine; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATIdentifier_VATAmtLine; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATAmountLineVATCaption; VATAmountLineVATCaptionLbl)
                        {
                        }
                        column(VATBaseCaption; VATBaseCaptionLbl)
                        {
                        }
                        column(VATAmtCaption; VATAmtCaptionLbl)
                        {
                        }
                        column(VATAmountSpecificationCaption; VATAmountSpecificationCaptionLbl)
                        {
                        }
                        column(LineAmtCaption; LineAmtCaptionLbl)
                        {
                        }
                        column(InvoiceDiscBaseAmtCaption; InvoiceDiscBaseAmtCaptionLbl)
                        {
                        }
                        column(InvoiceDiscAmtCaption; InvoiceDiscAmtCaptionLbl)
                        {
                        }
                        column(TotalCaption; TotalCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF VATAmount = 0 THEN
                                CurrReport.BREAK;
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            ///CurrReport.CREATETOTALS(
                            ///VATAmountLine."Line Amount",VATAmountLine."Inv. Disc. Base Amount",
                            ///VATAmountLine."Invoice Discount Amount",VATAmountLine."VAT Base",VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(VATCounterLCY; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALExchRate; VALExchRate)
                        {
                        }
                        column(VALSpecLCYHeader; VALSpecLCYHeader)
                        {
                        }
                        column(VALVATBaseLCY; VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATAmountLCY; VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATCtrl_VATAmtLine; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATIdentifierCtrl_VATAmtLine; VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            VALVATBaseLCY :=
                              VATAmountLine.GetBaseLCY(
                                "Sales Header"."Posting Date", "Sales Header"."Currency Code", "Sales Header"."Currency Factor");
                            VALVATAmountLCY :=
                              VATAmountLine.GetAmountLCY(
                                "Sales Header"."Posting Date", "Sales Header"."Currency Code", "Sales Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF (NOT GLSetup."Print VAT specification in LCY") OR
                               ("Sales Header"."Currency Code" = '') OR
                               (VATAmountLine.GetTotalVATAmount = 0)
                            THEN
                                CurrReport.BREAK;

                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            ///CurrReport.CREATETOTALS(VALVATBaseLCY,VALVATAmountLCY);

                            IF GLSetup."LCY Code" = '' THEN
                                VALSpecLCYHeader := Text008 + Text009
                            ELSE
                                VALSpecLCYHeader := Text008 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Sales Header"."Order Date", "Sales Header"."Currency Code", 1);
                            VALExchRate := STRSUBSTNO(Text010, CurrExchRate."Relational Exch. Rate Amount", CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                    }
                    dataitem(Total2; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                        column(SelltoCustNo_SalesHeader; "Sales Header"."Sell-to Customer No.")
                        {
                        }
                        column(SelltoCustNo_SalesHeaderCaption; "Sales Header".FIELDCAPTION("Sell-to Customer No."))
                        {
                        }

                        trigger OnPreDataItem();
                        begin
                            IF NOT ShowShippingAddr THEN
                                CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord();
                var
                    SalesPost: Codeunit "Sales-Post";
                begin
                    CLEAR(SalesLine);
                    CLEAR(SalesPost);
                    SalesLine.DELETEALL;
                    VATAmountLine.DELETEALL;
                    SalesPost.GetSalesLines("Sales Header", SalesLine, 0);
                    SalesLine.CalcVATAmountLines(0, "Sales Header", SalesLine, VATAmountLine);
                    SalesLine.UpdateVATOnLines(0, "Sales Header", SalesLine, VATAmountLine);
                    VATAmount := VATAmountLine.GetTotalVATAmount;
                    VATBaseAmount := VATAmountLine.GetTotalVATBase;
                    VATDiscountAmount :=
                      VATAmountLine.GetTotalVATDiscount("Sales Header"."Currency Code", "Sales Header"."Prices Including VAT");

                    IF Number > 1 THEN BEGIN
                        CopyText := Text003;
                        OutputNo += 1;
                    END;
                    ///CurrReport.PAGENO := 1;
                end;

                trigger OnPostDataItem();
                begin
                    IF Print THEN
                        SalesCountPrinted.RUN("Sales Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(NoOfCopies) + 1;
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            var
                "Sell-to Country": Text[50];
                SL: Record "Sales Line";
            begin
                CurrReport.LANGUAGE := Language.GetLanguageIDOrDefault("Language Code");       //DSDK.45              

                //>>DSDK.Params
                ReportSelections.GetData_SalesOrder("Sales Header", ParamDropDeliveryAddress, ParamDropItemNoColumn, ParamDropWorkDescription);  //DSDK.27
                FOR ParamIdx := 1 TO 15 DO BEGIN
                    ReportSelections.GetParam_SalesOrder("Sales Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                END;
                //<<DSDK.Params

                LastLine := SalesLineFindLast("Sales Header");
                ShowLineDiscCaption := SalesLineDiscount("Sales Header");

                CurrReport.LANGUAGE := Language.GetLanguageIDOrDefault("Language Code");       //DSDK.45

                IF RespCenter.GET("Responsibility Center") THEN BEGIN
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                END ELSE
                    FormatAddr.Company(CompanyAddr, CompanyInfo);

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");

                IF "Salesperson Code" = '' THEN BEGIN
                    SalesPurchPerson.INIT;
                    SalesPersonText := Text000;       //std
                END ELSE BEGIN
                    SalesPurchPerson.GET("Salesperson Code");
                    SalesPersonText := Text000;
                END;
                //IF "Your Reference" = '' THEN     //std
                //  ReferenceText := ''             //std
                //ELSE                              //std
                ReferenceText := FIELDCAPTION("Your Reference");
                IF "VAT Registration No." = '' THEN
                    VATNoText := ''
                ELSE
                    VATNoText := FIELDCAPTION("VAT Registration No.");
                IF "Currency Code" = '' THEN BEGIN
                    GLSetup.TESTFIELD("LCY Code");
                    TotalText := STRSUBSTNO(Text001, GLSetup."LCY Code");
                    TotalInclVATText := STRSUBSTNO(Text002, GLSetup."LCY Code");
                    TotalExclVATText := STRSUBSTNO(Text006, GLSetup."LCY Code");
                    CurrencyCodeText := GLSetup."LCY Code";
                END ELSE BEGIN
                    TotalText := STRSUBSTNO(Text001, "Currency Code");
                    TotalInclVATText := STRSUBSTNO(Text002, "Currency Code");
                    TotalExclVATText := STRSUBSTNO(Text006, "Currency Code");
                    CurrencyCodeText := "Currency Code";
                END;
                FormatAddr.SalesHeaderBillTo(CustAddr, "Sales Header");
                //>>DSDK.35
                CompanyInfo.TranslateCountryName(CustAddr, "Sales Header"."Bill-to Country/Region Code", "Sales Header"."Language Code");
                //<<DSDK.35

                IF "Payment Terms Code" = '' THEN
                    PaymentTerms.INIT
                ELSE BEGIN
                    PaymentTerms.GET("Payment Terms Code");
                    PaymentTerms.TranslateDescription(PaymentTerms, "Language Code");
                END;
                IF "Shipment Method Code" = '' THEN
                    ShipmentMethod.INIT
                ELSE BEGIN
                    ShipmentMethod.GET("Shipment Method Code");
                    ShipmentMethod.TranslateDescription(ShipmentMethod, "Language Code");
                END;

                IF Country.GET("Sell-to Country/Region Code") THEN
                    "Sell-to Country" := Country.Name;
                FormatAddr.SalesHeaderShipTo(ShipToAddr, CustAddr, "Sales Header");
                //>>DSDK.35
                CompanyInfo.TranslateCountryName(ShipToAddr, "Sales Header"."Ship-to Country/Region Code", "Sales Header"."Language Code");
                //<<DSDK.35
                ShowShippingAddr := "Sell-to Customer No." <> "Bill-to Customer No.";
                FOR i := 1 TO ARRAYLEN(ShipToAddr) DO
                    IF (ShipToAddr[i] <> CustAddr[i]) AND (ShipToAddr[i] <> '') AND (ShipToAddr[i] <> "Sell-to Country") THEN
                        ShowShippingAddr := TRUE;

                //>>DSDK.ShipAddr
                IF ShowShippingAddr = FALSE THEN BEGIN
                    FOR i := 1 TO ARRAYLEN(ShipToAddr) DO
                        ShipToAddr[i] := '';
                END;
                //<<DSDK.ShipAddr

                IF Print THEN BEGIN
                    IF ArchiveDocument THEN
                        ArchiveManagement.StoreSalesDocument("Sales Header", LogInteraction);

                    IF LogInteraction THEN BEGIN
                        CALCFIELDS("No. of Archived Versions");
                        IF "Bill-to Contact No." <> '' THEN
                            SegManagement.LogDocument(
                              1, "No.", "Doc. No. Occurrence",
                              "No. of Archived Versions", DATABASE::Contact, "Bill-to Contact No.",
                              "Salesperson Code", "Campaign No.", "Posting Description", "Opportunity No.")
                        ELSE
                            SegManagement.LogDocument(
                              1, "No.", "Doc. No. Occurrence",
                              "No. of Archived Versions", DATABASE::Customer, "Bill-to Customer No.",
                              "Salesperson Code", "Campaign No.", "Posting Description", "Opportunity No.");
                    END;
                END;
                MARK(TRUE);

                //>>DSDK.bund
                CLEAR(BottomLine);
                CompanyInfo.GetBottom(BottomLine[1], BottomLine[2], "Language Code");
                //<<DSDK.bund

                TotalAmountExclVAT := 0;
                TotalVATAmount := 0;
                InvTotalTaxable := 0;   //DSDK.03
                HideDiscCaption := 1;
                CLEAR(SL);
                SL.SETRANGE("Document Type", "Sales Line"."Document Type"::Quote);
                SL.SETRANGE("Document No.", "Sales Header"."No.");
                IF SL.FINDSET THEN BEGIN
                    REPEAT
                        TotalAmountExclVAT += SL.Amount;
                        TotalVATAmount += (SL."Amount Including VAT" - SL.Amount);
                        IF SL."Line Discount %" <> 0 THEN HideDiscCaption := 0;
                        //>>DSDK.03
                        IF SL."VAT %" <> 0 THEN
                            InvTotalTaxable += SL.Amount;
                    //<<DSDK.03
                    UNTIL SL.NEXT = 0;
                END;
                TotalAmountInclVAT := TotalAmountExclVAT + TotalVATAmount;

                //>>DSDK.05.WorkDescription
                CALCFIELDS("Work Description");
                ShowWorkDescription := "Work Description".HASVALUE;
                IF ParamDropWorkDescription THEN    //DSDK.27
                    ShowWorkDescription := false;
                //<<DSDK.05.WorkDescription

                //>>DSDK.45
                FormatAddr.SalesHeaderSellTo(SellToAddr, "Sales Header");
                CompanyInfo.TranslateCountryName(SellToAddr, "Sales Header"."Sell-to Country/Region Code", "Sales Header"."Language Code");
                //<<DSDK.45
            end;

            trigger OnPostDataItem();
            var
                ToDo: Record "To-do";
                FileManagement: Codeunit "File Management";
            begin
                MARKEDONLY := TRUE;
                COMMIT;
                CurrReport.LANGUAGE := GLOBALLANGUAGE;
                //>>DSDK.45
                /*
                IF NOT FileManagement.IsWebClient THEN
                    IF FIND('-') AND ToDo.WRITEPERMISSION THEN
                        IF Print AND (NoOfRecords = 1) THEN
                            IF CONFIRM(Text007) THEN
                                CreateTask;
                */
                //<<DSDK.45
            end;

            trigger OnPreDataItem();
            begin
                NoOfRecords := COUNT;
                Print := Print OR NOT CurrReport.PREVIEW;
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
                    field(ArchiveDocument; ArchiveDocument)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Arkiver dokument',
                                    ENU = 'Archive Document';

                        trigger OnValidate();
                        begin
                            IF NOT ArchiveDocument THEN
                                LogInteraction := FALSE;
                        end;
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Logfør interaktion',
                                    ENU = 'Log Interaction';
                        Enabled = LogInteractionEnable;

                        trigger OnValidate();
                        begin
                            IF LogInteraction THEN
                                ArchiveDocument := ArchiveDocumentEnable;
                        end;
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
            ArchiveDocument := SalesSetup."Archive Orders";
            LogInteraction := SegManagement.FindInteractTmplCode(1) <> '';

            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        GLSetup.GET;
        CompanyInfo.GET;
        SalesSetup.GET;

        CompanyInfo2.GET;
        CompanyInfo2.CALCFIELDS(Picture);

        //>>DSDK.Custom.03.Cabola
        /*
        CompanyInfo2.CALCFIELDS("Picture Bottom");
        CompanyInfo2.Picture := CompanyInfo2."Picture Bottom";
        */
        //<<DSDK.Custom.03.Cabola
    end;

    var
        Text000: TextConst DAN = 'Vores ref.', DEU = 'Unsere Ref.', ENU = 'Our Ref.';
        Text001: TextConst DAN = 'Total %1', DEU = 'Gesamt %1', ENU = 'Total %1';
        Text002: TextConst DAN = 'Total %1', DEU = 'Gesamt %1', ENU = 'Total %1';
        Text003: TextConst DAN = 'KOPI', DEU = 'KOPIE', ENU = 'COPY';
        Text004: TextConst DAN = 'Tilbud', DEU = 'Angebot', ENU = 'Quote';
        PageCaptionCapLbl: TextConst DAN = 'Side', DEU = 'Seite', ENU = 'Page';
        PageCaptionCap: TextConst DAN = '%1 af %2', DEU = '%1 von %2', ENU = '%1 of %2';
        Text006: TextConst DAN = 'Momsgrundlag', DEU = 'MwSt. Grundlage', ENU = 'VAT Base';
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        VATAmountLine: Record "VAT Amount Line" temporary;
        SalesLine: Record "Sales Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        RespCenter: Record "Responsibility Center";
        //DSDK.45_Language: Record "Language";
        Language: Codeunit "Language";
        Country: Record "Country/Region";
        CurrExchRate: Record "Currency Exchange Rate";
        SalesCountPrinted: Codeunit "Sales-Printed";
        FormatAddr: Codeunit "Format Address";
        SegManagement: Codeunit "SegManagement";
        ArchiveManagement: Codeunit "ArchiveManagement";
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        SalesPersonText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        i: Integer;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        ArchiveDocument: Boolean;
        LogInteraction: Boolean;
        VATAmount: Decimal;
        VATBaseAmount: Decimal;
        VATDiscountAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        Text007: TextConst DAN = 'Vil du oprette en opfølgningsopgave?', DEU = 'Möchten Sie einen Follow-up-Aufgabe erstellen ?', ENU = 'Do you want to create a follow-up to-do?';
        NoOfRecords: Integer;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        VALExchRate: Text[50];
        Text008: TextConst DAN = 'Momsbeløbsspecifikation i ', DEU = 'MwSt. Betrag Specifikation in', ENU = 'VAT Amount Specification in ';
        Text009: TextConst DAN = 'Lokal valuta', DEU = 'Währung', ENU = 'Local Currency';
        Text010: TextConst DAN = 'Valutakurs: %1/%2', DEU = 'Wechselkurs: %1/%2', ENU = 'Exchange rate: %1/%2';
        OutputNo: Integer;
        Print: Boolean;
        [InDataSet]
        ArchiveDocumentEnable: Boolean;
        [InDataSet]
        LogInteractionEnable: Boolean;
        CompanyInfoPhoneNoCaptionLbl: TextConst DAN = 'Telefon', DEU = 'Telefon', ENU = 'Phone No.';
        CompanyInfoVATRegNoCaptionLbl: TextConst DAN = 'SE/CVR-nr.', DEU = 'USt-IdNr.', ENU = 'VAT ';
        CompanyInfoGiroNoCaptionLbl: TextConst DAN = 'Gironr.', DEU = 'Giro Nr.', ENU = 'Giro No.';
        CompanyInfoBankNameCaptionLbl: TextConst DAN = 'Bank', DEU = 'Bank', ENU = 'Bank';
        CompanyInfoBankAccountNoCaptionLbl: TextConst DAN = 'Kontonr.', DEU = 'Konten Nr.', ENU = 'Account No.';
        SalesHeaderShipmentDateCaptionLbl: TextConst DAN = 'Afsendelsesdato', DEU = 'Versandsdatum', ENU = 'Shipment Date';
        SalesHeaderNoCaptionLbl: TextConst DAN = 'Nummer', DEU = 'Nummer', ENU = 'Number';
        HeaderDimensionsCaptionLbl: TextConst DAN = 'Dimensioner - hoved', DEU = 'Dimensionen - Kopf', ENU = 'Header Dimensions';
        UnitPriceCaptionLbl: TextConst DAN = 'Pris', DEU = 'Preis', ENU = 'Price';
        DiscountPercentCaptionLbl: TextConst DAN = 'Rabat%', DEU = 'Rabatt%', ENU = 'Disc.%';
        AmountCaptionLbl: TextConst DAN = 'Beløb', DEU = 'Betrag', ENU = 'Amount';
        SalesLineInvDiscAmtCaptionLbl: TextConst DAN = 'Fakturarabatbeløb', DEU = 'Rechnung Skonto Betrag', ENU = 'Invoice Discount Amount';
        SubtotalCaptionLbl: TextConst DAN = 'Subtotal', DEU = 'Zwischensumme', ENU = 'Subtotal';
        VATDiscountAmountCaptionLbl: TextConst DAN = 'Moms ved kontantrabat', ENU = 'Payment Discount on VAT';
        LineDimensionsCaptionLbl: TextConst DAN = 'Linjedimensioner', DEU = 'Pos. Dimensionen', ENU = 'Line Dimensions';
        VATAmountLineVATCaptionLbl: TextConst DAN = 'Momspct.', DEU = 'MwSt. %', ENU = 'VAT %';
        VATBaseCaptionLbl: TextConst DAN = 'Momsgrundlag', DEU = 'MwSt. Grundlage', ENU = 'VAT Base';
        VATAmtCaptionLbl: TextConst DAN = 'Momsbeløb', DEU = 'MwSt. Betrag', ENU = 'VAT Amount';
        VATAmountSpecificationCaptionLbl: TextConst DAN = 'Momsbeløbspecifikation', DEU = 'MwSt. Betrag Specifikation', ENU = 'VAT Amount Specification';
        LineAmtCaptionLbl: TextConst DAN = 'Linjebeløb', DEU = 'Pos. Betrag', ENU = 'Line Amount';
        InvoiceDiscBaseAmtCaptionLbl: TextConst DAN = 'Grundbeløb for fakturarabat', DEU = 'Grundbetrag für Skonto', ENU = 'Invoice Discount Base Amount';
        InvoiceDiscAmtCaptionLbl: TextConst DAN = 'Fakturarabatbeløb', DEU = 'Rechnungs Skunto Betrag', ENU = 'Invoice Discount Amount';
        TotalCaptionLbl: TextConst DAN = 'I alt', DEU = 'Gesamt', ENU = 'Total';
        ShiptoAddressCaptionLbl: TextConst DAN = 'Leveringsadresse', DEU = 'Lieferaddresse', ENU = 'Ship-to Address';
        SalesLineVATIdentifierCaptionLbl: TextConst DAN = 'Moms-id', DEU = 'MwSt. Code', ENU = 'VAT Identifier';
        PaymentTermsDescriptionCaptionLbl: TextConst DAN = 'Betalingsbetingelser', DEU = 'Zahlungsbedingungen', ENU = 'Payment Terms';
        ShipmentMethodDescriptionCaptionLbl: TextConst DAN = 'Leveringsform', DEU = 'Lieferform', ENU = 'Shipment Method';
        CompanyInfoHomePageCaptionLbl: TextConst DAN = 'Hjemmeside', DEU = 'Web Seite', ENU = 'Home Page';
        CompanyInfoEmailCaptionLbl: TextConst DAN = 'E-mail', DEU = 'E-Mail', ENU = 'E-Mail';
        DocumentDateCaptionLbl: TextConst DAN = 'Dato', DEU = 'Datum', ENU = 'Date';
        SalesLineAllowInvoiceDiscCaptionLbl: TextConst DAN = 'Tillad fakturarabat', DEU = 'Skonto erlaubt', ENU = 'Allow Invoice Discount';
        TotalAmountExclVAT: Decimal;
        TotalVATAmount: Decimal;
        CurrencyCodeText: Text[50];
        PaymentInfo: TextConst DAN = 'Betalingsoplysninger', DEU = 'Zahlungsinformationen', ENU = 'Payment Information';
        PaymentTermsDesc2: Label 'Efter forfald tilskrives rente efter rentelovens § 5.';
        PaymentTermsDescCaptionLbl: TextConst DAN = 'Betalingsbetingelser', DEU = 'Zahlungsbedingungen', ENU = 'Payment Terms';
        CurrencyCodeLbl: TextConst DAN = 'Valuta', DEU = 'Währung', ENU = 'Currency';
        "<dsdk>": Integer;
        BottomLine: array[2] of Text[250];
        ShowLineDiscCaption: Boolean;
        LastLine: Integer;
        CustomerCaptionLbl: TextConst DAN = 'Kundenr.', DEU = 'Kunden Nr.', ENU = 'Customer No.';
        VATAmountCaptionLbl: TextConst DAN = 'Moms', DEU = 'MwSt.', ENU = 'VAT';
        HideDiscCaption: Integer;

        "//DSDK.txt": Integer;
        UnitOfMessureCaptionLbl: TextConst DAN = 'Enhed', DEU = 'Einh.', ENU = 'Unit';
        QtyCaptionLbl: TextConst DAN = 'Antal', DEU = 'Menge', ENU = 'Qty';
        "//DSDK.Taxable": Integer;
        InvTotalTaxable: Decimal;
        "//DSDK.Taxable.txt": Integer;
        NettoCaptionLbl: TextConst DAN = 'Nettobeløb', DEU = 'Nettobetrag', ENU = 'Net Amount';
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
        "//DSDK.Tracking": Integer;
        SerialLotNoTxt: Text[50];
        ShowLotSN: Boolean;
        "//MessageLines": Integer;
        MessageNo: Code[20];
        MessageLanguage: Code[10];
        "//TextLines": Integer;
        TextLine: array[10] of Text[100];
        TextLineIdx: Integer;
        ParamDropWorkDescription: Boolean;
        //LanguageCaption
        NoCaptionLbl: TextConst DAN = 'Nummer', DEU = 'Artikel', ENU = 'No.';
        DescriptionCaptionLbl: TextConst DAN = 'Beskrivelse', DEU = 'Beschreibung', ENU = 'Description';
        //DSDK.32
        PlannedDeliveryDateCaption: TextConst DAN = 'Dato', DEU = 'Datum', ENU = 'Date';
        //DSDK.SellToAddr
        SellToAddr: array[8] of Text[50];
        InvoiceAddrCaption: TextConst DAN = 'Faktureringsadresse', DEU = 'Rechnungsadresse ', ENU = 'Invoice Address';
        CustomerAddrCaption: TextConst DAN = 'Kundeadresse', DEU = 'Kundenadresse', ENU = 'Customer Address';
        //DSDK.47
        VariantCaption: TextConst DAN = 'Variant', DEU = 'Variante', ENU = 'Variant';


    procedure InitializeRequest(NoOfCopiesFrom: Integer; ShowInternalInfoFrom: Boolean; ArchiveDocumentFrom: Boolean; LogInteractionFrom: Boolean; PrintFrom: Boolean);
    begin
        NoOfCopies := NoOfCopiesFrom;
        ShowInternalInfo := ShowInternalInfoFrom;
        ArchiveDocument := ArchiveDocumentFrom;
        LogInteraction := LogInteractionFrom;
        Print := PrintFrom;
    end;

    procedure SalesLineFindLast(SalesHeader: Record "Sales Header"): Integer;
    var
        SL2: Record "Sales Line";
    begin
        CLEAR(SL2);
        SL2.SETRANGE("Document Type", SalesHeader."Document Type");
        SL2.SETRANGE("Document No.", SalesHeader."No.");
        SL2.FINDLAST;
        EXIT(SL2."Line No.");
    end;

    procedure SalesLineDiscount(SalesHeader: Record "Sales Header"): Boolean;
    var
        SL2: Record "Sales Line";
    begin
        CLEAR(SL2);
        SL2.SETCURRENTKEY("Document Type", "Document No.", "Line No.");
        SL2.SETRANGE("Document Type", SalesHeader."Document Type");
        SL2.SETRANGE("Document No.", SalesHeader."No.");
        SL2.SETRANGE("Line Discount %", 0.01, 9999);
        IF SL2.FIND('-') THEN
            EXIT(TRUE)
    end;
}

