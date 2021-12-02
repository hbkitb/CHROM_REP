pageextension 50094 "Countries Regions Info" extends "Countries/Regions"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addfirst(Navigation)
        {

            action(LanguageNames)
            {
                ApplicationArea = All;
                CaptionML = DAN = 'Sprogtekster', ENU = 'Language texts';
                Ellipsis = true;
                Image = List;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    CountryNameTranslationPage: Page 50092;
                begin
                    //>>DSDSK.01
                    CLEAR(CountryNameTranslationPage);
                    CountryNameTranslationPage.SetCountryCode(Rec);
                    CountryNameTranslationPage.RUNMODAL;
                    //<<DSDK.01
                end;
            }
        }

    }

    var
        myInt: Integer;
}