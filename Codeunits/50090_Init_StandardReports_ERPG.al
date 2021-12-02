codeunit 50090 "Setup Standard Reports ERPG"

// DSDK.00 LV 2019.01.02 - Setup all standard reports ERPG
{
    Subtype = Install;
    trigger OnInstallAppPerCompany();

    begin
        ReportID := 50020;
        ReportUsage := ReportSelections.Usage::"S.Invoice";
        DoNotDelete := true;
        InitReportSelection;

        ReportID := 50021;
        ReportUsage := ReportSelections.Usage::"S.Cr.Memo";
        DoNotDelete := true;
        InitReportSelection;

        ReportID := 50022;
        ReportUsage := ReportSelections.Usage::"S.Quote";
        DoNotDelete := true;
        InitReportSelection;

        ReportID := 50023;
        ReportUsage := ReportSelections.Usage::"S.Shipment";
        DoNotDelete := true;
        InitReportSelection;

        ReportID := 50024;
        ReportUsage := ReportSelections.Usage::"C.Statement";
        InitReportSelection;

        ReportID := 50025;
        ReportUsage := ReportSelections.Usage::Reminder;
        InitReportSelection;

        ReportID := 50026;
        ReportUsage := ReportSelections.Usage::"S.Order";
        DoNotDelete := true;
        InitReportSelection;

        ReportID := 50027;
        ReportUsage := ReportSelections.Usage::"Pro Forma S. Invoice";
        InitReportSelection;

        ReportID := 50028;
        ReportUsage := ReportSelections.Usage::"P.Order";
        DoNotDelete := true;
        InitReportSelection;

        //>>DSDK.new
        ReportID := 50028;
        ReportUsage := ReportSelections.Usage::"P.Quote";
        DoNotDelete := true;
        InitReportSelection;
        //<<DSDK.new

        ReportID := 50030;
        ReportUsage := ReportSelections.Usage::"Fin.Charge";
        InitReportSelection;

        Message('ERPG standard rapporter er nu initieret.')

    end;

    local procedure InitReportSelection();
    begin
        // check if already exist
        Clear(ReportSelections);
        ReportSelections.SETRANGE(ReportSelections.Usage, ReportUsage);
        ReportSelections.SETRANGE(ReportSelections."Report ID", ReportID);
        IF ReportSelections.Count <> 0 then
            exit;

        // delete old
        Clear(ReportSelections);
        ReportSelections.SETRANGE(ReportSelections.Usage, ReportUsage);
        ReportSelections.DELETEALL;

        // insert new
        ReportSelections.Init;
        ReportSelections.Usage := ReportUsage;
        ReportSelections.Sequence := '1';
        ReportSelections."Report ID" := ReportID;
        ReportSelections."Use for Email Attachment" := true;

        //>>Params
        ReportSelections."Do Not Delete" := DoNotDelete;
        IF DoNotDelete then begin
            IF (ReportID = 50020) or (ReportID = 50023) then begin
                ReportSelections.Param01 := SalesReport_Option::"Doc no";
                ReportSelections.Param02 := SalesReport_Option::"Customer no";
                ReportSelections.Param03 := SalesReport_Option::Date;
                ReportSelections.Param04 := SalesReport_Option::"Page no";
                ReportSelections.Param05 := SalesReport_Option::"Order no";         // extra
                ReportSelections.Param06 := SalesReport_Option::"Sales person";
                ReportSelections.Param07 := SalesReport_Option::"Tax no";
                ReportSelections.Param08 := SalesReport_Option::Reference;
                ReportSelections.Param09 := SalesReport_Option::"External Document No.";
                ReportSelections.Param10 := SalesReport_Option::"Shipping Methode";
                ReportSelections.Param11 := SalesReport_Option::Payment;
            end else begin
                IF ReportID <> 50028 then begin
                    ReportSelections.Param01 := SalesReport_Option::"Doc no";
                    ReportSelections.Param02 := SalesReport_Option::"Customer no";
                    ReportSelections.Param03 := SalesReport_Option::Date;
                    ReportSelections.Param04 := SalesReport_Option::"Page no";
                    ReportSelections.Param05 := SalesReport_Option::"Sales person";
                    ReportSelections.Param06 := SalesReport_Option::"Tax no";
                    ReportSelections.Param07 := SalesReport_Option::Reference;
                    ReportSelections.Param08 := SalesReport_Option::"External Document No.";
                    ReportSelections.Param09 := SalesReport_Option::"Shipping Methode";
                    ReportSelections.Param10 := SalesReport_Option::Payment;
                end;
            end;

            IF (reportID = 50028) then begin
                ReportSelections.Param01 := PurchaseReport_Option::"Doc no";
                ReportSelections.Param02 := PurchaseReport_Option::"Vendor no";
                ReportSelections.Param03 := PurchaseReport_Option::Date;
                ReportSelections.Param04 := PurchaseReport_Option::"Page no";
                ReportSelections.Param05 := PurchaseReport_Option::"Purchaser Code";
                ReportSelections.Param06 := PurchaseReport_Option::"Tax no";
                ReportSelections.Param07 := PurchaseReport_Option::"Vendor Order No.";
                ReportSelections.Param08 := PurchaseReport_Option::"Vendor Shipment No.";
                ReportSelections.Param09 := PurchaseReport_Option::Payment;
            end;
        end;
        //<<Params

        ReportSelections.INSERT;
        DoNotDelete := false;
    end;

    local procedure InitReportBottom()
    var
        CompanyInformation: Record "Company Information";

    begin
        IF CompanyInformation.get then;

        // Init: line 1
        CompanyInformation.Param01 := CompanyInformation.Param01::Name;
        CompanyInformation.Param02 := CompanyInformation.Param02::Address;
        CompanyInformation.Param03 := CompanyInformation.Param03::"PostCode-City";
        CompanyInformation.Param04 := CompanyInformation.Param04::"VAT Reg.no";
        // Init: Line 2
        CompanyInformation.Param05 := CompanyInformation.Param05::Homepage;
        CompanyInformation.Param06 := CompanyInformation.Param06::Email;
        CompanyInformation.Param07 := CompanyInformation.Param07::Phone;
        CompanyInformation.Param08 := CompanyInformation.Param08::" ";
        CompanyInformation.Modify;

    end;

    var
        myInt: Integer;
        ReportSelections: Record "Report Selections";
        ReportID: Integer;
        ReportUsage: Integer;
        DoNotDelete: Boolean;
        SalesReport_Option: Option " ","Doc no","Sales person",Date,"Page no","Customer no","Tax no",Reference,"Shipping Methode",Payment,"Order no","External Document No.";
        PurchaseReport_Option: Option " ","Doc no","Vendor no",Date,"Page no","Purchaser Code","Tax no",Payment,"Vendor Order No.","Vendor Shipment No.";

}