.class public Lmf/org/apache/xml/serialize/OutputFormat;
.super Ljava/lang/Object;
.source "OutputFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xml/serialize/OutputFormat$DTD;,
        Lmf/org/apache/xml/serialize/OutputFormat$Defaults;
    }
.end annotation


# instance fields
.field private _allowJavaNames:Z

.field private _cdataElements:[Ljava/lang/String;

.field private _doctypePublic:Ljava/lang/String;

.field private _doctypeSystem:Ljava/lang/String;

.field private _encoding:Ljava/lang/String;

.field private _encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

.field private _indent:I

.field private _lineSeparator:Ljava/lang/String;

.field private _lineWidth:I

.field private _mediaType:Ljava/lang/String;

.field private _method:Ljava/lang/String;

.field private _nonEscapingElements:[Ljava/lang/String;

.field private _omitComments:Z

.field private _omitDoctype:Z

.field private _omitXmlDeclaration:Z

.field private _preserve:Z

.field private _preserveEmptyAttributes:Z

.field private _standalone:Z

.field private _version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    const-string v0, "UTF-8"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitComments:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_standalone:Z

    const-string v0, "\n"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    const/16 v0, 0x48

    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserve:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "indenting"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    const-string v0, "UTF-8"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitComments:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_standalone:Z

    const-string v0, "\n"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    const/16 v0, 0x48

    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserve:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/OutputFormat;->setIndenting(Z)V

    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Document;)V
    .locals 2
    .param p1, "doc"    # Lmf/org/w3c/dom/Document;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    const-string v0, "UTF-8"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitComments:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_standalone:Z

    const-string v0, "\n"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    const/16 v0, 0x48

    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserve:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    invoke-static {p1}, Lmf/org/apache/xml/serialize/OutputFormat;->whichMethod(Lmf/org/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    invoke-static {p1}, Lmf/org/apache/xml/serialize/OutputFormat;->whichDoctypePublic(Lmf/org/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lmf/org/apache/xml/serialize/OutputFormat;->whichDoctypeSystem(Lmf/org/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setDoctype(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/OutputFormat;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->whichMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/OutputFormat;->setMediaType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Document;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "doc"    # Lmf/org/w3c/dom/Document;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "indenting"    # Z

    .prologue
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Lmf/org/w3c/dom/Document;)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/OutputFormat;->setIndenting(Z)V

    return-void
.end method

.method public static whichDoctypePublic(Lmf/org/w3c/dom/Document;)Ljava/lang/String;
    .locals 2
    .param p0, "doc"    # Lmf/org/w3c/dom/Document;

    .prologue
    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    .local v0, "doctype":Lmf/org/w3c/dom/DocumentType;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    instance-of v1, p0, Lmf/org/w3c/dom/html/HTMLDocument;

    if-eqz v1, :cond_1

    const-string v1, "-//W3C//DTD XHTML 1.0 Strict//EN"

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static whichDoctypeSystem(Lmf/org/w3c/dom/Document;)Ljava/lang/String;
    .locals 2
    .param p0, "doc"    # Lmf/org/w3c/dom/Document;

    .prologue
    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    .local v0, "doctype":Lmf/org/w3c/dom/DocumentType;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    instance-of v1, p0, Lmf/org/w3c/dom/html/HTMLDocument;

    if-eqz v1, :cond_1

    const-string v1, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static whichMediaType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    const-string v0, "xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "text/xml"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "text/html"

    goto :goto_0

    :cond_1
    const-string v0, "xhtml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "text/html"

    goto :goto_0

    :cond_2
    const-string v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "text/plain"

    goto :goto_0

    :cond_3
    const-string v0, "fop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "application/pdf"

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static whichMethod(Lmf/org/w3c/dom/Document;)Ljava/lang/String;
    .locals 5
    .param p0, "doc"    # Lmf/org/w3c/dom/Document;

    .prologue
    instance-of v3, p0, Lmf/org/w3c/dom/html/HTMLDocument;

    if-eqz v3, :cond_0

    const-string v3, "html"

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .local v1, "node":Lmf/org/w3c/dom/Node;
    :goto_1
    if-nez v1, :cond_1

    const-string v3, "xml"

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "html"

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "root"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "fop"

    goto :goto_0

    :cond_3
    const-string v3, "xml"

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_6

    .end local v0    # "i":I
    .end local v2    # "value":Ljava/lang/String;
    :cond_5
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1

    .restart local v0    # "i":I
    .restart local v2    # "value":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_7

    const-string v3, "xml"

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getCDataElements()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    return-object v0
.end method

.method public getDoctypePublic()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_doctypePublic:Ljava/lang/String;

    return-object v0
.end method

.method public getDoctypeSystem()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_doctypeSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingInfo()Lmf/org/apache/xml/serialize/EncodingInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/Encodings;->getEncodingInfo(Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/EncodingInfo;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    return-object v0
.end method

.method public getIndent()I
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    return v0
.end method

.method public getIndenting()Z
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastPrintable()C
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    :goto_0
    return v0

    :cond_0
    const v0, 0xffff

    goto :goto_0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getLineWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    return v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public getNonEscapingElements()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    return-object v0
.end method

.method public getOmitComments()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitComments:Z

    return v0
.end method

.method public getOmitDocumentType()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    return v0
.end method

.method public getOmitXMLDeclaration()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    return v0
.end method

.method public getPreserveEmptyAttributes()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    return v0
.end method

.method public getPreserveSpace()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserve:Z

    return v0
.end method

.method public getStandalone()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_standalone:Z

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_version:Ljava/lang/String;

    return-object v0
.end method

.method public isCDataElement(Ljava/lang/String;)Z
    .locals 3
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isNonEscapingElement(Ljava/lang/String;)Z
    .locals 3
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setAllowJavaNames(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    return-void
.end method

.method public setAllowJavaNames()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    return v0
.end method

.method public setCDataElements([Ljava/lang/String;)V
    .locals 0
    .param p1, "cdataElements"    # [Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    return-void
.end method

.method public setDoctype(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_doctypePublic:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_doctypeSystem:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    return-void
.end method

.method public setEncoding(Lmf/org/apache/xml/serialize/EncodingInfo;)V
    .locals 1
    .param p1, "encInfo"    # Lmf/org/apache/xml/serialize/EncodingInfo;

    .prologue
    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/EncodingInfo;->getIANAName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    return-void
.end method

.method public setIndent(I)V
    .locals 1
    .param p1, "indent"    # I

    .prologue
    if-gez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    goto :goto_0
.end method

.method public setIndenting(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    const/16 v0, 0x48

    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    goto :goto_0
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .locals 1
    .param p1, "lineSeparator"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const-string v0, "\n"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLineWidth(I)V
    .locals 1
    .param p1, "lineWidth"    # I

    .prologue
    if-gtz p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    goto :goto_0
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaType"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_mediaType:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_method:Ljava/lang/String;

    return-void
.end method

.method public setNonEscapingElements([Ljava/lang/String;)V
    .locals 0
    .param p1, "nonEscapingElements"    # [Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    return-void
.end method

.method public setOmitComments(Z)V
    .locals 0
    .param p1, "omit"    # Z

    .prologue
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitComments:Z

    return-void
.end method

.method public setOmitDocumentType(Z)V
    .locals 0
    .param p1, "omit"    # Z

    .prologue
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    return-void
.end method

.method public setOmitXMLDeclaration(Z)V
    .locals 0
    .param p1, "omit"    # Z

    .prologue
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    return-void
.end method

.method public setPreserveEmptyAttributes(Z)V
    .locals 0
    .param p1, "preserve"    # Z

    .prologue
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    return-void
.end method

.method public setPreserveSpace(Z)V
    .locals 0
    .param p1, "preserve"    # Z

    .prologue
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserve:Z

    return-void
.end method

.method public setStandalone(Z)V
    .locals 0
    .param p1, "standalone"    # Z

    .prologue
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_standalone:Z

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_version:Ljava/lang/String;

    return-void
.end method
