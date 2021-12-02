pageextension 50092 "Report_Selections_Purchase" extends 347

// DSDK.01 LV 2019.02.06 - Params - Purchase

{
    PromotedActionCategoriesML = DAN = 'Ny,Behandling,Rapporter,Opsætning',
                                 ENU = 'New,Process,Report,SetUp';

    actions
    {
        addfirst(Navigation)
        {
            action("Setup")
            {
                ApplicationArea = All;
                CaptionML = DAN = 'Opsætning',
                            ENU = 'Setup';
                Image = Setup;
                Promoted = true;
                PromotedCategory = Category4;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    myInt: Integer;
                    ReportSelectionRec: Record "Report Selections";
                    ReportSelectionSetup: Page 50091;
                begin
                    Clear(ReportSelectionRec);
                    ReportSelectionRec.SetRange(usage, Rec.Usage);
                    ReportSelectionRec.SetRange("Report ID", Rec."Report ID");

                    Clear(ReportSelectionSetup);
                    ReportSelectionSetup.SetTableView(ReportSelectionRec);
                    ReportSelectionSetup.SetPurchase;
                    ReportSelectionSetup.RunModal;
                end;
            }

            action("Setup Bottom")
            {
                ApplicationArea = All;
                CaptionML = DAN = 'Opsætning bundlinjer',
                            ENU = 'Setup Bottom lines';
                Image = Setup;
                Promoted = true;
                PromotedCategory = Category4;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    CompanyInformationRec: Record "Company Information";
                    CompanyInformationPage: Page 50090;
                begin
                    Clear(CompanyInformationRec);
                    CompanyInformationRec.SetRange("Primary Key", '');

                    Clear(CompanyInformationPage);
                    CompanyInformationPage.SetTableView(CompanyInformationRec);
                    CompanyInformationPage.RunModal;
                end;
            }
        }
    }

    var
        myInt: Integer;
        SetUpVisible: Boolean;

    trigger OnAfterGetRecord()
    begin
        SetUpVisible := false;
        If Rec."Do Not Delete" then
            SetUpVisible := true;
    end;
}