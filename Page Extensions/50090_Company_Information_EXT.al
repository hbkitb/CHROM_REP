pageextension 50090 "Company Information Ext ERPG" extends 1
{
    layout
    {
        // Add changes to page layout here
        addafter("Payments")
        {
            group("Betalinger FIK")
            {
                field("FIK Bank Creditor No."; "FIK Bank Creditor No.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}