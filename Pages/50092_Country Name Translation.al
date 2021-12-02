page 50092 "Country Name Translation"
{
    // DSDK.00 LV 2019.07.19 - Country Name Translation

    PageType = ListPart;
    SourceTable = 11;

    layout
    {
        area(content)
        {
            group(Country)
            {
                CaptionML = DAN = 'Land', ENU = 'Country';
                group("Country:")
                {
                    CaptionML = DAN = 'Land:', ENU = 'Country:';
                    field(CountryCode; CountryCode)
                    {
                        CaptionML = DAN = 'Kode', ENU = 'Code';
                        Editable = false;
                        ApplicationArea = All;
                    }
                    field(CountryName; CountryRegion.Name)
                    {
                        CaptionML = DAN = 'Navn', ENU = 'Name';
                        Editable = false;
                        ApplicationArea = All;
                    }
                }
            }
            repeater(Group)
            {
                field("Country/Region Code"; "Country/Region Code")
                {
                    Enabled = false;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Language Code"; "Language Code")
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        InitCountryNames;


        CountryCode := CountryRegion.Code;
        IF CountryCode <> '' THEN BEGIN
            CLEAR(Rec);
            Rec.FILTERGROUP(10);
            Rec.SETRANGE("Country/Region Code", CountryCode);
            Rec.FILTERGROUP(0);
        END;
    end;

    var
        CountryCode: Code[10];
        CountryRegion: Record 9;
        CountryName_DAN: text[50];
        CountryName_DEU: text[50];
        CountryName_ENU: text[50];

    procedure SetCountryCode(var PassCountryRegion: Record 9)
    begin
        CountryRegion := PassCountryRegion;
    end;

    local procedure InitCountryNames()
    begin
        CLEAR(Rec);
        IF Rec.COUNT <> 0 THEN
            EXIT;

        CountryCode := 'AT';
        CountryName_DAN := 'Østrig';
        CountryName_DEU := 'Österreich';
        CountryName_ENU := 'Austria';
        InsertNames;
        CountryCode := 'BE';
        CountryName_DAN := 'Belgien';
        CountryName_DEU := 'Belgien';
        CountryName_ENU := 'Belgium';
        InsertNames;
        CountryCode := 'CH';
        CountryName_DAN := 'Schweiz';
        CountryName_DEU := 'Schweiz';
        CountryName_ENU := 'Switzerland';
        InsertNames;
        CountryCode := 'CY';
        CountryName_DAN := 'Cypern';
        CountryName_DEU := 'Cypern';
        CountryName_ENU := 'Cypern';
        InsertNames;
        CountryCode := 'CZ';
        CountryName_DAN := 'Tjekkiet';
        CountryName_DEU := 'Tschechische Republik';
        CountryName_ENU := 'Czech Republic';
        InsertNames;
        CountryCode := 'DE';
        CountryName_DAN := 'Tyskland';
        CountryName_DEU := 'Deutschland';
        CountryName_ENU := 'Germany';
        InsertNames;
        CountryCode := 'DK';
        CountryName_DAN := 'Danmark';
        CountryName_DEU := 'Dänemark';
        CountryName_ENU := 'Denmark';
        InsertNames;
        CountryCode := 'EE';
        CountryName_DAN := 'Estland';
        CountryName_DEU := 'Estland';
        CountryName_ENU := 'Estland';
        InsertNames;
        CountryCode := 'EL';
        CountryName_DAN := 'Grækenland';
        CountryName_DEU := 'Grækenland';
        CountryName_ENU := 'Greece';
        InsertNames;
        CountryCode := 'ES';
        CountryName_DAN := 'Spanien';
        CountryName_DEU := 'Spanien';
        CountryName_ENU := 'Spanien';
        InsertNames;
        CountryCode := 'FI';
        CountryName_DAN := 'Finland';
        CountryName_DEU := 'Finnland';
        CountryName_ENU := 'Finland';
        InsertNames;
        CountryCode := 'FR';
        CountryName_DAN := 'Frankrig';
        CountryName_DEU := 'Frankrig';
        CountryName_ENU := 'France';
        InsertNames;
        CountryCode := 'GB';
        CountryName_DAN := 'Storbritannien';
        CountryName_DEU := 'Großbritannien';
        CountryName_ENU := 'United Kingdom';
        InsertNames;
        CountryCode := 'HR';
        CountryName_DAN := 'Den tidligere jugoslaviske republik Kroatien';
        CountryName_DEU := 'Ehemalige jugoslawische Republik Kroatien';
        CountryName_ENU := 'Den tidligere jugoslaviske republik Kroatien';
        InsertNames;
        CountryCode := 'HU';
        CountryName_DAN := 'Ungarn';
        CountryName_DEU := 'Ungarn';
        CountryName_ENU := 'Hungary';
        InsertNames;
        CountryCode := 'IE';
        CountryName_DAN := 'Irland';
        CountryName_DEU := 'Irland';
        CountryName_ENU := 'Ireland';
        InsertNames;
        CountryCode := 'IS';
        CountryName_DAN := 'Island';
        CountryName_DEU := 'Island';
        CountryName_ENU := 'Island';
        InsertNames;
        CountryCode := 'IT';
        CountryName_DAN := 'Italien';
        CountryName_DEU := 'Italien';
        CountryName_ENU := 'Italy';
        InsertNames;
        CountryCode := 'LT';
        CountryName_DAN := 'Litauen';
        CountryName_DEU := 'Litauen';
        CountryName_ENU := 'Lithuania';
        InsertNames;
        CountryCode := 'LU';
        CountryName_DAN := 'Luxembourg';
        CountryName_DEU := 'Luxembourg';
        CountryName_ENU := 'Luxembourg';
        InsertNames;
        CountryCode := 'LV';
        CountryName_DAN := 'Letland';
        CountryName_DEU := 'Lettland';
        CountryName_ENU := 'Latvia';
        InsertNames;
        CountryCode := 'ME';
        CountryName_DAN := 'Montenegro';
        CountryName_DEU := 'Montenegro';
        CountryName_ENU := 'Montenegro';
        InsertNames;
        CountryCode := 'MT';
        CountryName_DAN := 'Malta';
        CountryName_DEU := 'Malta';
        CountryName_ENU := 'Malta';
        InsertNames;
        CountryCode := 'NL';
        CountryName_DAN := 'Nederlandene';
        CountryName_DEU := 'Niederlande';
        CountryName_ENU := 'Netherlands';
        InsertNames;
        CountryCode := 'NO';
        CountryName_DAN := 'Norge';
        CountryName_DEU := 'Norwegen';
        CountryName_ENU := 'Norway';
        InsertNames;
        CountryCode := 'PL';
        CountryName_DAN := 'Polen';
        CountryName_DEU := 'Polen';
        CountryName_ENU := 'Poland';
        InsertNames;
        CountryCode := 'PT';
        CountryName_DAN := 'Portugal';
        CountryName_DEU := 'Portugal';
        CountryName_ENU := 'Portugal';
        InsertNames;
        CountryCode := 'RO';
        CountryName_DAN := 'Rumænien';
        CountryName_DEU := 'Rumänien';
        CountryName_ENU := 'Romania';
        InsertNames;
        CountryCode := 'RS';
        CountryName_DAN := 'Serbien';
        CountryName_DEU := 'Serbien';
        CountryName_ENU := 'Serbia';
        InsertNames;
        CountryCode := 'RU';
        CountryName_DAN := 'Rusland';
        CountryName_DEU := 'Russland';
        CountryName_ENU := 'Russia';
        InsertNames;
        CountryCode := 'SE';
        CountryName_DAN := 'Sverige';
        CountryName_DEU := 'Schweden';
        CountryName_ENU := 'Sweden';
        InsertNames;
        CountryCode := 'SL';
        CountryName_DAN := 'Den tidligere jugoslaviske republik Slovenien';
        CountryName_DEU := 'Ehemalige jugoslawische Republik Slowenien';
        CountryName_ENU := 'Former Yugoslav Republic of Slovenia';
        InsertNames;
        CountryCode := 'SK';
        CountryName_DAN := 'Slovakiet';
        CountryName_DEU := 'Slowakei';
        CountryName_ENU := 'Slovakia';
        InsertNames;
        CountryCode := 'TR';
        CountryName_DAN := 'Tyrkiet';
        CountryName_DEU := 'Türkei';
        CountryName_ENU := 'Turkey';
        InsertNames;
        CountryCode := 'US';
        CountryName_DAN := 'USA';
        CountryName_DEU := 'USA';
        CountryName_ENU := 'USA';
        InsertNames;

    end;

    local procedure InsertNames()
    begin
        Rec."Country/Region Code" := CountryCode;
        Rec."Language Code" := 'DAN';
        Rec.Name := CountryName_DAN;
        Rec.INSERT;

        Rec."Country/Region Code" := CountryCode;
        Rec."Language Code" := 'DEU';
        Rec.Name := CountryName_DEU;
        Rec.INSERT;

        Rec."Country/Region Code" := CountryCode;
        Rec."Language Code" := 'ENU';
        Rec.Name := CountryName_ENU;
        Rec.INSERT;
    end;
}

