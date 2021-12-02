report 50026 "Order Confirmation DSDK2018"
{
    // version DSDK.std.2018,DSDK.15

    // DSDK - Datasign.dk - Standard report std.2
    // 
    // DSDK.00 LV 2016.01.29 - Ny standard (Alflow) - changed texts and layout
    // DSDK.01 LV 2017.05.10 - 2 lines bottom
    // DSDK.02 LV 2017.05.24 - "Picture 2"
    // DSDK.06 LV 2017.09.13 - print "Our Ref", "Your Ref", "Your Order No."
    // DSDK.07 LV 2017.09.15 - Print Tempory Blanket Order via Job: "Job Planning Line"
    // ////DSDK.08 LV 2017.10.04 - Print Tempory Order via Job: "Job Sales Invoice"
    // DSDK.09 LV 2017.10.09 - Print description 2+3
    // DSDK.10 LV 2017.10.10 - Print Tempory Normal Order via Job: "Job Planning Line"
    // DSDK.11 LV 2017.10.26 - add Item Extended Text lines
    // DSDK.12 LV 2018.02.12 - Print "Delivery Date" on ordre line - New feature
    // 
    // DSDK.00 LV 2018.02.12 - ERPgruppen.dk - 2018 Standard report
    // DSDK.13 LV 2018.03.06 - print "Net Amount" & "Taxable Amount"
    // DSDK.14 LV 2018.05.16 - change size on detail line from 7 to 9
    // DSDK.15 LV 2018.12.27 - clean up and remove other customers changes
    // DSDK.16 LV 2019.01.28 - Print "Work description" - standard feature from R1306
    // 
    // DSDK.17 LV 2019.01.28 - Work Description in Header
    // DSDK.20 LV 2019.02.06 - Report Params
    // DSDK.21 LV 2019.03.12 - same address - then drop Shipment Address
    // DSDK.22 LV 2019.03.27 - Tracking
    // DSDK.23 LV 2019.03.29 - Report Params - Pass2
    // DSDK.24 LV 2019.04.08 - Report Params - TextLines
    // DSDK.25 LV 2019.04.17 - Report Encoding
    // DSDK.27 LV 2019.05.27 - "Drop Work Description", "Show Country of Origin", Show on same line"
    // DSDK.28 LV 2019.05.29 - full layout
    // DSDK.30 LV 2019.06.19 - Tracking with detailed print
    // DSDK.31 LV 2019.07.08 - German texts

    // DSDK.33 LV 2019.07.12 - CustomerAdjustnent.01: Print Item."Desription 3"
    // DSDK.35 LV 2019.07.18 - Translate Country Name
    // DSDK.36 LV 2019.08.14 - Body captions on after page 1
    // DSDK.37 LV 2019.08.30 - Tracking with detailed print - Show/hide Item No
    // DSDK.40 LV 2019.09.09 - move sales invoice lines to Temp

    //      ØRBÆK 
    // DSDK.Custom.02 2019.09.10  Accumulate Fee lines

    //      CABOLA
    // DSDK.Custom.03 2019.10.08 Picture 2

    //      DELTA ELEKTRONIK
    // DSDK.Custom.04 2019.12.04 print "Promised Delivery Date" from Sales Line

    //      AUSTROTERM - MIA CASA
    // DSDK.Custom.05 2019.12.19 - Show always all addresses

    // DSDK.41 LV 2019.10.07 - Report Params - Pass8 - "Show Customer Item No."
    // DSDK.45 LV 2019.11.04 - version 15
    // DSDK.45 LV 2019.12.19 - added fields for print "Sell-to"
    // DSDK.46 LV 2019.12.04 - use variable: SalesLineDate (Delta Elektronik - Custom.04)
    // DSDK.47 LV 2020.01.16 - Variant


    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/50026 Order Confirmation DSDK2018.rdlc';

    CaptionML = DAN = 'Ordrebekræftelse',
                ENU = 'Order Confirmation';
    Permissions = TableData "Sales Header" = rimd,
                  TableData "Sales Line" = rimd;

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = SORTING("Document Type", "No.")
                                WHERE("Document Type" = CONST(Order));
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeadingML = DAN = 'Salgsordre',
                                     ENU = 'Sales Order';
            column(DocType_SalesHeader; "Document Type")
            {
            }
            column(No_SalesHeader; "No.")
            {
            }
            column(InvDiscAmtCaption; InvDiscAmtCaptionLbl)
            {
            }
            column(PhoneNoCaption; PhoneNoCaptionLbl)
            {
            }
            column(AmountCaption; AmountCaptionLbl)
            {
            }
            column(VATPercentageCaption; VATPercentageCaptionLbl)
            {
            }
            column(VATBaseCaption; VATBaseCaptionLbl)
            {
            }
            column(VATAmtCaption; STRSUBSTNO(VATAmtCaptionLbl, VATPercent))
            {
            }
            column(VATAmtSpecCaption; VATAmtSpecCaptionLbl)
            {
            }
            column(LineAmtCaption; LineAmtCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(UnitPriceCaption; PriceCaptionLbl)
            {
            }
            column(PaymentTermsCaption; PaymentTermsCaptionLbl)
            {
            }
            column(ShipmentMethodCaption; ShipmentMethodCaptionLbl)
            {
            }
            column(DocumentDateCaption; DocDateCaptionLbl)
            {
            }
            column(AllowInvDiscCaption; AllowInvDiscCaptionLbl)
            {
            }
            column(BottomLine1; BottomLine[1])
            {
            }
            column(BottomLine2; BottomLine[2])
            {
            }
            column(TotalExVAT; TotalExVAT)
            {
            }
            column(TotalVAT; TotalVAT)
            {
            }
            column(TotalInclVAT; TotalInclVAT)
            {
            }
            column(HideDiscCaption; HideDiscCaption)
            {
            }
            column(SelltoCustNo_SalesHeader; "Sales Header"."Sell-to Customer No.")
            {
            }
            column(ShipToAddr8; ShipToAddr[8])
            {
            }
            column(ShipToAddr7; ShipToAddr[7])
            {
            }
            column(ShipToAddr6; ShipToAddr[6])
            {
            }
            column(ShipToAddr5; ShipToAddr[5])
            {
            }
            column(ShipToAddr4; ShipToAddr[4])
            {
            }
            column(ShipToAddr3; ShipToAddr[3])
            {
            }
            column(ShipToAddr2; ShipToAddr[2])
            {
            }
            column(ShipToAddr1; ShipToAddr[1])
            {
            }
            column(ShiptoAddrCaption; ShiptoAddrCaptionLbl)
            {
            }
            column(SelltoCustNo_SalesHeaderCaption; "Sales Header".FIELDCAPTION("Sell-to Customer No."))
            {
            }
            column(PaymentCaptionLbl; PaymentCaptionLbl)
            {
            }
            column(PaymentDescription; PaymentTerms.Description)
            {
            }
            column(YourOrderNoCaption; YourOrderNoCaptionLbl)
            {
            }
            column(ExternalDocumentNo; "Sales Header"."External Document No.")
            {
            }
            column(OurRefCaption; OurRefCaptionLbl)
            {
            }
            column(YourRefCaption; YourRefCaptionLbl)
            {
            }
            column(YourRef; "Sales Header"."Your Reference")
            {
            }
            column(PrintNoTotals; PrintNoTotals)
            {
            }
            column(NettoCaption; NettoCaptionLbl)
            {
            }
            column(InvTotalTaxable; InvTotalTaxable)
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
                    column(CompanyInfo3Picture; CompanyInfo3.Picture)
                    {
                    }
                    column(CompanyInfo1Picture; CompanyInfo1.Picture)
                    {
                    }
                    column(OrderConfirmCopyCaption; UpperCase(STRSUBSTNO(Text004, CopyText)))
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
                    column(CompanyInfoPhNo; CompanyInfo."Phone No.")
                    {
                        IncludeCaption = false;
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
                    column(CompanyInfoHomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoEmail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoBankAccNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(BilltoCustNo_SalesHeader; "Sales Header"."Bill-to Customer No.")
                    {
                    }
                    column(DocDate_SalesHeader; FORMAT("Sales Header"."Document Date", 0, '<Day,2>/<Month,2>-<Year4>'))
                    {
                    }
                    column(VATNoText; VATNoText)
                    {
                    }
                    column(VATRegNo_SalesHeader; "Sales Header"."VAT Registration No.")
                    {
                    }
                    column(ShptDate_SalesHeader; FORMAT("Sales Header"."Shipment Date", 0, '<Day,2>/<Month,2>-<Year4>'))
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
                    column(SalesOrderReference_SalesHeader; "Sales Header"."Your Reference")
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
                    column(PricesInclVAT_SalesHeader; "Sales Header"."Prices Including VAT")
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
                    column(PmntTermsDesc; PaymentTerms.Description)
                    {
                    }
                    column(ShptMethodDesc; ShipmentMethod.Description)
                    {
                    }
                    column(PricesInclVATYesNo_SalesHeader; FORMAT("Sales Header"."Prices Including VAT"))
                    {
                    }
                    column(VATRegNoCaption; VATRegNoCaptionLbl)
                    {
                    }
                    column(GiroNoCaption; GiroNoCaptionLbl)
                    {
                    }
                    column(BankCaption; BankCaptionLbl)
                    {
                    }
                    column(AccountNoCaption; AccountNoCaptionLbl)
                    {
                    }
                    column(ShipmentDateCaption; ShipmentDateCaptionLbl)
                    {
                    }
                    column(OrderNoCaption; OrderNoCaptionLbl)
                    {
                    }
                    column(HomePageCaption; HomePageCaptionCap)
                    {
                    }
                    column(EmailCaption; EmailCaptionLbl)
                    {
                    }
                    column(BilltoCustNo_SalesHeaderCaption; InvToCustLbl)
                    {
                    }
                    column(PricesInclVAT_SalesHeaderCaption; "Sales Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    column(TotalExclVATText; TotalExclVATText)
                    {
                    }
                    column(VATAmtLineVATAmtText3; VATAmountLine.VATAmountText)
                    {
                    }
                    column(TotalInclVATText; TotalInclVATText)
                    {
                    }
                    column(CurrencyCaption; CurrencyCaptionLbl)
                    {
                    }
                    column(Currency; CurrencyCode)
                    {
                    }
                    column(EmailSellTo; 'Sell-to Contact E-Mail')
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
                        column(DimensionLoop1Number; Number)
                        {
                        }
                        column(HeaderDimCaption; HeaderDimCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN BEGIN
                                IF NOT DimSetEntry1.FIND('-') THEN
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
                                        '%1, %2 %3', DimText,
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
                    dataitem("Sales Line"; "Sales Line")
                    {
                        UseTemporary = true;
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
                        column(SalesLineAmt; SalesLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(Desc_SalesLine; "Sales Line".Description)
                        {
                        }
                        column(Desc2_SalesLine; "Sales Line"."Description 2")
                        {
                        }
                        column(NNCSalesLineLineAmt; NNCSalesLineLineAmt)
                        {
                        }
                        column(NNCSalesLineInvDiscAmt; NNCSalesLineInvDiscAmt)
                        {
                        }
                        column(NNCTotalLCY; NNCTotalLCY)
                        {
                        }
                        column(NNCTotalExclVAT; NNCTotalExclVAT)
                        {
                        }
                        column(NNCVATAmt; NNCVATAmt)
                        {
                        }
                        column(NNCTotalInclVAT; NNCTotalInclVAT)
                        {
                        }
                        column(NNCPmtDiscOnVAT; NNCPmtDiscOnVAT)
                        {
                        }
                        column(NNCTotalInclVAT2; NNCTotalInclVAT2)
                        {
                        }
                        column(NNCVATAmt2; NNCVATAmt2)
                        {
                        }
                        column(NNCTotalExclVAT2; NNCTotalExclVAT2)
                        {
                        }
                        column(VATBaseDisc_SalesHeader; "Sales Header"."VAT Base Discount %")
                        {
                        }
                        column(DisplayAssemblyInfo; DisplayAssemblyInformation)
                        {
                        }
                        column(ShowInternalInfo; ShowInternalInfo)
                        {
                        }
                        column(No2_SalesLine; "Sales Line"."No.")
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
                        column(AsmInfoExistsForLine; AsmInfoExistsForLine)
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
                        column(TotalAmountInclVAT; TotalAmountInclVAT)
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
                        column(PaymentDiscountVATCaption; PaymentDiscountVATCaptionLbl)
                        {
                        }
                        column(Desc_SalesLineCaption; DescriptionCaptionLbl)
                        {
                        }
                        column(No2_SalesLineCaption; NoCaptionLbl)
                        {
                        }
                        column(Qty_SalesLineCaption; QtyCaptionLbl)
                        {
                        }
                        column(UOM_SalesLineCaption; UOMCaptionLbl)
                        {
                        }
                        column(VATIdentifier_SalesLineCaption; "Sales Line".FIELDCAPTION("VAT Identifier"))
                        {
                        }
                        column(PlannedDeliveryDateCaption; PlannedDeliveryDateCaption)
                        {
                        }
                        column(PlannedDeliveryDate; SalesLineDate)  //FORMAT("Sales Line"."Planned Delivery Date", 0, '<Day,2>/<Month,2>'))
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
                            column(DimText2; DimText)
                            {
                            }
                            column(LineDimCaption; LineDimCaptionLbl)
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

                                DimSetEntry2.SETRANGE("Dimension Set ID", "Sales Line"."Dimension Set ID");
                            end;
                        }
                        dataitem(AsmLoop; Integer)
                        {
                            DataItemTableView = SORTING(Number);
                            column(AsmLineType; AsmLine.Type)
                            {
                            }
                            column(AsmLineNo; BlanksForIndent + AsmLine."No.")
                            {
                            }
                            column(AsmLineDescription; BlanksForIndent + AsmLine.Description)
                            {
                            }
                            column(AsmLineQuantity; AsmLine.Quantity)
                            {
                            }
                            column(AsmLineUOMText; GetUnitOfMeasureDescr(AsmLine."Unit of Measure Code"))
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN
                                    AsmLine.FINDSET
                                ELSE
                                    AsmLine.NEXT;
                            end;

                            trigger OnPreDataItem();
                            begin
                                IF NOT DisplayAssemblyInformation THEN
                                    CurrReport.BREAK;
                                IF NOT AsmInfoExistsForLine THEN
                                    CurrReport.BREAK;
                                AsmLine.SETRANGE("Document Type", AsmHeader."Document Type");
                                AsmLine.SETRANGE("Document No.", AsmHeader."No.");
                                SETRANGE(Number, 1, AsmLine.COUNT);
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN
                                SalesLine.FIND('-')
                            ELSE
                                SalesLine.NEXT;
                            "Sales Line" := SalesLine;
                            IF DisplayAssemblyInformation THEN
                                AsmInfoExistsForLine := SalesLine.AsmToOrderExists(AsmHeader);

                            IF NOT "Sales Header"."Prices Including VAT" AND
                               (SalesLine."VAT Calculation Type" = SalesLine."VAT Calculation Type"::"Full VAT")
                            THEN
                                SalesLine."Line Amount" := 0;

                            IF (SalesLine.Type = SalesLine.Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                                "Sales Line"."No." := '';

                            NNCSalesLineLineAmt += SalesLine."Line Amount";
                            NNCSalesLineInvDiscAmt += SalesLine."Inv. Discount Amount";

                            NNCTotalLCY := NNCSalesLineLineAmt - NNCSalesLineInvDiscAmt;

                            NNCTotalExclVAT := NNCTotalLCY;
                            NNCVATAmt := VATAmount;
                            NNCTotalInclVAT := NNCTotalLCY - NNCVATAmt;

                            NNCPmtDiscOnVAT := -VATDiscountAmount;

                            NNCTotalInclVAT2 := TotalAmountInclVAT;

                            NNCVATAmt2 := VATAmount;
                            NNCTotalExclVAT2 := VATBaseAmount;

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

                            //>>DSDK.46
                            SalesLineDate := FORMAT("Sales Line"."Planned Delivery Date", 0, '<Day,2>/<Month,2>');
                            //<<DSDK.46

                            //>>Custom.04.DeltaElektronik
                            //SalesLineDate := FORMAT("Sales Line"."Promised Delivery Date", 0, '<Day,2>/<Month,2>');
                            //<<Custom.04.DeltaElektronik

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
                            SalesLine.SETRANGE("Line No.", 0, SalesLine."Line No.");
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
                        column(QuantityCaption; T_QuantityCaptionLbl)
                        {
                        }
                        column(SerialNoCaption; T_SerialNoCaptionLbl)
                        {
                        }
                        column(LotNoCaption; T_LotNoCaptionLbl)
                        {
                        }
                        column(DescriptionCaption2; T_DescriptionCaptionLbl)
                        {
                        }
                        column(NoCaption; T_NoCaptionLbl)
                        {
                        }
                        column(SerialNoTxt; SerialNoTxt)
                        {
                        }
                        column(LotNoTxt; LotNoTxt)
                        {
                        }
                        column(SerialLotNoTxt; SerialLotNoTxt)
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

                        trigger OnAfterGetRecord()
                        begin
                            //>>DSDK.Tracking
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

                            //<<DSDK.Tracking

                            //>>DSDK.Tracking.NotUsed
                            /*
                            SerialLotNoTxt := '';
                            IF TrackingSpecBuffer."Serial No." <> '' THEN
                              SerialLotNoTxt := SerialNoTxt + TrackingSpecBuffer."Serial No.";
                            IF TrackingSpecBuffer."Lot No." <> '' THEN BEGIN
                              IF SerialLotNoTxt = '' THEN
                                SerialLotNoTxt := LotNoTxt + TrackingSpecBuffer."Lot No."
                              ELSE
                                SerialLotNoTxt += ' / ' + LotNoTxt + TrackingSpecBuffer."Lot No.";
                            END;
                            */
                            //<<DSDK.Tracking.NotUsed

                        end;

                        trigger OnPreDataItem()
                        begin
                            //>>DSDK.Tracking
                            IF TrackingSpecCount = 0 THEN
                                CurrReport.BREAK;
                            SETRANGE(Number, 1, TrackingSpecCount);
                            TrackingSpecBuffer.SETCURRENTKEY("Source ID", "Source Type", "Source Subtype", "Source Batch Name",
                              "Source Prod. Order Line", "Source Ref. No.");
                            //<<DSDK.Tracking
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
                            MessageNo := '50026';
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
                        column(VATAmountLineVATBase; VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmt; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineLineAmt; VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscAmt; VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATPercentage; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(InvDiscBaseAmtCaption; InvDiscBaseAmtCaptionLbl)
                        {
                        }
                        column(VATIdentifierCaption; VATIdentifierCaptionLbl)
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
                        column(VATAmtLineVATPercentage2; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier2; VATAmountLine."VAT Identifier")
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
                                VALSpecLCYHeader := Text007 + Text008
                            ELSE
                                VALSpecLCYHeader := Text007 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Sales Header"."Posting Date", "Sales Header"."Currency Code", 1);
                            VALExchRate := STRSUBSTNO(Text009, CurrExchRate."Relational Exch. Rate Amount", CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(PrepmtLoop; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = FILTER(1 ..));
                        column(PrepmtLineAmount; PrepmtLineAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtInvBufDesc; PrepmtInvBuf.Description)
                        {
                        }
                        column(PrepmtInvBufGLAccNo; PrepmtInvBuf."G/L Account No.")
                        {
                        }
                        column(TotalExclVATText2; TotalExclVATText)
                        {
                        }
                        column(PrepmtVATAmtLineVATAmtTxt; PrepmtVATAmountLine.VATAmountText)
                        {
                        }
                        column(TotalInclVATText2; TotalInclVATText)
                        {
                        }
                        column(PrepmtInvAmount; PrepmtInvBuf.Amount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATAmount; PrepmtVATAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtInvAmtInclVATAmt; PrepmtInvBuf.Amount + PrepmtVATAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmtText2; VATAmountLine.VATAmountText)
                        {
                        }
                        column(PrepmtTotalAmountInclVAT; PrepmtTotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATBaseAmount; PrepmtVATBaseAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtLoopNumber; Number)
                        {
                        }
                        column(DescriptionCaption; DescriptionCaptionLbl)
                        {
                        }
                        column(GLAccountNoCaption; GLAccountNoCaptionLbl)
                        {
                        }
                        column(PrepaymentSpecCaption; PrepaymentSpecCaptionLbl)
                        {
                        }
                        dataitem(PrepmtDimLoop; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = FILTER(1 ..));
                            column(DimText3; DimText)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN BEGIN
                                    IF NOT TempPrepmtDimSetEntry.FIND('-') THEN
                                        CurrReport.BREAK;
                                END ELSE
                                    IF NOT Continue THEN
                                        CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := FALSE;
                                REPEAT
                                    OldDimText := DimText;
                                    IF DimText = '' THEN
                                        DimText :=
                                          STRSUBSTNO('%1 %2', TempPrepmtDimSetEntry."Dimension Code", TempPrepmtDimSetEntry."Dimension Value Code")
                                    ELSE
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1, %2 %3', DimText,
                                            TempPrepmtDimSetEntry."Dimension Code", TempPrepmtDimSetEntry."Dimension Value Code");
                                    IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                        DimText := OldDimText;
                                        Continue := TRUE;
                                        EXIT;
                                    END;
                                UNTIL TempPrepmtDimSetEntry.NEXT = 0;
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN BEGIN
                                IF NOT PrepmtInvBuf.FIND('-') THEN
                                    CurrReport.BREAK;
                            END ELSE
                                IF PrepmtInvBuf.NEXT = 0 THEN
                                    CurrReport.BREAK;

                            IF ShowInternalInfo THEN
                                DimMgt.GetDimensionSet(TempPrepmtDimSetEntry, PrepmtInvBuf."Dimension Set ID");

                            IF "Sales Header"."Prices Including VAT" THEN
                                PrepmtLineAmount := PrepmtInvBuf."Amount Incl. VAT"
                            ELSE
                                PrepmtLineAmount := PrepmtInvBuf.Amount;
                        end;

                        trigger OnPreDataItem();
                        begin
                            ///CurrReport.CREATETOTALS(
                            ///PrepmtInvBuf.Amount,PrepmtInvBuf."Amount Incl. VAT",
                            ///PrepmtVATAmountLine."Line Amount",PrepmtVATAmountLine."VAT Base",
                            ///PrepmtVATAmountLine."VAT Amount",
                            ///PrepmtLineAmount);
                        end;
                    }
                    dataitem(PrepmtVATCounter; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(PrepmtVATAmtLineVATAmt; PrepmtVATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATAmtLineVATBase; PrepmtVATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATAmtLineLineAmt; PrepmtVATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATAmtLineVATPerc; PrepmtVATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(PrepmtVATAmtLineVATIdent; PrepmtVATAmountLine."VAT Identifier")
                        {
                        }
                        column(PrepmtVATCounterNumber; Number)
                        {
                        }
                        column(PrepaymentVATAmtSpecCap; PrepaymentVATAmtSpecCapLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            PrepmtVATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem();
                        begin
                            SETRANGE(Number, 1, PrepmtVATAmountLine.COUNT);
                        end;
                    }
                    dataitem(PrepmtTotal; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                        column(PrepmtPmtTermsDesc; PrepmtPaymentTerms.Description)
                        {
                        }
                        column(PrepmtPmtTermsDescCaption; PrepmtPmtTermsDescCaptionLbl)
                        {
                        }

                        trigger OnPreDataItem();
                        begin
                            IF NOT PrepmtInvBuf.FIND('-') THEN
                                CurrReport.BREAK;
                        end;
                    }
                    trigger OnPreDataItem()
                    begin
                        //>>DSDK.Tracking
                        IF ShowLotSN THEN BEGIN
                            ////TrackingSpecCount := 0;
                            OldRefNo := 0;
                            ShowGroup := FALSE;
                        END;
                        //<<DSDK.Tracking
                    end;
                }

                trigger OnAfterGetRecord();
                var
                    PrepmtSalesLine: Record "Sales Line" temporary;
                    SalesPost: Codeunit "Sales-Post";
                    TempSalesLine: Record "Sales Line" temporary;
                begin
                    CLEAR(SalesLine);
                    CLEAR(SalesPost);
                    VATAmountLine.DELETEALL;
                    SalesLine.DELETEALL;

                    //DSDK.40   SalesPost.GetSalesLines("Sales Header",SalesLine,0);

                    //>>DSDK.40.Standard
                    CLEAR(FindSalesLine);
                    FindSalesLine.SETRANGE("Document No.", "Sales Header"."No.");
                    IF FindSalesLine.FINDLAST THEN
                        LastLineNo := FindSalesLine."Line No.";

                    // move all lines to temp
                    CLEAR(FindSalesLine);
                    FindSalesLine.SETCURRENTKEY("Document No.", "Line No.");
                    FindSalesLine.SETRANGE("Document No.", "Sales Header"."No.");
                    IF FindSalesLine.FINDSET THEN
                        REPEAT
                            SalesLine := FindSalesLine;
                            SalesLine.INSERT;
                        UNTIL FindSalesLine.NEXT = 0;
                    //<<DSDK.40.Standard

                    //>>DSDK.40.Custom.01.Ørbæk
                    /*
                    CLEAR(FindSalesLine);
                    FindSalesLine.SETCURRENTKEY("Document No.", "Line No.");
                    FindSalesLine.SETRANGE("Document No.", "Sales Header"."No.");
                    if FindSalesLine.FindLast then
                        LastLineNo := FindSalesLine."Line No.";

                    // move all lines to temp
                    CLEAR(FindSalesLine);
                    FindSalesLine.SETCURRENTKEY("Document No.", "Line No.");
                    FindSalesLine.SETRANGE("Document No.", "Sales Header"."No.");
                    IF FindSalesLine.FINDSET THEN
                        REPEAT
                            FeeFound := false;
                            IF (FindSalesLine."Fee Line" = true) AND (FindSalesLine.Type = FindSalesLine.Type::"G/L Account") then begin
                                // acc all fee lines
                                For FeeIdx := 1 to 10 do begin

                                    IF FeeFound = false then begin

                                        IF FeeTab[FeeIdx] = '' then begin
                                            // create fee line for accumulation
                                            SalesLine := FindSalesLine;
                                            SalesLine."Line No." := LastLineNo + FeeIdx;
                                            SalesLine.Insert;
                                            FeeTab[FeeIdx] := FindSalesLine.Description;
                                            FeeFound := true;
                                        end else begin
                                            IF FeeTab[FeeIdx] = FindSalesLine.Description then begin
                                                // acc this line
                                                Clear(SalesLine);
                                                SalesLine.SetRange("Line No.", LastLineNo + FeeIdx);
                                                SalesLine.LockTable;
                                                IF SalesLine.FindSet then begin
                                                    SalesLine.Quantity += FindSalesLine.Quantity;
                                                    SalesLine."Line Amount" += FindSalesLine."Line Amount";
                                                    SalesLine.Amount += FindSalesLine.Amount;
                                                    SalesLine."Amount Including VAT" += FindSalesLine."Amount Including VAT";
                                                    SalesLine."Line Discount Amount" += FindSalesLine."Line Discount Amount";
                                                    SalesLine.Modify;
                                                end;
                                                FeeFound := true;
                                            end;
                                        end;
                                    end;
                                end;

                            end else begin
                                // transfer NOT fee lines direct
                                SalesLine := FindSalesLine;
                                SalesLine.INSERT;
                            end;
                        UNTIL FindSalesLine.NEXT = 0;

                    Clear(SalesLine);
                    */
                    //<<DSDK.40.Custom.01.Ørbæk

                    SalesLine.CalcVATAmountLines(0, "Sales Header", SalesLine, VATAmountLine);
                    SalesLine.UpdateVATOnLines(0, "Sales Header", SalesLine, VATAmountLine);
                    VATAmount := VATAmountLine.GetTotalVATAmount;
                    VATBaseAmount := VATAmountLine.GetTotalVATBase;
                    VATDiscountAmount :=
                      VATAmountLine.GetTotalVATDiscount("Sales Header"."Currency Code", "Sales Header"."Prices Including VAT");
                    TotalAmountInclVAT := VATAmountLine.GetTotalAmountInclVAT;

                    PrepmtInvBuf.DELETEALL;
                    SalesPostPrepmt.GetSalesLines("Sales Header", 0, PrepmtSalesLine);

                    IF NOT PrepmtSalesLine.ISEMPTY THEN BEGIN
                        SalesPostPrepmt.GetSalesLinesToDeduct("Sales Header", TempSalesLine);
                        IF NOT TempSalesLine.ISEMPTY THEN
                            SalesPostPrepmt.CalcVATAmountLines("Sales Header", TempSalesLine, PrepmtVATAmountLineDeduct, 1);
                    END;
                    SalesPostPrepmt.CalcVATAmountLines("Sales Header", PrepmtSalesLine, PrepmtVATAmountLine, 0);
                    IF PrepmtVATAmountLine.FINDSET THEN
                        REPEAT
                            PrepmtVATAmountLineDeduct := PrepmtVATAmountLine;
                            IF PrepmtVATAmountLineDeduct.FIND THEN BEGIN
                                PrepmtVATAmountLine."VAT Base" := PrepmtVATAmountLine."VAT Base" - PrepmtVATAmountLineDeduct."VAT Base";
                                PrepmtVATAmountLine."VAT Amount" := PrepmtVATAmountLine."VAT Amount" - PrepmtVATAmountLineDeduct."VAT Amount";
                                PrepmtVATAmountLine."Amount Including VAT" := PrepmtVATAmountLine."Amount Including VAT" -
                                  PrepmtVATAmountLineDeduct."Amount Including VAT";
                                PrepmtVATAmountLine."Line Amount" := PrepmtVATAmountLine."Line Amount" - PrepmtVATAmountLineDeduct."Line Amount";
                                PrepmtVATAmountLine."Inv. Disc. Base Amount" := PrepmtVATAmountLine."Inv. Disc. Base Amount" -
                                  PrepmtVATAmountLineDeduct."Inv. Disc. Base Amount";
                                PrepmtVATAmountLine."Invoice Discount Amount" := PrepmtVATAmountLine."Invoice Discount Amount" -
                                  PrepmtVATAmountLineDeduct."Invoice Discount Amount";
                                PrepmtVATAmountLine."Calculated VAT Amount" := PrepmtVATAmountLine."Calculated VAT Amount" -
                                  PrepmtVATAmountLineDeduct."Calculated VAT Amount";
                                PrepmtVATAmountLine.MODIFY;
                            END;
                        UNTIL PrepmtVATAmountLine.NEXT = 0;

                    SalesPostPrepmt.UpdateVATOnLines("Sales Header", PrepmtSalesLine, PrepmtVATAmountLine, 0);
                    SalesPostPrepmt.BuildInvLineBuffer("Sales Header", PrepmtSalesLine, 0, PrepmtInvBuf);           //DSDK.45 BuildInvLineBuffer2 ==> BuildInvLineBuffer
                    PrepmtVATAmount := PrepmtVATAmountLine.GetTotalVATAmount;
                    PrepmtVATBaseAmount := PrepmtVATAmountLine.GetTotalVATBase;
                    PrepmtTotalAmountInclVAT := PrepmtVATAmountLine.GetTotalAmountInclVAT;

                    IF Number > 1 THEN BEGIN
                        CopyText := Text003;
                        OutputNo += 1;
                    END;
                    //CurrReport.PAGENO := 1;

                    NNCTotalLCY := 0;
                    NNCTotalExclVAT := 0;
                    NNCVATAmt := 0;
                    NNCTotalInclVAT := 0;
                    NNCPmtDiscOnVAT := 0;
                    NNCTotalInclVAT2 := 0;
                    NNCVATAmt2 := 0;
                    NNCTotalExclVAT2 := 0;
                    NNCSalesLineLineAmt := 0;
                    NNCSalesLineInvDiscAmt := 0;
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
                SL: Record "Sales Line";
            begin
                CurrReport.LANGUAGE := Language.GetLanguageIDOrDefault("Language Code");       //DSDK.45

                //>>DSDK.Params
                ReportSelections.GetData_SalesOrder("Sales Header", ParamDropDeliveryAddress, ParamDropItemNoColumn, ParamDropWorkDescription);  //DSDK.27
                FOR ParamIdx := 1 TO 15 DO BEGIN
                    ReportSelections.GetParam_SalesOrder("Sales Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                END;
                //<<DSDK.Params

                CompanyInfo.GET;

                IF RespCenter.GET("Responsibility Center") THEN BEGIN
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                END ELSE
                    FormatAddr.Company(CompanyAddr, CompanyInfo);

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");

                IF "Salesperson Code" = '' THEN BEGIN
                    CLEAR(SalesPurchPerson);
                    SalesPersonText := '';
                END ELSE BEGIN
                    SalesPurchPerson.GET("Salesperson Code");
                    SalesPersonText := Text000;
                END;
                ReferenceText := FIELDCAPTION("Your Reference");
                VATNoText := FIELDCAPTION("VAT Registration No.");
                IF "Currency Code" = '' THEN BEGIN
                    GLSetup.TESTFIELD("LCY Code");
                    TotalText := STRSUBSTNO(Text001, GLSetup."LCY Code");
                    TotalInclVATText := STRSUBSTNO(Text002, GLSetup."LCY Code");
                    TotalExclVATText := STRSUBSTNO(Text006, GLSetup."LCY Code");
                    CurrencyCode := GLSetup."LCY Code";
                END ELSE BEGIN
                    CurrencyCode := "Currency Code";
                    TotalText := STRSUBSTNO(Text001, "Currency Code");
                    TotalInclVATText := STRSUBSTNO(Text002, "Currency Code");
                    TotalExclVATText := STRSUBSTNO(Text006, "Currency Code");
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
                IF "Prepmt. Payment Terms Code" = '' THEN
                    PrepmtPaymentTerms.INIT
                ELSE BEGIN
                    PrepmtPaymentTerms.GET("Prepmt. Payment Terms Code");
                    PrepmtPaymentTerms.TranslateDescription(PrepmtPaymentTerms, "Language Code");
                END;
                IF "Prepmt. Payment Terms Code" = '' THEN
                    PrepmtPaymentTerms.INIT
                ELSE BEGIN
                    PrepmtPaymentTerms.GET("Prepmt. Payment Terms Code");
                    PrepmtPaymentTerms.TranslateDescription(PrepmtPaymentTerms, "Language Code");
                END;
                IF "Shipment Method Code" = '' THEN
                    ShipmentMethod.INIT
                ELSE BEGIN
                    ShipmentMethod.GET("Shipment Method Code");
                    ShipmentMethod.TranslateDescription(ShipmentMethod, "Language Code");
                END;

                //>>DSDK.Param
                IF NOT ParamDropDeliveryAddress THEN BEGIN
                    //DSDK.Param
                    FormatAddr.SalesHeaderShipTo(ShipToAddr, CustAddr, "Sales Header");
                    //>>DSDK.35
                    CompanyInfo.TranslateCountryName(ShipToAddr, "Sales Header"."Ship-to Country/Region Code", "Sales Header"."Language Code");
                    //<<DSDK.35
                    ShowShippingAddr := "Sell-to Customer No." <> "Bill-to Customer No.";
                    FOR i := 1 TO ARRAYLEN(ShipToAddr) DO
                        IF ShipToAddr[i] <> CustAddr[i] THEN
                            ShowShippingAddr := TRUE;
                    //DSDK.Param
                END;
                //<<DSDK.Param

                //>>DSDK.Custom.05
                //ShowShippingAddr := true;
                //<<DSDK.Custom.05

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
                              3, "No.", "Doc. No. Occurrence",
                              "No. of Archived Versions", DATABASE::Contact, "Bill-to Contact No."
                              , "Salesperson Code", "Campaign No.", "Posting Description", "Opportunity No.")
                        ELSE
                            SegManagement.LogDocument(
                              3, "No.", "Doc. No. Occurrence",
                              "No. of Archived Versions", DATABASE::Customer, "Bill-to Customer No.",
                              "Salesperson Code", "Campaign No.", "Posting Description", "Opportunity No.");
                    END;
                END;

                //>>DSDK.bund
                CLEAR(BottomLine);
                CompanyInfo.GetBottom(BottomLine[1], BottomLine[2], "Language Code");
                //<<DSDK.bund

                TotalExVAT := 0;
                TotalInclVAT := 0;
                VATPercent := 0;      //std
                InvTotalTaxable := 0;   //DSDK.13
                HideDiscCaption := 1;
                CLEAR(SL);
                SL.SETRANGE("Document No.", "Sales Header"."No.");
                IF SL.FINDSET THEN BEGIN
                    REPEAT
                        TotalExVAT += SL.Amount;
                        TotalInclVAT += SL."Amount Including VAT";
                        IF SL."Line Discount %" <> 0 THEN HideDiscCaption := 0;
                        IF SL."VAT %" > VATPercent THEN VATPercent := SL."VAT %";   //std
                                                                                    //>>DSDK.13
                        IF SL."VAT %" <> 0 THEN
                            InvTotalTaxable += SL.Amount;
                    //<<DSDK.13
                    UNTIL SL.NEXT = 0;
                END;
                TotalVAT := TotalInclVAT - TotalExVAT;

                //>>DSDK.16.WorkDescription
                CALCFIELDS("Work Description");
                ShowWorkDescription := "Work Description".HASVALUE;
                IF ParamDropWorkDescription THEN    //DSDK.27
                    ShowWorkDescription := false;
                //<<DSDK.16.WorkDescription

                //>>DSDK.Tracking
                IF ShowLotSN THEN BEGIN
                    ItemTrackingDocMgt.SetRetrieveAsmItemTracking(TRUE);
                    TrackingSpecCount :=
                      ItemTrackingDocMgt.RetrieveDocumentItemTracking(TrackingSpecBuffer,
                        "Sales Header"."No.", DATABASE::"Sales Header", 1);
                    ItemTrackingDocMgt.SetRetrieveAsmItemTracking(FALSE);
                END;
                //<<DSDK.Tracking

                //>>DSDK.45
                FormatAddr.SalesHeaderSellTo(SellToAddr, "Sales Header");
                CompanyInfo.TranslateCountryName(SellToAddr, "Sales Header"."Sell-to Country/Region Code", "Sales Header"."Language Code");
                //<<DSDK.45
            end;

            trigger OnPreDataItem();
            begin
                Print := Print OR NOT CurrReport.PREVIEW;
                AsmInfoExistsForLine := FALSE;
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
                    field(ShowAssemblyComponents; DisplayAssemblyInformation)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Vis montagekomponenter',
                                    ENU = 'Show Assembly Components';
                    }
                    field(ShowLotSN; ShowLotSN)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Vis serie-/lotnummer',
                                    ENU = 'Show Serial/Lot Number';
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
            LogInteraction := SegManagement.FindInteractTmplCode(3) <> '';

            LogInteractionEnable := LogInteraction;

            //>>DSDK-Temporary
            IF PassJobPlanningLine."Job No." <> '' THEN BEGIN
                OrderNumber := PassJobPlanningLine."Job No.";
                CLEAR("Sales Header");
                "Sales Header".SETRANGE("Sales Header"."No.", OrderNumber);
                "Sales Header".SETRANGE("Sales Header"."Document Type", "Sales Header"."Document Type"::Order);
            END;
            //<<DSDK-Temporary
        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        GLSetup.GET;

        SalesSetup.GET;

        CompanyInfo2.GET;
        CompanyInfo2.CALCFIELDS(Picture);

        //>>DSDK.Custom.03.Cabola
        /*
        CompanyInfo2.GET;
        CompanyInfo2.CALCFIELDS("Picture Bottom");
        CompanyInfo2.Picture := CompanyInfo2."Picture Bottom";
        */
        //<<DSDK.Custom.03.Cabola


    end;

    trigger OnPostReport();
    begin
        //>>DSDK.temporary - DELETE
        IF OrderNumber <> '' THEN BEGIN
            // delete temporary sales line
            CLEAR(FindSalesLine);
            FindSalesLine.SETRANGE(FindSalesLine."Document Type", FindSalesHeader."Document Type"::Order);
            FindSalesLine.SETRANGE(FindSalesLine."Document No.", OrderNumber);
            IF FindSalesLine.FINDSET THEN;
            FindSalesLine.DELETEALL;

            // delele temporary sales header
            CLEAR(FindSalesHeader);
            FindSalesHeader.SETRANGE(FindSalesHeader."Document Type", FindSalesHeader."Document Type"::Order);
            FindSalesHeader.SETRANGE(FindSalesHeader."No.", OrderNumber);
            IF FindSalesHeader.FINDSET THEN
                FindSalesHeader.DELETE;
        END;
        //<<DSDK.temporary
    end;

    trigger OnPreReport();
    begin
        //>>DSDK.temporary

        IF PassJobPlanningLine."Job No." <> '' THEN BEGIN
            //// make Sales Header
            OrderNumber := PassJobPlanningLine."Job No.";
            "Sales Header".SETRANGE("Sales Header"."No.", OrderNumber);
            "Sales Header".SETRANGE("Sales Header"."Document Type", "Sales Header"."Document Type"::Order);
            IF PassJob.GET(OrderNumber) THEN;

            //>>DSDK-Copy from odeunit 1002 - CreateSalesHeader
            CLEAR("Sales Header");

            "Sales Header"."Document Type" := "Sales Header"."Document Type"::Order;
            "Sales Header"."No." := OrderNumber;
            "Sales Header"."Posting Date" := PassJob."Creation Date";   //PostingDate;
            "Sales Header".INSERT(TRUE);
            Cust.GET(PassJob."Bill-to Customer No.");
            Cust.TESTFIELD("Bill-to Customer No.", '');
            "Sales Header".VALIDATE("Sell-to Customer No.", PassJob."Bill-to Customer No.");
            IF PassJob."Currency Code" <> '' THEN
                "Sales Header".VALIDATE("Currency Code", PassJob."Currency Code")
            ELSE
                "Sales Header".VALIDATE("Currency Code", PassJob."Invoice Currency Code");

            //"Sales Header"."Our Reference" := PassJob."Our Reference";
            //"Sales Header"."Your Reference" := PassJob."Your Reference";
            //"Sales Header"."External Document No." := PassJob."External Document No.";
            "Sales Header"."Language Code" := PassJob."Language Code";
            //<<DSDK-Copy from odeunit 1002 - CreateSalesHeader

            //<<DSDK-Copy from odeunit 1002 - UpdateSalesHeader
            "Sales Header"."Bill-to Contact No." := PassJob."Bill-to Contact No.";
            "Sales Header"."Bill-to Contact" := PassJob."Bill-to Contact";
            "Sales Header"."Bill-to Name" := PassJob."Bill-to Name";
            "Sales Header"."Bill-to Address" := PassJob."Bill-to Address";
            "Sales Header"."Bill-to Address 2" := PassJob."Bill-to Address 2";
            "Sales Header"."Bill-to City" := PassJob."Bill-to City";
            "Sales Header"."Bill-to Post Code" := PassJob."Bill-to Post Code";

            "Sales Header"."Sell-to Contact No." := PassJob."Bill-to Contact No.";
            "Sales Header"."Sell-to Contact" := PassJob."Bill-to Contact";
            "Sales Header"."Sell-to Customer Name" := PassJob."Bill-to Name";
            "Sales Header"."Sell-to Address" := PassJob."Bill-to Address";
            "Sales Header"."Sell-to Address 2" := PassJob."Bill-to Address 2";
            "Sales Header"."Sell-to City" := PassJob."Bill-to City";
            "Sales Header"."Sell-to Post Code" := PassJob."Bill-to Post Code";
            //"Sales Header"."Ship-to Contact" := PassJob."Ship-to Contact";

            //"Sales Header"."Ship-to Name" := PassJob."Ship-to Name";
            //"Sales Header"."Ship-to Address" := PassJob."Ship-to Address";
            //"Sales Header"."Ship-to Address 2" := PassJob."Ship-to Address 2";
            //"Sales Header"."Ship-to City" := PassJob."Ship-to City";
            //"Sales Header"."Ship-to Post Code" := PassJob."Ship-to Post Code";
            //"Sales Header"."Ship-to Country/Region Code" := PassJob."Ship-to Country/Region Code";

            "Sales Header".MODIFY(TRUE);
            //<<DSDK-Copy from odeunit 1002 - UpdateSalesHeader

            // save language code
            SaveLanguageCode := GLOBALLANGUAGE;
            GLOBALLANGUAGE := Language.GetLanguageIDOrDefault("Sales Header"."Language Code");       //DSDK.45

            IF PassBlanketOrder THEN
                MakeBlanketOrderLines
            ELSE
                MakePlanningOrderLines;

            // return language code
            GLOBALLANGUAGE := SaveLanguageCode;

        END;
        //<<DSDK.temporary
    end;

    var
        Text000: TextConst DAN = 'Sælger', DEU = 'Verkaufer', ENU = 'Sales Person';
        Text001: TextConst DAN = 'I alt %1', DEU = 'Gesamt %1', ENU = 'Total %1';
        Text002: TextConst DAN = 'Total %1', DEU = 'Gesamt %1', ENU = 'Total %1';
        Text003: TextConst DAN = 'KOPI', DEU = 'KOPIE', ENU = 'COPY';
        Text004: TextConst DAN = 'Ordrebekræftelse %1', DEU = 'Auftragsbestätigung %1', ENU = 'Order Confirmation %1';
        PageCaptionCapLbl: TextConst DAN = 'Side', DEU = 'Seite', ENU = 'Page';
        PageCaptionCap: TextConst DAN = '%1 af %2', DEU = '%1 von %2', ENU = '%1 of %2';
        Text006: TextConst DAN = 'Momsgrundlag', DEU = 'MwSt. Grundlage', ENU = 'VAT Base';
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        PrepmtPaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        VATAmountLine: Record "VAT Amount Line" temporary;
        PrepmtVATAmountLine: Record "VAT Amount Line" temporary;
        PrepmtVATAmountLineDeduct: Record "VAT Amount Line" temporary;
        SalesLine: Record "Sales Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        TempPrepmtDimSetEntry: Record "Dimension Set Entry" temporary;
        PrepmtInvBuf: Record "Prepayment Inv. Line Buffer" temporary;
        RespCenter: Record "Responsibility Center";
        //DSDK.45_Language: Record "Language";
        Language: Codeunit "Language";
        CurrExchRate: Record "Currency Exchange Rate";
        AsmHeader: Record "Assembly Header";
        AsmLine: Record "Assembly Line";
        SalesCountPrinted: Codeunit "Sales-Printed";
        FormatAddr: Codeunit "Format Address";
        SegManagement: Codeunit "SegManagement";
        ArchiveManagement: Codeunit "ArchiveManagement";
        SalesPostPrepmt: Codeunit "Sales-Post Prepayments";
        DimMgt: Codeunit "DimensionManagement";
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
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        Text007: TextConst DAN = 'Momsbeløbsspecifikation i ', DEU = 'MwSt. Betrag Specifikation in', ENU = 'VAT Amount Specification in ';
        Text008: TextConst DAN = 'Lokal valuta', DEU = 'Währung', ENU = 'Local Currency';
        Text009: TextConst DAN = 'Valutakurs: %1/%2', DEU = 'Wechselkurs: %1/%2', ENU = 'Exchange rate: %1/%2';
        VALExchRate: Text[50];
        PrepmtVATAmount: Decimal;
        PrepmtVATBaseAmount: Decimal;
        PrepmtTotalAmountInclVAT: Decimal;
        PrepmtLineAmount: Decimal;
        OutputNo: Integer;
        NNCTotalLCY: Decimal;
        NNCTotalExclVAT: Decimal;
        NNCVATAmt: Decimal;
        NNCTotalInclVAT: Decimal;
        NNCPmtDiscOnVAT: Decimal;
        NNCTotalInclVAT2: Decimal;
        NNCVATAmt2: Decimal;
        NNCTotalExclVAT2: Decimal;
        NNCSalesLineLineAmt: Decimal;
        NNCSalesLineInvDiscAmt: Decimal;
        Print: Boolean;
        [InDataSet]
        ArchiveDocumentEnable: Boolean;
        [InDataSet]
        LogInteractionEnable: Boolean;
        DisplayAssemblyInformation: Boolean;
        AsmInfoExistsForLine: Boolean;
        InvDiscAmtCaptionLbl: TextConst DAN = 'Fakturarabatbeløb', DEU = 'Rechnings Skonto Betrag', ENU = 'Invoice Discount Amount';
        VATRegNoCaptionLbl: TextConst DAN = 'SE/CVR-nr.', DEU = 'USt-IdNr.', ENU = 'VAT';
        GiroNoCaptionLbl: TextConst DAN = 'Gironr.', DEU = 'Giro Nr.', ENU = 'Giro No.';
        BankCaptionLbl: TextConst DAN = 'Bank', DEU = 'Bank', ENU = 'Bank';
        AccountNoCaptionLbl: TextConst DAN = 'Kontonr.', DEU = 'Konton Nr.', ENU = 'Account No.';
        ShipmentDateCaptionLbl: TextConst DAN = 'Afsendelsesdato', DEU = 'Versandadatum', ENU = 'Shipment Date';
        OrderNoCaptionLbl: TextConst DAN = 'Ordrenr.', DEU = 'Auftrag Nr.', ENU = 'Order No.';
        HomePageCaptionCap: TextConst DAN = 'Hjemmeside', DEU = 'Web Seite', ENU = 'Home Page';
        EmailCaptionLbl: TextConst DAN = 'E-mail', DEU = 'E-Mail', ENU = 'E-Mail';
        HeaderDimCaptionLbl: TextConst DAN = 'Dimensioner - hoved', DEU = 'Dimensionen - Kopf', ENU = 'Header Dimensions';
        DiscountPercentCaptionLbl: TextConst DAN = 'Rabat%', DEU = 'Rabatt%', ENU = 'Disc.%';
        SubtotalCaptionLbl: TextConst DAN = 'Subtotal', DEU = 'Zwischensumme', ENU = 'Subtotal';
        PaymentDiscountVATCaptionLbl: TextConst DAN = 'Moms ved kontantrabat', ENU = 'Payment Discount on VAT';
        LineDimCaptionLbl: TextConst DAN = 'Linjedimensioner', DEU = 'Pos. Dimensionen', ENU = 'Line Dimensions';
        InvDiscBaseAmtCaptionLbl: TextConst DAN = 'Grundbeløb for fakturarabat', DEU = 'Grund Betrag für Skonto', ENU = 'Invoice Discount Base Amount';
        VATIdentifierCaptionLbl: TextConst DAN = 'Moms-id', DEU = 'MwSt. Code', ENU = 'VAT Identifier';
        ShiptoAddrCaptionLbl: TextConst DAN = 'Leveringsadresse', DEU = 'Lieferaddresse', ENU = 'Ship-to Address';
        DescriptionCaptionLbl: TextConst DAN = 'Beskrivelse', DEU = 'Beschreibung', ENU = 'Description';
        GLAccountNoCaptionLbl: TextConst DAN = 'Finanskontonr.', DEU = 'Sachkonto', ENU = 'G/L Account No.';
        PrepaymentSpecCaptionLbl: TextConst DAN = 'Forudbetalingsspecifikation', DEU = 'Vuraufzahlungsspecifikation', ENU = 'Prepayment Specification';
        PrepaymentVATAmtSpecCapLbl: TextConst DAN = 'Specifikation af momsbeløb til forudbetaling', DEU = 'Specifikation MwSt. Betrag von vorauszahlung', ENU = 'Prepayment VAT Amount Specification';
        PrepmtPmtTermsDescCaptionLbl: TextConst DAN = 'Betalingsbetingelser for forudbetaling', DEU = 'Zahlungsbedingungen von vorauszahlung', ENU = 'Prepmt. Payment Terms';
        PhoneNoCaptionLbl: TextConst DAN = 'Telefon', DEU = 'Telefon', ENU = 'Phone No.';
        AmountCaptionLbl: TextConst DAN = 'Beløb', DEU = 'Betrag', ENU = 'Amount';
        VATPercentageCaptionLbl: TextConst DAN = 'Momspct.', DEU = 'MwSt. %', ENU = 'VAT %';
        VATBaseCaptionLbl: TextConst DAN = 'Momsgrundlag', DEU = 'MwSt. Grundlage', ENU = 'VAT Base';
        VATAmtCaptionLbl: TextConst DAN = '%1% Moms', DEU = '%1% MwSt.', ENU = '%1% VAT';
        VATAmtSpecCaptionLbl: TextConst DAN = 'Momsbeløbspecifikation', DEU = 'MwSt. Betrag Specifikation', ENU = 'VAT Amount Specification';
        LineAmtCaptionLbl: TextConst DAN = 'Linjebeløb', DEU = 'Pos. Betrag', ENU = 'Line Amount';
        TotalCaptionLbl: TextConst DAN = 'I alt', DEU = 'Gesamt', ENU = 'Total';
        UnitPriceCaptionLbl: TextConst DAN = 'Pris', DEU = 'Preis', ENU = 'Price';
        PaymentTermsCaptionLbl: TextConst DAN = 'Betalingsbetingelser', DEU = 'Zahlungsbedingungen', ENU = 'Payment Terms';
        ShipmentMethodCaptionLbl: TextConst DAN = 'Levering', DEU = 'Lieferung', ENU = 'Shipment';
        DocumentDateCaptionLbl: TextConst DAN = 'Bilagsdato', DEU = 'Beleg Datum', ENU = 'Document Date';
        AllowInvDiscCaptionLbl: TextConst DAN = 'Tillad fakturarabat', DEU = 'Skonto erlaubt', ENU = 'Allow Invoice Discount';
        PageCaptionLbl: TextConst DAN = 'Side', DEU = 'Seite', ENU = 'Page';
        BottomLine: array[2] of Text[250];
        TotalExVAT: Decimal;
        TotalVAT: Decimal;
        TotalInclVAT: Decimal;
        PriceCaptionLbl: TextConst DAN = 'Pris', DEU = 'Preis', ENU = 'Price';
        InvToCustLbl: TextConst DAN = 'Kundenr.', DEU = 'Kundennr.', ENU = 'Customer No.';
        HideDiscCaption: Integer;
        CurrencyCode: Text[10];
        DocDateCaptionLbl: TextConst DAN = 'Dato', DEU = 'Datum', ENU = 'Date';
        CurrencyCaptionLbl: TextConst DAN = 'Valuta', DEU = 'Währung', ENU = 'Currency';
        UOMCaptionLbl: TextConst DAN = 'Enhed', DEU = 'Einh.', ENU = 'Unit';
        QtyCaptionLbl: TextConst DAN = 'Antal', DEU = 'Menge', ENU = 'Qty';
        "//DSDK.txt": Integer;
        YourRefCaptionLbl: TextConst DAN = 'Deres ref.', DEU = 'Ihre ref.', ENU = 'Your ref.';
        PaymentCaptionLbl: TextConst DAN = 'Betaling', DEU = 'Zahlung', ENU = 'Payment';
        YourOrderNoCaptionLbl: TextConst DAN = 'Deres ordernr.', DEU = 'Ihre Autragsnr.', ENU = 'Your Order No.';
        "//DSDK.var": Integer;
        VATPercent: Decimal;
        "//DSDK.03": Integer;
        Item: Record "Item";
        "//DSDK.04": Integer;
        PrintPricePer1000Mark: Code[10];
        OurRefCaptionLbl: TextConst DAN = 'Vores ref.', DEU = 'Unsere Ref.', ENU = 'Our Ref.';
        "//DSDK.Temporary": Integer;
        PassJobPlanningLine: Record "Job Planning Line";
        PassJob: Record "Job";
        FindSalesHeader: Record "Sales Header";
        FindSalesLine: Record "Sales Line";
        FindNo: Code[20];
        Cust: Record "Customer";
        OrderNumber: Code[20];
        NextLineNumber: Integer;
        "//DSDK.Tempory.txt": Integer;
        BlanketOrderTxt: TextConst DAN = 'AFKALDSORDRE', ENU = 'BLANKET ORDER';
        LatestCallTxt: TextConst DAN = 'Afkald senest %1', ENU = 'Latest Call %1';
        AlreadyInvoiced: TextConst DAN = 'Allerede leveret', ENU = 'Already Shipped';
        NextPlannedTxt: TextConst DAN = 'Næste planlagte levering: %1', ENU = 'Next Planned Delivery: %1';
        PrintNoTotals: Boolean;
        PassBlanketOrder: Boolean;
        FindJobPlanningLine: Record "Job Planning Line";
        PlannedDeliveryDateTxt: TextConst DAN = 'Planlagt levering: %1', ENU = 'Planned Delivery: %1';
        Resource: Record "Resource";
        GLAccount: Record "G/L Account";
        SaveLanguageCode: Integer;
        "//DSDK.12": Integer;
        PlannedDeliveryDateCaption: TextConst DAN = 'Dato', DEU = 'Datum', ENU = 'Date';
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
        ShowCorrectionLines: Boolean;
        ShowLotSN: Boolean;
        ShowTotal: Boolean;
        ShowGroup: Boolean;
        TotalQty: Decimal;
        ItemTrackingDocMgt: Codeunit "Item Tracking Doc. Management";
        TrackingSpecBuffer: Record "Tracking Specification" temporary;
        ItemTrackingAppendix: Report "Item Tracking Appendix";
        TrackingSpecCount: Integer;

        "//Tracking": Integer;
        SerialNoTxt: TextConst DAN = 'Serienr.: ', DEU = 'Seriennr.: ', ENU = 'Serial No.: ';
        LotNoTxt: TextConst DAN = 'Lotnr.: ', DEU = 'Los-Nr.: ', ENU = 'Lot  No.: ';
        OldRefNo: Integer;
        OldNo: Code[20];

        "//MessageLines": Integer;
        MessageNo: Code[20];
        MessageLanguage: Code[10];
        "//TextLines": Integer;
        TextLine: array[10] of Text[100];
        TextLineIdx: Integer;
        ParamDropWorkDescription: Boolean;
        "//Tracking.org": Integer;
        T_QuantityCaptionLbl: TextConst DAN = 'Antal', DEU = 'Menge', ENU = 'Quantity';
        T_SerialNoCaptionLbl: TextConst DAN = 'Serienr.', DEU = 'Serien-Nr.', ENU = 'Serial No.';
        T_LotNoCaptionLbl: TextConst DAN = 'Lotnr.', DEU = 'Chargennummer', ENU = 'Lot No.';
        T_DescriptionCaptionLbl: TextConst DAN = 'Beskrivelse', DEU = 'Beschreibung', ENU = 'Description';
        T_NoCaptionLbl: TextConst DAN = 'Nummer', DEU = 'Artikel', ENU = 'No.';
        //LanguageCaption
        NoCaptionLbl: TextConst DAN = 'Nummer', DEU = 'Artikel', ENU = 'No.';
        //DSDK.40
        LastLineNo: Integer;
        //DSDK.40.Custom
        FeeIdx: Integer;
        FeeTab: array[10] of Text[50];
        FeeFound: Boolean;
        //DSDK.46.Custom
        SalesLineDate: Text[20];
        //DSDK.SellToAddr
        SellToAddr: array[8] of Text[50];
        InvoiceAddrCaption: TextConst DAN = 'Faktureringsadresse', DEU = 'Rechnungsadresse ', ENU = 'Invoice Address';
        CustomerAddrCaption: TextConst DAN = 'Kundeadresse', DEU = 'Kundenadresse', ENU = 'Customer Address';
        //DSDK.47
        VariantCaption: TextConst DAN = 'Variant', DEU = 'Variante', ENU = 'Variant';


    procedure InitializeRequest(NoOfCopiesFrom: Integer; ShowInternalInfoFrom: Boolean; ArchiveDocumentFrom: Boolean; LogInteractionFrom: Boolean; PrintFrom: Boolean; DisplayAsmInfo: Boolean);
    begin
        NoOfCopies := NoOfCopiesFrom;
        ShowInternalInfo := ShowInternalInfoFrom;
        ArchiveDocument := ArchiveDocumentFrom;
        LogInteraction := LogInteractionFrom;
        Print := PrintFrom;
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

    procedure PassTemporary(var TempJobPlanningLine: Record "Job Planning Line");
    begin
        //>>DSDK.Temporary
        PassJobPlanningLine := TempJobPlanningLine;
        //<<DSDK.Temporary
    end;

    local procedure CreateEmptySalesLine();
    begin
        //DSDK
        // make empty line
        NextLineNumber := 10000;
        CLEAR("Sales Line");
        "Sales Line".SETRANGE("Sales Line"."Document Type", "Sales Line"."Document Type"::Order);
        "Sales Line".SETRANGE("Sales Line"."Document No.", OrderNumber);
        IF "Sales Line".FINDLAST THEN
            NextLineNumber := NextLineNumber + "Sales Line"."Line No.";

        "Sales Line".INIT;
        "Sales Line"."Document Type" := "Sales Line"."Document Type"::Order;
        "Sales Line"."Document No." := OrderNumber;
        "Sales Line"."Line No." := NextLineNumber;
        "Sales Line".INSERT;
    end;

    procedure SetBlanketOrder();
    begin
        //>>DSDK.10
        PassBlanketOrder := TRUE;
        //<<DSDK.10
    end;

    local procedure MakeBlanketOrderLines();
    begin
        //>>DSDK.10
        PrintNoTotals := TRUE;

        IF Item.GET(FindJobPlanningLine."No.") THEN;

        //// 01. Make Sales Line - BLANKET ORDER
        CreateEmptySalesLine;
        "Sales Line".Type := "Sales Line".Type::" ";
        "Sales Line".Description := BlanketOrderTxt;
        "Sales Line".MODIFY;
        //// 02. Make Sales Line
        CreateEmptySalesLine;

        //// 03. Make Sales Line - TOTAL ORDER
        CreateEmptySalesLine;
        "Sales Line".Type := "Sales Line".Type::" ";
        //"Sales Line".Description := STRSUBSTNO(LatestCallTxt, FORMAT(PassJob."Blanket Order Date",0,'<Day,2>/<Month,2>-<Year4>') );
        "Sales Line".MODIFY;
        //// 04. Make Sales Line
        CreateEmptySalesLine;
        "Sales Line".Type := "Sales Line".Type::Item;
        "Sales Line"."No." := PassJobPlanningLine."No.";
        "Sales Line".Description := PassJobPlanningLine.Description;
        "Sales Line"."Description 2" := Item."Description 2";
        "Sales Line".Quantity := PassJobPlanningLine.Quantity - PassJobPlanningLine."Qty. to Transfer to Invoice" - PassJobPlanningLine."Qty. Invoiced";
        "Sales Line"."Unit Price" := PassJobPlanningLine."Unit Price (LCY)";
        //"Sales Line"."Order Ref. No." := PassJobPlanningLine."Order Ref. No.";
        "Sales Line".MODIFY;
        // add Item Extended Text lines
        AddItemExtendedTextLines(PassJobPlanningLine."No.");

        //// 05. Make Sales Line
        CreateEmptySalesLine;

        /*
        //// 06. Make Sales Line - ALREADY INVOICED
        IF PassJobPlanningLine."Qty. Invoiced" <> 0 THEN BEGIN
          CreateEmptySalesLine;
          "Sales Line".Type := "Sales Line".Type::" ";
          "Sales Line".Description := AlreadyInvoiced;
          "Sales Line".MODIFY;
          //// 07. Make Sales Line
          CreateEmptySalesLine;
          "Sales Line".Type := "Sales Line".Type::Item;
          "Sales Line"."No." := PassJobPlanningLine."No.";
          "Sales Line".Description := PassJobPlanningLine.Description;
          "Sales Line".Quantity := PassJobPlanningLine."Qty. Invoiced";
          "Sales Line"."Unit Price" := PassJobPlanningLine."Unit Price (LCY)";
          "Sales Line".MODIFY;
          //// 08. Make Sales Line
          CreateEmptySalesLine;
        END;
        */

        //// 09. Make Sales Line - NEXT PLANNED DELIVERY
        CreateEmptySalesLine;
        "Sales Line".Type := "Sales Line".Type::" ";
        "Sales Line".Description := STRSUBSTNO(NextPlannedTxt, FORMAT(PassJobPlanningLine."Planned Delivery Date", 0, '<Day,2>/<Month,2>-<Year4>'));
        "Sales Line".MODIFY;
        //// 10. Make Sales Line
        CreateEmptySalesLine;
        "Sales Line".Type := "Sales Line".Type::Item;
        "Sales Line"."No." := PassJobPlanningLine."No.";
        "Sales Line".Description := PassJobPlanningLine.Description;
        "Sales Line"."Description 2" := Item."Description 2";
        "Sales Line".Quantity := PassJobPlanningLine."Qty. to Transfer to Invoice";
        "Sales Line"."Unit Price" := PassJobPlanningLine."Unit Price";
        //"Sales Line"."Order Ref. No." := PassJobPlanningLine."Order Ref. No.";
        "Sales Line".MODIFY;
        // add Item Extended Text lines
        AddItemExtendedTextLines(PassJobPlanningLine."No.");
        //<DSDK.10

    end;

    local procedure MakePlanningOrderLines();
    begin
        //>>DSDK.10
        CLEAR(FindJobPlanningLine);
        FindJobPlanningLine.SETRANGE(FindJobPlanningLine."Job No.", PassJobPlanningLine."Job No.");
        FindJobPlanningLine.SETRANGE(FindJobPlanningLine."Line Type", FindJobPlanningLine."Line Type"::Billable, FindJobPlanningLine."Line Type"::"Both Budget and Billable");
        IF FindJobPlanningLine.FINDSET THEN
            REPEAT

                //// A. Make Sales Line
                CreateEmptySalesLine;
                IF (FindJobPlanningLine.Type = FindJobPlanningLine.Type::Item) AND (FindJobPlanningLine."Qty. to Transfer to Invoice" <> 0) THEN BEGIN
                    // ITEM
                    IF FindJobPlanningLine."Planned Delivery Date" <> 0D THEN BEGIN
                        // make planned delivery date line
                        "Sales Line".Type := "Sales Line".Type::" ";
                        "Sales Line".Description := STRSUBSTNO(PlannedDeliveryDateTxt, FORMAT(FindJobPlanningLine."Planned Delivery Date", 0, '<Day,2>/<Month,2>-<Year4>'));
                        "Sales Line".MODIFY;
                        CreateEmptySalesLine;
                    END;

                    IF Item.GET(FindJobPlanningLine."No.") THEN;
                    "Sales Line".Type := "Sales Line".Type::Item;
                    "Sales Line"."No." := FindJobPlanningLine."No.";
                    "Sales Line".Description := FindJobPlanningLine.Description;
                    "Sales Line"."Description 2" := Item."Description 2";
                    "Sales Line".Quantity := FindJobPlanningLine."Qty. to Transfer to Invoice";
                    "Sales Line".VALIDATE("Sales Line"."Unit Price", FindJobPlanningLine."Unit Price");
                    "Sales Line".VALIDATE("Sales Line"."Line Discount %", FindJobPlanningLine."Line Discount %");     // line discount %

                    "Sales Line"."Gen. Bus. Posting Group" := FindJobPlanningLine."Gen. Bus. Posting Group";
                    "Sales Line"."Gen. Prod. Posting Group" := FindJobPlanningLine."Gen. Prod. Posting Group";
                    "Sales Line"."VAT Bus. Posting Group" := "Sales Header"."VAT Bus. Posting Group";
                    "Sales Line"."VAT Prod. Posting Group" := Item."VAT Prod. Posting Group";

                    "Sales Line".VALIDATE("Sales Line"."Gen. Bus. Posting Group", FindJobPlanningLine."Gen. Bus. Posting Group");
                    "Sales Line".VALIDATE("Sales Line"."Gen. Prod. Posting Group", FindJobPlanningLine."Gen. Prod. Posting Group");
                    "Sales Line".VALIDATE("Sales Line"."VAT Bus. Posting Group", "Sales Header"."VAT Bus. Posting Group");
                    "Sales Line".VALIDATE("Sales Line"."VAT Prod. Posting Group", Item."VAT Prod. Posting Group");

                    //"Sales Line"."Order Ref. No." := FindJobPlanningLine."Order Ref. No.";
                    "Sales Line".MODIFY;

                    // add Item Extended Text lines
                    AddItemExtendedTextLines(FindJobPlanningLine."No.");

                    // make blank line
                    CreateEmptySalesLine;
                END;

                IF (FindJobPlanningLine.Type = FindJobPlanningLine.Type::Resource) AND (FindJobPlanningLine."Qty. to Transfer to Invoice" <> 0) THEN BEGIN
                    // RESOURCE
                    IF Resource.GET(FindJobPlanningLine."No.") THEN;
                    "Sales Line".Type := "Sales Line".Type::Resource;
                    "Sales Line"."No." := FindJobPlanningLine."No.";
                    "Sales Line".Description := FindJobPlanningLine.Description;
                    "Sales Line".Quantity := FindJobPlanningLine."Qty. to Transfer to Invoice";
                    "Sales Line".VALIDATE("Sales Line"."Unit Price", FindJobPlanningLine."Unit Price");

                    "Sales Line"."Gen. Bus. Posting Group" := FindJobPlanningLine."Gen. Bus. Posting Group";
                    "Sales Line"."Gen. Prod. Posting Group" := FindJobPlanningLine."Gen. Prod. Posting Group";
                    "Sales Line"."VAT Bus. Posting Group" := "Sales Header"."VAT Bus. Posting Group";
                    "Sales Line"."VAT Prod. Posting Group" := Resource."VAT Prod. Posting Group";

                    "Sales Line".VALIDATE("Sales Line"."Gen. Bus. Posting Group", FindJobPlanningLine."Gen. Bus. Posting Group");
                    "Sales Line".VALIDATE("Sales Line"."Gen. Prod. Posting Group", FindJobPlanningLine."Gen. Prod. Posting Group");
                    "Sales Line".VALIDATE("Sales Line"."VAT Bus. Posting Group", "Sales Header"."VAT Bus. Posting Group");
                    "Sales Line".VALIDATE("Sales Line"."VAT Prod. Posting Group", Resource."VAT Prod. Posting Group");

                    "Sales Line".MODIFY;
                END;

                IF (FindJobPlanningLine.Type = FindJobPlanningLine.Type::"G/L Account") AND (FindJobPlanningLine."Qty. to Transfer to Invoice" <> 0) THEN BEGIN
                    // GL ACCOUNT
                    IF GLAccount.GET(FindJobPlanningLine."No.") THEN;
                    "Sales Line".Type := "Sales Line".Type::"G/L Account";
                    "Sales Line"."No." := FindJobPlanningLine."No.";
                    "Sales Line".Description := FindJobPlanningLine.Description;
                    "Sales Line".Quantity := FindJobPlanningLine."Qty. to Transfer to Invoice";
                    "Sales Line".VALIDATE("Sales Line"."Unit Price", FindJobPlanningLine."Unit Price");

                    "Sales Line"."Gen. Bus. Posting Group" := GLAccount."Gen. Bus. Posting Group";
                    "Sales Line"."Gen. Prod. Posting Group" := GLAccount."Gen. Prod. Posting Group";
                    "Sales Line"."VAT Bus. Posting Group" := GLAccount."VAT Bus. Posting Group";
                    "Sales Line"."VAT Prod. Posting Group" := GLAccount."VAT Prod. Posting Group";

                    "Sales Line".VALIDATE("Sales Line"."Gen. Bus. Posting Group", GLAccount."Gen. Bus. Posting Group");
                    "Sales Line".VALIDATE("Sales Line"."Gen. Prod. Posting Group", GLAccount."Gen. Prod. Posting Group");
                    "Sales Line".VALIDATE("Sales Line"."VAT Bus. Posting Group", GLAccount."VAT Bus. Posting Group");
                    "Sales Line".VALIDATE("Sales Line"."VAT Prod. Posting Group", GLAccount."VAT Prod. Posting Group");

                    "Sales Line".MODIFY;
                END;

                IF FindJobPlanningLine.Type = FindJobPlanningLine.Type::Text THEN BEGIN
                    "Sales Line".Description := FindJobPlanningLine.Description;
                    "Sales Line".MODIFY;
                END;

            UNTIL FindJobPlanningLine.NEXT = 0;
        //<<DSDK.10
    end;

    local procedure "//DSDK.11"();
    begin
    end;

    local procedure AddItemExtendedTextLines(var ItemNo: Code[20]);
    var
        ExtendedTextLine: Record "Extended Text Line";
    begin
        //>>DSDK.11
        // language dependend
        CLEAR(ExtendedTextLine);
        ExtendedTextLine.SETRANGE(ExtendedTextLine."Table Name", ExtendedTextLine."Table Name"::Item);
        ExtendedTextLine.SETRANGE(ExtendedTextLine."No.", ItemNo);
        ExtendedTextLine.SETRANGE(ExtendedTextLine."Language Code", "Sales Header"."Language Code");
        IF ExtendedTextLine.FINDSET THEN
            REPEAT
                CreateEmptySalesLine;
                "Sales Line".Description := ExtendedTextLine.Text;
                "Sales Line".MODIFY;
            UNTIL ExtendedTextLine.NEXT = 0;

        // generel all languages
        CLEAR(ExtendedTextLine);
        ExtendedTextLine.SETRANGE(ExtendedTextLine."Table Name", ExtendedTextLine."Table Name"::Item);
        ExtendedTextLine.SETRANGE(ExtendedTextLine."No.", ItemNo);
        ExtendedTextLine.SETRANGE(ExtendedTextLine."Language Code", '');
        IF ExtendedTextLine.FINDSET THEN
            REPEAT
                CreateEmptySalesLine;
                "Sales Line".Description := ExtendedTextLine.Text;
                "Sales Line".MODIFY;
            UNTIL ExtendedTextLine.NEXT = 0;
        //<<DSDK.11
    end;
}

