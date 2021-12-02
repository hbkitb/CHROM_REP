codeunit 50091 "Set Company Name"
{
    trigger OnRun()
    begin
    end;

    procedure InitCompanyName(var ParamCompanyName: Text)
    begin
        // insert company name HERE
        ParamCompanyName := '';
    end;
}