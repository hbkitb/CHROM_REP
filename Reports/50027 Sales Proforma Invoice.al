report 50027 "Proforma Invoice Param"
{
    // version DSDK.std.BC,DSDK.00

    // DSDK.00 LV 2019.04.30 - Proforma Invoice - via Sales Header & Sales Line

    Caption = 'Proforma Invoice';
    Permissions = TableData 112 = rimd,
                  TableData 113 = rimd;
    ProcessingOnly = true;
    UseRequestPage = false;

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {

            trigger OnAfterGetRecord()
            begin
                // delete old - if exist
                ProformaInvoiceNo := 'P' + "Sales Header"."No.";
                DeleteTempInvoice;

                CLEAR(SalesInvoiceHeader);
                SalesInvoiceHeader.SETRANGE(SalesInvoiceHeader."No.", ProformaInvoiceNo);
                SalesInvoiceHeader.DELETEALL;
                CLEAR(SalesInvoiceLine);
                SalesInvoiceLine.SETRANGE(SalesInvoiceLine."Document No.", ProformaInvoiceNo);
                SalesInvoiceLine.DELETEALL;


                // create temp Sales Invoice - Header
                CLEAR(SalesInvoiceHeader);
                SalesInvoiceHeader.INIT;
                SalesInvoiceHeader.TRANSFERFIELDS("Sales Header");
                SalesInvoiceHeader."No." := ProformaInvoiceNo;
                SalesInvoiceHeader."Order No." := "Sales Header"."No.";
                SalesInvoiceHeader.INSERT;

                // create temp Sales Invoice - Lines
                CLEAR(SalesLine);
                SalesLine.SETRANGE(SalesLine."Document Type", "Sales Header"."Document Type");
                SalesLine.SETRANGE(SalesLine."Document No.", "Sales Header"."No.");
                IF SalesLine.FINDSET THEN
                    REPEAT
                        SalesInvoiceLine.INIT;
                        SalesInvoiceLine.TRANSFERFIELDS(SalesLine);
                        SalesInvoiceLine."Document No." := ProformaInvoiceNo;
                        SalesInvoiceLine.INSERT;
                    UNTIL SalesLine.NEXT = 0;

                COMMIT;

                // Print Proforma Invoice
                CLEAR(SalesInvoiceHeader);
                SalesInvoiceHeader.SETRANGE(SalesInvoiceHeader."No.", ProformaInvoiceNo);

                CLEAR(SalesInvoiceReport);
                SalesInvoiceReport.SETTABLEVIEW(SalesInvoiceHeader);
                SalesInvoiceReport.SetProformaInvoice;
                SalesInvoiceReport.RUNMODAL;

                // delete old - after use
                DeleteTempInvoice;
            end;
        }
    }

    requestpage
    {
        DataCaptionExpression = SetDataCaptionExpr;

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        SalesLine: Record "Sales Line";
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesInvoiceLine: Record "Sales Invoice Line";
        ProformaInvoiceNo: Code[20];
        SalesInvoiceReport: Report "Sales - Invoice DSDK2018 ERPG";
        PageTitleCaption: Label 'Choose Order';

    local procedure DeleteTempInvoice()
    begin
        CLEAR(SalesInvoiceHeader);
        SalesInvoiceHeader.SETRANGE(SalesInvoiceHeader."No.", ProformaInvoiceNo);
        SalesInvoiceHeader.DELETEALL;
        CLEAR(SalesInvoiceLine);
        SalesInvoiceLine.SETRANGE(SalesInvoiceLine."Document No.", ProformaInvoiceNo);
        SalesInvoiceLine.DELETEALL;
    end;

    local procedure SetDataCaptionExpr(): Text[80]
    begin
        //>>DSDK.ProformaInvoice
        EXIT(PageTitleCaption);
        //<<DSDK.ProformaInvoice
    end;
}

