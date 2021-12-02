report 50021 "Sales - Cr.Memo DSDK2018"
{
    // version DSDK.std.2018,DSDK.10

    // DSDK.00 LV 2018.02.12 - ERPgruppen.dk - 2018 Standard report
    // DSDK.09 LV 2018.03.06 - print "Net Amount" & "Taxable Amount"
    // DSDK.10 LV 2018.12.27 - clean up and remove other customers changes
    // 
    // DSDK.11 LV 2019.01.28 - Work Description in Header
    // DSDK.20 LV 2019.02.06 - Report Params
    // DSDK.21 LV 2019.03.12 - same address - then drop Shipment Address
    // DSDK.23 LV 2019.03.29 - Report Params - Pass3
    // DSDK.24 LV 2019.04.08 - Report Params - TestLines
    // DSDK.25 LV 2019.04.17 - Report Encoding
    // DSDK.27 LV 2019.05.27 - "Drop Work Description", "Show Country of Origin", Show on same line"
    // DSDK.28 LV 2019.05.29 - full layout
    // DSDK.31 LV 2019.07.08 - German texts

    // DSDK.33 LV 2019.07.12 - CustomerAdjustnent.01: Print Item."Desription 3"
    // DSDK.35 LV 2019.07.18 - Translate Country Name
    // DSDK.36 LV 2019.08.14 - Body captions on after page 1
    // DSDK.40 LV 2019.10.01 - move sales invoice lines to Temp

    //      ØRBÆK 
    // DSDK.Custom.02 2019.09.10  Accumulate Fee lines

    //      CABOLA
    // DSDK.Custom.03 2019.10.08 Picture 2

    //      AUSTROTERM - MIA CASA
    // DSDK.Custom.05 2019.12.19 - Show always all addresses

    // DSDK.41 LV 2019.10.07 - Report Params - Pass8 - "Show Customer Item No."
    // DSDK.45 LV 2019.11.04 - version 15
    // DSDK.45 LV 2019.12.19 - added fields for print "Sell-to"
    // DSDK.47 LV 2020.01.16 - Variant


    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/50021 Sales - Cr.Memo DSDK2018.rdlc';

    CaptionML = DAN = 'Salg - kreditonta',
                ENU = 'Sales - Cr.Memo';
    Permissions = TableData "Sales Shipment Buffer" = rimd;


    dataset
    {
        dataitem("Sales Cr.Memo Header"; "Sales Cr.Memo Header")
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
            column(VATAmtCaption; VATAmtCaptionLbl)
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
                AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
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
            column(TotalExclVATText; VATBaseCaptionLbl)
            {
            }
            column(VATAmtLineVATAmtText; STRSUBSTNO(VATAmtCaptionLbl, VATPercent))
            {
            }
            column(CustomSalesInvBilltoCustNoCaption; CustomSalesInvBilltoCustNoCaptionLbl)
            {
            }
            column(YourReference_SalesInvHdr; "Sales Cr.Memo Header"."Your Reference")
            {
            }
            column(SelltoCustNo_SalesInvHdr; "Sales Cr.Memo Header"."Sell-to Customer No.")
            {
            }
            column(OurRefCaption; OurRefCaptionLbl)
            {
            }
            column(YourRefCaption; YourRefCaptionLbl)
            {
            }
            column(YourRef; "Sales Cr.Memo Header"."Your Reference")
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
                    column(HomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(EMail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoPicture; CompanyInfo1.Picture)
                    {
                    }
                    column(DocumentCaptionCopyText; STRSUBSTNO(DocumentCaption, CopyText))
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
                    column(CompanyInfoVATRegNo; VATRegNoCapLbl)
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
                    column(PostingDate_SalesInvHdr; FORMAT("Sales Cr.Memo Header"."Posting Date", 0, '<Day,2>/<Month,2>-<Year4>'))
                    {
                    }
                    column(VATNoText; VATNoText)
                    {
                    }
                    column(VATRegNo_SalesInvHdr; "Sales Cr.Memo Header"."VAT Registration No.")
                    {
                    }
                    column(DueDate_SalesInvHdr; FORMAT("Sales Cr.Memo Header"."Due Date", 0, '<Day,2>/<Month,2>-<Year4>'))
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
                    column(YourOrderNoCaption; YourOrderNoCaptionLbl)
                    {
                    }
                    column(ExternalDocumentNo; "Sales Cr.Memo Header"."External Document No.")
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
                    column(DocDate_SalesInvHdr; FORMAT("Sales Cr.Memo Header"."Document Date", 0, 4))
                    {
                    }
                    column(PricesInclVAT_SalesInvHdr; "Sales Cr.Memo Header"."Prices Including VAT")
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(PricesInclVATYesNo_SalesInvHdr; FORMAT("Sales Cr.Memo Header"."Prices Including VAT"))
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
                    column(SelltoContact_SalesInvHdr; "Sales Cr.Memo Header"."Sell-to Contact")
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
                    column(PaymentTermsDesc; PaymentTerms.Description)
                    {
                    }
                    column(PaymentTermsDesc2; PaymentTermsDesc2)
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
                    column(BilltoCustNo_SalesInvHdrCaption; "Sales Cr.Memo Header".FIELDCAPTION("Bill-to Customer No."))
                    {
                    }
                    column(PricesInclVAT_SalesInvHdrCaption; "Sales Cr.Memo Header".FIELDCAPTION("Prices Including VAT"))
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
                    column(CustomSalesInvBillToCustomer; "Sales Cr.Memo Header"."Bill-to Customer No.")
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
                    column(TotalInclVATText; TotalInclVATText)
                    {
                    }
                    column(DeliveryConditionTxt; DeliveryConditionTxt)
                    {
                    }
                    column(EUTaxTxt; EUTax)
                    {
                    }
                    column(OrderNoText; OrderNoCaptionLbl)
                    {
                    }
                    column(OrderNo; OrderNo)
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
                        DataItemLinkReference = "Sales Cr.Memo Header";
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
                    dataitem("Sales Cr.Memo Line"; "Sales Cr.Memo Line")
                    {
                        UseTemporary = true;
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Cr.Memo Header";
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
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInvDiscAmount; TotalInvDiscAmount)
                        {
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
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
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
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
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmountVAT; TotalAmountVAT)
                        {
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(LineAmtAfterInvDiscAmt; -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT"))
                        {
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseDisc_SalesInvHdr; "Sales Cr.Memo Header"."VAT Base Discount %")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalPaymentDiscOnVAT; TotalPaymentDiscOnVAT)
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalInclVATText_SalesInvLine; TotalInclVATText)
                        {
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

                        dataitem(AttachedLines; "Sales Cr.Memo Line")
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
                                SalesShipmentBuffer.SETRANGE(SalesShipmentBuffer."Document No.", "Sales Cr.Memo Line"."Document No.");
                                SalesShipmentBuffer.SETRANGE(SalesShipmentBuffer."Line No.", "Sales Cr.Memo Line"."Line No.");

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

                                DimSetEntry2.SETRANGE(DimSetEntry2."Dimension Set ID", "Sales Cr.Memo Line"."Dimension Set ID");
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
                                ReportSelections.GetParam_SalesCrMemo("Sales Cr.Memo Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
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
                                ReportSelections.GetParam_SalesCrMemo("Sales Cr.Memo Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;
                                //<<DSDK.41

                                // VendorItemNo
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'VendorItemNo';
                                ParamValue[ParamIdx] := FORMAT("No.");
                                ReportSelections.GetParam_SalesCrMemo("Sales Cr.Memo Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;

                                // TariffNo
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'TariffNo';
                                ParamValue[ParamIdx] := FORMAT("No.");
                                ReportSelections.GetParam_SalesCrMemo("Sales Cr.Memo Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;

                                //>>DSDK.27
                                // CountryOfOrigin
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'CountryOfOrigin';
                                ParamValue[ParamIdx] := FORMAT("No.");
                                ReportSelections.GetParam_SalesCrMemo("Sales Cr.Memo Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;
                                //<<DSDK.27

                                // Barcode
                                ParamIdx := 15;
                                ParamText[ParamIdx] := 'Barcode';
                                ParamValue[ParamIdx] := FORMAT("No.");
                                ReportSelections.GetParam_SalesCrMemo("Sales Cr.Memo Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                                IF ParamText[ParamIdx] <> '' THEN BEGIN
                                    TextLineIdx += 1;
                                    TextLine[TextLineIdx] := ParamText[ParamIdx];
                                END;

                            END;
                            //<<DSDK.24.TextLines

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
                            ///CurrReport.CREATETOTALS("Line Amount",Amount,"Amount Including VAT","Inv. Discount Amount");
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
                            TempBlobWorkDescription.Blob := "Sales Cr.Memo Header"."Work Description";

                            // find number of lines
                            MaxWorkDescription := 0;
                            WHILE TempBlobWorkDescription.MoreTextLines DO BEGIN
                                WorkDescriptionLine := TempBlobWorkDescription.ReadTextLine;
                                MaxWorkDescription += 1;
                            END;
                            WorkDescriptionLine := '';
                            CLEAR(TempBlobWorkDescription);
                            TempBlobWorkDescription.Blob := "Sales Cr.Memo Header"."Work Description";

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
                            MessageNo := '50021';
                            MessageLanguage := "Sales Cr.Memo Header"."Language Code";

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
                        column(VATAmtLineVATBase; VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Sales Cr.Memo Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmt; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineLineAmt; VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscAmt; VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
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
                            ///CurrReport.CREATETOTALS(
                            ///VATAmountLine."Line Amount",VATAmountLine."Inv. Disc. Base Amount",
                            ///VATAmountLine."Invoice Discount Amount",VATAmountLine."VAT Base",VATAmountLine."VAT Amount");
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
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
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
                            VATClause.TranslateDescription("Sales Cr.Memo Header"."Language Code");
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
                                "Sales Cr.Memo Header"."Posting Date", "Sales Cr.Memo Header"."Currency Code",
                                "Sales Cr.Memo Header"."Currency Factor");
                            VALVATAmountLCY :=
                              VATAmountLine.GetAmountLCY(
                                "Sales Cr.Memo Header"."Posting Date", "Sales Cr.Memo Header"."Currency Code",
                                "Sales Cr.Memo Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF (NOT GLSetup."Print VAT specification in LCY") OR
                               ("Sales Cr.Memo Header"."Currency Code" = '')
                            THEN
                                CurrReport.BREAK;

                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            ///CurrReport.CREATETOTALS(VALVATBaseLCY,VALVATAmountLCY);

                            IF GLSetup."LCY Code" = '' THEN
                                VALSpecLCYHeader := Text007 + Text008
                            ELSE
                                VALSpecLCYHeader := Text007 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Sales Cr.Memo Header"."Posting Date", "Sales Cr.Memo Header"."Currency Code", 1);
                            CalculatedExchRate := ROUND(1 / "Sales Cr.Memo Header"."Currency Factor" * CurrExchRate."Exchange Rate Amount", 0.000001);
                            VALExchRate := STRSUBSTNO(Text009, CalculatedExchRate, CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                        column(SelltoCustNo_SalesInvHdrCaption; "Sales Cr.Memo Header".FIELDCAPTION("Sell-to Customer No."))
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
                begin
                    IF Number > 1 THEN BEGIN
                        CopyText := Text003;
                        OutputNo += 1;
                    END;
                    ///CurrReport.PAGENO := 1;

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
                        SalesCrMemoCountPrinted.RUN("Sales Cr.Memo Header");
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
                SL: Record "Sales Cr.Memo Line";
            begin
                //>>DSDK.Params
                ReportSelections.GetData_SalesCrMemo("Sales Cr.Memo Header", ParamDropDeliveryAddress, ParamDropItemNoColumn, ParamDropWorkDescription);  //DSDK.27
                FOR ParamIdx := 1 TO 15 DO BEGIN
                    ReportSelections.GetParam_SalesCrMemo("Sales Cr.Memo Header", ParamIdx, ParamText[ParamIdx], ParamValue[ParamIdx]);
                END;
                //<<DSDK.Params

                InvTotalExclVAT := 0;
                InvTotalVAT := 0;
                VATPercent := 0;
                InvTotalTaxable := 0;   //DSDK.09
                CLEAR(SL);
                SL.SETRANGE(SL."Document No.", "Sales Cr.Memo Header"."No.");
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
                SalesInvLine.SETRANGE("Document No.", "Sales Cr.Memo Header"."No.");
                SalesInvLine.SETFILTER("Line Discount %", '<>0');
                IF SalesInvLine.FINDFIRST THEN ShowLineDiscCaption := 1 ELSE ShowLineDiscCaption := 0;
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

                IF "Salesperson Code" = '' THEN BEGIN
                    SalesPurchPerson.INIT;
                    SalesPersonText := '';
                END ELSE BEGIN
                    SalesPurchPerson.GET("Salesperson Code");
                    SalesPersonText := Text000;
                END;
                IF CompanyInfo.IBAN = '' THEN
                    IBANCaption := ''
                ELSE
                    IBANCaption := CompanyInfoIBANCptnLbl;
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
                FormatAddr.SalesCrMemoBillTo(CustAddr, "Sales Cr.Memo Header");
                //>>DSDK.35
                CompanyInfo.TranslateCountryName(CustAddr, "Sales Cr.Memo Header"."Bill-to Country/Region Code", "Sales Cr.Memo Header"."Language Code");
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


                IntAccountCodeText := 'Account Code';

                IF Cust."VAT Registration No." = '' THEN
                    CustVatNoText := ''
                ELSE
                    CustVatNoText := Cust.FIELDCAPTION("VAT Registration No.");

                //>>DSDK.Param
                IF NOT ParamDropDeliveryAddress THEN BEGIN
                    //DSDK.Param
                    FormatAddr.SalesCrMemoShipTo(ShipToAddr, CustAddr, "Sales Cr.Memo Header");
                    //>>DSDK.35
                    CompanyInfo.TranslateCountryName(ShipToAddr, "Sales Cr.Memo Header"."Sell-to Country/Region Code", "Sales Cr.Memo Header"."Language Code");
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

                //>>DSDK.02
                EUTax := '';
                IF "Sales Cr.Memo Header"."VAT Bus. Posting Group" = 'EU' THEN
                    EUTax := EUTaxTxt;
                //<<DSDK.02

                //>>DSDK.10.WorkDescription
                CALCFIELDS("Work Description");
                ShowWorkDescription := "Work Description".HASVALUE;
                IF ParamDropWorkDescription THEN    //DSDK.27
                    ShowWorkDescription := false;
                //<<DSDK.10.WorkDescription

                //>>DSDK.40.Standard
                CLEAR(FindSalesCrMemoLine);
                FindSalesCrMemoLine.SETCURRENTKEY("Document No.", "Line No.");
                FindSalesCrMemoLine.SETRANGE("Document No.", "Sales Cr.Memo Header"."No.");
                if FindSalesCrMemoLine.FindLast then
                    LastLineNo := FindSalesCrMemoLine."Line No.";

                // move all lines to temp
                CLEAR(FindSalesCrMemoLine);
                FindSalesCrMemoLine.SETCURRENTKEY("Document No.", "Line No.");
                FindSalesCrMemoLine.SETRANGE("Document No.", "Sales Cr.Memo Header"."No.");
                IF FindSalesCrMemoLine.FINDSET THEN
                    REPEAT
                        "Sales Cr.Memo Line" := FindSalesCrMemoLine;
                        "Sales Cr.Memo Line".INSERT;
                    UNTIL FindSalesCrMemoLine.NEXT = 0;
                //<<DSDK.40.Standard

                //>>DSDK.40.Custom.02.Ørbæk
                /*
                CLEAR(FindSalesCrMemoLine);
                FindSalesCrMemoLine.SETCURRENTKEY("Document No.","Line No.");
                FindSalesCrMemoLine.SETRANGE("Document No.", "Sales Cr.Memo Header"."No.");
                if FindSalesCrMemoLine.FindLast then
                    LastLineNo := FindSalesCrMemoLine."Line No.";

                // move all lines to temp
                CLEAR(FindSalesCrMemoLine);
                FindSalesCrMemoLine.SETCURRENTKEY("Document No.","Line No.");
                FindSalesCrMemoLine.SETRANGE("Document No.", "Sales Cr.Memo Header"."No.");
                IF FindSalesCrMemoLine.FINDSET THEN
                    REPEAT
                        FeeFound := false;
                        IF (FindSalesCrMemoLine."Fee Line" = true) AND (FindSalesCrMemoLine.Type = FindSalesCrMemoLine.Type::"G/L Account") then begin 
                                // acc all fee lines
                            For FeeIdx := 1 to 10 do begin

                                IF FeeFound = false then begin

                                    IF FeeTab[FeeIdx] = '' then begin
                                        // create fee line for accumulation
                                        "Sales Cr.Memo Line" := FindSalesCrMemoLine;
                                        "Sales Cr.Memo Line"."Line No." := LastLineNo + FeeIdx;
                                        "Sales Cr.Memo Line".Insert;
                                        FeeTab[FeeIdx] := FindSalesCrMemoLine.Description;
                                        FeeFound := true;
                                    end else begin
                                        IF FeeTab[FeeIdx] = FindSalesCrMemoLine.Description then begin
                                            // acc this line
                                            Clear("Sales Cr.Memo Line");
                                            "Sales Cr.Memo Line".SetRange("Line No.", LastLineNo + FeeIdx);
                                            "Sales Cr.Memo Line".LockTable;
                                            IF "Sales Cr.Memo Line".FindSet then begin
                                                "Sales Cr.Memo Line".Quantity += FindSalesCrMemoLine.Quantity;
                                                "Sales Cr.Memo Line"."Line Amount" += FindSalesCrMemoLine."Line Amount";
                                                "Sales Cr.Memo Line".Amount += FindSalesCrMemoLine.Amount;
                                                "Sales Cr.Memo Line"."Amount Including VAT" += FindSalesCrMemoLine."Amount Including VAT";
                                                "Sales Cr.Memo Line"."Line Discount Amount" += FindSalesCrMemoLine."Line Discount Amount";
                                                "Sales Cr.Memo Line".Modify;
                                            end;
                                            FeeFound := true;
                                        end;
                                    end;
                                end;
                            end;

                        end else begin
                            // transfer NOT fee lines direct
                            "Sales Cr.Memo Line" := FindSalesCrMemoLine;
                            "Sales Cr.Memo Line".INSERT;
                        end;
                    UNTIL FindSalesCrMemoLine.NEXT = 0;
                    */
                //<<DSDK.40.Custom.02.Ørbæk

                //>>DSDK.45
                FormatAddr.SalesCrMemoSellTo(SellToAddr, "Sales Cr.Memo Header");
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
    end;

    trigger OnPreReport();
    begin
        IF NOT CurrReport.USEREQUESTPAGE THEN
            InitLogInteraction;
    end;

    var
        Text000: TextConst DAN = 'Sælger', DEU = 'Verkaufer', ENU = 'Sales Person';
        Text001: TextConst DAN = 'I alt %1', DEU = 'Gesamt %1', ENU = 'Total %1';
        Text002: TextConst DAN = 'Total %1', DEU = 'Gesamt %1', ENU = 'Total %1';
        Text003: TextConst DAN = 'KOPI', DEU = 'KOPIE', ENU = 'COPY';
        Text004: TextConst DAN = 'Kreditnota %1', DEU = 'Gutschrift %1', ENU = 'Credit Note %1';
        PageCaptionCapLbl: TextConst DAN = 'Side', DEU = 'Seite', ENU = 'Page';
        PageCaptionCap: TextConst DAN = '%1 af %2', DEU = '%1 von %2', ENU = '%1 of %2';
        Text006: TextConst DAN = 'Momsgrundlag', DEU = 'Betrag Ekskl. MwSt.', ENU = 'VAT base';
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
        SalesCrMemoCountPrinted: Codeunit "Sales Cr. Memo-Printed";
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
        Text008: TextConst DAN = 'Lokal valuta', DEU = 'Währung', ENU = 'Local Currency';
        VALExchRate: Text[50];
        Text009: TextConst DAN = 'Valutakurs: %1/%2', DEU = 'Wechselkurs: %1/%2', ENU = 'Exchange rate: %1/%2';
        CalculatedExchRate: Decimal;
        Text010: TextConst DAN = 'Salg - forudbetalingsfaktura %1', DEU = 'Verkauf - Voraufzahlungsrechnung %1', ENU = 'Sales - Prepayment Invoice %1';
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
        CompanyInfoBankAccNoCptnLbl: TextConst DAN = 'Kontonr.', DEU = 'Konten Nr.', ENU = 'Account No.';
        CompanyInfoIBANCptnLbl: TextConst DAN = 'IBAN:', DEU = 'IBAN:', ENU = 'IBAN:';
        SWIFTCaption: TextConst DAN = 'SWIFT:', DEU = 'SWIFT:', ENU = 'SWIFT:';
        SalesInvDueDateCaptionLbl: TextConst DAN = 'Forfaldsdato', DEU = 'Fälligkeitsdatum', ENU = 'Due Date';
        InvNoCaptionLbl: TextConst DAN = 'Nummer', DEU = 'Nummer', ENU = 'Number';
        SalesInvPostingDateCptnLbl: TextConst DAN = 'Dato', DEU = 'Datum', ENU = 'Date';
        HeaderDimCaptionLbl: TextConst DAN = 'Dimensioner - hoved', DEU = 'Dimensionen - Kopf', ENU = 'Header Dimensions';
        UnitPriceCaptionLbl: TextConst DAN = 'Pris', DEU = 'Preis', ENU = 'Price';
        SalesInvLineDiscCaptionLbl: TextConst DAN = 'Rabat%', DEU = 'Rabatt%', ENU = 'Disc.%';
        AmountCaptionLbl: TextConst DAN = 'Beløb Incl. moms', DEU = 'Betrag Inkl. MwSt.', ENU = 'Amount incl. VAT';
        VATClausesCap: TextConst DAN = 'Momsklausul', DEU = 'Steuerklausel', ENU = 'VAT Clause';
        PostedShipmentDateCaptionLbl: TextConst DAN = 'Bogført leverancedato', DEU = 'Gebuchtes Lieferdatum', ENU = 'Posted Shipment Date';
        SubtotalCaptionLbl: TextConst DAN = 'Subtotal', DEU = 'Zwischensumme', ENU = 'Subtotal';
        LineAmtAfterInvDiscCptnLbl: TextConst DAN = 'Moms ved kontantrabat', ENU = 'Payment Discount on VAT';
        ShipmentCaptionLbl: TextConst DAN = 'Leverance', DEU = 'Lieferung', ENU = 'Shipment';
        LineDimCaptionLbl: TextConst DAN = 'Linjedimensioner', DEU = 'Pos. Dimensionen', ENU = 'Line Dimensions';
        VATAmtSpecificationCptnLbl: TextConst DAN = 'Momsbeløbspecifikation', DEU = 'MwSt. Betrag Specifikation', ENU = 'VAT Amount Specification';
        InvDiscBaseAmtCaptionLbl: TextConst DAN = 'Grundbeløb for fakturarabat', DEU = 'Grundbetrag für Skonto', ENU = 'Invoice Discount Base Amount';
        LineAmtCaptionLbl: TextConst DAN = 'Beløb', DEU = 'Betrag', ENU = 'Amount';
        LineAmtExclVATCaptionLbl: TextConst DAN = 'Beløb ekskl. moms', DEU = 'Betrag Ekskl. MwSt.', ENU = 'Amount excl. VAT';
        ShiptoAddrCaptionLbl: TextConst DAN = 'Leveringsadresse', DEU = 'Lieferaddresse', ENU = 'Ship-to Address';
        InvDiscountAmtCaptionLbl: TextConst DAN = 'Kreditnotarabatbeløb', DEU = 'Gutschrift Skonto Betrag', ENU = 'Cr.Memo Discount Amount';
        DocumentDateCaptionLbl: TextConst DAN = 'Bilagsdato', DEU = 'Beleg Datum', ENU = 'Document Date';
        PaymentInfo: TextConst DAN = 'Betalingsoplysninger', DEU = 'Zahlungsinformation', ENU = 'Payment Information';
        PaymentTermsDesc2: Label 'Efter forfald tilskrives rente efter rentelovens § 5.';
        PaymentTermsDescCaptionLbl: TextConst DAN = 'Betalingsbetingelser', DEU = 'Zahlungsbedingungen', ENU = 'Payment Terms';
        ShptMethodDescCaptionLbl: TextConst DAN = 'Leveringsform', DEU = 'Lieferform', ENU = 'Shipment Method';
        VATPercentageCaptionLbl: TextConst DAN = 'Momspct.', DEU = 'MwSt. %', ENU = 'VAT %';
        TotalCaptionLbl: TextConst DAN = 'I alt', DEU = 'Gesamt', ENU = 'Total';
        VATBaseCaptionLbl: TextConst DAN = 'Momsgrundlag', DEU = 'MwSt. Grundlage', ENU = 'VAT Base';
        VATAmtCaptionLbl: TextConst DAN = '%1% Moms', DEU = '%1% MwSt.', ENU = '%1% VAT';
        VATIdentifierCaptionLbl: TextConst DAN = 'Moms-id', DEU = 'MwSt. Code', ENU = 'VAT Identifier';
        HomePageCaptionLbl: TextConst DAN = 'Hjemmeside', DEU = 'Web Seite', ENU = 'Home Page';
        EMailCaptionLbl: TextConst DAN = 'E-mail', DEU = 'E-Mail', ENU = 'E-Mail';
        DocumentReferenceCaptionbl: TextConst Comment = 'Translate to "Hvis din bank understøtter FIK (fælles indbetalingkort), så benyt denne information:"', DAN = 'FIK:', DEU = 'FIK:', ENU = 'FIK:';
        DocumentReferenceTxt: Text;
        DocumentReference: Text;
        IBANCaption: Text[80];
        CurrencyCodeLbl: TextConst DAN = 'Valuta', DEU = 'Währung', ENU = 'Currency';
        CustomSalesInvLineNoCaptionLbl: TextConst DAN = 'Forløb', DEU = 'Verlauf', ENU = 'Course';
        Custom_LineAmt_SalesInvLine_InclVAT: Decimal;
        CustomSalesInvBilltoCustNoCaptionLbl: TextConst DAN = 'Kundenr.', DEU = 'Kunden Nr.', ENU = 'Customer No.';
        BottomLine: array[2] of Text[250];
        CustomSalesRepLbl: TextConst DAN = 'Sælger', DEU = 'Verkaufer', ENU = 'Sales Person';
        YourRefCaptionLbl: TextConst DAN = 'Deres ref.', DEU = 'Ihre Ref.', ENU = 'Your Ref.';
        ShowLineDiscCaption: Integer;
        SalesInvLine: Record "Sales Cr.Memo Line";
        LineDiscCaptionLbl: TextConst DAN = 'Rabat %', DEU = 'Rabatt %', ENU = 'Disc. %';
        ShowDeliveries: Boolean;
        InvTotalExclVAT: Decimal;
        InvTotalVAT: Decimal;
        InvTotalInclVAT: Decimal;
        QtyCaptionLbl: TextConst DAN = 'Antal', DEU = 'Menge', ENU = 'Qty';
        VATPercent: Decimal;
        VATRegNoCapLbl: TextConst DAN = 'CVR nr.', DEU = 'Ustd.-Id', ENU = 'VAT Reg .No.';
        "//DSDK.txt": Integer;
        YourOrderNoCaptionLbl: TextConst DAN = 'Deres ordernr.', DEU = 'Ihre Autragsnr.', ENU = 'Your Order No.';
        UOMCaptionLbl: TextConst DAN = 'Enhed', DEU = 'Einh.', ENU = 'Unit';
        "//DSDK.Setiket.var": Integer;
        EUTax: Text[30];
        EURIBANCaption: TextConst DAN = 'EUR IBAN', DEU = 'EUR IBAN', ENU = 'EUR IBAN';
        DeliveryConditionTxt: TextConst DAN = 'Levering sker i henhold til vore gældende salgs- og leveringsbetingelser. som kan hentes på www.setiket.com', DEU = 'Lieferung erfolgt gemäss unserer derzeit geltenden Verkaufs- und Lieferbedingungen, aufrufbar auf www.setiket.com', ENU = 'Delivery according to our sales and delivery terms, which can be retrieved at www.setiket.com';
        EUTaxTxt: TextConst DAN = 'Momsfritaget', DEU = 'Ohne Mwst', ENU = 'Free of VAT';
        "//DSDK.03": Integer;
        Item: Record "Item";
        "//DSDK.03.txt": Integer;
        CustItemCaption: TextConst DAN = 'Deres varenr:', DEU = 'Ihre Varen Nr:', ENU = 'Your P/N:';
        CustDrawCaption: TextConst DAN = 'Deres tegning:', DEU = 'Ihre Zeichnung:', ENU = 'Your Drawing:';
        SetiketDrawCaption: TextConst DAN = 'Setiket tegning:', DEU = 'Unsere Zeichnung:', ENU = 'Setiket Drawing:';
        "//DSDK.04": Integer;
        PrintPricePer1000Mark: Code[10];
        OurRefCaptionLbl: TextConst DAN = 'Vores ref.', DEU = 'Unsere Ref.', ENU = 'Our Ref.';
        OrderRefNoCaption: TextConst DAN = 'Ordre ref.:', DEU = 'Auftrags Ref.:', ENU = 'Order ref.:';
        IDnoCaption: TextConst DAN = 'ID:', DEU = 'ID:', ENU = 'ID:';
        "//DSDK.07": Integer;
        OrderNo: Code[20];
        "//DSDK.07.txt": Integer;
        OrderNoCaptionLbl: TextConst DAN = 'Vores ordrenr.', DEU = 'Unser Auftragsnr.', ENU = 'Our Order No.';
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
        //DSDK.40
        FindSalesCrMemoLine: Record "Sales Cr.Memo Line";
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


    procedure InitLogInteraction();
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(4) <> '';
    end;

    procedure GenerateBufferFromValueEntry(SalesInvoiceLine2: Record "Sales Cr.Memo Line");
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := SalesInvoiceLine2."Quantity (Base)";
        ValueEntry.SETCURRENTKEY("Document No.");
        ValueEntry.SETRANGE("Document No.", SalesInvoiceLine2."Document No.");
        ValueEntry.SETRANGE("Posting Date", "Sales Cr.Memo Header"."Posting Date");
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

    procedure AddBufferEntry(SalesInvoiceLine: Record "Sales Cr.Memo Line"; QtyOnShipment: Decimal; PostingDate: Date);
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
        EXIT(UPPERCASE(Text004));
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
        IF "Sales Cr.Memo Line".Type <> "Sales Cr.Memo Line".Type::Item THEN
            EXIT;
        WITH ValueEntry DO BEGIN
            SETCURRENTKEY("Document No.");
            SETRANGE("Document No.", "Sales Cr.Memo Line"."Document No.");
            SETRANGE("Document Type", "Document Type"::"Sales Credit Memo");
            SETRANGE("Document Line No.", "Sales Cr.Memo Line"."Line No.");
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
}

