page 50090 "Company Info Bottom ERPG"
{
    PageType = Card;
    //ApplicationArea = All;
    //UsageCategory = Administration;
    SourceTable = "Company Information";
    CaptionML = DAN = 'Virksomhedsoplysninger bundtekster - for alle raporter', ENU = 'Company Info Bottom - for alle reports';
    InsertAllowed = false;
    DeleteAllowed = false;

    // DSDK.01 LV 2020.01.23 - bottom lines 4 to 5 fields

    layout
    {
        area(Content)
        {
            group("Opsætning af bundlinjer")
            {

                group("Linje 1")
                {
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
                    //DSDK.01
                    field(Param09; Param09)
                    {
                        ApplicationArea = All;
                    }
                }
                group("Linje 2")
                {
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
                    //DSDK.01
                    field(Param10; Param10)
                    {
                        ApplicationArea = All;
                    }
                }

            }
            group(ReportEncoding)
            {
                CaptionML = DAN = 'Report Encoding - udpakning af danske æøå', ENU = 'Report EWndocing';
                field("Report Encoding"; "Report Encoding")
                {
                    ApplicationArea = All;
                }
            }
        }
    }


    var
        myInt: Integer;

}