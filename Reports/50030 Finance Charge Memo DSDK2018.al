report 50030 "Finance Charge Memo DSDK2018"
{
    // version DSDK.std.2018,DSDK.05

    // DSDK - Datasign.dk - Standard report std.2 - NAV 2016
    // DSDK.01 LV 2016.08.30 - FIK
    // DSDK.02 LV 2017.01.03 - change Description to "Original Amount"
    // DSDK.03 LV 2017.05.10 - 2 lines bottom
    // DSDK.04 LV 2017.05.24 - "Picture 2"
    // DSDK.05 LV 2017.05.24 - PaymentInfo in bottom
    // 
    // DSDK.00 LV 2018.02.12 - ERPgruppen.dk - 2018 Standard report
    // DSDK.35 LV 2019.07.18 - Translate Country Name
    // DSDK.45 LV 2019.11.04 - version 15
    // DSDK.46 LV 2020.01.14 - FIK75
    // DSDK.47 LV 2020.01.21 - FIK73

    //      NAVADAN
    // DSDK.Custom.06 2020.01.23 - extra Payment Info (auto. via ParamCompanyName)

    // DSDK.49 LV 2020.01.23 - print via PaymentInfoLines

    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/50030 Finance Charge Memo DSDK2018.rdlc';

    CaptionML = DAN = 'Rentenota',
                ENU = 'Finance Charge Memo';

    dataset
    {
        dataitem("Issued Fin. Charge Memo Header"; "Issued Fin. Charge Memo Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.";
            RequestFilterHeadingML = DAN = 'Rentenota',
                                     ENU = 'Finance Charge Memo';
            column(No_IssuedFinChgMemo; "No.")
            {
            }
            column(DueDateCaption; DueDateCaptionLbl)
            {
            }
            column(VATAmtCaption; VATAmtCaptionLbl)
            {
            }
            column(VATBaseCaption; VATBaseCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(DoctDateCaption; DoctDateCaptionLbl)
            {
            }
            column(HomePageCaption; HomePageCaptionLbl)
            {
            }
            column(EMailCaption; EMailCaptionLbl)
            {
            }
            column(BottomLine1; BottomLine[1])
            {
            }
            column(BottomLine2; BottomLine[2])
            {
            }
            column(DocumentReference; DocumentReference)
            {
            }
            column(CalculateDateCaption; CalculateDateLbl)
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
                column(PostDt_IssuFinChrgMemoHr; FORMAT("Issued Fin. Charge Memo Header"."Posting Date", 0, '<Day,2>/<Month,2>-<Year4>'))
                {
                }
                column(DueDt_IssuFinChrgMemoHr; FORMAT("Issued Fin. Charge Memo Header"."Due Date", 0, '<Day,2>/<Month,2>-<Year4>'))
                {
                }
                column(No1_IssuFinChrgMemoHr; "Issued Fin. Charge Memo Header"."No.")
                {
                }
                column(DocDt_IssuFinChrgMemoHr; FORMAT("Issued Fin. Charge Memo Header"."Document Date", 0, '<Day,2>/<Month,2>-<Year4>'))
                {
                }
                column(YourRef_IssuFinChrgMemoHr; "Issued Fin. Charge Memo Header"."Your Reference")
                {
                }
                column(ReferenceText; ReferenceText)
                {
                }
                column(VatRNo_IssuFinChrgMemoHr; "Issued Fin. Charge Memo Header"."VAT Registration No.")
                {
                }
                column(VATNoText; VATNoText)
                {
                }
                column(CompanyInfoBankAccNo; CompanyInfo."Bank Account No.")
                {
                }
                column(CustNo_IssuFinChrgMemoHr; "Issued Fin. Charge Memo Header"."Customer No.")
                {
                }
                column(CustNo_IssuFinChrgMemoHrCaption; "Issued Fin. Charge Memo Header".FIELDCAPTION("Customer No."))
                {
                }
                column(CompanyInfoBankName; CompanyInfo."Bank Name")
                {
                }
                column(CompanyInfoGiroNo; CompanyInfo."Giro No.")
                {
                }
                column(CompanyInfoVatRegNo; CompanyInfo."VAT Registration No.")
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
                column(PageCaption; PageCaptionLbl)
                {
                }
                column(PostingDateCaption; PostingDateCaptionLbl)
                {
                }
                column(FinChrgMemoNoCaption; FinChrgMemoNoCaptionLbl)
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
                column(FinChgMemoCaption; UpperCase(FinChgMemoCaptionLbl))
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

                dataitem(DimensionLoop; Integer)
                {
                    DataItemLinkReference = "Issued Fin. Charge Memo Header";
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = FILTER(1 ..));
                    column(DimText; DimText)
                    {
                    }
                    column(Number_DimLoop; Number)
                    {
                    }
                    column(HdrDimCaption; HdrDimCaptionLbl)
                    {
                    }

                    trigger OnAfterGetRecord();
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

                    trigger OnPreDataItem();
                    begin
                        IF NOT ShowInternalInfo THEN
                            CurrReport.BREAK;
                    end;
                }
                dataitem("Issued Fin. Charge Memo Line"; "Issued Fin. Charge Memo Line")
                {
                    DataItemLink = "Finance Charge Memo No." = FIELD("No.");
                    DataItemLinkReference = "Issued Fin. Charge Memo Header";
                    DataItemTableView = SORTING("Finance Charge Memo No.", "Line No.");
                    column(LineNo_IssuFinChrgMemoLine; "Line No.")
                    {
                    }
                    column(StartLineNo; StartLineNo)
                    {
                    }
                    column(TypeInt; TypeInt)
                    {
                    }
                    column(ShowInternalInfo; ShowInternalInfo)
                    {
                    }
                    column(Amt_IssuFinChrgMemoLine; Amount)
                    {
                        AutoFormatExpression = "Issued Fin. Charge Memo Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(Desc_IssuFinChrgMemoLine; Description)
                    {
                    }
                    column(DocDt_IssuFinChrgMemoLine; FORMAT("Document Date", 0, '<Day,2>/<Month,2>-<Year4>'))
                    {
                    }
                    column(DocNo_IssuFinChrgMemoLine; "Document No.")
                    {
                    }
                    column(DueDt_IssuFinChrgMemoLine; FORMAT("Due Date", 0, '<Day,2>/<Month,2>-<Year4>'))
                    {
                    }
                    column(DcType_IssuFinChrgMemoLine; "Document Type")
                    {
                    }
                    column(DocNo_IssuFinChrgMemoLineCaption; FIELDCAPTION("Document No."))
                    {
                    }
                    column(Desc_IssuFinChrgMemoLineCaption; FIELDCAPTION(Description))
                    {
                    }
                    column(Amt_IssuFinChrgMemoLineCaption; FIELDCAPTION(Amount))
                    {
                    }
                    column(DcType_IssuFinChrgMemoLineCaption; FIELDCAPTION("Document Type"))
                    {
                    }
                    column(No_IssuedFinChgMemoLine; "No.")
                    {
                    }
                    column(TotalAmtExclVAT; Amount + 0)
                    {
                        AutoFormatExpression = "Issued Fin. Charge Memo Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(TotalText; TotalText)
                    {
                    }
                    column(TotalAmtInclVAT; Amount + "VAT Amount")
                    {
                        AutoFormatExpression = GetCurrencyCode;
                        AutoFormatType = 1;
                    }
                    column(TotalInclVATText; TotalInclVATText)
                    {
                    }
                    column(VatAmt_IssuFinChrgMemoLine; "VAT Amount")
                    {
                        AutoFormatExpression = "Issued Fin. Charge Memo Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(DocDateCaption1; DocDateCaption1Lbl)
                    {
                    }
                    column(AmountCaption; TxtAmountLbl)
                    {
                    }
                    column(OriginalAmount_IssuedFinChargeMemoLine; "Issued Fin. Charge Memo Line"."Original Amount")
                    {
                    }
                    column(FinChargeAmountCaption; TxtFinChargeAmountLbl)
                    {
                    }

                    trigger OnAfterGetRecord();
                    begin
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

                        TypeInt := Type;
                    end;

                    trigger OnPreDataItem();
                    begin
                        IF FIND('-') THEN BEGIN
                            StartLineNo := 0;
                            REPEAT
                                Continue := Type = Type::" ";
                                IF Continue AND (Description = '') THEN
                                    StartLineNo := "Line No.";
                            UNTIL (NEXT = 0) OR NOT Continue;
                        END;
                        IF FIND('+') THEN BEGIN
                            EndLineNo := "Line No." + 1;
                            REPEAT
                                Continue := Type = Type::" ";
                                IF Continue AND (Description = '') THEN
                                    EndLineNo := "Line No.";
                            UNTIL (NEXT(-1) = 0) OR NOT Continue;
                        END;

                        VATAmountLine.DELETEALL;
                        SETFILTER("Line No.", '<%1', EndLineNo);
                        ///CurrReport.CREATETOTALS(Amount,"VAT Amount");
                    end;
                }
                dataitem(IssuedFinChrgMemoLine2; "Issued Fin. Charge Memo Line")
                {
                    DataItemLink = "Finance Charge Memo No." = FIELD("No.");
                    DataItemLinkReference = "Issued Fin. Charge Memo Header";
                    DataItemTableView = SORTING("Finance Charge Memo No.", "Line No.");
                    column(Desc2_IssuFinChrgMemoLine; Description)
                    {
                    }
                    column(LnNo_IssuFinChrgMemoLine2; "Line No.")
                    {
                    }

                    trigger OnPreDataItem();
                    begin
                        SETFILTER("Line No.", '>=%1', EndLineNo);
                    end;
                }
                dataitem(VATCounter; Integer)
                {
                    DataItemTableView = SORTING(Number);
                    column(ValVatBaseValVatAmt; VALVATBase + VALVATAmount)
                    {
                        AutoFormatExpression = "Issued Fin. Charge Memo Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(ValvataAmt; VALVATAmount)
                    {
                        AutoFormatExpression = "Issued Fin. Charge Memo Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VALVATBase; VALVATBase)
                    {
                        AutoFormatExpression = "Issued Fin. Charge Memo Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VatAmtLineVAT; VATAmountLine."VAT %")
                    {
                    }
                    column(AmtInclVATCaption; AmtInclVATCaptionLbl)
                    {
                    }
                    column(VATPercentCaption; VATPercentCaptionLbl)
                    {
                    }
                    column(VATAmtSpecCaption; VATAmtSpecCaptionLbl)
                    {
                    }

                    trigger OnAfterGetRecord();
                    begin
                        VATAmountLine.GetLine(Number);
                        VALVATBase := VATAmountLine."Amount Including VAT" / (1 + VATAmountLine."VAT %" / 100);
                        VALVATAmount := VATAmountLine."Amount Including VAT" - VALVATBase;
                    end;

                    trigger OnPreDataItem();
                    begin
                        SETRANGE(Number, 1, VATAmountLine.COUNT);
                        ///CurrReport.CREATETOTALS(VALVATBase,VALVATAmount,VATAmountLine."Amount Including VAT");
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
                        AutoFormatExpression = "Issued Fin. Charge Memo Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(VATClausesCaption; VATClausesCap)
                    {
                    }
                    column(VATClauseVATIdentifierCaption; VATIdentifierCap)
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
                        VATClause.TranslateDescription("Issued Fin. Charge Memo Header"."Language Code");
                    end;

                    trigger OnPreDataItem();
                    begin
                        CLEAR(VATClause);
                        SETRANGE(Number, 1, VATAmountLine.COUNT);
                        ///CurrReport.CREATETOTALS(VATAmountLine."VAT Amount");
                    end;
                }
                dataitem(VATCounterLCY; Integer)
                {
                    DataItemTableView = SORTING(Number);
                    column(ValExchRate; VALExchRate)
                    {
                    }
                    column(ValspecLCYHdr; VALSpecLCYHeader)
                    {
                    }
                    column(ValvatamountLCY; VALVATAmountLCY)
                    {
                        AutoFormatType = 1;
                    }
                    column(ValvataBaseLCY; VALVATBaseLCY)
                    {
                        AutoFormatType = 1;
                    }
                    column(VatAmtLnVat1; VATAmountLine."VAT %")
                    {
                        DecimalPlaces = 0 : 5;
                    }
                    column(VATPercentCaption1; VATPercentCaption1Lbl)
                    {
                    }

                    trigger OnAfterGetRecord();
                    begin
                        VATAmountLine.GetLine(Number);

                        VALVATBaseLCY := ROUND(VATAmountLine."Amount Including VAT" / (1 + VATAmountLine."VAT %" / 100) / CurrFactor);
                        VALVATAmountLCY := ROUND(VATAmountLine."Amount Including VAT" / CurrFactor - VALVATBaseLCY);
                    end;

                    trigger OnPreDataItem();
                    begin
                        IF (NOT GLSetup."Print VAT specification in LCY") OR
                           ("Issued Fin. Charge Memo Header"."Currency Code" = '') OR
                           (VATAmountLine.GetTotalVATAmount = 0)
                        THEN
                            CurrReport.BREAK;

                        SETRANGE(Number, 1, VATAmountLine.COUNT);
                        ///CurrReport.CREATETOTALS(VALVATBaseLCY,VALVATAmountLCY);

                        IF GLSetup."LCY Code" = '' THEN
                            VALSpecLCYHeader := Text007 + Text008
                        ELSE
                            VALSpecLCYHeader := Text007 + FORMAT(GLSetup."LCY Code");

                        CurrExchRate.FindCurrency("Issued Fin. Charge Memo Header"."Posting Date", "Issued Fin. Charge Memo Header"."Currency Code", 1);
                        CustEntry.SETRANGE("Customer No.", "Issued Fin. Charge Memo Header"."Customer No.");
                        CustEntry.SETRANGE("Document Type", CustEntry."Document Type"::"Finance Charge Memo");
                        CustEntry.SETRANGE("Document No.", "Issued Fin. Charge Memo Header"."No.");
                        IF CustEntry.FINDFIRST THEN BEGIN
                            CustEntry.CALCFIELDS("Amount (LCY)", Amount);
                            CurrFactor := 1 / (CustEntry."Amount (LCY)" / CustEntry.Amount);
                            VALExchRate := STRSUBSTNO(Text009, ROUND(1 / CurrFactor * 100, 0.000001), CurrExchRate."Exchange Rate Amount");
                        END ELSE BEGIN
                            CurrFactor := CurrExchRate.ExchangeRate("Issued Fin. Charge Memo Header"."Posting Date",
                                "Issued Fin. Charge Memo Header"."Currency Code");
                            VALExchRate := STRSUBSTNO(Text009, CurrExchRate."Relational Exch. Rate Amount", CurrExchRate."Exchange Rate Amount");
                        END;
                    end;
                }
            }

            trigger OnAfterGetRecord();
            var
                GLAcc: Record "G/L Account";
                CustPostingGroup: Record "Customer Posting Group";
                VATPostingSetup: Record "VAT Posting Setup";
            begin
                CurrReport.LANGUAGE := Language.GetLanguageIDOrDefault("Language Code");       //DSDK.45
                DimSetEntry.SETRANGE("Dimension Set ID", "Dimension Set ID");

                FormatAddr.IssuedFinanceChargeMemo(CustAddr, "Issued Fin. Charge Memo Header");
                //>>DSDK.35
                CompanyInfo.TranslateCountryName(CustAddr, "Issued Fin. Charge Memo Header"."Country/Region Code", "Issued Fin. Charge Memo Header"."Language Code");
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
                ///CurrReport.PAGENO := 1;
                IF NOT CurrReport.PREVIEW THEN
                    IncrNoPrinted;
                IF LogInteraction THEN
                    IF NOT CurrReport.PREVIEW THEN
                        SegManagement.LogDocument(
                          19, "No.", 0, 0, DATABASE::Customer, "Customer No.", '', '', "Posting Description", '');

                CALCFIELDS("Additional Fee");
                CustPostingGroup.GET("Customer Posting Group");
                GLAcc.GET(CustPostingGroup."Additional Fee Account");
                VATPostingSetup.GET("VAT Bus. Posting Group", GLAcc."VAT Prod. Posting Group");

                GLAcc.GET(CustPostingGroup."Interest Account");
                VATPostingSetup.GET("VAT Bus. Posting Group", GLAcc."VAT Prod. Posting Group");

                //>>DSDK.bund
                CLEAR(BottomLine);
                CompanyInfo.GetBottom(BottomLine[1], BottomLine[2], "Language Code");
                //<<DSDK.bund

                //>>DSDK.01
                DocumentReference := '';
                IF "Currency Code" = '' THEN BEGIN
                    //>>DSDK.FIK
                    DocumentReference := CompanyInfo.GetFIK71String("Issued Fin. Charge Memo Header"."Customer No.");

                    //>>DSDK.FIK73
                    IF Customer.GET("Issued Fin. Charge Memo Header"."Customer No.") then;
                    IF (Customer."Payment Method Code" = 'FIK73') OR (Customer."Payment Method Code" = 'FIK 73') then
                        DocumentReference := CompanyInfo.GetFIK73String("Issued Fin. Charge Memo Header"."Customer No.");
                    //<<DSDK.FIK73

                    //>>DSDK.FIK75
                    IF Customer.GET("Issued Fin. Charge Memo Header"."Customer No.") then;
                    IF (Customer."Payment Method Code" = 'FIK75') OR (Customer."Payment Method Code" = 'FIK 75') then
                        DocumentReference := CompanyInfo.GetFIK75String("Issued Fin. Charge Memo Header"."Customer No.");
                    //<<DSDK.FIK75

                    //<<DSDK.FIK
                    IF DocumentReference <> '' THEN
                        DocumentReference := DocumentReferenceCaptionbl + DocumentReference;
                END;
                //<<DSDK.01

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

            trigger OnPreDataItem();
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
                    CaptionML = DAN = 'Indstillinger',
                                ENU = 'Options';
                    field(ShowInternalInformation; ShowInternalInfo)
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
        SalesSetup.GET;
        /*
        CASE SalesSetup."Logo Position on Documents" OF
            SalesSetup."Logo Position on Documents"::"No Logo":
                ;
            SalesSetup."Logo Position on Documents"::Left:
                BEGIN
                    CompanyInfo1.GET;
                    CompanyInfo1.CALCFIELDS(Picture);
                END;
            SalesSetup."Logo Position on Documents"::Center:
                BEGIN
                    CompanyInfo2.GET;
                    CompanyInfo2.CALCFIELDS(Picture);
                END;
            SalesSetup."Logo Position on Documents"::Right:
                BEGIN
                    CompanyInfo3.GET;
                    CompanyInfo3.CALCFIELDS(Picture);
                END;
        END;
        */

        //>>DSDK
        CompanyInfo3.GET;
        CompanyInfo3.CALCFIELDS(Picture);
        //<<DSDK
        /*
        //>>DSDK.04
        CompanyInfo3.CALCFIELDS("Picture 2");
        //<<DSDK.04
        */

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
        Text000: TextConst DAN = 'I alt %1', ENU = 'Total %1';
        Text001: TextConst DAN = 'I alt %1 inkl. moms', ENU = 'Total %1 Incl. VAT';
        Text002: TextConst DAN = 'Side %1', ENU = 'Page %1';
        GLSetup: Record "General Ledger Setup";
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        VATAmountLine: Record "VAT Amount Line" temporary;
        VATClause: Record "VAT Clause";
        DimSetEntry: Record "Dimension Set Entry";
        //DSDK.45_Language: Record "Language";
        Language: Codeunit "Language";
        CurrExchRate: Record "Currency Exchange Rate";
        CustEntry: Record "Cust. Ledger Entry";
        SalesSetup: Record "Sales & Receivables Setup";
        SegManagement: Codeunit "SegManagement";
        FormatAddr: Codeunit "Format Address";
        CustAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        [InDataSet]
        VATNoText: Text[30];
        ReferenceText: Text[35];
        TotalText: Text[50];
        TotalInclVATText: Text[50];
        StartLineNo: Integer;
        EndLineNo: Integer;
        TypeInt: Integer;
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
        Text007: TextConst DAN = 'Momsbeløbsspecifikation i ', ENU = 'VAT Amount Specification in ';
        Text008: TextConst DAN = 'Lokal valuta', ENU = 'Local Currency';
        Text009: TextConst DAN = 'Valutakurs: %1/%2', ENU = 'Exchange rate: %1/%2';
        VALVATBase: Decimal;
        VALVATAmount: Decimal;
        [InDataSet]
        LogInteractionEnable: Boolean;
        PostingDateCaptionLbl: TextConst DAN = 'Bogføringsdato', ENU = 'Posting Date';
        FinChrgMemoNoCaptionLbl: TextConst DAN = 'Rentenotanr.', ENU = 'Finance Charge Memo No.';
        BankAccNoCaptionLbl: TextConst DAN = 'Kontonr.', ENU = 'Account No.';
        BankNameCaptionLbl: TextConst DAN = 'Bank', ENU = 'Bank';
        GiroNoCaptionLbl: TextConst DAN = 'Gironr.', ENU = 'Giro No.';
        VATRegNoCaptionLbl: TextConst DAN = 'SE/CVR-nr.', ENU = 'VAT Registration No.';
        PhoneNoCaptionLbl: TextConst DAN = 'Telefon', ENU = 'Phone No.';
        FinChgMemoCaptionLbl: TextConst DAN = 'Rentenota', ENU = 'Finance Charge Memo';
        HdrDimCaptionLbl: TextConst DAN = 'Dimensioner - hoved', ENU = 'Header Dimensions';
        DocDateCaption1Lbl: TextConst DAN = 'Dato', ENU = 'Date';
        AmtInclVATCaptionLbl: TextConst DAN = 'Beløb inkl. moms', ENU = 'Amount Including VAT';
        VATPercentCaptionLbl: TextConst DAN = 'Momspct.', ENU = 'VAT %';
        VATAmtSpecCaptionLbl: TextConst DAN = 'Momsbeløbspecifikation', ENU = 'VAT Amount Specification';
        VATPercentCaption1Lbl: TextConst DAN = 'Momspct.', ENU = 'VAT %';
        VATClausesCap: TextConst DAN = 'Momsklausul', ENU = 'VAT Clause';
        VATIdentifierCap: TextConst DAN = 'Moms-id', ENU = 'VAT Identifier';
        DueDateCaptionLbl: TextConst DAN = 'Forfaldsdato', ENU = 'Due Date';
        VATAmtCaptionLbl: TextConst DAN = 'Momsbeløb', ENU = 'VAT Amount';
        VATBaseCaptionLbl: TextConst DAN = 'Momsgrundlag', ENU = 'VAT Base';
        TotalCaptionLbl: TextConst DAN = 'I alt', ENU = 'Total';
        DoctDateCaptionLbl: TextConst DAN = 'Dato', ENU = 'Date';
        HomePageCaptionLbl: TextConst DAN = 'Hjemmeside', ENU = 'Home Page';
        EMailCaptionLbl: TextConst DAN = 'Mail', ENU = 'E-Mail';
        "//DSDK": Integer;
        BottomLine: array[2] of Text[250];
        "//DSDK.txt": Integer;
        PageCaptionLbl: TextConst DAN = 'Side', DEU = 'Seite', ENU = 'Page';
        "//DSDK.01": Integer;
        DocumentReference: Text;
        "//DSDK.01.txt": Integer;
        DocumentReferenceCaptionbl: TextConst Comment = 'Translate to "Hvis din bank understøtter FIK (fælles indbetalingkort), så benyt denne information:"', DAN = 'Ved betaling benyt venligst betalingsid: ', DEU = 'Als Ihre Bank FIK supportiert (Danish Banl standard). dann benutzen Sie diese Information: ', ENU = 'If your bank supports FIK (Danish bank standard), then use the following information: ';
        CalculateDateLbl: TextConst DAN = 'Beregnet pr.', ENU = 'Calculated on';
        TxtAmountLbl: TextConst DAN = 'Beløb', DEU = 'Betrag', ENU = 'Amount';
        TxtFinChargeAmountLbl: TextConst DAN = 'Rentebeløb', ENU = 'Fin. Charge Amount';
        PaymentInfo: TextConst DAN = 'Betalingsoplysninger', DEU = 'Zahlingsinformation', ENU = 'Payment Information';
        EURIBANCaption: TextConst DAN = 'EUR IBAN', DEU = 'EUR IBAN', ENU = 'EUR IBAN';
        SWIFTCaption: TextConst DAN = 'SWIFT:', DEU = 'SWIFT:', ENU = 'SWIFT:';
        IBANCaption: TextConst DAN = 'IBAN:', DEU = 'IBAN:', ENU = 'IBAN:';
        //DSDK.FIK75
        Customer: Record 18;
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
        LogInteraction := SegManagement.FindInteractTmplCode(19) <> '';
    end;

    procedure InitializeRequest(NewShowInternalInfo: Boolean; NewLogInteraction: Boolean);
    begin
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
    end;
}

