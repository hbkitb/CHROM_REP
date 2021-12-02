page 50091 "Report Selections Setup ERPG"
{
    // DSDK.01 LV 2019.05.27 - "Drop Work Description", "Show Country of Origin", Show on same line"
    // DSDK.02 LV 2019.10.07 - "Show Customer Item No."
    // DSDK.03 LV 2019.10.30 - "Show Weight"


    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    PromotedActionCategoriesML = DAN = 'Ny,Process,Rapporter,Tekster', ENU = 'New,Process,Reports,Texts';
    SourceTable = "Report Selections";
    DataCaptionExpression = FORMAT("Report ID") + ' - ' + "Report Caption";
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(General)
            {
                CaptionML = DAN = 'Opsætning', ENU = 'Setup';

                group(Sales_Parameters)
                {
                    CaptionML = DAN = 'Parametre', ENU = 'Parameters';
                    Visible = ShowSales;

                    field(Param01; Param01)
                    {
                        ApplicationArea = All;
                    }
                    field(Param02; Param02)
                    {
                        ApplicationArea = All;
                    }
                    field(Param03; Param03)
                    {
                        ApplicationArea = All;
                    }
                    field(Param04; Param04)
                    {
                        ApplicationArea = All;
                    }
                    field(Param05; Param05)
                    {
                        ApplicationArea = All;
                    }
                    field(Param06; Param06)
                    {
                        ApplicationArea = All;
                    }
                    field(Param07; Param07)
                    {
                        ApplicationArea = All;
                    }
                    field(Param08; Param08)
                    {
                        ApplicationArea = All;
                    }
                    field(Param09; Param09)
                    {
                        ApplicationArea = All;
                    }
                    field(Param10; Param10)
                    {
                        ApplicationArea = All;
                    }
                    field(Param11; Param11)
                    {
                        ApplicationArea = All;
                    }
                    field(Param12; Param12)
                    {
                        ApplicationArea = All;
                    }
                    field(Param13; Param13)
                    {
                        ApplicationArea = All;
                        Visible = false;
                    }
                    field(Param14; Param14)
                    {
                        ApplicationArea = All;
                        Visible = false;
                    }
                    field(Param15; Param15)
                    {
                        ApplicationArea = All;
                        Visible = false;
                    }
                }
                group(Purchase_Parameters)
                {
                    CaptionML = DAN = 'Parametre', ENU = 'Parameters';
                    Visible = ShowPurchase;
                    field(PParam01; PParam01)
                    {
                        ApplicationArea = All;

                    }
                    field(PParam02; PParam02)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam03; PParam03)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam04; PParam04)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam05; PParam05)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam06; PParam06)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam07; PParam07)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam08; PParam08)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam09; PParam09)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam10; PParam10)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam11; PParam11)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam12; PParam12)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam13; PParam13)
                    {
                        ApplicationArea = All;
                        Visible = false;

                    }
                    field(PParam14; PParam14)
                    {
                        ApplicationArea = All;
                        Visible = false;
                    }
                    field(PParam15; PParam15)
                    {
                        ApplicationArea = All;
                        Visible = false;
                    }


                }
                group("Skjul")
                {
                    CaptionML = DAN = 'Skjul', ENU = 'Hides';
                    field("Drop Delivery Address"; "Drop Delivery Address")
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Skjul leveringsadresse', ENU = 'Hide Delivery Address';
                    }
                    field("Drop Item No Column"; "Drop Item No Column")
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Skjul kolonne varenummer', ENU = 'Hide Item No Column';
                        Visible = ShowSales;

                    }
                    field("Drop Bank Info at FIK"; "Drop Bank Info at FIK")
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Skjul bankoplysninger ved FIK', ENU = 'Hide Bank Info at FIK';
                        Visible = ShowSales;

                    }
                    field("Drop Work Description"; "Drop Work Description")
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Skjul arbejdsbeskrivelse', ENU = 'Hide Work Description';
                        Visible = ShowSales;
                    }
                }
                group("Item Line Options")
                {
                    CaptionML = DAN = 'Vare linje options', ENU = 'Item Line Options';
                    field("Show Customer Item No."; "Show Customer Item No.")
                    {
                        ApplicationArea = All;
                        Visible = ShowSales;
                    }
                    field("Show Vendor Item No."; "Show Vendor Item No.")
                    {
                        ApplicationArea = All;
                        Visible = ShowSales;
                    }
                    field("Show Barcode"; "Show Barcode")
                    {
                        ApplicationArea = All;
                    }
                    field("Show Tariff. No"; "Show Tariff. No")
                    {
                        ApplicationArea = All;
                        Visible = ShowSales;
                    }
                    field("Show Country of Origin"; "Show Country of Origin")
                    {
                        ApplicationArea = All;
                        Visible = ShowSales;
                    }
                    field("Show Country Same Line"; "Show Country Same Line")
                    {
                        ApplicationArea = All;
                        Visible = ShowSales;
                    }
                    field("Show Weight"; "Show Weight")
                    {
                        ApplicationArea = All;
                        Visible = ShowWeightField;
                    }
                }

            }

        }
    }

    actions
    {
        area(processing)
        {
            action("Fixed Formular texts")
            {
                ApplicationArea = All;
                CaptionML = DAN = 'Faste formulartekster', ENU = 'Fixed Formular texts';
                Ellipsis = true;
                Image = Text;
                Promoted = true;
                PromotedCategory = Category4;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    //>>DSDK.01

                    // check if header exists
                    CLEAR(StandardText);
                    StandardText.SETRANGE(StandardText.Code, FORMAT(Rec."Report ID"));
                    IF NOT StandardText.FINDSET THEN BEGIN
                        StandardText.Code := FORMAT("Report ID");
                        CASE "Report ID" OF
                            50020:
                                StandardText.Description := 'Faktura';
                            50021:
                                StandardText.Description := 'Kreditnota';
                            50022:
                                StandardText.Description := 'Tilbud';
                            50023:
                                StandardText.Description := 'Leverance';
                            50024:
                                StandardText.Description := 'Kontoudtog';
                            50025:
                                StandardText.Description := 'Rykker';
                            50026:
                                StandardText.Description := 'Salgsordre';
                            50027:
                                StandardText.Description := 'Proforma faktura';
                            50028:
                                StandardText.Description := 'Indkøbsordre';
                            50030:
                                StandardText.Description := 'Rentenota';
                        END;

                        StandardText.INSERT;
                    END;

                    // make fixed reports texts
                    LanguageCode := 'DAN';
                    CreateLanguageTexts;
                    LanguageCode := 'DEU';
                    CreateLanguageTexts;
                    LanguageCode := 'ENU';
                    CreateLanguageTexts;
                    COMMIT;

                    CLEAR(ExtendedTextHeader);
                    ExtendedTextHeader.SETRANGE(ExtendedTextHeader."Table Name", ExtendedTextHeader."Table Name"::"Standard Text");
                    ExtendedTextHeader.SETRANGE(ExtendedTextHeader."No.", StandardText.Code);

                    CLEAR(ExtendedTextList);
                    ExtendedTextList.SETTABLEVIEW(ExtendedTextHeader);
                    ExtendedTextList.RUNMODAL;
                    //<<DSDK.01
                end;
            }
        }
    }

    var
        myInt: Integer;

    trigger OnAfterGetRecord()
    begin
        CalcFields("Report Caption");

    end;

    var
        StandardText: Record "Standard Text";
        ExtendedTextHeader: Record "Extended Text Header";
        ExtendedTextList: Page "Extended Text List";
        LanguageCode: Code[10];
        ShowSales: Boolean;
        ShowPurchase: Boolean;
        ShowWeightField: Boolean;
        ThisUsage: Option "S.Quote","S.Order","S.Invoice","S.Cr.Memo","S.Test","P.Quote","P.Order","P.Invoice","P.Cr.Memo","P.Receipt","P.Ret.Shpt.","P.Test","B.Stmt","B.Recon.Test","B.Check",Reminder,"Fin.Charge","Rem.Test","F.C.Test","Prod. Order","S.Blanket","P.Blanket",M1,M2,M3,M4,Inv1,Inv2,Inv3,"SM.Quote","SM.Order","SM.Invoice","SM.Credit Memo","SM.Contract Quote","SM.Contract","SM.Test","S.Return","P.Return","S.Shipment","S.Ret.Rcpt.","S.Work Order","Invt. Period Test","SM.Shipment","S.Test Prepmt.","P.Test Prepmt.","S.Arch. Quote","S.Arch. Order","P.Arch. Quote","P.Arch. Order","S. Arch. Return Order","P. Arch. Return Order","Asm. Order","P.Assembly Order","S.Order Pick Instruction",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,"C.Statement","V.Remittance",JQ,"S.Invoice Draft","Pro Forma S. Invoice","S. Arch. Blanket Order","P. Arch. Blanket Order";

    local procedure CreateLanguageTexts()
    begin
        CLEAR(ExtendedTextHeader);
        ExtendedTextHeader.SETRANGE(ExtendedTextHeader."Table Name", ExtendedTextHeader."Table Name"::"Standard Text");
        ExtendedTextHeader.SETRANGE(ExtendedTextHeader."No.", StandardText.Code);
        ExtendedTextHeader.SETRANGE(ExtendedTextHeader."Language Code", LanguageCode);
        IF NOT ExtendedTextHeader.FINDSET THEN BEGIN
            ExtendedTextHeader."Table Name" := ExtendedTextHeader."Table Name"::"Standard Text";
            ExtendedTextHeader."No." := StandardText.Code;
            ExtendedTextHeader."Language Code" := LanguageCode;
            ExtendedTextHeader.Description := StandardText.Description;
            ExtendedTextHeader."All Language Codes" := FALSE;
            ExtendedTextHeader.INSERT;

        END;
    end;

    procedure SetSales()
    begin
        ShowSales := TRUE;
    end;

    procedure SetPurchase()
    begin
        ShowPurchase := TRUE;
    end;

    procedure SetUsage(PassUsage: Option "S.Quote","S.Order","S.Invoice","S.Cr.Memo","S.Test","P.Quote","P.Order","P.Invoice","P.Cr.Memo","P.Receipt","P.Ret.Shpt.","P.Test","B.Stmt","B.Recon.Test","B.Check",Reminder,"Fin.Charge","Rem.Test","F.C.Test","Prod. Order","S.Blanket","P.Blanket",M1,M2,M3,M4,Inv1,Inv2,Inv3,"SM.Quote","SM.Order","SM.Invoice","SM.Credit Memo","SM.Contract Quote","SM.Contract","SM.Test","S.Return","P.Return","S.Shipment","S.Ret.Rcpt.","S.Work Order","Invt. Period Test","SM.Shipment","S.Test Prepmt.","P.Test Prepmt.","S.Arch. Quote","S.Arch. Order","P.Arch. Quote","P.Arch. Order","S. Arch. Return Order","P. Arch. Return Order","Asm. Order","P.Assembly Order","S.Order Pick Instruction",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,"C.Statement","V.Remittance",JQ,"S.Invoice Draft","Pro Forma S. Invoice","S. Arch. Blanket Order","P. Arch. Blanket Order")
    begin
        //>>DSDK.03
        ThisUsage := PassUsage;

        ShowWeightField := FALSE;
        IF (ThisUsage = ThisUsage::"S.Invoice") OR (ThisUsage = ThisUsage::"S.Shipment") THEN
            ShowWeightField := TRUE;
        CurrPage.UPDATE;
        //<<DSDK.03
    end;

}