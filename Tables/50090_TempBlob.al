table 50090 ERPBlob
{
    // version DSDK.00
    // DSDK.45 LV 2019.11.04 - version 15


    Caption = 'ERPBlob';

    fields
    {
        field(1; "Primary Key"; Integer)
        {
            Caption = 'Primary Key';
            DataClassification = SystemMetadata;
        }
        field(2; Blob; BLOB)
        {
            Caption = 'Blob';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
        }
    }

    fieldgroups
    {
    }

    var
        GlobalInStream: InStream;
        GlobalOutStream: OutStream;
        ReadLinesInitialized: Boolean;
        WriteLinesInitialized: Boolean;
        NoContentErr: Label 'The BLOB field is empty.';
        UnknownImageTypeErr: Label 'Unknown image type.';
        XmlCannotBeLoadedErr: Label 'The XML cannot be loaded.';

    [Scope('Cloud')]
    procedure WriteAsText(Content: Text; Encoding: TextEncoding)
    var
        OutStr: OutStream;
    begin
        CLEAR(Blob);
        IF Content = '' THEN
            EXIT;
        Blob.CREATEOUTSTREAM(OutStr, Encoding);
        OutStr.WRITETEXT(Content);
    end;

    [Scope('Cloud')]
    procedure ReadAsText(LineSeparator: Text; Encoding: TextEncoding) Content: Text
    var
        InStream: InStream;
        ContentLine: Text;
    begin
        Blob.CREATEINSTREAM(InStream, Encoding);

        InStream.READTEXT(Content);
        WHILE NOT InStream.EOS DO BEGIN
            InStream.READTEXT(ContentLine);
            Content += LineSeparator + ContentLine;
        END;
    end;

    [Scope('Cloud')]
    procedure ReadAsTextWithCRLFLineSeparator(): Text
    var
        CRLF: Text[2];
    begin
        CRLF[1] := 13;
        CRLF[2] := 10;
        EXIT(ReadAsText(CRLF, TEXTENCODING::UTF8));
    end;

    [Scope('Cloud')]
    procedure StartReadingTextLines(Encoding: TextEncoding)
    begin
        Blob.CREATEINSTREAM(GlobalInStream, Encoding);
        ReadLinesInitialized := TRUE;
    end;

    [Scope('Cloud')]
    procedure StartWritingTextLines(Encoding: TextEncoding)
    begin
        CLEAR(Blob);
        Blob.CREATEOUTSTREAM(GlobalOutStream, Encoding);
        WriteLinesInitialized := TRUE;
    end;

    [Scope('Cloud')]
    procedure MoreTextLines(): Boolean
    begin
        IF NOT ReadLinesInitialized THEN
            StartReadingTextLines(TEXTENCODING::Windows);
        EXIT(NOT GlobalInStream.EOS);
    end;

    [Scope('Cloud')]
    procedure ReadTextLine(): Text
    var
        ContentLine: Text;
    begin
        IF NOT MoreTextLines THEN
            EXIT('');
        GlobalInStream.READTEXT(ContentLine);
        EXIT(ContentLine);
    end;

    [Scope('Cloud')]
    procedure WriteTextLine(Content: Text)
    begin
        IF NOT WriteLinesInitialized THEN
            StartWritingTextLines(TEXTENCODING::Windows);
        GlobalOutStream.WRITETEXT(Content);
    end;

    //>>DSDK.45
    /* 
    [Scope('Cloud')]
    procedure ToBase64String(): Text
    var
        IStream: InStream;
        Convert: DotNet Convert;
        MemoryStream: DotNet MemoryStream;
        Base64String: Text;
    begin
        IF NOT Blob.HASVALUE THEN
          EXIT('');
        Blob.CREATEINSTREAM(IStream);
        MemoryStream := MemoryStream.MemoryStream;
        COPYSTREAM(MemoryStream,IStream);
        Base64String := Convert.ToBase64String(MemoryStream.ToArray);
        MemoryStream.Close;
        EXIT(Base64String);
    end;

    [Scope('Cloud')]
    procedure FromBase64String(Base64String: Text)
    var
        OStream: OutStream;
        Convert: DotNet Convert;
        MemoryStream: DotNet MemoryStream;
    begin
        IF Base64String = '' THEN
          EXIT;
        MemoryStream := MemoryStream.MemoryStream(Convert.FromBase64String(Base64String));
        Blob.CREATEOUTSTREAM(OStream);
        MemoryStream.WriteTo(OStream);
        MemoryStream.Close;
    end;

    [Scope('Cloud')]
    procedure GetHTMLImgSrc(): Text
    var
        ImageFormatAsTxt: Text;
    begin
        IF NOT Blob.HASVALUE THEN
          EXIT('');
        IF NOT TryGetImageFormatAsTxt(ImageFormatAsTxt) THEN
          EXIT('');
        EXIT(STRSUBSTNO('data:image/%1;base64,%2',ImageFormatAsTxt,ToBase64String));
    end;

    [TryFunction]
    local procedure TryGetImageFormatAsTxt(var ImageFormatAsTxt: Text)
    var
        Image: DotNet Image;
        ImageFormatConverter: DotNet ImageFormatConverter;
        InStream: InStream;
    begin
        Blob.CREATEINSTREAM(InStream);
        Image := Image.FromStream(InStream);
        ImageFormatConverter := ImageFormatConverter.ImageFormatConverter;
        ImageFormatAsTxt := ImageFormatConverter.ConvertToString(Image.RawFormat);
    end;

    [Scope('Cloud')]
    procedure GetImageType(): Text
    var
        ImageFormatAsTxt: Text;
    begin
        IF NOT Blob.HASVALUE THEN
          ERROR(NoContentErr);
        IF NOT TryGetImageFormatAsTxt(ImageFormatAsTxt) THEN
          ERROR(UnknownImageTypeErr);
        EXIT(ImageFormatAsTxt);
    end;

    [TryFunction]
    [Scope('Cloud')]
    procedure TryDownloadFromUrl(Url: Text)
    var
        FileManagement: Codeunit 419;
        WebClient: DotNet WebClient;
        MemoryStream: DotNet MemoryStream;
        OutStr: OutStream;
    begin
        FileManagement.IsAllowedPath(Url,FALSE);
        WebClient := WebClient.WebClient;
        MemoryStream := MemoryStream.MemoryStream(WebClient.DownloadData(Url));
        Blob.CREATEOUTSTREAM(OutStr);
        COPYSTREAM(OutStr,MemoryStream);
    end;

    [TryFunction]
    local procedure TryGetXMLAsText(var Xml: Text)
    var
        XmlDoc: DotNet XmlDocument;
        InStr: InStream;
    begin
        Blob.CREATEINSTREAM(InStr);
        XmlDoc := XmlDoc.XmlDocument;
        XmlDoc.PreserveWhitespace := FALSE;
        XmlDoc.Load(InStr);
        Xml := XmlDoc.OuterXml;
    end;

    [Scope('Cloud')]
    procedure GetXMLAsText(): Text
    var
        Xml: Text;
    begin
        IF NOT Blob.HASVALUE THEN
          ERROR(NoContentErr);
        IF NOT TryGetXMLAsText(Xml) THEN
          ERROR(XmlCannotBeLoadedErr);
        EXIT(Xml);
    end;
    */
    //<<DSDK.45
}

