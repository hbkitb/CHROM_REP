pageextension 50093 "Bank Account Card" extends "Bank Account Card"
{
    layout
    {
        addafter("Currency Code")
        {
            field("Account used on Report Package"; "Account used on Report Package")
            {
                ApplicationArea = All;
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