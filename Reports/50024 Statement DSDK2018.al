report 50024 "Statement DSDK2018"
{
    // version DSDK.std.2018,DSDK.11

    // DSDK - Datasign.dk - Standard report std.2 - NAV 2016
    // 
    // DSDK.01 LV 2016.04.29 - print "Only open"
    // DSDK.02 LV 2017.03.31 - init. Start and End date - and other fields
    // DSDK.03 LV 2017.03.31 - filter: "Unapplied"
    // DSDK.04 LV 2017.05.10 - 2 lines bottom
    // DSDK.05 LV 2017.05.11 - changed Init. Start and End date
    // DSDK.06 LV 2017.05.24 - "Picture 2"
    // DSDK.07 LV 2017.05.24 - PaymentInfo in bottom
    // DSDK.08 LV 2017.12.31 - FIK
    // DSDK.09 LV 2018.04.04 - sum up CustBalance depending on "Remaining Amount"
    // DSDK.10 LV 2018.04.24 - find correct open balance when only open entries
    // DSDK.11 LV 2018.05.16 - line up all columns
    // 
    // DSDK.00 LV 2018.05.16 - ERPgruppen.dk - 2018 Standard report
    // DSDK.35 LV 2019.07.18 - Translate Country Name
    // DSDK.45 LV 2019.11.04 - version 15
    // DSDK.46 LV 2020.01.14 - FIK75
    // DSDK.47 LV 2020.01.21 - FIK73

    //      NAVADAN
    // DSDK.Custom.06 2020.01.23 - extra Payment Info (auto. via ParamCompanyName)

    // DSDK.49 LV 2020.01.23 - print via PaymentInfoLines


    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/50024 Statement DSDK2018.rdlc';

    CaptionML = DAN = 'Kontoudtog',
                ENU = 'Statement';

    dataset
    {
        dataitem("Customer"; "Customer")
        {
            DataItemTableView = SORTING("No.");
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Search Name", "Print Statements", "Currency Filter";
            column(No_Cust; "No.")
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
            dataitem(DataItem5444; Integer)
            {
                DataItemTableView = SORTING(Number)
                                    WHERE(Number = CONST(1));
                PrintOnlyIfDetail = true;
                column(CompanyInfo1Picture; CompanyInfo1.Picture)
                {
                }
                column(CompanyInfo2Picture; CompanyInfo2.Picture)
                {
                }
                column(CompanyInfo3Picture; CompanyInfo3.Picture)
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
                column(PhoneNo_CompanyInfo; CompanyInfo."Phone No.")
                {
                }
                column(CustAddr6; CustAddr[6])
                {
                }
                column(CompanyInfoEmail; CompanyInfo."E-Mail")
                {
                }
                column(CompanyInfoHomePage; CompanyInfo."Home Page")
                {
                }
                column(VATRegNo_CompanyInfo; CompanyInfo."VAT Registration No.")
                {
                }
                column(GiroNo_CompanyInfo; CompanyInfo."Giro No.")
                {
                }
                column(BankName_CompanyInfo; CompanyInfo."Bank Name")
                {
                }
                column(BankAccNo_CompanyInfo; CompanyInfo."Bank Account No.")
                {
                }
                column(No1_Cust; Customer."No.")
                {
                }
                column(TodayFormatted; FORMAT(TODAY, 0, '<Day,2>/<Month,2>-<Year4>'))
                {
                }
                column(StartDate; FORMAT(StartDate, 0, '<Day,2>/<Month,2>-<Year4>'))
                {
                }
                column(EndDate; FORMAT(EndDate, 0, '<Day,2>/<Month,2>-<Year4>'))
                {
                }
                column(LastStatmntNo_Cust; FORMAT(Customer."Last Statement No."))
                {
                }
                column(CustAddr7; CustAddr[7])
                {
                }
                column(CustAddr8; CustAddr[8])
                {
                }
                column(CompanyAddr7; CompanyAddr[7])
                {
                }
                column(CompanyAddr8; CompanyAddr[8])
                {
                }
                column(StatementCaption; UPPERCASE(StatementCaptionLbl))
                {
                }
                column(PhoneNo_CompanyInfoCaption; PhoneNo_CompanyInfoCaptionLbl)
                {
                }
                column(VATRegNo_CompanyInfoCaption; VATRegNo_CompanyInfoCaptionLbl)
                {
                }
                column(GiroNo_CompanyInfoCaption; GiroNo_CompanyInfoCaptionLbl)
                {
                }
                column(BankName_CompanyInfoCaption; BankName_CompanyInfoCaptionLbl)
                {
                }
                column(BankAccNo_CompanyInfoCaption; BankAccNo_CompanyInfoCaptionLbl)
                {
                }
                column(No1_CustCaption; No1_CustCaptionLbl)
                {
                }
                column(StartDateCaption; StartDateCaptionLbl)
                {
                }
                column(EndDateCaption; EndDateCaptionLbl)
                {
                }
                column(LastStatmntNo_CustCaption; LastStatmntNo_CustCaptionLbl)
                {
                }
                column(PostDate_DtldCustLedgEntriesCaption; PostingDateCaptionLbl)
                {
                }
                column(DocNo_DtldCustLedgEntriesCaption; VoucherLbl)
                {
                }
                column(Desc_CustLedgEntry2Caption; CustLedgEntry2.FIELDCAPTION(Description))
                {
                }
                column(DueDate_CustLedgEntry2Caption; DueDateLbl)
                {
                }
                column(RemainAmtCustLedgEntry2Caption; CustLedgEntry2.FIELDCAPTION("Remaining Amount"))
                {
                }
                column(CustBalanceCaption; CustBalanceCaptionLbl)
                {
                }
                column(OriginalAmt_CustLedgEntry2Caption; OrigAmtLbl)
                {
                }
                column(CompanyInfoHomepageCaption; CompanyInfoHomepageCaptionLbl)
                {
                }
                column(CompanyInfoEmailCaption; CompanyInfoEmailCaptionLbl)
                {
                }
                column(DocDateCaption; PostingDateCaptionLbl)
                {
                }
                column(Total_Caption2; Total_CaptionLbl)
                {
                }
                column(PageCaption; PageCaptionLbl)
                {
                }
                column(PrimoCaption; PrimoCaptionLbl)
                {
                }
                column(text; Customer."No.")
                {
                }
                column(PaymentInfo; PaymentInfo)
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

                dataitem(CurrencyLoop; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = FILTER(1 ..));
                    PrintOnlyIfDetail = true;
                    dataitem(CustLedgEntryHdr; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                        column(Currency2Code_CustLedgEntryHdr; STRSUBSTNO(Text001, CurrencyCode3))
                        {
                        }
                        column(StartBalance; StartBalance)
                        {
                            AutoFormatExpression = Currency2.Code;
                            AutoFormatType = 1;
                        }
                        column(CurrencyCode3; CurrencyCode3)
                        {
                        }
                        column(CustBalance_CustLedgEntryHdr; CustBalance)
                        {
                        }
                        column(PrintLine; PrintLine)
                        {
                        }
                        column(DtldCustLedgEntryType; FORMAT(DtldCustLedgEntries."Entry Type", 0, 2))
                        {
                        }
                        column(EntriesExists; EntriesExists)
                        {
                        }
                        column(IsNewCustCurrencyGroup; IsNewCustCurrencyGroup)
                        {
                        }
                        dataitem(DtldCustLedgEntries; "Detailed Cust. Ledg. Entry")
                        {
                            DataItemTableView = SORTING("Customer No.", "Posting Date", "Entry Type", "Currency Code");
                            column(PostDate_DtldCustLedgEntries; FORMAT("Posting Date", 0, '<Day,2>/<Month,2>-<Year4>'))
                            {
                            }
                            column(DocNo_DtldCustLedgEntries; "Document No.")
                            {
                            }
                            column(Description; Description)
                            {
                            }
                            column(DueDate_DtldCustLedgEntries; FORMAT("Due Date", 0, '<Day,2>/<Month,2>-<Year4>'))
                            {
                            }
                            column(CurrCode_DtldCustLedgEntries; "Currency Code")
                            {
                            }
                            column(Amt_DtldCustLedgEntries; Amount)
                            {
                                AutoFormatExpression = "Currency Code";
                                AutoFormatType = 1;
                            }
                            column(RemainAmt_DtldCustLedgEntries; "Remaining Amount")
                            {
                                AutoFormatExpression = "Currency Code";
                                AutoFormatType = 1;
                            }
                            column(CustBalance; CustBalance)
                            {
                                AutoFormatExpression = "Currency Code";
                                AutoFormatType = 1;
                            }
                            column(Currency2Code; Currency2.Code)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                //>>DSDK.01
                                IF OnlyOpen THEN BEGIN
                                    IF CustLedgerEntryOpen.GET(DtldCustLedgEntries."Cust. Ledger Entry No.") AND (CustLedgerEntryOpen.Open = FALSE) THEN
                                        CurrReport.SKIP;
                                END;
                                //<<DSDK.01

                                IF SkipReversedUnapplied(DtldCustLedgEntries) OR (Amount = 0) THEN
                                    CurrReport.SKIP;
                                "Remaining Amount" := 0;
                                PrintLine := TRUE;
                                CASE "Entry Type" OF
                                    "Entry Type"::"Initial Entry":
                                        BEGIN
                                            "Cust. Ledger Entry".GET("Cust. Ledger Entry No.");
                                            Description := "Cust. Ledger Entry".Description;
                                            "Due Date" := "Cust. Ledger Entry"."Due Date";
                                            "Cust. Ledger Entry".SETRANGE("Date Filter", 0D, EndDate);
                                            "Cust. Ledger Entry".CALCFIELDS("Remaining Amount");
                                            "Remaining Amount" := "Cust. Ledger Entry"."Remaining Amount";
                                            "Cust. Ledger Entry".SETRANGE("Date Filter");
                                        END;
                                    "Entry Type"::Application:
                                        BEGIN
                                            DtldCustLedgEntries2.SETCURRENTKEY("Customer No.", "Posting Date", "Entry Type");
                                            DtldCustLedgEntries2.SETRANGE("Customer No.", "Customer No.");
                                            DtldCustLedgEntries2.SETRANGE("Posting Date", "Posting Date");
                                            DtldCustLedgEntries2.SETRANGE("Entry Type", "Entry Type"::Application);
                                            DtldCustLedgEntries2.SETRANGE("Transaction No.", "Transaction No.");
                                            DtldCustLedgEntries2.SETFILTER("Currency Code", '<>%1', "Currency Code");
                                            IF NOT DtldCustLedgEntries2.ISEMPTY THEN BEGIN
                                                Description := Text005;
                                                "Due Date" := 0D;
                                            END ELSE
                                                PrintLine := FALSE;
                                        END;
                                    "Entry Type"::"Payment Discount",
                                    "Entry Type"::"Payment Discount (VAT Excl.)",
                                    "Entry Type"::"Payment Discount (VAT Adjustment)",
                                    "Entry Type"::"Payment Discount Tolerance",
                                    "Entry Type"::"Payment Discount Tolerance (VAT Excl.)",
                                    "Entry Type"::"Payment Discount Tolerance (VAT Adjustment)":
                                        BEGIN
                                            Description := Text006;
                                            "Due Date" := 0D;
                                        END;
                                    "Entry Type"::"Payment Tolerance",
                                    "Entry Type"::"Payment Tolerance (VAT Excl.)",
                                    "Entry Type"::"Payment Tolerance (VAT Adjustment)":
                                        BEGIN
                                            Description := Text014;
                                            "Due Date" := 0D;
                                        END;
                                    "Entry Type"::"Appln. Rounding",
                                    "Entry Type"::"Correction of Remaining Amount":
                                        BEGIN
                                            Description := Text007;
                                            "Due Date" := 0D;
                                        END;
                                END;

                                IF PrintLine THEN BEGIN
                                    //>>DSDK.09
                                    IF OnlyOpen THEN
                                        CustBalance := CustBalance + "Remaining Amount"
                                    ELSE
                                        CustBalance := CustBalance + Amount;
                                    //<<DSDK.09
                                    IsNewCustCurrencyGroup := IsFirstPrintLine;
                                    IsFirstPrintLine := FALSE;
                                END ELSE BEGIN
                                    EXIT;
                                END;
                            end;

                            trigger OnPreDataItem();
                            begin
                                SETRANGE("Customer No.", Customer."No.");
                                SETRANGE("Posting Date", StartDate, EndDate);
                                SETRANGE("Currency Code", Currency2.Code);

                                //>>DSDK.03
                                SETRANGE(Unapplied, FALSE);
                                //<<DSDK.03

                                IF Currency2.Code = '' THEN BEGIN
                                    GLSetup.TESTFIELD("LCY Code");
                                    CurrencyCode3 := GLSetup."LCY Code"
                                END ELSE
                                    CurrencyCode3 := Currency2.Code;

                                IsFirstPrintLine := TRUE;
                            end;
                        }
                    }
                    dataitem(CustLedgEntryFooter; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                        column(CurrencyCode3_CustLedgEntryFooter; CurrencyCode3)
                        {
                        }
                        column(Total_Caption; Total_CaptionLbl)
                        {
                        }
                        column(CustBalance_CustLedgEntryHdrFooter; CustBalance)
                        {
                            AutoFormatExpression = Currency2.Code;
                            AutoFormatType = 1;
                        }
                        column(EntriesExistsl_CustLedgEntryFooterCaption; EntriesExists)
                        {
                        }
                    }
                    dataitem(CustLedgEntry2; "Cust. Ledger Entry")
                    {
                        DataItemLink = "Customer No." = FIELD("No.");
                        DataItemLinkReference = Customer;
                        DataItemTableView = SORTING("Customer No.", Open, Positive, "Due Date");
                        column(OverDueEntries; STRSUBSTNO(Text002, Currency2.Code))
                        {
                        }
                        column(RemainAmt_CustLedgEntry2; "Remaining Amount")
                        {
                            AutoFormatExpression = "Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PostDate_CustLedgEntry2; FORMAT("Posting Date", 0, '<Day,2>/<Month,2>-<Year4>'))
                        {
                        }
                        column(DocNo_CustLedgEntry2; "Document No.")
                        {
                        }
                        column(Desc_CustLedgEntry2; Description)
                        {
                        }
                        column(DueDate_CustLedgEntry2; FORMAT("Due Date", 0, '<Day,2>/<Month,2>-<Year4>'))
                        {
                        }
                        column(OriginalAmt_CustLedgEntry2; "Original Amount")
                        {
                            AutoFormatExpression = "Currency Code";
                        }
                        column(CurrCode_CustLedgEntry2; "Currency Code")
                        {
                        }
                        column(PrintEntriesDue; PrintEntriesDue)
                        {
                        }
                        column(Currency2Code_CustLedgEntry2; Currency2.Code)
                        {
                        }
                        column(CurrencyCode3_CustLedgEntry2; CurrencyCode3)
                        {
                        }
                        column(CustNo_CustLedgEntry2; "Customer No.")
                        {
                        }

                        trigger OnAfterGetRecord();
                        var
                            CustLedgEntry: Record "Cust. Ledger Entry";
                        begin
                            IF IncludeAgingBand THEN
                                IF ("Posting Date" > EndDate) AND ("Due Date" >= EndDate) THEN
                                    CurrReport.SKIP;
                            CustLedgEntry := CustLedgEntry2;
                            CustLedgEntry.SETRANGE("Date Filter", 0D, EndDate);
                            CustLedgEntry.CALCFIELDS("Remaining Amount");
                            "Remaining Amount" := CustLedgEntry."Remaining Amount";
                            IF CustLedgEntry."Remaining Amount" = 0 THEN
                                CurrReport.SKIP;

                            IF IncludeAgingBand AND ("Posting Date" <= EndDate) THEN
                                UpdateBuffer(Currency2.Code, GetDate("Posting Date", "Due Date"), "Remaining Amount");
                            IF "Due Date" >= EndDate THEN
                                CurrReport.SKIP;
                        end;

                        trigger OnPreDataItem();
                        begin
                            ///CurrReport.CREATETOTALS("Remaining Amount");
                            IF NOT IncludeAgingBand THEN
                                SETRANGE("Due Date", 0D, EndDate - 1);
                            SETRANGE("Currency Code", Currency2.Code);
                            IF (NOT PrintEntriesDue) AND (NOT IncludeAgingBand) THEN
                                CurrReport.BREAK;
                        end;
                    }

                    trigger OnAfterGetRecord();
                    begin
                        IF Number = 1 THEN
                            Currency2.FINDFIRST;

                        REPEAT
                            IF NOT IsFirstLoop THEN
                                IsFirstLoop := TRUE
                            ELSE
                                IF Currency2.NEXT = 0 THEN
                                    CurrReport.BREAK;
                            "Cust. Ledger Entry".SETCURRENTKEY("Cust. Ledger Entry"."Customer No.", "Cust. Ledger Entry"."Posting Date", "Cust. Ledger Entry"."Currency Code");
                            "Cust. Ledger Entry".SETRANGE("Cust. Ledger Entry"."Customer No.", Customer."No.");
                            "Cust. Ledger Entry".SETRANGE("Cust. Ledger Entry"."Posting Date", 0D, EndDate);
                            "Cust. Ledger Entry".SETRANGE("Cust. Ledger Entry"."Currency Code", Currency2.Code);
                            EntriesExists := NOT "Cust. Ledger Entry".ISEMPTY;
                        UNTIL EntriesExists;
                        Cust2 := Customer;
                        Cust2.SETRANGE(Cust2."Date Filter", 0D, StartDate - 1);
                        Cust2.SETRANGE(Cust2."Currency Filter", Currency2.Code);
                        Cust2.CALCFIELDS(Cust2."Net Change");
                        StartBalance := Cust2."Net Change";
                        CustBalance := Cust2."Net Change";

                        //>>DSDK.10
                        IF OnlyOpen THEN BEGIN
                            // find correct start balance for OPEN entries only
                            StartBalance := 0;

                            CLEAR(DtldCustLedgEntries3);
                            DtldCustLedgEntries3.SETRANGE(DtldCustLedgEntries3."Customer No.", Customer."No.");
                            DtldCustLedgEntries3.SETRANGE(DtldCustLedgEntries3."Posting Date", 0D, StartDate - 1);
                            DtldCustLedgEntries3.SETRANGE(DtldCustLedgEntries3."Currency Code", Currency2.Code);
                            IF DtldCustLedgEntries3.FINDSET THEN
                                REPEAT
                                    IF CustLedgerEntryOpen.GET(DtldCustLedgEntries3."Cust. Ledger Entry No.") AND (CustLedgerEntryOpen.Open = TRUE) THEN BEGIN
                                        StartBalance += DtldCustLedgEntries3.Amount;
                                    END;
                                UNTIL DtldCustLedgEntries3.NEXT = 0;
                        END;

                        CustBalance := StartBalance;
                        //<<DSDK.10
                    end;

                    trigger OnPreDataItem();
                    begin
                        Customer.COPYFILTER("Currency Filter", Currency2.Code);
                    end;
                }
                dataitem(AgingBandLoop; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = FILTER(1 ..));
                    column(AgingDate1; FORMAT(AgingDate[1] + 1, 0, '<Day,2>/<Month,2>-<Year4>'))
                    {
                    }
                    column(AgingDate2; FORMAT(AgingDate[2], 0, '<Day,2>/<Month,2>-<Year4>'))
                    {
                    }
                    column(AgingDate21; FORMAT(AgingDate[2] + 1, 0, '<Day,2>/<Month,2>-<Year4>'))
                    {
                    }
                    column(AgingDate3; FORMAT(AgingDate[3], 0, '<Day,2>/<Month,2>-<Year4>'))
                    {
                    }
                    column(AgingDate31; FORMAT(AgingDate[3] + 1, 0, '<Day,2>/<Month,2>-<Year4>'))
                    {
                    }
                    column(AgingDate4; FORMAT(AgingDate[4], 0, '<Day,2>/<Month,2>-<Year4>'))
                    {
                    }
                    column(AgingBandEndingDate; STRSUBSTNO(Text011, AgingBandEndingDate, PeriodLength, SELECTSTR(DateChoice + 1, Text013)))
                    {
                    }
                    column(AgingDate41; FORMAT(AgingDate[4] + 1, 0, '<Day,2>/<Month,2>-<Year4>'))
                    {
                    }
                    column(AgingDate5; FORMAT(AgingDate[5], 0, '<Day,2>/<Month,2>-<Year4>'))
                    {
                    }
                    column(AgingBandBufCol1Amt; AgingBandBuf."Column 1 Amt.")
                    {
                        AutoFormatExpression = AgingBandBuf."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(AgingBandBufCol2Amt; AgingBandBuf."Column 2 Amt.")
                    {
                        AutoFormatExpression = AgingBandBuf."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(AgingBandBufCol3Amt; AgingBandBuf."Column 3 Amt.")
                    {
                        AutoFormatExpression = AgingBandBuf."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(AgingBandBufCol4Amt; AgingBandBuf."Column 4 Amt.")
                    {
                        AutoFormatExpression = AgingBandBuf."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(AgingBandBufCol5Amt; AgingBandBuf."Column 5 Amt.")
                    {
                        AutoFormatExpression = AgingBandBuf."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(AgingBandCurrencyCode; AgingBandCurrencyCode)
                    {
                    }
                    column(beforeCaption; beforeCaptionLbl)
                    {
                    }

                    trigger OnAfterGetRecord();
                    begin
                        IF Number = 1 THEN BEGIN
                            IF NOT AgingBandBuf.FIND('-') THEN
                                CurrReport.BREAK;
                        END ELSE
                            IF AgingBandBuf.NEXT = 0 THEN
                                CurrReport.BREAK;
                        AgingBandCurrencyCode := AgingBandBuf."Currency Code";
                        IF AgingBandCurrencyCode = '' THEN
                            AgingBandCurrencyCode := GLSetup."LCY Code";
                    end;

                    trigger OnPreDataItem();
                    begin
                        IF NOT IncludeAgingBand THEN
                            CurrReport.BREAK;
                    end;
                }
            }

            trigger OnAfterGetRecord();
            begin
                AgingBandBuf.DELETEALL;
                CurrReport.LANGUAGE := Language.GetLanguageIDOrDefault("Language Code");       //DSDK.45
                PrintLine := FALSE;
                Cust2 := Customer;
                COPYFILTER("Currency Filter", Currency2.Code);
                IF PrintAllHavingBal THEN BEGIN
                    IF Currency2.FIND('-') THEN
                        REPEAT
                            Cust2.SETRANGE("Date Filter", 0D, EndDate);
                            Cust2.SETRANGE("Currency Filter", Currency2.Code);
                            Cust2.CALCFIELDS("Net Change");
                            PrintLine := Cust2."Net Change" <> 0;
                        UNTIL (Currency2.NEXT = 0) OR PrintLine;
                END;
                IF (NOT PrintLine) AND PrintAllHavingEntry THEN BEGIN
                    "Cust. Ledger Entry".RESET;
                    "Cust. Ledger Entry".SETCURRENTKEY("Cust. Ledger Entry"."Customer No.", "Cust. Ledger Entry"."Posting Date");
                    "Cust. Ledger Entry".SETRANGE("Cust. Ledger Entry"."Customer No.", "No.");
                    "Cust. Ledger Entry".SETRANGE("Cust. Ledger Entry"."Posting Date", StartDate, EndDate);
                    COPYFILTER("Currency Filter", "Cust. Ledger Entry"."Currency Code");
                    PrintLine := NOT "Cust. Ledger Entry".ISEMPTY;
                END;
                IF NOT PrintLine THEN
                    CurrReport.SKIP;

                FormatAddr.Customer(CustAddr, Customer);
                //>>DSDK.35
                CompanyInfo.TranslateCountryName(CustAddr, Customer."Country/Region Code", Customer."Language Code");
                //<<DSDK.35
                ///CurrReport.PAGENO := 1;

                IF NOT CurrReport.PREVIEW THEN BEGIN
                    LOCKTABLE;
                    FIND;
                    "Last Statement No." := "Last Statement No." + 1;
                    MODIFY;
                    COMMIT;
                END ELSE
                    "Last Statement No." := "Last Statement No." + 1;

                IF LogInteraction THEN
                    IF NOT CurrReport.PREVIEW THEN
                        SegManagement.LogDocument(
                          7, FORMAT("Last Statement No."), 0, 0, DATABASE::Customer, "No.", "Salesperson Code", '',
                          Text003 + FORMAT("Last Statement No."), '');
                IsFirstLoop := FALSE;

                //>>DSDK.bund
                CLEAR(BottomLine);
                CompanyInfo.GetBottom(BottomLine[1], BottomLine[2], "Language Code");
                //<<DSDK.bund

                //>>DSDK.08-FIK
                DocumentReference := '';
                IF "Currency Code" = '' THEN BEGIN
                    DocumentReference := CompanyInfo.GetFIK71String(Customer."No.");

                    //>>DSDK.FIK73
                    IF (Customer."Payment Method Code" = 'FIK73') OR (Customer."Payment Method Code" = 'FIK 73') then
                        DocumentReference := CompanyInfo.GetFIK73String(Customer."No.");
                    //<<DSDK.FIK73

                    //>>DSDK.FIK75
                    IF (Customer."Payment Method Code" = 'FIK75') OR (Customer."Payment Method Code" = 'FIK 75') then
                        DocumentReference := CompanyInfo.GetFIK75String(Customer."No.");
                    //<<DSDK.FIK75

                    IF DocumentReference <> '' THEN
                        DocumentReference := DocumentReferenceCaptionbl + DocumentReference;
                END;
                //<<DSDK.08-FIK

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
                VerifyDates;
                AgingBandEndingDate := EndDate;
                CalcAgingBandDates;

                CompanyInfo.GET;
                FormatAddr.Company(CompanyAddr, CompanyInfo);

                Currency2.Code := '';
                Currency2.INSERT;
                COPYFILTER("Currency Filter", Currency.Code);
                IF Currency.FIND('-') THEN
                    REPEAT
                        Currency2 := Currency;
                        Currency2.INSERT;
                    UNTIL Currency.NEXT = 0;
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
                    field("Start Date"; StartDate)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Startdato',
                                    ENU = 'Start Date';
                    }
                    field("End Date"; EndDate)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Slutdato',
                                    ENU = 'End Date';
                    }
                    field(ShowOverdueEntries; PrintEntriesDue)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Vis forfaldne poster',
                                    ENU = 'Show Overdue Entries';
                    }
                    field(ShowOpenEntriesOnly; OnlyOpen)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Vis kun åbne poster',
                                    ENU = 'Show Open Entries Only';
                    }
                    group(Include)
                    {
                        CaptionML = DAN = 'Inkluder',
                                    ENU = 'Include';
                        field(IncludeAllCustomerswithLE; PrintAllHavingEntry)
                        {
                            ApplicationArea = All;
                            CaptionML = DAN = 'Medtag alle debitorer, der har poster',
                                        ENU = 'Include All Customers with Ledger Entries';
                            MultiLine = true;

                            trigger OnValidate();
                            begin
                                IF NOT PrintAllHavingEntry THEN
                                    PrintAllHavingBal := TRUE;
                            end;
                        }
                        field(IncludeAllCustomerswithBalance; PrintAllHavingBal)
                        {
                            ApplicationArea = All;
                            CaptionML = DAN = 'Medtag også debitorer, der kun har saldo',
                                        ENU = 'Include All Customers with a Balance';
                            MultiLine = true;

                            trigger OnValidate();
                            begin
                                IF NOT PrintAllHavingBal THEN
                                    PrintAllHavingEntry := TRUE;
                            end;
                        }
                        field(IncludeReversedEntries; PrintReversedEntries)
                        {
                            ApplicationArea = All;
                            CaptionML = DAN = 'Medtag tilbageførte poster',
                                        ENU = 'Include Reversed Entries';
                        }
                        field(IncludeUnappliedEntries; PrintUnappliedEntries)
                        {
                            ApplicationArea = All;
                            CaptionML = DAN = 'Medtag ikke-udlignede poster',
                                        ENU = 'Include Unapplied Entries';
                        }
                    }
                    group(Aldersfordelingsinterval)
                    {
                        CaptionML = DAN = 'Aldersfordelingsinterval',
                                    ENU = 'Aging Band';
                        field(IncludeAgingBand; IncludeAgingBand)
                        {
                            ApplicationArea = All;
                            CaptionML = DAN = 'Medtag aldersford.intv.',
                                        ENU = 'Include Aging Band';
                        }
                        field(AgingBandPeriodLengt; PeriodLength)
                        {
                            ApplicationArea = All;
                            CaptionML = DAN = 'Aldersfordelingsinterval',
                                        ENU = 'Aging Band Period Length';
                        }
                        field(AgingBandby; DateChoice)
                        {
                            ApplicationArea = All;
                            CaptionML = DAN = 'Aldersford.intv. efter',
                                        ENU = 'Aging Band by';
                            OptionCaptionML = DAN = 'Forfaldsdato,Bogføringsdato',
                                              ENU = 'Due Date,Posting Date';
                        }
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Logfør interaktion',
                                    ENU = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                    }
                }
                group("Output Options")
                {
                    CaptionML = DAN = 'Rapportindstillinger',
                                ENU = 'Output Options';
                    field(ReportOutput; SupportedOutputMethod)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Rapportresultat',
                                    ENU = 'Report Output';
                        OptionCaptionML = DAN = 'Udskriv,Vis eksempel,PDF,Email,Excel,XML',
                                          ENU = 'Print,Preview,PDF,Email,Excel,XML';

                        trigger OnValidate();
                        var
                            CustomLayoutReporting: Codeunit "Custom Layout Reporting";
                        begin
                            ShowPrintRemaining := (SupportedOutputMethod = SupportedOutputMethod::Email);

                            CASE SupportedOutputMethod OF
                                SupportedOutputMethod::Print:
                                    ChosenOutputMethod := CustomLayoutReporting.GetPrintOption;
                                SupportedOutputMethod::Preview:
                                    ChosenOutputMethod := CustomLayoutReporting.GetPreviewOption;
                                SupportedOutputMethod::PDF:
                                    ChosenOutputMethod := CustomLayoutReporting.GetPDFOption;
                                SupportedOutputMethod::Email:
                                    ChosenOutputMethod := CustomLayoutReporting.GetEmailOption;
                                SupportedOutputMethod::Excel:
                                    ChosenOutputMethod := CustomLayoutReporting.GetExcelOption;
                                SupportedOutputMethod::XML:
                                    ChosenOutputMethod := CustomLayoutReporting.GetXMLOption;
                            END;
                        end;
                    }
                    field(ChosenOutput; ChosenOutputMethod)
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Valgt output',
                                    ENU = 'Chosen Output';
                        Visible = false;
                    }
                    group(EmailOptions)
                    {
                        CaptionML = DAN = 'Mail-indstillinger',
                                    ENU = 'Email Options';
                        Visible = ShowPrintRemaining;
                        field(PrintMissingAddresses; PrintRemaining)
                        {
                            ApplicationArea = All;
                            CaptionML = DAN = 'Udskriv resterende kontoudtog',
                                        ENU = 'Print remaining statements';
                        }
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage();
        begin
            InitRequestPageDataInternal;
        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        //>>DSDK.05
        StartDate := CALCDATE('<-1M>', WORKDATE);
        StartDate := CALCDATE('<-CM>', StartDate);
        EndDate := CALCDATE('<+CM>', StartDate);

        PrintEntriesDue := TRUE;
        OnlyOpen := FALSE;

        PrintAllHavingEntry := TRUE;
        PrintAllHavingBal := TRUE;
        PrintReversedEntries := TRUE;
        PrintUnappliedEntries := TRUE;

        IncludeAgingBand := TRUE;
        //<<DSDK.05

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
        //>>DSDK.02
        CompanyInfo3.CALCFIELDS("Picture 2");
        //<<DSDK.02
        */

        //>>DSDK.2018
        LogInteractionEnable := TRUE;         //MUST
        //<<DSDK.2018

        //>>DSDK.49
        CompanyInfo.GetCompanyName(ParamCompanyName);
        //<<DSDK.49
    end;

    trigger OnPreReport();
    begin
        InitRequestPageDataInternal;
    end;

    var
        Text001: TextConst DAN = 'Poster %1', DEU = 'Posten %1', ENU = 'Entries %1';
        Text002: TextConst DAN = 'Forfaldne poster %1', DEU = 'Fällige Posten %1', ENU = 'Overdue Entries %1';
        Text003: TextConst DAN = 'Kontoudtog ', DEU = 'Kontoauszug', ENU = 'Statement ';
        GLSetup: Record "General Ledger Setup";
        SalesSetup: Record "Sales & Receivables Setup";
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        Cust2: Record "Customer";
        Currency: Record "Currency";
        Currency2: Record "Currency" temporary;
        //DSDK.45_Language: Record "Language";
        Language: Codeunit "Language";
        "Cust. Ledger Entry": Record "Cust. Ledger Entry";
        DtldCustLedgEntries2: Record "Detailed Cust. Ledg. Entry";
        AgingBandBuf: Record "Aging Band Buffer" temporary;
        PrintAllHavingEntry: Boolean;
        PrintAllHavingBal: Boolean;
        PrintEntriesDue: Boolean;
        PrintUnappliedEntries: Boolean;
        PrintReversedEntries: Boolean;
        PrintLine: Boolean;
        LogInteraction: Boolean;
        EntriesExists: Boolean;
        StartDate: Date;
        EndDate: Date;
        "Due Date": Date;
        CustAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        Description: Text[50];
        StartBalance: Decimal;
        CustBalance: Decimal;
        "Remaining Amount": Decimal;
        FormatAddr: Codeunit "Format Address";
        SegManagement: Codeunit "SegManagement";
        CurrencyCode3: Code[10];
        Text005: TextConst DAN = 'Multivaluta', ENU = 'Multicurrency Application';
        Text006: TextConst DAN = 'Kontantrabat', DEU = 'Skonto', ENU = 'Payment Discount';
        Text007: TextConst DAN = 'Afrunding', DEU = 'Runding', ENU = 'Rounding';
        PeriodLength: DateFormula;
        PeriodLength2: DateFormula;
        DateChoice: Option "Due Date","Posting Date";
        AgingDate: array[5] of Date;
        Text008: TextConst DAN = 'Du skal angive længden af aldersfordelingsintervallet.', ENU = 'You must specify the Aging Band Period Length.';
        AgingBandEndingDate: Date;
        Text010: TextConst DAN = 'Du skal angive en slutdato for aldersfordelingsintervallet.', ENU = 'You must specify Aging Band Ending Date.';
        Text011: TextConst DAN = 'Aldersfordelt oversigt efter %1 (%2 efter %3)', DEU = 'Alters summe nach %1 (%2 nach %3)', ENU = 'Aged Summary by %1 (%2 by %3)';
        IncludeAgingBand: Boolean;
        Text012: TextConst DAN = 'Periodelængden er ugyldig.', ENU = 'Period Length is out of range.';
        AgingBandCurrencyCode: Code[10];
        Text013: TextConst DAN = 'Forfaldsdato,Bogføringsdato', DEU = 'Fälligkeit,Buchungsdatum', ENU = 'Due Date,Posting Date';
        Text014: TextConst DAN = 'Udligningsafskrivninger', ENU = 'Application Writeoffs';
        [InDataSet]
        LogInteractionEnable: Boolean;
        Text036: TextConst Comment = 'Negating the period length: %1 is the period length', DAN = '-%1', DEU = '-%1', ENU = '-%1';
        StatementCaptionLbl: TextConst DAN = 'Kontoudtog', DEU = 'Kontoauszug', ENU = 'Statement';
        PhoneNo_CompanyInfoCaptionLbl: TextConst DAN = 'Telefon', DEU = 'Telefon', ENU = 'Phone No.';
        VATRegNo_CompanyInfoCaptionLbl: TextConst DAN = 'SE/CVR-nr.', DEU = 'USt-IdNr.', ENU = 'VAT';
        GiroNo_CompanyInfoCaptionLbl: TextConst DAN = 'Gironr.', DEU = 'Giro Nr.', ENU = 'Giro No.';
        BankName_CompanyInfoCaptionLbl: TextConst DAN = 'Bank', DEU = 'Bank', ENU = 'Bank';
        BankAccNo_CompanyInfoCaptionLbl: TextConst DAN = 'Kontonr.', DEU = 'Konto Nr.', ENU = 'Account No.';
        No1_CustCaptionLbl: TextConst DAN = 'Debitornr.', DEU = 'Kundennr.', ENU = 'Customer No.';
        StartDateCaptionLbl: TextConst DAN = 'Startdato', DEU = 'Anfangsdatum', ENU = 'Starting Date';
        EndDateCaptionLbl: TextConst DAN = 'Slutdato', DEU = 'Schlussdatum', ENU = 'Ending Date';
        LastStatmntNo_CustCaptionLbl: TextConst DAN = 'Kontoudtogsnr.', DEU = 'Kontoauszug Nr.', ENU = 'Statement No.';
        PostDate_DtldCustLedgEntriesCaptionLbl: TextConst DAN = 'Dato', DEU = 'Datum', ENU = 'Date';
        DueDate_CustLedgEntry2CaptionLbl: TextConst DAN = 'Forfald', DEU = 'Fällig', ENU = 'Due Date';
        CustBalanceCaptionLbl: TextConst DAN = 'Saldo', DEU = 'Summe', ENU = 'Balance';
        beforeCaptionLbl: TextConst DAN = '..før', ENU = '..before';
        isInitialized: Boolean;
        CompanyInfoHomepageCaptionLbl: TextConst DAN = 'Hjemmeside', ENU = 'Home Page';
        CompanyInfoEmailCaptionLbl: TextConst DAN = 'E-mail', DEU = 'E-Mail', ENU = 'E-Mail';
        DocDateCaptionLbl: TextConst DAN = 'Bilagsdato', DEU = 'Beleg Datum', ENU = 'Document Date';
        Total_CaptionLbl: TextConst DAN = 'I alt', DEU = 'Gesamt', ENU = 'Total';
        BlankStartDateErr: TextConst DAN = 'Startdato skal indeholde en værdi.', ENU = 'Start Date must have a value.';
        BlankEndDateErr: TextConst DAN = 'Slutdato skal indeholde en værdi.', ENU = 'End Date must have a value.';
        StartDateLaterTheEndDateErr: TextConst DAN = 'Startdatoen skal ligge før slutdatoen.', ENU = 'Start date must be earlier than End date.';
        IsFirstLoop: Boolean;
        CurrReportPageNoCaptionLbl: TextConst DAN = 'Side', ENU = 'Page';
        IsFirstPrintLine: Boolean;
        IsNewCustCurrencyGroup: Boolean;
        SupportedOutputMethod: Option Print,Preview,PDF,Email,Excel,XML;
        ChosenOutputMethod: Integer;
        PrintRemaining: Boolean;
        [InDataSet]
        ShowPrintRemaining: Boolean;
        PageCaptionLbl: TextConst DAN = 'Side', DEU = 'Seite', ENU = 'Page';
        BottomLine: array[2] of Text[250];
        PostingDateCaptionLbl: TextConst DAN = 'Dato', DEU = 'Datum', ENU = 'Date';
        VoucherLbl: TextConst DAN = 'Bilag', DEU = 'Beleg', ENU = 'Voucher';
        DueDateLbl: TextConst DAN = 'Forfald', DEU = 'Fälligkeit', ENU = 'Due date';
        OrigAmtLbl: TextConst DAN = 'Opr. beløb', DEU = 'Urspr. Betrag', ENU = 'Orig. amt.';
        PrimoCaptionLbl: TextConst DAN = 'Primo', DEU = 'Primo', ENU = 'Primo';
        "//DSDK.01": Integer;
        OnlyOpen: Boolean;
        PaymentInfo: TextConst DAN = 'Betalingsoplysninger', DEU = 'Zahlingsinformation', ENU = 'Payment Information';
        EURIBANCaption: TextConst DAN = 'EUR IBAN', DEU = 'EUR IBAN', ENU = 'EUR IBAN';
        CustLedgerEntryOpen: Record "Cust. Ledger Entry";
        "//DSDK.08-FIK": Integer;
        DocumentReference: Text;
        IBANCaption: TextConst DAN = 'IBAN:', DEU = 'IBAN:', ENU = 'IBAN:';
        SWIFTCaption: TextConst DAN = 'SWIFT:', DEU = 'SWIFT:', ENU = 'SWIFT:';
        "//DSDK.FIK": Integer;
        DocumentReferenceCaptionbl: TextConst Comment = 'Translate to "Hvis din bank understøtter FIK (fælles indbetalingkort), så benyt denne information:"', DAN = 'Ved betaling - benyt venligst betalingsid: ', DEU = 'Als Ihre Bank FIK supportiert (Danish Banl standard). dann benutzen Sie diese Information: ', ENU = 'If your bank supports FIK (Danish bank standard), then use the following information: ';
        "//DSDK.10": Integer;
        DtldCustLedgEntries3: Record "Detailed Cust. Ledg. Entry";

        //DSDK.49
        ParamCompanyName: Text[50];
        TabIdx: Integer;
        PaymentInfoLines: array[5] of Text[50];
        PaymentTermLines: array[2] of Text[100];
        //DSDK.Custom.06.Navadan
        PaymentTermLines1_Navadan: Label 'All remittance expenses are the full responsibility of the payer.';
        PaymentTermLines2_Navadan: Label 'We do not accept any deductions of bank transfer charges.';
        BeneficiaryCaption: Label 'BENEFICIARY:';


    local procedure GetDate(PostingDate: Date; DueDate: Date): Date;
    begin
        IF DateChoice = DateChoice::"Posting Date" THEN
            EXIT(PostingDate);

        EXIT(DueDate);
    end;

    local procedure CalcAgingBandDates();
    begin
        IF NOT IncludeAgingBand THEN
            EXIT;
        IF AgingBandEndingDate = 0D THEN
            ERROR(Text010);
        IF FORMAT(PeriodLength) = '' THEN
            ERROR(Text008);
        EVALUATE(PeriodLength2, STRSUBSTNO(Text036, PeriodLength));
        AgingDate[5] := AgingBandEndingDate;
        AgingDate[4] := CALCDATE(PeriodLength2, AgingDate[5]);
        AgingDate[3] := CALCDATE(PeriodLength2, AgingDate[4]);
        AgingDate[2] := CALCDATE(PeriodLength2, AgingDate[3]);
        AgingDate[1] := CALCDATE(PeriodLength2, AgingDate[2]);
        IF AgingDate[2] <= AgingDate[1] THEN
            ERROR(Text012);
    end;

    local procedure UpdateBuffer(CurrencyCode: Code[10]; Date: Date; Amount: Decimal);
    var
        I: Integer;
        GoOn: Boolean;
    begin
        AgingBandBuf.INIT;
        AgingBandBuf."Currency Code" := CurrencyCode;
        IF NOT AgingBandBuf.FIND THEN
            AgingBandBuf.INSERT;
        I := 1;
        GoOn := TRUE;
        WHILE (I <= 5) AND GoOn DO BEGIN
            IF Date <= AgingDate[I] THEN
                IF I = 1 THEN BEGIN
                    AgingBandBuf."Column 1 Amt." := AgingBandBuf."Column 1 Amt." + Amount;
                    GoOn := FALSE;
                END;
            IF Date <= AgingDate[I] THEN
                IF I = 2 THEN BEGIN
                    AgingBandBuf."Column 2 Amt." := AgingBandBuf."Column 2 Amt." + Amount;
                    GoOn := FALSE;
                END;
            IF Date <= AgingDate[I] THEN
                IF I = 3 THEN BEGIN
                    AgingBandBuf."Column 3 Amt." := AgingBandBuf."Column 3 Amt." + Amount;
                    GoOn := FALSE;
                END;
            IF Date <= AgingDate[I] THEN
                IF I = 4 THEN BEGIN
                    AgingBandBuf."Column 4 Amt." := AgingBandBuf."Column 4 Amt." + Amount;
                    GoOn := FALSE;
                END;
            IF Date <= AgingDate[I] THEN
                IF I = 5 THEN BEGIN
                    AgingBandBuf."Column 5 Amt." := AgingBandBuf."Column 5 Amt." + Amount;
                    GoOn := FALSE;
                END;
            I := I + 1;
        END;
        AgingBandBuf.MODIFY;
    end;

    procedure SkipReversedUnapplied(var DtldCustLedgEntries: Record "Detailed Cust. Ledg. Entry"): Boolean;
    var
        CustLedgEntry: Record "Cust. Ledger Entry";
    begin
        IF PrintReversedEntries AND PrintUnappliedEntries THEN
            EXIT(FALSE);
        IF NOT PrintUnappliedEntries THEN
            IF DtldCustLedgEntries.Unapplied THEN
                EXIT(TRUE);
        IF NOT PrintReversedEntries THEN BEGIN
            CustLedgEntry.GET(DtldCustLedgEntries."Cust. Ledger Entry No.");
            IF CustLedgEntry.Reversed THEN
                EXIT(TRUE);
        END;
        EXIT(FALSE);
    end;

    procedure InitializeRequest(NewPrintEntriesDue: Boolean; NewPrintAllHavingEntry: Boolean; NewPrintAllHavingBal: Boolean; NewPrintReversedEntries: Boolean; NewPrintUnappliedEntries: Boolean; NewIncludeAgingBand: Boolean; NewPeriodLength: Text[30]; NewDateChoice: Option; NewLogInteraction: Boolean; NewStartDate: Date; NewEndDate: Date);
    begin
        InitRequestPageDataInternal;

        PrintEntriesDue := NewPrintEntriesDue;
        PrintAllHavingEntry := NewPrintAllHavingEntry;
        PrintAllHavingBal := NewPrintAllHavingBal;
        PrintReversedEntries := NewPrintReversedEntries;
        PrintUnappliedEntries := NewPrintUnappliedEntries;
        IncludeAgingBand := NewIncludeAgingBand;
        EVALUATE(PeriodLength, NewPeriodLength);
        DateChoice := NewDateChoice;
        LogInteraction := NewLogInteraction;
        StartDate := NewStartDate;
        EndDate := NewEndDate;
    end;

    procedure InitRequestPageDataInternal();
    begin
        IF isInitialized THEN
            EXIT;

        isInitialized := TRUE;

        IF (NOT PrintAllHavingEntry) AND (NOT PrintAllHavingBal) THEN
            PrintAllHavingBal := TRUE;

        LogInteraction := SegManagement.FindInteractTmplCode(7) <> '';
        LogInteractionEnable := LogInteraction;

        IF FORMAT(PeriodLength) = '' THEN
            EVALUATE(PeriodLength, '<1M+CM>');

        ShowPrintRemaining := (SupportedOutputMethod = SupportedOutputMethod::Email);
    end;

    local procedure VerifyDates();
    begin
        IF StartDate = 0D THEN
            ERROR(BlankStartDateErr);
        IF EndDate = 0D THEN
            ERROR(BlankEndDateErr);
        IF StartDate > EndDate THEN
            ERROR(StartDateLaterTheEndDateErr);
    end;
}

