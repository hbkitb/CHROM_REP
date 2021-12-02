report 50020 "Sales - Invoice DSDK2018 ERPG"
{
    // version DSDK.std.2018,DSDK.11

    // DSDK - Datasign.dk - Standard report std.2
    // 
    // DSDK.00 LV 2016.01.29 - Ny standard (Alflow) - changed texts and layout
    // DSDK.01 LV 2017.05.10 - 2 lines bottom
    // DSDK.02 LV 2017.05.24 - "Picture 2", "EUR IBAN", "Delivery Condition txt", "EU Tax txt"
    // DSDK.06 LV 2017.09.13 - print "Our Ref", "Your Ref", "Your Order No."
    // DSDK.08 LV 2017.10.09 - print Description 2+3
    // 
    // DSDK.00 LV 2018.02.12 - ERPgruppen.dk - 2018 Standard report
    // DSDK.09 LV 2018.03.06 - print "Net Amount" & "Taxable Amount"
    // DSDK.10 LV 2018.10.12 - Print "Work description" - standard feature from R1306
    // DSDK.11 LV 2018.12.27 - clean up and remove other customers changes
    // 
    // DSDK.12 LV 2019.01.28 - Work Description in Header, added Shipment Date
    // DSDK.20 LV 2019.02.06 - Report Params
    // DSDK.21 LV 2019.03.12 - same address - then drop Shipment Address
    // DSDK.22 LV 2019.03.21 - Tracking
    // DSDK.23 LV 2019.03.29 - Report Params - Pass3
    // DSDK.24 LV 2019.04.08 - Report Params - TestLines   
    // DSDK.25 LV 2019.04.17 - Report Encoding
    // DSDK.26 LV 2019.04.30 - Proforma Invoice
    // DSDK.27 LV 2019.05.27 - "Drop Work Description", "Show Country of Origin", Show on same line"
    // DSDK.28 LV 2019.05.29 - full layout
    // DSDK.30 LV 2019.06.19 - Tracking with detailed print
    // DSDK.31 LV 2019.07.08 - German texts
    // DSDK.32 LV 2019.07.10 - PaymentTermsDesc2 only in danish (dansk rentelov)

    // DSDK.33 LV 2019.07.12 - CustomerAdjustnent.01: Print Item."Desription 3"
    // DSDK.34 LV 2019.07.17 - Currency dependent Bank Information
    // DSDK.35 LV 2019.07.18 - Translate Country Name
    // DSDK.36 LV 2019.08.14 - Body captions on after page 1
    // DSDK.37 LV 2019.08.30 - Tracking with detailed print - Show/hide Item No
    // DSDK.39 LV 2019.09.06 - calc total Gross Weight  + Net Weight
    // DSDK.40 LV 2019.09.09 - move sales invoice lines to Temp
    // DSDK.41 LV 2019.10.07 - Report Params - Pass8 - "Show Customer Item No."
    // DSDK.44 LV 2019.10.30 - Report Params - Pass9 - "Show Weight"
    // DSDK.45 LV 2019.11.04 - version 15
    // DSDK.45 LV 2019.12.19 - added fields for print "Sell-to"

    //      ØRBÆK 
    // DSDK.Custom.02 2019.09.10  Accumulate Fee lines

    //      CABOLA
    // DSDK.Custom.03 2019.10.08 Picture 2

    //      AUSTROTERM - MIA CASA
    // DSDK.Custom.05 2019.12.19 - Show always all addresses

    //      NAVADAN
    // DSDK.Custom.06 2020.01.23 - extra Payment Info (auto. via ParamCompanyName)

    // DSDK.46 LV 2020.01.14 - FIK75
    // DSDK.47 LV 2020.01.16 - Variant
    // DSDK.48 LV 2020.01.21 - FIK73
    // DSDK.49 LV 2020.01.23 - print via PaymentInfoLines

    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/50020 Sales - Invoice DSDK2018.rdlc';

    CaptionML = DAN = 'Salg - faktura',
                ENU = 'Sales - Invoice';
    Permissions = TableData "Sales Shipment Buffer" = rimd;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeadingML = DAN = 'Bogført salgsfaktura',
                                     ENU = 'Posted Sales Invoice';
            column(No_SalesInvHdr; "No.")
            {
            }
            column(InvDiscountAmtCaption; InvDiscountAmtCaptionLbl)
            {
            }
            column(DocumentDateCaption; DocumentDateCaptionLbl)
            {
            }
            column(PaymentTermsDescCaption; PaymentTermsDescCaptionLbl)
            {
            }
            column(ShptMethodDescCaption; ShptMethodDescCaptionLbl)
            {
            }
            column(VATPercentageCaption; VATPercentageCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(VATBaseCaption; VATBaseCaptionLbl)
            {
            }
            column(VATAmtCaption; STRSUBSTNO(VATAmtCaptionLbl, VATPercent))
            {
            }
            column(VATIdentifierCaption; VATIdentifierCaptionLbl)
            {
            }
            column(HomePageCaption; HomePageCaptionLbl)
            {
            }
            column(EMailCaption; EMailCaptionLbl)
            {
            }
            column(CurrencyCodeCaption; CurrencyCodeLbl)
            {
            }
            column(TotalAmountInclVAT; TotalAmountInclVAT)
            {
                AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                AutoFormatType = 1;
            }
            column(BottomLine1; BottomLine[1])
            {
            }
            column(BottomLine2; BottomLine[2])
            {
            }
            column(LineDiscCaption; LineDiscCaptionLbl)
            {
            }
            column(ShowLineDiscCaption; ShowLineDiscCaption)
            {
            }
            column(ShowDeliveries; ShowDeliveries)
            {
            }
            column(InvTotalExclVAT; InvTotalExclVAT)
            {
            }
            column(InvTotalVAT; InvTotalVAT)
            {
            }
            column(InvTotalInclVAT; InvTotalInclVAT)
            {
            }
            column(TotalExclVATText; TotalExclVATText)
            {
            }
            column(VATAmtLineVATAmtText; VATAmountLine.VATAmountText)
            {
            }
            column(CustomSalesInvBilltoCustNoCaption; CustomSalesInvBilltoCustNoCaptionLbl)
            {
            }
            column(YourReference_SalesInvHdr; "Sales Invoice Header"."Your Reference")
            {
            }
            column(SelltoCustNo_SalesInvHdr; "Sales Invoice Header"."Sell-to Customer No.")
            {
            }
            column(OurRefCaption; OurRefCaptionLbl)
            {
            }
            column(OurRef; "External Document No.")
            {
            }
            column(YourRefCaption; YourRefCaptionLbl)
            {
            }
            column(YourRef; "Sales Invoice Header"."Your Reference")
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
            column(DropBankInfoAtFIK; ParamDropBankInfoAtFIK)
            {
            }

            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = CONST(1));
                    column(HomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(EMail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoPicture; CompanyInfo1.Picture)
                    {
                    }
                    column(DocumentCaptionCopyText; ReportCaption)
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
                    column(CompanyInfoBankBranchNo; CompanyInfo."Bank Branch No.")
                    {
                    }
                    column(CompanyInfoBankName; CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(CompanyInfoIBAN; CompanyInfo.IBAN)
                    {
                    }
                    column(CompanyInfoSwiftCpn; SWIFTCaption)
                    {
                    }
                    column(CompanyInfoSWIFT; CompanyInfo."SWIFT Code")
                    {
                    }
                    column(PostingDate_SalesInvHdr; FORMAT("Sales Invoice Header"."Posting Date", 0, '<Day,2>/<Month,2>-<Year4>'))
                    {
                    }
                    column(VATNoText; CompanyInfoVATRegNoCptnLbl)
                    {
                    }
                    column(VATRegNo_SalesInvHdr; "Sales Invoice Header"."VAT Registration No.")
                    {
                    }
                    column(DueDate_SalesInvHdr; FORMAT("Sales Invoice Header"."Due Date", 0, '<Day,2>/<Month,2>-<Year4>'))
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
                    column(OrderNoText; OrderNoCaptionLbl)
                    {
                    }
                    column(OrderNo; "Sales Invoice Header"."Order No.")
                    {
                    }
                    column(YourOrderNoCaption; YourOrderNoCaptionLbl)
                    {
                    }
                    column(ExternalDocumentNo; "Sales Invoice Header"."External Document No.")
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
                    column(DocDate_SalesInvHdr; FORMAT("Sales Invoice Header"."Document Date", 0, '<Day,2>/<Month,2>-<Year4>'))
                    {
                    }
                    column(PricesInclVAT_SalesInvHdr; "Sales Invoice Header"."Prices Including VAT")
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(PricesInclVATYesNo_SalesInvHdr; FORMAT("Sales Invoice Header"."Prices Including VAT"))
                    {
                    }
                    column(PageCaptionLbl; PageCaptionCapLbl)
                    {
                    }
                    column(PageCaption; PageCaptionCap)
                    {
                    }
                    column(SelltoContactEMail_SalesInvHdr; 'Sell-to Contact E-Mail')
                    {
                    }
                    column(SelltoContact_SalesInvHdr; "Sales Invoice Header"."Sell-to Contact")
                    {
                    }
                    column(AccountCode_SalesInvHdr; 'Account Code')
                    {
                    }
                    column(EANNo_SalesInvHdr; 'EAN No.')
                    {
                    }
                    column(EANText; EANText)
                    {
                    }
                    column(IntAccountCodeText; IntAccountCodeText)
                    {
                    }
                    column(PaymentInfo; PaymentInfo)
                    {
                    }
                    column(PaymentTermsDesc; PaymentTerms.Description + DueCaption)
                    {
                    }
                    column(PaymentTermsDesc2; PaymentTermsDesc2Info)
                    {
                    }
                    column(ShipmentMethodDesc; ShipmentMethod.Description)
                    {
                    }
                    column(CompanyInfoPhoneNoCaption; CompanyInfoPhoneNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoVATRegNoCptn; CompanyInfoVATRegNoCptnLbl)
                    {
                    }
                    column(SelltoContactPhoneNo_SalesInvHdr; 'Sell-to Contact Phone No.')
                    {
                    }
                    column(CompanyInfoGiroNoCaption; CompanyInfoGiroNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoBankNameCptn; CompanyInfoBankNameCptnLbl)
                    {
                    }
                    column(CompanyInfoBankAccNoCptn; CompanyInfoBankAccNoCptnLbl)
                    {
                    }
                    column(CompanyInfoIBANCptn; IBANCaption)
                    {
                    }
                    column(SalesInvDueDateCaption; SalesInvDueDateCaptionLbl)
                    {
                    }
                    column(InvNoCaption; InvNoCaptionLbl)
                    {
                    }
                    column(SalesInvPostingDateCptn; SalesInvPostingDateCptnLbl)
                    {
                    }
                    column(BilltoCustNo_SalesInvHdrCaption; "Sales Invoice Header".FIELDCAPTION("Bill-to Customer No."))
                    {
                    }
                    column(PricesInclVAT_SalesInvHdrCaption; "Sales Invoice Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    column(DocumentReferenceTxt; DocumentReferenceTxt)
                    {
                    }
                    column(DocumentReference; DocumentReference)
                    {
                    }
                    column(CurrencyCodeText; CurrencyCodeText)
                    {
                    }
                    column(CustomSalesInvBillToCustomer; "Sales Invoice Header"."Bill-to Customer No.")
                    {
                    }
                    column(CustomSalesInvSalesPersonCaption; CustomSalesRepLbl)
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
                    column(ShiptoAddrCaption; ShiptoAddrCaptionLbl)
                    {
                    }
                    column(TotalInclVATText_SalesInvLine; TotalInclVATText)
                    {
                    }
                    column(TotalInclVATText; TotalInclVATText)
                    {
                    }
                    column(EURIBANCaption; EURIBANCaption)
                    {
                    }
                    column(EUTaxTxt; EUTax)
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
                    //DSDK.49
                    column(PaymentInfoLines1; PaymentInfoLines[1])
                    {
                    }
                    column(PaymentInfoLines2; PaymentInfoLines[2])
                    {
                    }
                    column(PaymentInfoLines3; PaymentInfoLines[3])
                    {
                    }
                    column(PaymentInfoLines4; PaymentInfoLines[4])
                    {
                    }
                    column(PaymentTermLines1; PaymentTermLines[1])
                    {
                    }
                    column(PaymentTermLines2; PaymentTermLines[2])
                    {
                    }

                    dataitem(DimensionLoop1; Integer)
                    {
                        DataItemLinkReference = "Sales Invoice Header";
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
                    dataitem("Sales Invoice Line"; "Sales Invoice Line")
                    {
                        UseTemporary = true;
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(LineAmt_SalesInvLine; "Line Amount")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(LineAmt_SalesInvLine_InclVAT; "Amount Including VAT")
                        {
                        }
                        column(Desc_SalesInvLine; Description)
                        {
                        }
                        column(Desc2_SalesInvLine; "Description 2")
                        {
                        }
                        column(No_SalesInvLine; "No.")
                        {
                        }
                        column(Qty_SalesInvLine; Quantity)
                        {
                        }
                        column(UOM_SalesInvLine; "Unit of Measure")
                        {
                        }
                        column(UnitPrice_SalesInvLine; "Unit Price")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 2;
                        }
                        column(Discount_SalesInvLine; "Line Discount %")
                        {
                        }
                        column(VATIdentifier_SalesInvLine; "VAT Identifier")
                        {
                        }
                        column(PostedShipmentDate; FORMAT(PostedShipmentDate))
                        {
                        }
                        column(Type_SalesInvLine; FORMAT(Type))
                        {
                        }
                        column(InvDiscLineAmt_SalesInvLine; -"Inv. Discount Amount")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalSubTotal; TotalSubTotal)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInvDiscAmount; TotalInvDiscAmount)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalText; TotalText)
                        {
                        }
                        column(Amount_SalesInvLine; Amount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalAmount; TotalAmount)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(Amount_AmtInclVAT; "Amount Including VAT" - Amount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AmtInclVAT_SalesInvLine; "Amount Including VAT")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(InvoiceTotalAmountInclVAT; TotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmountVAT; TotalAmountVAT)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(LineAmtAfterInvDiscAmt; -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT"))
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseDisc_SalesInvHdr; "Sales Invoice Header"."VAT Base Discount %")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalPaymentDiscOnVAT; TotalPaymentDiscOnVAT)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmtText_SalesInvLine; VATAmountLine.VATAmountText)
                        {
                        }
                        column(DocNo_SalesInvLine; "Document No.")
                        {
                        }
                        column(LineNo_SalesInvLine; "Line No.")
                        {
                        }
                        column(UnitPriceCaption; UnitPriceCaptionLbl)
                        {
                        }
                        column(SalesInvLineDiscCaption; SalesInvLineDiscCaptionLbl)
                        {
                        }
                        column(AmountCaption; AmountCaptionLbl)
                        {
                        }
                        column(PostedShipmentDateCaption; PostedShipmentDateCaptionLbl)
                        {
                        }
                        column(SubtotalCaption; SubtotalCaptionLbl)
                        {
                        }
                        column(LineAmtAfterInvDiscCptn; LineAmtAfterInvDiscCptnLbl)
                        {
                        }
                        column(Desc_SalesInvLineCaption; DescriptionCaptionLbl)
                        {
                        }
                        column(No_SalesInvLineCaption; NoCaptionLbl)
                        {
                        }
                        column(Qty_SalesInvLineCaption; QtyCaptionLbl)
                        {
                        }
                        column(UOM_SalesInvLineCaption; UOMCaptionLbl)
                        {
                        }
                        column(VATIdentifier_SalesInvLineCaption; FIELDCAPTION("VAT Identifier"))
                        {
                        }
                        column(CustomSalesInvLineNoCaption; CustomSalesInvLineNoCaptionLbl)
                        {
                        }
                        column(LineAmtExclVATCaption; LineAmtExclVATCaptionLbl)
                        {
                        }
                        column(LineAmtCaption; LineAmtCaptionLbl)
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
                        column(ShipmentDate_SalesInvLine; FORMAT("Shipment Date", 0, '<Day,2>/<Month,2>-<Year4>'))
                        {
                        }
                        column(VariantCaption; VariantCaption)
                        { }
                        column(VariantCode; "Variant Code")
                        { }

                        dataitem("Value Entry"; "Value Entry")
                        {
                            DataItemLink = "Document No." = FIELD("Document No."),
                                           "Document Line No." = FIELD("Line No.");
                            DataItemTableView = WHERE("Item Ledger Entry Type" = CONST(Sale));
                            column(LotNoCaption_OLD; ItemLedgerEntry.FIELDCAPTION("Lot No."))
                            {
                            }
                            column(LotNo_OLD; ItemLedgerEntry."Lot No.")
                            {
                            }
                            column(ExpirationDateCaption_OLD; ItemLedgerEntry.FIELDCAPTION("Expiration Date"))
                            {
                            }
                            column(ExpirationDate_OLD; ItemLedgerEntry."Expiration Date")
                            {
                            }
                            column(Serial_OLD; ItemLedgerEntry."Serial No.")
                            {
                            }
                            column(SerialNoTxt_OLD; SerialNoTxt)
                            {
                            }
                            column(LotNoTxt_OLD; LotNoTxt)
                            {
                            }
                            column(SerialLotNoTxt_OLD; SerialLotNoTxt)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                //>>DSDK.22.Tracking
                                /*{
                                ---> NOT USED
                                IF NOT ItemLedgerEntry.GET("Value Entry"."Item Ledger Entry No.") THEN CLEAR(ItemLedgerEntry);

                                IF NOT ShowLotSN THEN
                                    CurrReport.SKIP;
                                IF ItemLedgerEntry."Item No." = '' THEN
                                    CurrReport.SKIP;
                                IF (ItemLedgerEntry."Lot No." = '') AND (ItemLedgerEntry."Serial No." = '') THEN
                                    CurrReport.SKIP;

                                SerialLotNoTxt := '';
                                IF ItemLedgerEntry."Serial No." <> '' THEN
                                    SerialLotNoTxt := SerialNoTxt + ItemLedgerEntry."Serial No.";
                                IF ItemLedgerEntry."Lot No." <> '' THEN BEGIN
                                    IF SerialLotNoTxt = '' THEN
                                        SerialLotNoTxt := LotNoTxt + ItemLedgerEntry."Lot No."
                                    ELSE
                                        SerialLotNoTxt += ' / ' + LotNoTxt + ItemLedgerEntry."Lot No.";
                                END;
                                
                                <--- NOT USED
                                }*/
                                //<<DSDK.22.Tracking                         
                            end;

                            trigger OnPreDataItem()
                            begin
                                //>>DSDK.22.tracking
                                ItemCounter := 0;
                                //<<DSDK.22.tracking
                            end;
                        }
                        dataitem(AttachedLines; "Sales Invoice Line")
                        {
                            DataItemLink = "Document No." = FIELD("Document No."),
                                           "Attached to Line No." = FIELD("Line No.");
                            DataItemTableView = SORTING("Document No.", "Line No.");
                            column(AttachedToLineNo; AttachedLines."Attached to Line No.")
                            {
                            }
                            column(AttachedDocNo; AttachedLines."Document No.")
                            {
                            }
                            column(AttachedLineNo; AttachedLines."Line No.")
                            {
                            }
                            column(AttachedType; AttachedLines.Type)
                            {
                            }
                            column(AttachedNo; AttachedLines."No.")
                            {
                            }
                            column(AttachedDescription; AttachedLines.Description)
                            {
                            }
                            column(AttachedDescription2; AttachedLines."Description 2")
                            {
                            }

                            trigger OnPreDataItem();
                            begin
                                CurrReport.BREAK;
                            end;
                        }
                        dataitem("Sales Shipment Buffer"; Integer)
                        {
                            DataItemTableView = SORTING(Number);
                            column(SalesShptBufferPostDate; FORMAT(SalesShipmentBuffer."Posting Date"))
                            {
                            }
                            column(SalesShptBufferQty; SalesShipmentBuffer.Quantity)
                            {
                                DecimalPlaces = 0 : 5;
                            }
                            column(ShipmentCaption; ShipmentCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN
                                    SalesShipmentBuffer.FIND('-')
                                ELSE
                                    SalesShipmentBuffer.NEXT;
                            end;

                            trigger OnPreDataItem();
                            begin
                                SalesShipmentBuffer.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
                                SalesShipmentBuffer.SETRANGE("Line No.", "Sales Invoice Line"."Line No.");

                                SETRANGE(Number, 1, SalesShipmentBuffer.COUNT);
                            end;
                        }
                        dataitem(DimensionLoop2; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = FILTER(1 ..));
                            column(DimText_DimLoop; DimText)
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

                                DimSetEntry2.SETRANGE("Dimension Set ID", "Sales Invoice Line"."Dimension Set ID");
                            end;
                        }
                        dataitem(AsmLoop; Integer)
                        {
                            DataItemTableView = SORTING(Number);
                            column(TempPostedAsmLineNo; BlanksForIndent + TempPostedAsmLine."No.")
                            {
                            }
                            column(TempPostedAsmLineQuantity; TempPostedAsmLine.Quantity)
                            {
                                DecimalPlaces = 0 : 5;
                            }
                            column(TempPostedAsmLineDesc; BlanksForIndent + TempPostedAsmLine.Description)
                            {
                            }
                            column(TempPostAsmLineVartCode; BlanksForIndent + TempPostedAsmLine."Variant Code")
                            {
                            }
                            column(TempPostedAsmLineUOM; GetUOMText(TempPostedAsmLine."Unit of Measure Code"))
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN
                                    TempPostedAsmLine.FINDSET
                                ELSE
                                    TempPostedAsmLine.NEXT;
                            end;

                            trigger OnPreDataItem();
                            begin
                                CLEAR(TempPostedAsmLine);
                                IF NOT DisplayAssemblyInformation THEN
                                    CurrReport.BREAK;
                                CollectAsmInformation;
                                CLEAR(TempPostedAsmLine);
                                SETRANGE(Number, 1, TempPostedAsmLine.COUNT);
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            PostedShipmentDate := 0D;
                            IF Quantity <> 0 THEN
                                PostedShipmentDate := FindPostedShipmentDate;

                            IF (Type = Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                                "No." := '';

                            VATAmountLine.INIT;
                            VATAmountLine."VAT Identifier" := "VAT Identifier";
                            VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                            VATAmountLine."Tax Group Code" := "Tax Group Code";
                            VATAmountLine."VAT %" := "VAT %";
                            VATAmountLine."VAT Base" := Amount;
                            VATAmountLine."Amount Including VAT" := "Amount Including VAT";
                            VATAmountLine."Line Amount" := "Line Amount";
                            IF "Allow Invoice Disc." THEN
                                VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                            VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                            VATAmountLine."VAT Clause Code" := "VAT Clause Code";
                            VATAmountLine.InsertLine;

                            TotalSubTotal += "Line Amount";
                            TotalInvDiscAmount -= "Inv. Discount Amount";
                            TotalAmount += Amount;
                            TotalAmountVAT += "Amount Including VAT" - Amount;
                            TotalAmountInclVAT += "Amount Including VAT";
                            TotalPaymentDiscOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT");

                            //>>DSDK.24.TextLines
                            CLEAR(TextLine);
                            TextLineIdx := 0;

                            IF Type = Type::Item THEN BEGIN

                                //>>DSDK.CustomerAdjustnent.01
                                // Item."Description 3"
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'ItemText3';
                                ParamValue[ParamIdx] := FORMAT("No.");
                                ReportSelections.GetParam_SalesInvoice("Sales Invoice Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;
                                //<<DSDK.CustomerAdjustnent.01

                                //>>DSDK.41
                                // CustomerItemNo - Pass8
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'CustomerItemNo';
                                ParamValue[ParamIdx] := FORMAT("No.");
                                ReportSelections.GetParam_SalesInvoice("Sales Invoice Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;
                                //<<DSDK.41

                                // VendorItemNo
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'VendorItemNo';
                                ParamValue[ParamIdx] := FORMAT("No.");
                                ReportSelections.GetParam_SalesInvoice("Sales Invoice Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;

                                // TariffNo
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'TariffNo';
                                ParamValue[ParamIdx] := FORMAT("No.");
                                ReportSelections.GetParam_SalesInvoice("Sales Invoice Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;

                                //>>DSDK.27
                                // CountryOfOrigin
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'CountryOfOrigin';
                                ParamValue[ParamIdx] := FORMAT("No.");
                                ReportSelections.GetParam_SalesInvoice("Sales Invoice Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;
                                //<<DSDK.27                                

                                // Barcode
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'Barcode';
                                ParamValue[ParamIdx] := FORMAT("No.");
                                ReportSelections.GetParam_SalesInvoice("Sales Invoice Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;

                            END;
                            //<<DSDK.24.TextLines

                        end;

                        trigger OnPostDataItem()
                        begin
                            //>>DSDK.Tracking.LARS
                            IF ShowLotSN THEN BEGIN
                                ItemTrackingDocMgt.SetRetrieveAsmItemTracking(TRUE);
                                TrackingSpecCount :=
                                  ItemTrackingDocMgt.RetrieveDocumentItemTracking(TrackingSpecBuffer,
                                    "Sales Invoice Header"."No.", DATABASE::"Sales Invoice Header", 0);
                                ItemTrackingDocMgt.SetRetrieveAsmItemTracking(FALSE);
                            END;
                            //<<DSDK.Tracking.LARS
                        end;

                        trigger OnPreDataItem();
                        begin
                            VATAmountLine.DELETEALL;
                            SalesShipmentBuffer.RESET;
                            SalesShipmentBuffer.DELETEALL;
                            FirstValueEntryNo := 0;
                            MoreLines := FIND('+');
                            WHILE MoreLines AND (Description = '') AND ("No." = '') AND (Quantity = 0) AND (Amount = 0) DO
                                MoreLines := NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                                CurrReport.BREAK;
                            SETRANGE("Line No.", 0, "Line No.");
                            //CurrReport.CREATETOTALS("Line Amount",Amount,"Amount Including VAT","Inv. Discount Amount");
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

                        trigger OnAfterGetRecord();
                        begin
                            //<<DSDK.10
                            IF NOT TempBlobWorkDescription.MoreTextLines THEN
                                CurrReport.BREAK;
                            WorkDescriptionLine := TempBlobWorkDescription.ReadTextLine;
                            //<<DSDK.10
                        end;

                        trigger OnPostDataItem();
                        begin
                            //>>DSDK.10
                            CLEAR(TempBlobWorkDescription);
                            //<<DSDK.10
                        end;

                        trigger OnPreDataItem();
                        begin
                            //>>DSDK.10
                            IF NOT ShowWorkDescription THEN
                                CurrReport.BREAK;
                            TempBlobWorkDescription.Blob := "Sales Invoice Header"."Work Description";

                            // find number of lines
                            MaxWorkDescription := 0;
                            WHILE TempBlobWorkDescription.MoreTextLines DO BEGIN
                                WorkDescriptionLine := TempBlobWorkDescription.ReadTextLine;
                                MaxWorkDescription += 1;
                            END;
                            WorkDescriptionLine := '';
                            CLEAR(TempBlobWorkDescription);
                            TempBlobWorkDescription.Blob := "Sales Invoice Header"."Work Description";

                            //>>DSDK.25.StartEncoding
                            IF CompanyInfo."Report Encoding" = CompanyInfo."Report Encoding"::Windows THEN
                                TempBlobWorkDescription.StartReadingTextLines(TEXTENCODING::Windows);
                            IF CompanyInfo."Report Encoding" = CompanyInfo."Report Encoding"::"UTF-8" THEN
                                TempBlobWorkDescription.StartReadingTextLines(TEXTENCODING::UTF8);
                            //<<DSDK.25.StartEncoding
                            //<<DSDK.10
                        end;
                    }
                    dataitem(Total2; Integer)
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
                        end;

                        trigger OnPreDataItem()
                        begin
                            IF TrackingSpecCount = 0 THEN
                                CurrReport.BREAK;
                            SETRANGE(Number, 1, TrackingSpecCount);
                            TrackingSpecBuffer.SETCURRENTKEY("Source ID", "Source Type", "Source Subtype", "Source Batch Name",
                              "Source Prod. Order Line", "Source Ref. No.");
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
                            MessageNo := '50020';
                            MessageLanguage := "Sales Invoice Header"."Language Code";

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
                            //<<DSDK.Message

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
                                    MessageLines.Text := '          ' + BothWeightCaption + ' ' + FORMAT(TotalGrossWeight, 0, '<Precision,2:2><Standard Format,2><Comma,,>') + ' Kg'
                                                                                          + ' / ' + FORMAT(TotalNetWeight, 0, '<Precision,2:2><Standard Format,2><Comma,,>') + ' Kg';
                                END;

                                MessageLines.INSERT;
                            END;
                            //<<DSDK.44
                        end;
                    }
                    dataitem(VATCounter; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmtLineVATBase; VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmt; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineLineAmt; VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscAmt; VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATPer; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATAmtSpecificationCptn; VATAmtSpecificationCptnLbl)
                        {
                        }
                        column(InvDiscBaseAmtCaption; InvDiscBaseAmtCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem();
                        begin
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            //CurrReport.CREATETOTALS(
                            //VATAmountLine."Line Amount",VATAmountLine."Inv. Disc. Base Amount",
                            //VATAmountLine."Invoice Discount Amount",VATAmountLine."VAT Base",VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(VATClauseEntryCounter; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATClauseVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATClauseCode; VATAmountLine."VAT Clause Code")
                        {
                        }
                        column(VATClauseDescription; VATClause.Description)
                        {
                        }
                        column(VATClauseDescription2; VATClause."Description 2")
                        {
                        }
                        column(VATClauseAmount; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATClausesCaption; VATClausesCap)
                        {
                        }
                        column(VATClauseVATIdentifierCaption; VATIdentifierCaptionLbl)
                        {
                        }
                        column(VATClauseVATAmtCaption; VATAmtCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            IF NOT VATClause.GET(VATAmountLine."VAT Clause Code") THEN
                                CurrReport.SKIP;
                            VATClause.TranslateDescription("Sales Invoice Header"."Language Code");
                        end;

                        trigger OnPreDataItem();
                        begin
                            CLEAR(VATClause);
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            ///CurrReport.CREATETOTALS(VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(VatCounterLCY; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALSpecLCYHeader; VALSpecLCYHeader)
                        {
                        }
                        column(VALExchRate; VALExchRate)
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
                        column(VATPer_VATCounterLCY; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATIdentifier_VATCounterLCY; VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            VALVATBaseLCY :=
                              VATAmountLine.GetBaseLCY(
                                "Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code",
                                "Sales Invoice Header"."Currency Factor");
                            VALVATAmountLCY :=
                              VATAmountLine.GetAmountLCY(
                                "Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code",
                                "Sales Invoice Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF (NOT GLSetup."Print VAT specification in LCY") OR
                               ("Sales Invoice Header"."Currency Code" = '')
                            THEN
                                CurrReport.BREAK;

                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            ///CurrReport.CREATETOTALS(VALVATBaseLCY,VALVATAmountLCY);

                            IF GLSetup."LCY Code" = '' THEN
                                VALSpecLCYHeader := Text007 + Text008
                            ELSE
                                VALSpecLCYHeader := Text007 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code", 1);
                            CalculatedExchRate := ROUND(1 / "Sales Invoice Header"."Currency Factor" * CurrExchRate."Exchange Rate Amount", 0.000001);
                            VALExchRate := STRSUBSTNO(Text009, CalculatedExchRate, CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                        column(SelltoCustNo_SalesInvHdrCaption; "Sales Invoice Header".FIELDCAPTION("Sell-to Customer No."))
                        {
                        }

                        trigger OnPreDataItem();
                        begin
                            IF NOT ShowShippingAddr THEN
                                CurrReport.BREAK;
                        end;
                    }
                    trigger OnPreDataItem()
                    begin
                        //>>DSDK.22.Tracking
                        IF ShowLotSN THEN BEGIN
                            TrackingSpecCount := 0;
                            OldRefNo := 0;
                            ShowGroup := FALSE;
                        END;
                        //<<DSDK.22.Tracking
                    end;
                }

                trigger OnAfterGetRecord();
                begin
                    IF Number > 1 THEN BEGIN
                        CopyText := Text003;
                        OutputNo += 1;
                    END;
                    /////CurrReport.PAGENO := 1;

                    TotalSubTotal := 0;
                    TotalInvDiscAmount := 0;
                    TotalAmount := 0;
                    TotalAmountVAT := 0;
                    TotalAmountInclVAT := 0;
                    TotalPaymentDiscOnVAT := 0;
                end;

                trigger OnPostDataItem();
                begin
                    IF NOT CurrReport.PREVIEW THEN
                        SalesInvCountPrinted.RUN("Sales Invoice Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(NoOfCopies) + Cust."Invoice Copies" + 1;
                    IF NoOfLoops <= 0 THEN
                        NoOfLoops := 1;
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            var
                SL: Record "Sales Invoice Line";
            begin
                CurrReport.LANGUAGE := Language.GetLanguageIDOrDefault("Language Code");       //DSDK.45

                //>>DSDK.Params
                ReportSelections.GetData_SalesInvoice("Sales Invoice Header", ParamDropDeliveryAddress, ParamDropItemNoColumn, ParamDropBankInfoAtFIK, ParamDropWorkDescription, ParamShowWeight);  //DSDK.27,pass9
                FOR ParamIdx := 1 TO 15 DO BEGIN
                    ReportSelections.GetParam_SalesInvoice("Sales Invoice Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                END;
                //<<DSDK.Params

                InvTotalExclVAT := 0;
                InvTotalVAT := 0;
                VATPercent := 0;
                InvTotalTaxable := 0;   //DSDK.09
                CLEAR(SL);
                SL.SETRANGE(SL."Document No.", "Sales Invoice Header"."No.");
                IF SL.FINDSET THEN BEGIN
                    REPEAT
                        InvTotalExclVAT += SL.Amount;
                        InvTotalVAT += SL."Amount Including VAT" - SL.Amount;
                        IF SL."VAT %" > VATPercent THEN VATPercent := SL."VAT %";
                        //>>DSDK.09
                        IF SL."VAT %" <> 0 THEN
                            InvTotalTaxable += SL.Amount;
                    //<<DSDK.09
                    UNTIL SL.NEXT = 0;
                END;
                InvTotalInclVAT := InvTotalExclVAT + InvTotalVAT;

                CLEAR(SalesInvLine);
                SalesInvLine.SETRANGE("Document No.", "Sales Invoice Header"."No.");
                SalesInvLine.SETRANGE("Line Discount %", 0.01, 9999);
                ShowLineDiscCaption := SalesInvLine.FINDFIRST;
                CurrReport.LANGUAGE := Language.GetLanguageIDOrDefault("Language Code");       //DSDK.45

                IF RespCenter.GET("Responsibility Center") THEN BEGIN
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                END ELSE
                    FormatAddr.Company(CompanyAddr, CompanyInfo);

                //>>DSDK.bund
                CLEAR(BottomLine);
                CompanyInfo.GetBottom(BottomLine[1], BottomLine[2], "Language Code");
                //<<DSDK.bund

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");

                //IF "Order No." = '' THEN
                //  OrderNoText := ''
                //ELSE
                OrderNoText := FIELDCAPTION("Order No.");
                IF "Salesperson Code" = '' THEN BEGIN
                    SalesPurchPerson.INIT;
                    SalesPersonText := Text000; // std
                END ELSE BEGIN
                    SalesPurchPerson.GET("Salesperson Code");
                    SalesPersonText := Text000;
                END;
                //IF CompanyInfo.IBAN = '' THEN
                //    IBANCaption := ''
                //ELSE
                //    IBANCaption := CompanyInfoIBANCptnLbl;
                //IF "Your Reference" = '' THEN
                //  ReferenceText := ''
                //ELSE
                ReferenceText := FIELDCAPTION("Your Reference");
                //IF "VAT Registration No." = '' THEN
                //  VATNoText := ''
                //ELSE
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
                FormatAddr.SalesInvBillTo(CustAddr, "Sales Invoice Header");
                //>>DSDK.35
                CompanyInfo.TranslateCountryName(CustAddr, "Sales Invoice Header"."Bill-to Country/Region Code", "Sales Invoice Header"."Language Code");
                //<<DSDK.35                
                IF NOT Cust.GET("Bill-to Customer No.") THEN
                    CLEAR(Cust);

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

                EANText := 'EAN No.';

                IF Cust."VAT Registration No." = '' THEN
                    CustVatNoText := ''
                ELSE
                    CustVatNoText := Cust.FIELDCAPTION("VAT Registration No.");

                //>>DSDK.Param
                IF NOT ParamDropDeliveryAddress THEN BEGIN
                    //DSDK.Param
                    FormatAddr.SalesInvShipTo(ShipToAddr, CustAddr, "Sales Invoice Header");
                    //>>DSDK.35.1
                    CompanyInfo.TranslateCountryName(ShipToAddr, "Sales Invoice Header"."Ship-to Country/Region Code", "Sales Invoice Header"."Language Code");
                    //<<DSDK.35.1                    
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

                IF LogInteraction THEN
                    IF NOT CurrReport.PREVIEW THEN BEGIN
                        IF "Bill-to Contact No." <> '' THEN
                            SegManagement.LogDocument(
                              4, "No.", 0, 0, DATABASE::Contact, "Bill-to Contact No.", "Salesperson Code",
                              "Campaign No.", "Posting Description", '')
                        ELSE
                            SegManagement.LogDocument(
                              4, "No.", 0, 0, DATABASE::Customer, "Bill-to Customer No.", "Salesperson Code",
                              "Campaign No.", "Posting Description", '');
                    END;

                DocumentReference := '';
                DocumentReferenceTxt := '';
                //>>DSDK.FIK
                //DocumentReference := "Sales Invoice Header".GetFIK71String;
                DocumentReference := CompanyInfo.GetFIK71String("Sales Invoice Header"."No.");
                //<<DSDK.FIK

                //>>DSDK.FIK73
                IF ("Payment Method Code" = 'FIK73') OR ("Payment Method Code" = 'FIK 73') then
                    DocumentReference := CompanyInfo.GetFIK73String("Sales Invoice Header"."No.");
                //<<DSDK.FIK73

                //>>DSDK.FIK75
                IF ("Payment Method Code" = 'FIK75') OR ("Payment Method Code" = 'FIK 75') then
                    DocumentReference := CompanyInfo.GetFIK75String("Sales Invoice Header"."No.");
                //<<DSDK.FIK75

                IF DocumentReference <> '' THEN
                    DocumentReferenceTxt := DocumentReferenceCaptionbl;

                //>>DSDK.NotFIK.extra
                IF DocumentReference = '' THEN begin
                    DocumentReferenceTxt := STRSUBSTNO(PayInvoiceNoCaption, "Sales Invoice Header"."No.");
                    ParamDropBankInfoAtFIK := false;
                end;
                //<<DSDK.NotFIK.extra

                //>>DSDK.02
                EUTax := '';
                IF "Sales Invoice Header"."VAT Bus. Posting Group" = 'EU' THEN
                    EUTax := EUTaxTxt;
                //<<DSDK.02

                //>>DSDK.10.WorkDescription
                CALCFIELDS("Work Description");
                ShowWorkDescription := "Work Description".HASVALUE;
                IF ParamDropWorkDescription THEN    //DSDK.27
                    ShowWorkDescription := false;
                //<<DSDK.10.WorkDescription

                //>>DSDK.ProformaInvoice
                IF ProformaInvoice THEN
                    ReportCaption := UPPERCASE(STRSUBSTNO(ProformaCaption, CopyText))
                ELSE
                    ReportCaption := UPPERCASE(STRSUBSTNO(DocumentCaption, CopyText));
                //<<DSDK.ProformaInvoice

                //>>DSDK.32
                PaymentTermsDesc2Info := PaymentTermsDesc2;
                IF ("Language Code" <> '') AND ("Language Code" <> 'DAN') THEN
                    PaymentTermsDesc2Info := '';
                //<<DSDK.32

                //>>DSDK.34.Currency
                IF ("Sales Invoice Header"."Currency Code" <> '') AND ("Sales Invoice Header"."Currency Code" <> 'DKK') THEN BEGIN
                    CLEAR(BankAccount);
                    BankAccount.SETRANGE("Currency Code", "Sales Invoice Header"."Currency Code");
                    BankAccount.SETRANGE("Account used on Report Package", TRUE);
                    IF BankAccount.FINDSET THEN BEGIN
                        CompanyInfo."Bank Name" := BankAccount."Name";
                        CompanyInfo."Bank Branch No." := BankAccount."Bank Branch No.";
                        CompanyInfo."Bank Account No." := BankAccount."Bank Account No.";
                        CompanyInfo.IBAN := BankAccount.IBAN;
                        CompanyInfo."SWIFT Code" := BankAccount."SWIFT Code";
                    END;
                END;
                //<<DSDK.34.Currency

                //>>DSDK.49
                Clear(PaymentTermLines);
                Clear(PaymentInfoLines);
                TabIdx := 0;

                //>>DSDK.Custom.06.Navadan
                IF ParamCompanyName = 'NAVADAN' then begin
                    PaymentTermLines[1] := PaymentTermLines1_Navadan;
                    PaymentTermLines[2] := PaymentTermLines2_Navadan;
                    TabIdx += 1;
                    PaymentInfoLines[TabIdx] := BeneficiaryCaption + ' ' + CompanyInfo."Name";
                end;
                //<<DSDK.Custom.06.Navadan

                TabIdx += 1;
                PaymentInfoLines[TabIdx] := CompanyInfo."Bank Name" + ' ' + CompanyInfo."Bank Branch No." + ' - ' + CompanyInfo."Bank Account No.";
                IF CompanyInfo.IBAN <> '' then begin
                    TabIdx += 1;
                    PaymentInfoLines[TabIdx] := IBANCaption + ' ' + CompanyInfo.IBAN;
                end;
                IF CompanyInfo."SWIFT Code" <> '' then begin
                    TabIdx += 1;
                    PaymentInfoLines[TabIdx] := SWIFTCaption + ' ' + CompanyInfo."SWIFT Code";
                end;
                //<<DSDK.49

                //>>DSDK.39
                TotalGrossWeight := 0;
                TotalNetWeight := 0;
                CLEAR(SalesInvoiceLine);
                SalesInvoiceLine.SETRANGE("Document No.", "Sales Invoice Header"."No.");
                SalesInvoiceLine.SETRANGE(Type, SalesInvoiceLine.Type::Item);
                IF SalesInvoiceLine.FINDSET THEN
                    REPEAT
                        IF Item.GET(SalesInvoiceLine."No.") THEN BEGIN
                            SalesInvoiceLine."Gross Weight" := Item."Gross Weight";
                            TotalGrossWeight += SalesInvoiceLine.Quantity * SalesInvoiceLine."Gross Weight";
                            SalesInvoiceLine."Net Weight" := Item."Net Weight";
                            TotalNetWeight += SalesInvoiceLine.Quantity * SalesInvoiceLine."Net Weight";
                        END;
                    UNTIL SalesInvoiceLine.NEXT = 0;
                //<<DSDK.39

                //>>DSDK.40.Standard
                CLEAR(FindSalesInvoiceLine);
                FindSalesInvoiceLine.SETCURRENTKEY("Document No.", "Line No.");
                FindSalesInvoiceLine.SETRANGE("Document No.", "Sales Invoice Header"."No.");
                if FindSalesInvoiceLine.FindLast then
                    LastLineNo := FindSalesInvoiceLine."Line No.";

                // move all lines to temp
                CLEAR(FindSalesInvoiceLine);
                FindSalesInvoiceLine.SETCURRENTKEY("Document No.", "Line No.");
                FindSalesInvoiceLine.SETRANGE("Document No.", "Sales Invoice Header"."No.");
                IF FindSalesInvoiceLine.FINDSET THEN
                    REPEAT
                        "Sales Invoice Line" := FindSalesInvoiceLine;
                        "Sales Invoice Line".INSERT;
                    UNTIL FindSalesInvoiceLine.NEXT = 0;
                //<<DSDK.40.Standard

                //>>DSDK.40.Custom.02.Ørbæk
                /*
                CLEAR(FindSalesInvoiceLine);
                FindSalesInvoiceLine.SETCURRENTKEY("Document No.","Line No.");
                FindSalesInvoiceLine.SETRANGE("Document No.", "Sales Invoice Header"."No.");
                if FindSalesInvoiceLine.FindLast then
                    LastLineNo := FindSalesInvoiceLine."Line No.";

                // move all lines to temp
                CLEAR(FindSalesInvoiceLine);
                FindSalesInvoiceLine.SETCURRENTKEY("Document No.","Line No.");
                FindSalesInvoiceLine.SETRANGE("Document No.", "Sales Invoice Header"."No.");
                IF FindSalesInvoiceLine.FINDSET THEN
                    REPEAT
                        FeeFound := false;
                        IF (FindSalesInvoiceLine."Fee Line" = true) AND (FindSalesInvoiceLine.Type = FindSalesInvoiceLine.Type::"G/L Account") then begin 
                                // acc all fee lines
                            For FeeIdx := 1 to 10 do begin

                                IF FeeFound = false then begin

                                    IF FeeTab[FeeIdx] = '' then begin
                                        // create fee line for accumulation
                                        "Sales Invoice Line" := FindSalesInvoiceLine;
                                        "Sales Invoice Line"."Line No." := LastLineNo + FeeIdx;
                                        "Sales Invoice Line".Insert;
                                        FeeTab[FeeIdx] := FindSalesInvoiceLine.Description;
                                        FeeFound := true;
                                    end else begin
                                        IF FeeTab[FeeIdx] = FindSalesInvoiceLine.Description then begin
                                            // acc this line
                                            Clear("Sales Invoice Line");
                                            "Sales Invoice Line".SetRange("Line No.", LastLineNo + FeeIdx);
                                            "Sales Invoice Line".LockTable;
                                            IF "Sales Invoice Line".FindSet then begin
                                                "Sales Invoice Line".Quantity += FindSalesInvoiceLine.Quantity;
                                                "Sales Invoice Line"."Line Amount" += FindSalesInvoiceLine."Line Amount";
                                                "Sales Invoice Line".Amount += FindSalesInvoiceLine.Amount;
                                                "Sales Invoice Line"."Amount Including VAT" += FindSalesInvoiceLine."Amount Including VAT";
                                                "Sales Invoice Line"."Line Discount Amount" += FindSalesInvoiceLine."Line Discount Amount";
                                                "Sales Invoice Line".Modify;
                                            end;
                                            FeeFound := true;
                                        end;
                                    end;
                                end;
                            end;

                        end else begin
                            // transfer NOT fee lines direct
                            "Sales Invoice Line" := FindSalesInvoiceLine;
                            "Sales Invoice Line".INSERT;
                        end;
                    UNTIL FindSalesInvoiceLine.NEXT = 0;
                    */
                //<<DSDK.40.Custom.02.Ørbæk

                //>>DSDK.45
                FormatAddr.SalesInvSellTo(SellToAddr, "Sales Invoice Header");
                CompanyInfo.TranslateCountryName(SellToAddr, "Sales Invoice Header"."Sell-to Country/Region Code", "Sales Invoice Header"."Language Code");
                //<<DSDK.45

            end;
        }
    }

    requestpage
    {
        DataCaptionExpression = SetDataCaptionExpr;
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
                    field(DisplayAsmInformation; DisplayAssemblyInformation)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Vis montagekomponenter',
                                    ENU = 'Show Assembly Components';
                    }
                    field(ShowDeliveries; ShowDeliveries)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Vis leverancer',
                                    ENU = 'Show deliveries';
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
            InitLogInteraction;
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
        CompanyInfo.VerifyAndSetPaymentInfo;
        CompanyInfo.CALCFIELDS(Picture);

        //>>DSDK.02
        //CompanyInfo.CALCFIELDS("Picture 2");
        CompanyInfo1.GET;
        CompanyInfo1.CALCFIELDS(Picture);
        //<<DSDK.02

        //>>DSDK.Custom.03.Cabola
        /*
        CompanyInfo2.GET;
        CompanyInfo2.CALCFIELDS("Picture Bottom");
        CompanyInfo1.Picture := CompanyInfo2."Picture Bottom";
        */
        //<<DSDK.Custom.03.Cabola

        //>>DSDK.49
        CompanyInfo.GetCompanyName(ParamCompanyName);
        //<<DSDK.49
    end;

    trigger OnPreReport();
    begin
        IF NOT CurrReport.USEREQUESTPAGE THEN
            InitLogInteraction;
    end;

    var
        Text000: TextConst DAN = 'Sælger', DEU = 'Verkaufer', ENU = 'Sales Person';//
        Text001: TextConst DAN = 'I alt %1', DEU = 'Gesamt %1', ENU = 'Total %1';
        Text002: TextConst DAN = 'Total %1', DEU = 'Gesamt %1', ENU = 'Total %1';
        Text003: TextConst DAN = 'KOPI', DEU = 'KOPIE', ENU = 'COPY';
        Text004: TextConst DAN = 'Faktura %1', DEU = 'Rechnung %1', ENU = 'Invoice %1';
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
        Cust: Record "Customer";
        VATAmountLine: Record "VAT Amount Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        RespCenter: Record "Responsibility Center";
        //DSDK.45_Language: Record "Language";
        Language: Codeunit "Language";
        CurrExchRate: Record "Currency Exchange Rate";
        TempPostedAsmLine: Record "Posted Assembly Line" temporary;
        VATClause: Record "VAT Clause";
        SalesInvCountPrinted: Codeunit "Sales Inv.-Printed";
        FormatAddr: Codeunit "Format Address";
        SegManagement: Codeunit "SegManagement";
        SalesShipmentBuffer: Record "Sales Shipment Buffer" temporary;
        PostedShipmentDate: Date;
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        OrderNoText: Text[80];
        SalesPersonText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        CurrencyCodeText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        i: Integer;
        NextEntryNo: Integer;
        FirstValueEntryNo: Integer;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        LogInteraction: Boolean;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        Text007: TextConst DAN = 'Momsbeløbsspecifikation i ', DEU = 'MwSt. Betrag Specifikation in', ENU = 'VAT Amount Specification in ';
        Text008: TextConst DAN = 'Lokal valuta', ENU = 'Local Currency';
        VALExchRate: Text[50];
        Text009: TextConst DAN = 'Valutakurs: %1/%2', DEU = 'Wechselkurs: %1/%2', ENU = 'Exchange rate: %1/%2';
        CalculatedExchRate: Decimal;
        Text010: TextConst DAN = 'Salg - forudbetalingsfaktura %1', DEU = 'Vergauf - Vorauszahlungsrechnung %1', ENU = 'Sales - Prepayment Invoice %1';
        OutputNo: Integer;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalAmountVAT: Decimal;
        TotalInvDiscAmount: Decimal;
        TotalPaymentDiscOnVAT: Decimal;
        EANText: Text[30];
        IntAccountCodeText: Text[30];
        CustVatNoText: Text[30];
        [InDataSet]
        LogInteractionEnable: Boolean;
        DisplayAssemblyInformation: Boolean;
        CompanyInfoPhoneNoCaptionLbl: TextConst DAN = 'Telefon', DEU = 'Telefon', ENU = 'Phone No.';
        CompanyInfoVATRegNoCptnLbl: TextConst DAN = 'SE/CVR-nr.', DEU = 'USt-IdNr.', ENU = 'VAT';
        CompanyInfoGiroNoCaptionLbl: TextConst DAN = 'Gironr.', DEU = 'Giro Nr.', ENU = 'Giro No.';
        CompanyInfoBankNameCptnLbl: TextConst DAN = 'Bank', DEU = 'Bank', ENU = 'Bank';
        CompanyInfoBankAccNoCptnLbl: TextConst DAN = 'Kontonr.', DEU = 'Konto Nr.', ENU = 'Account No.';
        IBANCaption: TextConst DAN = 'IBAN:', DEU = 'IBAN:', ENU = 'IBAN:';
        SWIFTCaption: TextConst DAN = 'SWIFT:', DEU = 'SWIFT:', ENU = 'SWIFT:';
        SalesInvDueDateCaptionLbl: TextConst DAN = 'Forfald', DEU = 'Fälligkeit', ENU = 'Due Date';
        InvNoCaptionLbl: TextConst DAN = 'Nummer', DEU = 'Nummer', ENU = 'Number';
        SalesInvPostingDateCptnLbl: TextConst DAN = 'Dato', DEU = 'Datum', ENU = 'Date';
        HeaderDimCaptionLbl: TextConst DAN = 'Dimensioner - hoved', DEU = 'Dimensionen - Kopf', ENU = 'Header Dimensions';
        UnitPriceCaptionLbl: TextConst DAN = 'Pris', DEU = 'Preis', ENU = 'Price';
        SalesInvLineDiscCaptionLbl: TextConst DAN = 'Rabat%', DEU = 'Rabatt%', ENU = 'Disc.%';
        AmountCaptionLbl: TextConst DAN = 'Totalbeløb', DEU = 'Gesamtbetrag', ENU = 'Total Amount';
        VATClausesCap: TextConst DAN = 'Momsklausul', DEU = 'Steuerklausel', ENU = 'VAT Clause';
        PostedShipmentDateCaptionLbl: TextConst DAN = 'Bogført leverancedato', DEU = 'Gebuchter Liefertermin', ENU = 'Posted Shipment Date';
        SubtotalCaptionLbl: TextConst DAN = 'Subtotal', DEU = 'Zwischensumme', ENU = 'Subtotal';
        LineAmtAfterInvDiscCptnLbl: TextConst DAN = 'Moms ved kontantrabat', ENU = 'Payment Discount on VAT';
        ShipmentCaptionLbl: TextConst DAN = 'Levering', DEU = 'Lieferung', ENU = 'Shipment';
        LineDimCaptionLbl: TextConst DAN = 'Linjedimensioner', DEU = 'Pos. Dimensionen', ENU = 'Line Dimensions';
        VATAmtSpecificationCptnLbl: TextConst DAN = 'Momsbeløbspecifikation', DEU = 'MwSt. Betrag Specifikation', ENU = 'VAT Amount Specification';
        InvDiscBaseAmtCaptionLbl: TextConst DAN = 'Grundbeløb for fakturarabat', DEU = 'Grundbetrag für Skonto', ENU = 'Invoice Discount Base Amount';
        LineAmtCaptionLbl: TextConst DAN = 'Beløb', DEU = 'Betrag', ENU = 'Amount';
        LineAmtExclVATCaptionLbl: TextConst DAN = 'Beløb ekskl. moms', DEU = 'Betrag ekskl. MwSt.', ENU = 'Amount excl. VAT';
        ShiptoAddrCaptionLbl: TextConst DAN = 'Leveringsadresse', DEU = 'Lieferadresse', ENU = 'Ship-to Address';
        InvDiscountAmtCaptionLbl: TextConst DAN = 'Fakturarabatbeløb', DEU = 'Skonto Betrag', ENU = 'Invoice Discount Amount';
        DocumentDateCaptionLbl: TextConst DAN = 'Bilagsdato', DEU = 'Beleg Datum', ENU = 'Document Date';
        PaymentInfo: TextConst DAN = 'Betalingsoplysninger', DEU = 'Zahlungsinformation', ENU = 'Payment Information';
        PaymentTermsDesc2: Label 'Efter forfald tilskrives rente efter rentelovens § 5.';
        PaymentTermsDescCaptionLbl: TextConst DAN = 'Betalingsbetingelser', DEU = 'Zahlungsbedingungen', ENU = 'Payment Terms';
        ShptMethodDescCaptionLbl: TextConst DAN = 'Levering', DEU = 'Lieferung', ENU = 'Shipment';
        VATPercentageCaptionLbl: TextConst DAN = 'Momspct.', DEU = 'MwSt. %', ENU = 'VAT %';
        TotalCaptionLbl: TextConst DAN = 'I alt', DEU = 'Gesamt', ENU = 'Total';
        VATBaseCaptionLbl: TextConst DAN = 'Momsgrundlag', DEU = 'MwSt. Grundlage', ENU = 'VAT Base';
        VATAmtCaptionLbl: TextConst DAN = '%1% Moms', DEU = '%1% MwSt.', ENU = '%1% VAT';
        VATIdentifierCaptionLbl: TextConst DAN = 'Moms-id', DEU = 'MwSt. Code', ENU = 'VAT Identifier';
        HomePageCaptionLbl: TextConst DAN = 'Hjemmeside', DEU = 'Web Seite', ENU = 'Home Page';
        EMailCaptionLbl: TextConst DAN = 'E-mail', DEU = 'E-Mail', ENU = 'E-Mail';
        DocumentReferenceCaptionbl: TextConst Comment = 'Translate to "Hvis din bank understøtter FIK (fælles indbetalingkort), så benyt denne information:"', DAN = 'FIK:', ENU = 'If your bank supports FIK (Danish bank standard), then use the following information:';
        DocumentReferenceTxt: Text;
        DocumentReference: Text;
        CurrencyCodeLbl: TextConst DAN = 'Valuta', DEU = 'Währung', ENU = 'Currency';
        CustomSalesInvLineNoCaptionLbl: TextConst DAN = 'Forløb', DEU = 'Verlauf', ENU = 'Course';
        Custom_LineAmt_SalesInvLine_InclVAT: Decimal;
        CustomSalesInvBilltoCustNoCaptionLbl: TextConst DAN = 'Kundenr.', DEU = 'Kunden Nr.', ENU = 'Customer No.';
        BottomLine: array[2] of Text[250];
        ShowLineDiscCaption: Boolean;
        SalesInvLine: Record "Sales Invoice Line";
        CustomSalesRepLbl: TextConst DAN = 'Sælger', DEU = 'Verkaufer', ENU = 'Sales Person';
        YourRefCaptionLbl: TextConst DAN = 'Deres ref.', DEU = 'Ihere Ref.', ENU = 'Your Ref.';
        LineDiscCaptionLbl: TextConst DAN = 'Rabat%', DEU = 'Rabatt%', ENU = 'Disc.%';
        ShowDeliveries: Boolean;
        InvTotalExclVAT: Decimal;
        InvTotalVAT: Decimal;
        InvTotalInclVAT: Decimal;
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        VATPercent: Decimal;
        OrderNoCaptionLbl: TextConst DAN = 'Vores ordrenr.', DEU = 'Unser Auftragsnr.', ENU = 'Our Order No.';
        YourOrderNoCaptionLbl: TextConst DAN = 'Deres ordrenr.', DEU = 'Ihre Autragsnr.', ENU = 'Your Order No.';
        UOMCaptionLbl: TextConst DAN = 'Enhed', DEU = 'Einh.', ENU = 'Unit';
        QtyCaptionLbl: TextConst DAN = 'Antal', DEU = 'Menge', ENU = 'Qty';
        EURIBANCaption: TextConst DAN = 'EUR IBAN', DEU = 'EUR IBAN', ENU = 'EUR IBAN';
        EUTaxTxt: TextConst DAN = 'Momsfritaget', DEU = 'Ohne Mwst', ENU = 'Free of VAT';
        "//DSDK.Setiket.var": Integer;
        EUTax: Text[30];
        "//DSDK.03.txt": Integer;
        "//DSDK.03": Integer;
        Item: Record "Item";
        "//DSDK.04": Integer;
        PrintPricePer1000Mark: Code[10];
        OurRefCaptionLbl: TextConst DAN = 'Vores ref.', DEU = 'Unsere Ref.', ENU = 'Our Ref.';
        OrderRefNoCaption: TextConst DAN = 'Ordre ref.:', DEU = 'Auftrags Ref.:', ENU = 'Order ref.:';
        "//DSDK.07": Integer;
        OrderNo: Code[20];
        "//DSDK.Taxable": Integer;
        InvTotalTaxable: Decimal;
        "//DSDK.Taxable.txt": Integer;
        NettoCaptionLbl: TextConst DAN = 'Nettobeløb', DEU = 'Nettobetrag', ENU = 'Net Amount';
        "//DSDK.10.WorkDescription": Integer;
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
        ParamDropBankInfoAtFIK: Boolean;
        "//DSDK.NotFIK": Integer;
        PayInvoiceNoCaption: TextConst DAN = 'Fakturanr. %1 bedes anført ved bankoverførsel', DEU = 'Bitte geben Sie Rechnung Nr. %1 bei Banküberweisung an', ENU = 'Please state invoice no. %1 by bank transfer';
        DueCaption: TextConst DAN = ' - forfald ', DEU = ' - fälligkeit ', ENU = ' - due ';
        //DSDK.Tracking_OLD
        SerialLotNoTx_OLDt: Text;
        ShowLotSN_OLD: Boolean;
        SerialNoTxt: TextConst DAN = 'Serienr.: ', DEU = 'Seriennr.: ', ENU = 'Serial No.: ';
        LotNoTxt: TextConst DAN = 'Lotnr.: ', DEU = 'Los-Nr.: ', ENU = 'Lot  No.: ';
        //Param.Pass2
        ParamShowTariffNo: Boolean;
        ParamShowVendorItemNo: Boolean;
        ParamShowBarcode: Boolean;
        ParamShowWeight: Option No,"Only Gross","Only Net",Both;
        "//MessageLines": Integer;
        MessageNo: Code[20];
        MessageLanguage: Code[10];
        "//TextLines": Integer;
        TextLine: array[10] of Text[100];
        TextLineIdx: Integer;
        "//DSDK.ProformaInvoice": Integer;
        ProformaInvoice: Boolean;
        ReportCaption: Text;
        "//DSDK.txt.ProformaInvoice": Integer;
        ProformaCaption: TextConst DAN = 'Proformafaktura %1', DEU = 'Proforma Rechnung %1', ENU = 'Proforma Invoice %1';
        ParamDropWorkDescription: Boolean;
        "//DSDK.Tracking": Integer;
        SerialLotNoTxt: Text[50];
        ShowCorrectionLines: Boolean;
        ShowLotSN: Boolean;
        ShowTotal: Boolean;
        ShowGroup: Boolean;
        TotalQty: Decimal;
        TrackingSpecBuffer: Record "Tracking Specification" temporary;
        TrackingSpecCount: Integer;
        OldRefNo: Integer;
        OldNo: Code[20];
        ItemTrackingAppendix: Report "Item Tracking Appendix";
        ItemTrackingDocMgt: Codeunit "Item Tracking Doc. Management";

        "//Tracking.org": Integer;
        T_QuantityCaptionLbl: TextConst DAN = 'Antal', DEU = 'Menge', ENU = 'Quantity';
        T_SerialNoCaptionLbl: TextConst DAN = 'Serienr.', DEU = 'Serien-Nr.', ENU = 'Serial No.';
        T_LotNoCaptionLbl: TextConst DAN = 'Lotnr.', DEU = 'Chargennummer', ENU = 'Lot No.';
        T_DescriptionCaptionLbl: TextConst DAN = 'Beskrivelse', DEU = 'Beschreibung', ENU = 'Description';
        T_NoCaptionLbl: TextConst DAN = 'Nummer', DEU = 'Artikel', ENU = 'No.';

        ItemCounter: Integer;
        //LanguageCaption
        NoCaptionLbl: TextConst DAN = 'Nummer', DEU = 'Artikel', ENU = 'No.';
        DescriptionCaptionLbl: TextConst DAN = 'Beskrivelse', DEU = 'Beschreibung', ENU = 'Description';
        PaymentTermsDesc2Info: Text;
        //DSDK.34.Currency
        BankAccount: Record "Bank Account";
        //DSDK.39"
        TotalGrossWeight: Decimal;
        TotalNetWeight: Decimal;
        SalesInvoiceLine: Record "Sales Invoice Line";
        ExtendedTextLine: Record "Extended Text Line";
        //DSDK.39.txt"
        GrossWeightCaption: TextConst DAN = 'Bruttovægt:', DEU = 'Bruttogewicht:', ENU = 'Gross Weight:';
        NetWeightCaption: TextConst DAN = 'Nettovægt:', DEU = 'Nettogewicht:', ENU = 'Net Weight:';
        BothWeightCaption: TextConst DAN = 'Brutto / nettovægt:', DEU = 'Brutto / Nettogewicht:', ENU = 'Gross / Net Weight:';
        //DSDK.40
        FindSalesInvoiceLine: Record "Sales Invoice Line";
        LastLineNo: Integer;
        //DSDK.40.Custom
        FeeIdx: Integer;
        FeeTab: array[10] of Text[50];
        FeeFound: Boolean;
        //DSDK.SellToAddr
        SellToAddr: array[8] of Text[50];
        InvoiceAddrCaption: TextConst DAN = 'Faktureringsadresse', DEU = 'Rechnungsadresse ', ENU = 'Invoice Address';
        CustomerAddrCaption: TextConst DAN = 'Kundeadresse', DEU = 'Kundenadresse', ENU = 'Customer Address';
        //DSDK.47
        VariantCaption: TextConst DAN = 'Variant', DEU = 'Variante', ENU = 'Variant';
        //DSDK.49
        ParamCompanyName: Text[50];
        TabIdx: Integer;
        PaymentInfoLines: array[5] of Text[50];
        PaymentTermLines: array[2] of Text[100];
        //DSDK.Custom.06.Navadan
        PaymentTermLines1_Navadan: Label 'All remittance expenses are the full responsibility of the payer.';
        PaymentTermLines2_Navadan: Label 'We do not accept any deductions of bank transfer charges.';
        BeneficiaryCaption: Label 'BENEFICIARY:';

    procedure InitLogInteraction();
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(4) <> '';
    end;

    procedure FindPostedShipmentDate(): Date;
    var
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentBuffer2: Record "Sales Shipment Buffer" temporary;
    begin
        NextEntryNo := 1;
        IF "Sales Invoice Line"."Shipment No." <> '' THEN
            IF SalesShipmentHeader.GET("Sales Invoice Line"."Shipment No.") THEN
                EXIT(SalesShipmentHeader."Posting Date");

        IF "Sales Invoice Header"."Order No." = '' THEN
            EXIT("Sales Invoice Header"."Posting Date");

        CASE "Sales Invoice Line".Type OF
            "Sales Invoice Line".Type::Item:
                GenerateBufferFromValueEntry("Sales Invoice Line");
            "Sales Invoice Line".Type::"G/L Account", "Sales Invoice Line".Type::Resource,
          "Sales Invoice Line".Type::"Charge (Item)", "Sales Invoice Line".Type::"Fixed Asset":
                GenerateBufferFromShipment("Sales Invoice Line");
            "Sales Invoice Line".Type::" ":
                EXIT(0D);
        END;

        SalesShipmentBuffer.RESET;
        SalesShipmentBuffer.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", "Sales Invoice Line"."Line No.");
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
            SalesShipmentBuffer2 := SalesShipmentBuffer;
            IF SalesShipmentBuffer.NEXT = 0 THEN BEGIN
                SalesShipmentBuffer.GET(
                  SalesShipmentBuffer2."Document No.", SalesShipmentBuffer2."Line No.", SalesShipmentBuffer2."Entry No.");
                SalesShipmentBuffer.DELETE;
                EXIT(SalesShipmentBuffer2."Posting Date");
            END;
            SalesShipmentBuffer.CALCSUMS(Quantity);
            IF SalesShipmentBuffer.Quantity <> "Sales Invoice Line".Quantity THEN BEGIN
                SalesShipmentBuffer.DELETEALL;
                EXIT("Sales Invoice Header"."Posting Date");
            END;
        END ELSE
            EXIT("Sales Invoice Header"."Posting Date");
    end;

    procedure GenerateBufferFromValueEntry(SalesInvoiceLine2: Record "Sales Invoice Line");
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := SalesInvoiceLine2."Quantity (Base)";
        ValueEntry.SETCURRENTKEY("Document No.");
        ValueEntry.SETRANGE("Document No.", SalesInvoiceLine2."Document No.");
        ValueEntry.SETRANGE("Posting Date", "Sales Invoice Header"."Posting Date");
        ValueEntry.SETRANGE("Item Charge No.", '');
        ValueEntry.SETFILTER("Entry No.", '%1..', FirstValueEntryNo);
        IF ValueEntry.FIND('-') THEN
            REPEAT
                IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN BEGIN
                    IF SalesInvoiceLine2."Qty. per Unit of Measure" <> 0 THEN
                        Quantity := ValueEntry."Invoiced Quantity" / SalesInvoiceLine2."Qty. per Unit of Measure"
                    ELSE
                        Quantity := ValueEntry."Invoiced Quantity";
                    AddBufferEntry(
                      SalesInvoiceLine2,
                      -Quantity,
                      ItemLedgerEntry."Posting Date");
                    TotalQuantity := TotalQuantity + ValueEntry."Invoiced Quantity";
                END;
                FirstValueEntryNo := ValueEntry."Entry No." + 1;
            UNTIL (ValueEntry.NEXT = 0) OR (TotalQuantity = 0);
    end;

    procedure GenerateBufferFromShipment(SalesInvoiceLine: Record "Sales Invoice Line");
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesInvoiceLine2: Record "Sales Invoice Line";
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentLine: Record "Sales Shipment Line";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := 0;
        SalesInvoiceHeader.SETCURRENTKEY("Order No.");
        SalesInvoiceHeader.SETFILTER("No.", '..%1', "Sales Invoice Header"."No.");
        SalesInvoiceHeader.SETRANGE("Order No.", "Sales Invoice Header"."Order No.");
        IF SalesInvoiceHeader.FIND('-') THEN
            REPEAT
                SalesInvoiceLine2.SETRANGE("Document No.", SalesInvoiceHeader."No.");
                SalesInvoiceLine2.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
                SalesInvoiceLine2.SETRANGE(Type, SalesInvoiceLine.Type);
                SalesInvoiceLine2.SETRANGE("No.", SalesInvoiceLine."No.");
                SalesInvoiceLine2.SETRANGE("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
                IF SalesInvoiceLine2.FIND('-') THEN
                    REPEAT
                        TotalQuantity := TotalQuantity + SalesInvoiceLine2.Quantity;
                    UNTIL SalesInvoiceLine2.NEXT = 0;
            UNTIL SalesInvoiceHeader.NEXT = 0;

        SalesShipmentLine.SETCURRENTKEY("Order No.", "Order Line No.");
        SalesShipmentLine.SETRANGE("Order No.", "Sales Invoice Header"."Order No.");
        SalesShipmentLine.SETRANGE("Order Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE(Type, SalesInvoiceLine.Type);
        SalesShipmentLine.SETRANGE("No.", SalesInvoiceLine."No.");
        SalesShipmentLine.SETRANGE("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
        SalesShipmentLine.SETFILTER(Quantity, '<>%1', 0);

        IF SalesShipmentLine.FIND('-') THEN
            REPEAT
                IF "Sales Invoice Header"."Get Shipment Used" THEN
                    CorrectShipment(SalesShipmentLine);
                IF ABS(SalesShipmentLine.Quantity) <= ABS(TotalQuantity - SalesInvoiceLine.Quantity) THEN
                    TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity
                ELSE BEGIN
                    IF ABS(SalesShipmentLine.Quantity) > ABS(TotalQuantity) THEN
                        SalesShipmentLine.Quantity := TotalQuantity;
                    Quantity :=
                      SalesShipmentLine.Quantity - (TotalQuantity - SalesInvoiceLine.Quantity);

                    TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity;
                    SalesInvoiceLine.Quantity := SalesInvoiceLine.Quantity - Quantity;

                    IF SalesShipmentHeader.GET(SalesShipmentLine."Document No.") THEN
                        AddBufferEntry(
                          SalesInvoiceLine,
                          Quantity,
                          SalesShipmentHeader."Posting Date");
                END;
            UNTIL (SalesShipmentLine.NEXT = 0) OR (TotalQuantity = 0);
    end;

    procedure CorrectShipment(var SalesShipmentLine: Record "Sales Shipment Line");
    var
        SalesInvoiceLine: Record "Sales Invoice Line";
    begin
        SalesInvoiceLine.SETCURRENTKEY("Shipment No.", "Shipment Line No.");
        SalesInvoiceLine.SETRANGE("Shipment No.", SalesShipmentLine."Document No.");
        SalesInvoiceLine.SETRANGE("Shipment Line No.", SalesShipmentLine."Line No.");
        IF SalesInvoiceLine.FIND('-') THEN
            REPEAT
                SalesShipmentLine.Quantity := SalesShipmentLine.Quantity - SalesInvoiceLine.Quantity;
            UNTIL SalesInvoiceLine.NEXT = 0;
    end;

    procedure AddBufferEntry(SalesInvoiceLine: Record "Sales Invoice Line"; QtyOnShipment: Decimal; PostingDate: Date);
    begin
        SalesShipmentBuffer.SETRANGE("Document No.", SalesInvoiceLine."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentBuffer.SETRANGE("Posting Date", PostingDate);
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
            SalesShipmentBuffer.Quantity := SalesShipmentBuffer.Quantity + QtyOnShipment;
            SalesShipmentBuffer.MODIFY;
            EXIT;
        END;

        WITH SalesShipmentBuffer DO BEGIN
            "Document No." := SalesInvoiceLine."Document No.";
            "Line No." := SalesInvoiceLine."Line No.";
            "Entry No." := NextEntryNo;
            Type := SalesInvoiceLine.Type;
            "No." := SalesInvoiceLine."No.";
            Quantity := QtyOnShipment;
            "Posting Date" := PostingDate;
            INSERT;
            NextEntryNo := NextEntryNo + 1
        END;
    end;

    local procedure DocumentCaption(): Text[250];
    begin
        IF "Sales Invoice Header"."Prepayment Invoice" THEN
            EXIT(Text010);
        EXIT(Text004);
    end;

    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewLogInteraction: Boolean; DisplayAsmInfo: Boolean);
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
        DisplayAssemblyInformation := DisplayAsmInfo;
    end;

    procedure CollectAsmInformation();
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        PostedAsmHeader: Record "Posted Assembly Header";
        PostedAsmLine: Record "Posted Assembly Line";
        SalesShipmentLine: Record "Sales Shipment Line";
    begin
        TempPostedAsmLine.DELETEALL;
        IF "Sales Invoice Line".Type <> "Sales Invoice Line".Type::Item THEN
            EXIT;
        WITH ValueEntry DO BEGIN
            SETCURRENTKEY("Document No.");
            SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
            SETRANGE("Document Type", "Document Type"::"Sales Invoice");
            SETRANGE("Document Line No.", "Sales Invoice Line"."Line No.");
            IF NOT FINDSET THEN
                EXIT;
        END;
        REPEAT
            IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN
                IF ItemLedgerEntry."Document Type" = ItemLedgerEntry."Document Type"::"Sales Shipment" THEN BEGIN
                    SalesShipmentLine.GET(ItemLedgerEntry."Document No.", ItemLedgerEntry."Document Line No.");
                    IF SalesShipmentLine.AsmToShipmentExists(PostedAsmHeader) THEN BEGIN
                        PostedAsmLine.SETRANGE("Document No.", PostedAsmHeader."No.");
                        IF PostedAsmLine.FINDSET THEN
                            REPEAT
                                TreatAsmLineBuffer(PostedAsmLine);
                            UNTIL PostedAsmLine.NEXT = 0;
                    END;
                END;
        UNTIL ValueEntry.NEXT = 0;
    end;

    procedure TreatAsmLineBuffer(PostedAsmLine: Record "Posted Assembly Line");
    begin
        CLEAR(TempPostedAsmLine);
        TempPostedAsmLine.SETRANGE(Type, PostedAsmLine.Type);
        TempPostedAsmLine.SETRANGE("No.", PostedAsmLine."No.");
        TempPostedAsmLine.SETRANGE("Variant Code", PostedAsmLine."Variant Code");
        TempPostedAsmLine.SETRANGE(Description, PostedAsmLine.Description);
        TempPostedAsmLine.SETRANGE("Unit of Measure Code", PostedAsmLine."Unit of Measure Code");
        IF TempPostedAsmLine.FINDFIRST THEN BEGIN
            TempPostedAsmLine.Quantity += PostedAsmLine.Quantity;
            TempPostedAsmLine.MODIFY;
        END ELSE BEGIN
            CLEAR(TempPostedAsmLine);
            TempPostedAsmLine := PostedAsmLine;
            TempPostedAsmLine.INSERT;
        END;
    end;

    procedure GetUOMText(UOMCode: Code[10]): Text[10];
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

    local procedure "//DSDK.func.ProformaInvoice"()
    begin
    end;

    procedure SetProformaInvoice()
    begin
        //>>DSDK.ProformaInvoice
        ProformaInvoice := TRUE;
        //<<DSDK.ProformaInvoice
    end;

    local procedure SetDataCaptionExpr(): Text[80]
    begin
        //>>DSDK.ProformaInvoice
        IF ProformaInvoice THEN
            EXIT('PROFORMA');
        //<<DSDK.ProformaInvoice
    end;
}

