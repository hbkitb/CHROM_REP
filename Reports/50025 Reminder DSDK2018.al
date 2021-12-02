report 50025 "Reminder DSDK2018"
{
    // version DSDK.std.BC,DSDK.36.new
    // DSDK.45 LV 2019.11.04 - version 15

    // DSDK.06 LV 2018.05.17 - print "Reminder Level" after header text "Reminder"
    // DSDK.35 LV 2019.07.18 - Translate Country Name
    // DSDK.36 LV 2020.10.14 - NEW: copy of 117 reminder - with ALL DSDK.changes

    //      NAVADAN
    // DSDK.Custom.06 2020.01.23 - extra Payment Info (auto. via ParamCompanyName)

    // DSDK.49 LV 2020.01.23 - print via PaymentInfoLines


    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/50025 Reminder DSDK2018.rdlc';

    Caption = 'Reminder';

    dataset
    {
        dataitem("Issued Reminder Header"; "Issued Reminder Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.";
            RequestFilterHeadingML = DAN = 'Rykkermeddelelse',
                                     ENU = 'Reminder';
            column(No_IssuedReminderHeader; "No.")
            {
            }
            column(DueDateCaption; DueDateCaptionLbl)
            {
            }
            column(VATAmountCaption; VATAmountCaptionLbl)
            {
            }
            column(VATBaseCaption; VATBaseCaptionLbl)
            {
            }
            column(VATPercentCaption; VATPercentCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(PageCaption; PageCaptionLbl)
            {
            }
            column(DocDateCaption; DocDateCaptionLbl)
            {
            }
            column(HomePageCaption; HomePageCaptionLbl)
            {
            }
            column(EMailCaption; EMailCaptionLbl)
            {
            }
            column(ShowMIRLines; ShowMIRLines)
            {
            }
            column(BottomLine1; BottomLine[1])
            {
            }
            column(BottomLine2; BottomLine[2])
            {
            }
            column(PaymentInfo; PaymentInfo)
            {
            }
            column(CompanyInfoBankBranchNo; CompanyInfo."Bank Branch No.")
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
            column(CompanyInfoIBANCptn; IBANCaption)
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

            dataitem(DataItem5444; Integer)
            {
                DataItemTableView = SORTING(Number)
                                    WHERE(Number = CONST(1));
                column(CompanyInfo1Picture; CompanyInfo1.Picture)
                {
                }
                column(CompanyInfo2Picture; CompanyInfo2.Picture)
                {
                }
                column(CompanyInfo3Picture; CompanyInfo3.Picture)
                {
                }
                column(DueDate_IssuedReminderHdr; FORMAT("Issued Reminder Header"."Due Date"))
                {
                }
                column(PostDate_IssuedReminderHdr; FORMAT("Issued Reminder Header"."Posting Date"))
                {
                }
                column(No1_IssuedReminderHdr; "Issued Reminder Header"."No.")
                {
                }
                column(YourRef_IssueReminderHdr; "Issued Reminder Header"."Your Reference")
                {
                }
                column(Contact_IssuedReminderHdr; "Issued Reminder Header".Contact)
                {
                }
                column(ReferenceText; ReferenceText)
                {
                }
                column(VatRegNo_IssueReminderHdr; "Issued Reminder Header"."VAT Registration No.")
                {
                }
                column(VATNoText; VATNoText)
                {
                }
                column(DocDate_IssueReminderHdr; FORMAT("Issued Reminder Header"."Document Date"))
                {
                }
                column(CustNo_IssueReminderHdr; "Issued Reminder Header"."Customer No.")
                {
                }
                column(CompanyInfoBankAccNo; CompanyInfo."Bank Account No.")
                {
                }
                column(CompanyInfoBankName; CompanyInfo."Bank Name")
                {
                }
                column(CompanyInfoGiroNo; CompanyInfo."Giro No.")
                {
                }
                column(CompanyInfoVATRegNo; CompanyInfo."VAT Registration No.")
                {
                }
                column(CompanyInfoHomePage; CompanyInfo."Home Page")
                {
                }
                column(CompanyInfoEMail; CompanyInfo."E-Mail")
                {
                }
                column(CustAddr8; CustAddr[8])
                {
                }
                column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
                {
                }
                column(CustAddr7; CustAddr[7])
                {
                }
                column(CustAddr6; CustAddr[6])
                {
                }
                column(CompanyAddr6; CompanyAddr[6])
                {
                }
                column(CustAddr5; CustAddr[5])
                {
                }
                column(CompanyAddr5; CompanyAddr[5])
                {
                }
                column(CustAddr4; CustAddr[4])
                {
                }
                column(CompanyAddr4; CompanyAddr[4])
                {
                }
                column(CustAddr3; CustAddr[3])
                {
                }
                column(CompanyAddr3; CompanyAddr[3])
                {
                }
                column(CustAddr2; CustAddr[2])
                {
                }
                column(CompanyAddr2; CompanyAddr[2])
                {
                }
                column(CustAddr1; CustAddr[1])
                {
                }
                column(CompanyAddr1; CompanyAddr[1])
                {
                }
                column(CurrReportPageNo; STRSUBSTNO(Text002, 1))
                {
                }
                column(TextPage; TextPageLbl)
                {
                }
                column(PostingDateCaption; PostingDateCaptionLbl)
                {
                }
                column(ReminderNoCaption; ReminderNoCaptionLbl)
                {
                }
                column(BankAccNoCaption; BankAccNoCaptionLbl)
                {
                }
                column(BankNameCaption; BankNameCaptionLbl)
                {
                }
                column(GiroNoCaption; GiroNoCaptionLbl)
                {
                }
                column(VATRegNoCaption; VATRegNoCaptionLbl)
                {
                }
                column(PhoneNoCaption; PhoneNoCaptionLbl)
                {
                }
                column(ReminderCaption; UPPERCASE(ReminderCaptionLbl) + ' ' + FORMAT("Issued Reminder Header"."Reminder Level"))
                {
                }
                column(CustNo_IssueReminderHdrCaption; "Issued Reminder Header".FIELDCAPTION("Customer No."))
                {
                }
                dataitem(DimensionLoop; Integer)
                {
                    DataItemLinkReference = "Issued Reminder Header";
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = FILTER(1 ..));
                    column(DimText; DimText)
                    {
                    }
                    column(Number_IntegerLine; Number)
                    {
                    }
                    column(HeaderDimensionsCaption; HeaderDimensionsCaptionLbl)
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        IF Number = 1 THEN BEGIN
                            IF NOT DimSetEntry.FINDSET THEN
                                CurrReport.BREAK;
                        END ELSE
                            IF NOT Continue THEN
                                CurrReport.BREAK;

                        CLEAR(DimText);
                        Continue := FALSE;
                        REPEAT
                            OldDimText := DimText;
                            IF DimText = '' THEN
                                DimText := STRSUBSTNO('%1 - %2', DimSetEntry."Dimension Code", DimSetEntry."Dimension Value Code")
                            ELSE
                                DimText :=
                                  STRSUBSTNO(
                                    '%1; %2 - %3', DimText,
                                    DimSetEntry."Dimension Code", DimSetEntry."Dimension Value Code");
                            IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                DimText := OldDimText;
                                Continue := TRUE;
                                EXIT;
                            END;
                        UNTIL DimSetEntry.NEXT = 0;
                    end;

                    trigger OnPreDataItem()
                    begin
                        IF NOT ShowInternalInfo THEN
                            CurrReport.BREAK;
                    end;
                }
                dataitem("Issued Reminder Line"; "Issued Reminder Line")
                {
                    DataItemLink = "Reminder No." = FIELD("No.");
                    DataItemLinkReference = "Issued Reminder Header";
                    DataItemTableView = SORTING("Reminder No.", "Line No.");
                    column(RemAmt_IssuedReminderLine; "Remaining Amount")
                    {
                        AutoFormatExpression = GetCurrencyCodeFromHeader;
                        AutoFormatType = 1;
                    }
                    column(Desc_IssuedReminderLine; Description)
                    {
                    }
                    column(Type_IssuedReminderLine; FORMAT(Type, 0, 2))
                    {
                    }
                    column(DocDate_IssuedReminderLine; FORMAT("Document Date"))
                    {
                    }
                    column(DocNo_IssuedReminderLine; "Document No.")
                    {
                    }
                    column(DocNoCaption_IssuedReminderLine; FIELDCAPTION("Document No."))
                    {
                    }
                    column(DueDate_IssuedReminderLine; FORMAT("Due Date"))
                    {
                    }
                    column(OriginalAmt_IssuedReminderLine; "Original Amount")
                    {
                        AutoFormatExpression = GetCurrencyCodeFromHeader;
                        AutoFormatType = 1;
                    }
                    column(DocType_IssuedReminderLine; "Document Type")
                    {
                    }
                    column(LineNo_IssuedReminderLine; "No.")
                    {
                    }
                    column(ShowInternalInfo; ShowInternalInfo)
                    {
                    }
                    column(NNCInterestAmt; NNC_InterestAmount)
                    {
                    }
                    column(TotalText; TotalText)
                    {
                    }
                    column(MIREntry_IssuedReminderLine; "Detailed Interest Rates Entry")
                    {
                    }
                    column(NNCTotal; NNC_Total)
                    {
                    }
                    column(TotalInclVATText; TotalInclVATText)
                    {
                    }
                    column(NNCVATAmt; NNC_VATAmount)
                    {
                    }
                    column(NNCTotalInclVAT; NNC_TotalInclVAT)
                    {
                    }
                    column(TotalVATAmt; TotalVATAmount)
                    {
                    }
                    column(RemNo_IssuedReminderLine; "Reminder No.")
                    {
                    }
                    column(DocumentDateCaption1; DocumentDateCaption1Lbl)
                    {
                    }
                    column(InterestAmountCaption; InterestAmountCaptionLbl)
                    {
                    }
                    column(RemAmt_IssuedReminderLineCaption; FIELDCAPTION("Remaining Amount"))
                    {
                    }
                    column(DocNo_IssuedReminderLineCaption; FIELDCAPTION("Document No."))
                    {
                    }
                    column(OriginalAmt_IssuedReminderLineCaption; FIELDCAPTION("Original Amount"))
                    {
                    }
                    column(DocType_IssuedReminderLineCaption; FIELDCAPTION("Document Type"))
                    {
                    }
                    column(Interest; Interest)
                    {
                    }
                    column(RemainingAmountText; RemainingAmt)
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        IF NOT "Detailed Interest Rates Entry" THEN BEGIN
                            VATAmountLine.INIT;
                            VATAmountLine."VAT Identifier" := "VAT Identifier";
                            VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                            VATAmountLine."Tax Group Code" := "Tax Group Code";
                            VATAmountLine."VAT %" := "VAT %";
                            VATAmountLine."VAT Base" := Amount;
                            VATAmountLine."VAT Amount" := "VAT Amount";
                            VATAmountLine."Amount Including VAT" := Amount + "VAT Amount";
                            VATAmountLine."VAT Clause Code" := "VAT Clause Code";
                            VATAmountLine.InsertLine;

                            CASE Type OF
                                Type::"G/L Account":
                                    "Remaining Amount" := Amount;
                                Type::"Line Fee":
                                    "Remaining Amount" := Amount;
                                Type::"Customer Ledger Entry":
                                    ReminderInterestAmount := Amount;
                            END;

                            NNC_InterestAmountTotal += ReminderInterestAmount;
                            NNC_RemainingAmountTotal += "Remaining Amount";
                            NNC_VATAmountTotal += "VAT Amount";

                            NNC_InterestAmount := (NNC_InterestAmountTotal + NNC_VATAmountTotal + "Issued Reminder Header"."Additional Fee" -
                                                   AddFeeInclVAT + "Issued Reminder Header"."Add. Fee per Line" - AddFeePerLineInclVAT) /
                              (VATInterest / 100 + 1);
                            NNC_Total := NNC_RemainingAmountTotal + NNC_InterestAmountTotal;
                            NNC_VATAmount := NNC_VATAmountTotal;
                            NNC_TotalInclVAT := NNC_RemainingAmountTotal + NNC_InterestAmountTotal + NNC_VATAmountTotal;

                            TotalRemAmt += "Remaining Amount";
                        END;

                        RemainingAmt := '';

                        IF ("Remaining Amount" = 0) AND ("Due Date" = 0D) THEN
                            RemainingAmt := ''
                        ELSE
                            RemainingAmt := FORMAT("Remaining Amount");
                    end;

                    trigger OnPreDataItem()
                    begin
                        CLEAR(CompanyInfo.Picture);
                        CLEAR(CompanyInfo1.Picture);
                        CLEAR(CompanyInfo2.Picture);
                        CLEAR(CompanyInfo3.Picture);

                        IF FINDLAST THEN BEGIN
                            EndLineNo := "Line No." + 1;
                            REPEAT
                                Continue :=
                                  NOT ShowNotDueAmounts AND
                                  ("No. of Reminders" = 0) AND
                                  (((Type = Type::"Customer Ledger Entry") OR (Type = Type::"Line Fee")) OR (Type = Type::" ")) OR
                                  "Detailed Interest Rates Entry" AND NOT ShowMIRLines;
                                IF Continue THEN
                                    EndLineNo := "Line No.";
                            UNTIL (NEXT(-1) = 0) OR NOT Continue;
                        END;

                        VATAmountLine.DELETEALL;
                        SETFILTER("Line No.", '<%1', EndLineNo);
                        //CurrReport.CREATETOTALS("Remaining Amount", "VAT Amount", ReminderInterestAmount);
                    end;
                }
                dataitem(IssuedReminderLine2; "Issued Reminder Line")
                {
                    DataItemLink = "Reminder No." = FIELD("No.");
                    DataItemLinkReference = "Issued Reminder Header";
                    DataItemTableView = SORTING("Reminder No.", "Line No.");
                    column(Desc1_IssuedReminderLine; Description)
                    {
                    }
                    column(LineNo1_IssuedReminderLine; "Line No.")
                    {
                    }

                    trigger OnPreDataItem()
                    begin
                        SETFILTER("Line No.", '>=%1', EndLineNo);
                        IF NOT ShowNotDueAmounts THEN BEGIN
                            SETFILTER(Type, '<>%1', Type::" ");
                            IF FINDFIRST THEN
                                IF "Line No." > EndLineNo THEN BEGIN
                                    SETRANGE(Type);
                                    SETRANGE("Line No.", EndLineNo, "Line No." - 1); // find "Open Entries Not Due" line
                                    IF FINDLAST THEN
                                        SETRANGE("Line No.", EndLineNo, "Line No." - 1);
                                END;
                            SETRANGE(Type);
                        END;
                    end;
                }
                dataitem(VATCounter; Integer)
                {
                    DataItemTableView = SORTING(Number);
                    column(VATAmtLineAmtIncludVAT; VATAmountLine."Amount Including VAT")
                    {
                        AutoFormatExpression = "Issued Reminder Line".GetCurrencyCodeFromHeader;
                        AutoFormatType = 1;
                    }
                    column(VALVATAmount; VALVATAmount)
                    {
                        AutoFormatExpression = "Issued Reminder Line".GetCurrencyCodeFromHeader;
                        AutoFormatType = 1;
                    }
                    column(VALVATBase; VALVATBase)
                    {
                        AutoFormatExpression = "Issued Reminder Line".GetCurrencyCodeFromHeader;
                        AutoFormatType = 1;
                    }
                    column(VALVATBaseVALVATAmt; VALVATBase + VALVATAmount)
                    {
                        AutoFormatExpression = "Issued Reminder Line".GetCurrencyCodeFromHeader;
                        AutoFormatType = 1;
                    }
                    column(VATAmtLineVAT; VATAmountLine."VAT %")
                    {
                    }
                    column(AmountIncVATCaption; AmountIncVATCaptionLbl)
                    {
                    }
                    column(VATAmtSpecCaption; VATAmtSpecCaptionLbl)
                    {
                    }
                    column(ContinuedCaption; ContinuedCaptionLbl)
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        VATAmountLine.GetLine(Number);
                        VALVATBase := VATAmountLine."Amount Including VAT" / (1 + VATAmountLine."VAT %" / 100);
                        VALVATAmount := VATAmountLine."Amount Including VAT" - VALVATBase;
                    end;

                    trigger OnPreDataItem()
                    begin
                        IF VATAmountLine.GetTotalVATAmount = 0 THEN
                            CurrReport.BREAK;

                        SETRANGE(Number, 1, VATAmountLine.COUNT);

                        VALVATBase := 0;
                        VALVATAmount := 0;
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
                        AutoFormatExpression = "Issued Reminder Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATClausesCaption; VATClausesCap)
                    {
                    }
                    column(VATClauseVATIdentifierCaption; VATIdentifierLbl)
                    {
                    }
                    column(VATClauseVATAmtCaption; VATAmountCaptionLbl)
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        VATAmountLine.GetLine(Number);
                        IF NOT VATClause.GET(VATAmountLine."VAT Clause Code") THEN
                            CurrReport.SKIP;
                        VATClause.TranslateDescription("Issued Reminder Header"."Language Code");
                    end;

                    trigger OnPreDataItem()
                    begin
                        CLEAR(VATClause);
                        SETRANGE(Number, 1, VATAmountLine.COUNT);
                        //CurrReport.CREATETOTALS(VATAmountLine."VAT Amount");
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
                    column(VALVATAmountLCY; VALVATAmountLCY)
                    {
                        AutoFormatType = 1;
                    }
                    column(VALVATBaseLCY; VALVATBaseLCY)
                    {
                        AutoFormatType = 1;
                    }
                    column(VATAmtLineVATCtrl107; VATAmountLine."VAT %")
                    {
                        DecimalPlaces = 0 : 5;
                    }
                    column(ContinuedCaption1; ContinuedCaption1Lbl)
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        VATAmountLine.GetLine(Number);

                        VALVATBaseLCY := ROUND(VATAmountLine."Amount Including VAT" / (1 + VATAmountLine."VAT %" / 100) / CurrFactor);
                        VALVATAmountLCY := ROUND(VATAmountLine."Amount Including VAT" / CurrFactor - VALVATBaseLCY);
                    end;

                    trigger OnPreDataItem()
                    begin
                        IF (NOT GLSetup."Print VAT specification in LCY") OR
                           ("Issued Reminder Header"."Currency Code" = '') OR
                           (VATAmountLine.GetTotalVATAmount = 0)
                        THEN
                            CurrReport.BREAK;

                        SETRANGE(Number, 1, VATAmountLine.COUNT);

                        VALVATBaseLCY := 0;
                        VALVATAmountLCY := 0;

                        IF GLSetup."LCY Code" = '' THEN
                            VALSpecLCYHeader := Text011 + Text012
                        ELSE
                            VALSpecLCYHeader := Text011 + FORMAT(GLSetup."LCY Code");

                        CurrExchRate.FindCurrency("Issued Reminder Header"."Posting Date", "Issued Reminder Header"."Currency Code", 1);
                        CustEntry.SETRANGE("Customer No.", "Issued Reminder Header"."Customer No.");
                        CustEntry.SETRANGE("Document Type", CustEntry."Document Type"::Reminder);
                        CustEntry.SETRANGE("Document No.", "Issued Reminder Header"."No.");
                        IF CustEntry.FINDFIRST THEN BEGIN
                            CustEntry.CALCFIELDS("Amount (LCY)", Amount);
                            CurrFactor := 1 / (CustEntry."Amount (LCY)" / CustEntry.Amount);
                            VALExchRate := STRSUBSTNO(Text013, ROUND(1 / CurrFactor * 100, 0.000001), CurrExchRate."Exchange Rate Amount");
                        END ELSE BEGIN
                            CurrFactor := CurrExchRate.ExchangeRate("Issued Reminder Header"."Posting Date", "Issued Reminder Header"."Currency Code");
                            VALExchRate := STRSUBSTNO(Text013, CurrExchRate."Relational Exch. Rate Amount", CurrExchRate."Exchange Rate Amount");
                        END;
                    end;
                }
                dataitem(LetterText; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = CONST(1));
                    column(GreetingText; GreetingLbl)
                    {
                    }
                    column(AmtDueText; AmtDueTxt)
                    {
                    }
                    column(BodyText; BodyLbl)
                    {
                    }
                    column(ClosingText; ClosingLbl)
                    {
                    }
                    column(DescriptionText; DescriptionLbl)
                    {
                    }
                    column(TotalRemAmt_IssuedReminderLine; TotalRemAmt)
                    {
                    }

                    trigger OnPreDataItem()
                    begin
                        AmtDueTxt := '';
                        IF FORMAT("Issued Reminder Header"."Due Date") <> '' THEN
                            AmtDueTxt := STRSUBSTNO(AmtDueLbl, "Issued Reminder Header"."Due Date");
                    end;
                }
            }

            trigger OnAfterGetRecord()
            var
                GLAcc: Record "G/L Account";
                CustPostingGroup: Record "Customer Posting Group";
                VATPostingSetup: Record "VAT Posting Setup";
            begin
                CurrReport.LANGUAGE := Language.GetLanguageIDOrDefault("Language Code");       //DSDK.45

                DimSetEntry.SETRANGE("Dimension Set ID", "Dimension Set ID");

                FormatAddr.IssuedReminder(CustAddr, "Issued Reminder Header");
                //>>DSDK.35
                CompanyInfo.TranslateCountryName(CustAddr, "Issued Reminder Header"."Country/Region Code", "Issued Reminder Header"."Language Code");
                //<<DSDK.35

                IF "Your Reference" = '' THEN
                    ReferenceText := ''
                ELSE
                    ReferenceText := FIELDCAPTION("Your Reference");
                IF "VAT Registration No." = '' THEN
                    VATNoText := ''
                ELSE
                    VATNoText := FIELDCAPTION("VAT Registration No.");
                IF "Currency Code" = '' THEN BEGIN
                    GLSetup.TESTFIELD("LCY Code");
                    TotalText := STRSUBSTNO(Text000, GLSetup."LCY Code");
                    TotalInclVATText := STRSUBSTNO(Text001, GLSetup."LCY Code");
                END ELSE BEGIN
                    TotalText := STRSUBSTNO(Text000, "Currency Code");
                    TotalInclVATText := STRSUBSTNO(Text001, "Currency Code");
                END;
                //CurrReport.PAGENO := 1;
                IF NOT IsReportInPreviewMode THEN
                    IncrNoPrinted;

                CALCFIELDS("Additional Fee");
                CustPostingGroup.GET("Customer Posting Group");
                IF GLAcc.GET(CustPostingGroup."Additional Fee Account") THEN BEGIN
                    VATPostingSetup.GET("VAT Bus. Posting Group", GLAcc."VAT Prod. Posting Group");
                    AddFeeInclVAT := "Additional Fee" * (1 + VATPostingSetup."VAT %" / 100);
                END ELSE
                    AddFeeInclVAT := "Additional Fee";

                CALCFIELDS("Add. Fee per Line");
                AddFeePerLineInclVAT := "Add. Fee per Line" + CalculateLineFeeVATAmount;

                CALCFIELDS("Interest Amount", "VAT Amount");
                IF ("Interest Amount" <> 0) AND ("VAT Amount" <> 0) THEN BEGIN
                    GLAcc.GET(CustPostingGroup."Interest Account");
                    VATPostingSetup.GET("VAT Bus. Posting Group", GLAcc."VAT Prod. Posting Group");
                    VATInterest := VATPostingSetup."VAT %";
                    Interest :=
                      ("Interest Amount" +
                       "VAT Amount" + "Additional Fee" - AddFeeInclVAT + "Add. Fee per Line" - AddFeePerLineInclVAT) / (VATInterest / 100 + 1);
                END ELSE BEGIN
                    Interest := "Interest Amount";
                    VATInterest := 0;
                END;

                TotalVATAmount := "VAT Amount";
                NNC_InterestAmountTotal := 0;
                NNC_RemainingAmountTotal := 0;
                NNC_VATAmountTotal := 0;
                NNC_InterestAmount := 0;
                NNC_Total := 0;
                NNC_VATAmount := 0;
                NNC_TotalInclVAT := 0;
                TotalRemAmt := 0;

                //>>DSDK.bund
                CLEAR(BottomLine);
                CompanyInfo.GetBottom(BottomLine[1], BottomLine[2], "Language Code");
                //<<DSDK.bund

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

            end;

            trigger OnPreDataItem()
            begin
                CompanyInfo.GET;
                FormatAddr.Company(CompanyAddr, CompanyInfo);
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
                    CaptionML = DAN = 'Indstillinger', ENU = 'Options';
                    field(ShowInternalInfo; ShowInternalInfo)
                    {
                        ApplicationArea = Basic, Suite;
                        CaptionML = DAN = 'Vis interne oplysninger', ENU = 'Show Internal Information';
                        ToolTipML = DAN = 'Angiver, om den udskrevne rapport skal indeholde oplysninger, der kun er til intern brug.',
                                    ENU = 'Specifies if you want the printed report to show information that is only for internal use.';
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        ApplicationArea = Basic, Suite;
                        CaptionML = DAN = 'Logfør interaktion', ENU = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        ToolTipML = DAN = 'Angiver, om den rykker, du udskriver, skal registreres som interaktion og føjes til tabellen Interaktionslogpost.',
                                    ENU = 'Specifies if you want the reminder that you print to be recorded as interaction, and to be added to the Interaction Log Entry table.';
                    }
                    field(ShowNotDueAmounts; ShowNotDueAmounts)
                    {
                        ApplicationArea = Basic, Suite;
                        CaptionML = DAN = 'Vis ikkeforfaldne beløb', ENU = 'Show Not Due Amounts';
                        ToolTipML = DAN = 'Angiver, om du vil have vist beløb, der ikke er forfaldne til betaling fra debitorer.',
                                    ENU = 'Specifies if you want to show amounts that are not due from customers.';
                    }
                    field(ShowMIR; ShowMIRLines)
                    {
                        ApplicationArea = Basic, Suite;
                        CaptionML = DAN = 'Vis MIR detalje', ENU = 'Show MIR Detail';
                        ToolTipML = DAN = 'Angiver, om du ønsker, at flere rentesatsoplysninger om kladdelinjerne skal medtages i rapporten.',
                                    ENU = 'Specifies if you want multiple interest rate details for the journal lines to be included in the report.';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit()
        begin
            LogInteractionEnable := TRUE;
        end;

        trigger OnOpenPage()
        begin
            LogInteraction := SegManagement.FindInteractTmplCode(8) <> '';
            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        GLSetup.GET;
        SalesSetup.GET;

        //>>DSDK.Picture
        CompanyInfo3.GET;
        CompanyInfo3.CALCFIELDS(Picture);
        //<<DSDK.Picture

        //>>DSDK.49
        CompanyInfo.GetCompanyName(ParamCompanyName);
        //<<DSDK.49
    end;

    trigger OnPostReport()
    begin
        IF LogInteraction AND NOT IsReportInPreviewMode THEN
            IF "Issued Reminder Header".FINDSET THEN
                REPEAT
                    SegManagement.LogDocument(
                      8, "Issued Reminder Header"."No.", 0, 0, DATABASE::Customer, "Issued Reminder Header"."Customer No.",
                      '', '', "Issued Reminder Header"."Posting Description", '');
                UNTIL "Issued Reminder Header".NEXT = 0;
    end;

    var
        Text000: TextConst DAN = 'I alt %1', DEU = 'Gesamt %1', ENU = 'Total %1';
        Text001: TextConst DAN = 'I alt %1 inkl. moms', DEU = 'Gesamt %1 Unkl. MwSt.', ENU = 'Total %1 Incl. VAT';
        Text002: TextConst DAN = 'Side %1', DEU = 'Seite %1', ENU = 'Page %1';
        Text011: TextConst DAN = 'Momsbeløbsspecifikation i ', DEU = 'MwSt. Betrag Specifikation in', ENU = 'VAT Amount Specification in ';
        Text012: TextConst DAN = 'Lokal valuta', DEU = 'Währung', ENU = 'Local Currency';
        Text013: TextConst DAN = 'Valutakurs: %1/%2', DEU = 'Wechselkurs: %1/%2', ENU = 'Exchange rate: %1/%2';
        TextPageLbl: TextConst DAN = 'Side', DEU = 'Seite', ENU = 'Page';
        PostingDateCaptionLbl: TextConst DAN = 'Bogføringsdato', DEU = 'Buchungsdatum', ENU = 'Posting Date';
        ReminderNoCaptionLbl: TextConst DAN = 'Nummer', DEU = 'Nummer', ENU = 'Number';
        BankAccNoCaptionLbl: TextConst DAN = 'Kontonr.', DEU = 'Konto Nr.', ENU = 'Account No.';
        BankNameCaptionLbl: TextConst DAN = 'Bank', DEU = 'Bank', ENU = 'Bank';
        GiroNoCaptionLbl: TextConst DAN = 'Gironr.', DEU = 'Giro Nr.', ENU = 'Giro No.';
        VATRegNoCaptionLbl: TextConst DAN = 'SE/CVR-nr.', DEU = 'USt-IdNr', ENU = 'VAT';
        PhoneNoCaptionLbl: TextConst DAN = 'Telefon', DEU = 'Telefon', ENU = 'Phone No.';
        ReminderCaptionLbl: TextConst DAN = 'Rykker', DEU = 'Mahnung', ENU = 'Reminder';
        HeaderDimensionsCaptionLbl: TextConst DAN = 'Dimensioner - hoved', DEU = 'Dimensionen - Kopf', ENU = 'Header Dimensions';
        DocumentDateCaption1Lbl: TextConst DAN = 'Bilagsdato', DEU = 'Beleg Datum', ENU = 'Document Date';
        InterestAmountCaptionLbl: TextConst DAN = 'Rentebeløb', DEU = 'Zinz Betrag', ENU = 'Interest Amount';
        AmountIncVATCaptionLbl: TextConst DAN = 'Beløb inkl. moms', DEU = 'Betrag Inkl. MwSt.', ENU = 'Amount Including VAT';
        VATAmtSpecCaptionLbl: TextConst DAN = 'Momsbeløbspecifikation', DEU = 'MwSt. Betrag Specifikation', ENU = 'VAT Amount Specification';
        VATClausesCap: TextConst DAN = 'Momsklausul', DEU = 'Steuerklausel', ENU = 'VAT Clause';
        VATIdentifierLbl: TextConst DAN = 'Moms-id', DEU = 'MwSt. Code', ENU = 'VAT Identifier';
        ContinuedCaptionLbl: TextConst DAN = 'Fortsat', DEU = 'Fortgesetzt', ENU = 'Continued';
        ContinuedCaption1Lbl: TextConst DAN = 'Fortsat', DEU = 'Fortgesetzt', ENU = 'Continued';
        DueDateCaptionLbl: TextConst DAN = 'Forfaldsdato', DEU = 'Fälligkeitsdatum', ENU = 'Due Date';
        VATAmountCaptionLbl: TextConst DAN = 'Momsbeløb', DEU = 'MwSt. Betrag', ENU = 'VAT Amount';
        VATBaseCaptionLbl: TextConst DAN = 'Momsgrundlag', DEU = 'MwSt. Grundlage', ENU = 'VAT Base';
        VATPercentCaptionLbl: TextConst DAN = 'Momspct.', DEU = 'MwSt. %', ENU = 'VAT %';
        TotalCaptionLbl: TextConst DAN = 'I alt', DEU = 'Gesamt', ENU = 'Total';
        PageCaptionLbl: TextConst DAN = 'Side', DEU = 'Seite', ENU = 'Page';
        DocDateCaptionLbl: TextConst DAN = 'Dato', DEU = 'Datum', ENU = 'Date';
        HomePageCaptionLbl: TextConst DAN = 'Hjemmeside', DEU = 'Web Seite', ENU = 'Home Page';
        EMailCaptionLbl: TextConst DAN = 'E-mail', DEU = 'E-Mail', ENU = 'E-Mail';
        CustEntry: Record 21;
        GLSetup: Record 98;
        SalesSetup: Record 311;
        CompanyInfo: Record 79;
        CompanyInfo1: Record 79;
        CompanyInfo2: Record 79;
        CompanyInfo3: Record 79;
        VATAmountLine: Record 290 temporary;
        VATClause: Record 560;
        DimSetEntry: Record 480;
        //DSDK.45_Language: Record "Language";
        Language: Codeunit "Language";
        CurrExchRate: Record 330;
        FormatAddr: Codeunit 365;
        SegManagement: Codeunit 5051;
        CustAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        VATNoText: Text[30];
        ReferenceText: Text[35];
        TotalText: Text[50];
        TotalInclVATText: Text[50];
        ReminderInterestAmount: Decimal;
        EndLineNo: Integer;
        Continue: Boolean;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        LogInteraction: Boolean;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        VALExchRate: Text[50];
        CurrFactor: Decimal;
        AddFeeInclVAT: Decimal;
        AddFeePerLineInclVAT: Decimal;
        TotalVATAmount: Decimal;
        VATInterest: Decimal;
        Interest: Decimal;
        VALVATBase: Decimal;
        VALVATAmount: Decimal;
        NNC_InterestAmount: Decimal;
        NNC_Total: Decimal;
        NNC_VATAmount: Decimal;
        NNC_TotalInclVAT: Decimal;
        NNC_InterestAmountTotal: Decimal;
        NNC_RemainingAmountTotal: Decimal;
        NNC_VATAmountTotal: Decimal;
        [InDataSet]
        LogInteractionEnable: Boolean;
        ShowNotDueAmounts: Boolean;
        GreetingLbl: TextConst DAN = 'Hej', DEU = 'Hello', ENU = 'Hello';
        AmtDueLbl: TextConst DAN = 'Du modtager denne mail for at give dig formelt besked om, at en betaling, du skylder, har overskredet forfaldsdatoen. Betalingen forfaldt den %1. Vedhæftet er der en kopi af en faktura med oplysninger om det udestående beløb.', ENU = 'You are receiving this email to formally notify you that payment owed by you is past due. The payment was due on %1. Enclosed is a copy of invoice with the details of remaining amount.', Comment = '%1 = A due date';
        BodyLbl: TextConst DAN = 'Hvis du allerede har foretaget betalingen, kan du se bort fra denne mail, Tak, for din ordre.', ENU = 'If you have already made the payment, please disregard this email. Thank you for your business.';
        ClosingLbl: TextConst DAN = 'Med venlig hilsen', DEU = 'Mit freundlichen Grüssen', ENU = 'Sincerely';
        DescriptionLbl: TextConst DAN = 'Beskrivelse', DEU = 'Beschreibung', ENU = 'Description';
        AmtDueTxt: Text;
        RemainingAmt: Text;
        TotalRemAmt: Decimal;
        ShowMIRLines: Boolean;
        //DSDK.txt
        PaymentInfo: TextConst DAN = 'Betalingsoplysninger', DEU = 'Zahlingsinformation', ENU = 'Payment Information';
        EURIBANCaption: TextConst DAN = 'EUR IBAN', DEU = 'EUR IBAN', ENU = 'EUR IBAN';
        SWIFTCaption: TextConst DAN = 'SWIFT:', DEU = 'SWIFT:', ENU = 'SWIFT:';
        IBANCaption: TextConst DAN = 'IBAN:', DEU = 'IBAN:', ENU = 'IBAN:';

        //DSDK.Bottom
        BottomLine: array[2] of Text[250];
        //DSDK.49
        ParamCompanyName: Text[50];
        TabIdx: Integer;
        PaymentInfoLines: array[5] of Text[50];
        PaymentTermLines: array[2] of Text[100];
        //DSDK.Custom.06.Navadan
        PaymentTermLines1_Navadan: Label 'All remittance expenses are the full responsibility of the payer.';
        PaymentTermLines2_Navadan: Label 'We do not accept any deductions of bank transfer charges.';
        BeneficiaryCaption: Label 'BENEFICIARY:';


    local procedure IsReportInPreviewMode(): Boolean
    var
        MailManagement: Codeunit 9520;
    begin
        EXIT(CurrReport.PREVIEW OR MailManagement.IsHandlingGetEmailBody);
    end;
}

