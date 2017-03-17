.class public Lmf/org/apache/xml/serialize/HTMLSerializer;
.super Lmf/org/apache/xml/serialize/BaseMarkupSerializer;
.source "HTMLSerializer.java"


# static fields
.field public static final XHTMLNamespace:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"


# instance fields
.field private _xhtml:Z

.field private fUserXHTMLNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    new-instance v0, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "html"

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v3, v0}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .end local p2    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :goto_0
    invoke-direct {p0, v2, p2}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    return-void

    .restart local p2    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :cond_0
    new-instance p2, Lmf/org/apache/xml/serialize/OutputFormat;

    .end local p2    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    const-string v0, "html"

    const-string v1, "ISO-8859-1"

    invoke-direct {p2, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .end local p2    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :goto_0
    invoke-direct {p0, v2, p2}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    return-void

    .restart local p2    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :cond_0
    new-instance p2, Lmf/org/apache/xml/serialize/OutputFormat;

    .end local p2    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    const-string v0, "html"

    const-string v1, "ISO-8859-1"

    invoke-direct {p2, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3
    .param p1, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .end local p1    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :goto_0
    invoke-direct {p0, v2, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V

    return-void

    .restart local p1    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :cond_0
    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    .end local p1    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    const-string v0, "html"

    const-string v1, "ISO-8859-1"

    invoke-direct {p1, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected constructor <init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 1
    .param p1, "xhtml"    # Z
    .param p2, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    invoke-direct {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    return-void
.end method


# virtual methods
.method protected characters(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    invoke-super {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    return-void
.end method

.method public characters([CII)V
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    .local v1, "state":Lmf/org/apache/xml/serialize/ElementState;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .end local v1    # "state":Lmf/org/apache/xml/serialize/ElementState;
    :catch_0
    move-exception v0

    .local v0, "except":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xml/serialize/HTMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "except":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3e

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    .local v1, "state":Lmf/org/apache/xml/serialize/ElementState;
    iget-object v2, v1, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    :cond_0
    iget-object v0, v1, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    .local v0, "htmlName":Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v2, :cond_a

    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v3, " />"

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->leaveElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    if-eqz v0, :cond_2

    const-string v2, "A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "TD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    :cond_4
    return-void

    .end local v0    # "htmlName":Ljava/lang/String;
    :cond_5
    iget-object v2, v1, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    const-string v3, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    iget-object v3, v1, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v0, v1, Lmf/org/apache/xml/serialize/ElementState;->localName:Ljava/lang/String;

    .restart local v0    # "htmlName":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "htmlName":Ljava/lang/String;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "htmlName":Ljava/lang/String;
    goto :goto_0

    :cond_8
    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v3, "]]>"

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v3, "</"

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    iget-object v3, v1, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_a
    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_b
    if-eqz v0, :cond_c

    invoke-static {v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isOnlyOpening(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_c
    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    if-eqz v2, :cond_d

    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v2, :cond_d

    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_d
    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v3, "]]>"

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_e
    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v3, "</"

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    iget-object v3, v1, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_1
.end method

.method protected escapeURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "uri":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method protected getEntityRef(I)Ljava/lang/String;
    .locals 1
    .param p1, "ch"    # I

    .prologue
    invoke-static {p1}, Lmf/org/apache/xml/serialize/HTMLdtd;->fromChar(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected serializeElement(Lmf/org/w3c/dom/Element;)V
    .locals 11
    .param p1, "elem"    # Lmf/org/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v7

    .local v7, "tagName":Ljava/lang/String;
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v6

    .local v6, "state":Lmf/org/apache/xml/serialize/ElementState;
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-boolean v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_started:Z

    if-nez v9, :cond_0

    invoke-virtual {p0, v7}, Lmf/org/apache/xml/serialize/HTMLSerializer;->startDocument(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-boolean v5, v6, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    .local v5, "preserveSpace":Z
    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v10, 0x3c

    invoke-virtual {v9, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-boolean v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v9, :cond_c

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_1
    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v9}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v1

    .local v1, "attrMap":Lmf/org/w3c/dom/NamedNodeMap;
    if-eqz v1, :cond_1

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-interface {v1}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    if-lt v3, v9, :cond_d

    .end local v3    # "i":I
    :cond_1
    invoke-static {v7}, Lmf/org/apache/xml/serialize/HTMLdtd;->isPreserveSpace(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v5, 0x1

    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->hasChildNodes()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v7}, Lmf/org/apache/xml/serialize/HTMLdtd;->isEmptyTag(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_17

    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10, v7, v5}, Lmf/org/apache/xml/serialize/HTMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v6

    const-string v9, "A"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "TD"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    const/4 v9, 0x0

    iput-boolean v9, v6, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_5
    const-string v9, "SCRIPT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "STYLE"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    iget-boolean v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v9, :cond_15

    const/4 v9, 0x1

    iput-boolean v9, v6, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    :cond_7
    :goto_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .local v2, "child":Lmf/org/w3c/dom/Node;
    :goto_4
    if-nez v2, :cond_16

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10, v7}, Lmf/org/apache/xml/serialize/HTMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "child":Lmf/org/w3c/dom/Node;
    :cond_8
    :goto_5
    return-void

    .end local v1    # "attrMap":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v5    # "preserveSpace":Z
    :cond_9
    iget-boolean v9, v6, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v9, :cond_a

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_a
    iget-boolean v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    if-eqz v9, :cond_0

    iget-boolean v9, v6, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v9, :cond_0

    iget-boolean v9, v6, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v9, :cond_b

    iget-boolean v9, v6, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-eqz v9, :cond_0

    :cond_b
    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v9}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto/16 :goto_0

    .restart local v5    # "preserveSpace":Z
    :cond_c
    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v9, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v1    # "attrMap":Lmf/org/w3c/dom/NamedNodeMap;
    .restart local v3    # "i":I
    :cond_d
    invoke-interface {v1, v3}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    .local v0, "attr":Lmf/org/w3c/dom/Attr;
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .local v4, "name":Ljava/lang/String;
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v8

    .local v8, "value":Ljava/lang/String;
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v9}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    iget-boolean v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v9, :cond_10

    if-nez v8, :cond_f

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v9, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v10, "=\"\""

    invoke-virtual {v9, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_e
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_f
    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v9, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v10, "=\""

    invoke-virtual {v9, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_6

    :cond_10
    if-nez v8, :cond_11

    const-string v8, ""

    :cond_11
    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v9}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveEmptyAttributes()Z

    move-result v9

    if-nez v9, :cond_12

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_12

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v9, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_6

    :cond_12
    invoke-static {v7, v4}, Lmf/org/apache/xml/serialize/HTMLdtd;->isURI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v9, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v10, "=\""

    invoke-virtual {v9, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p0, v8}, Lmf/org/apache/xml/serialize/HTMLSerializer;->escapeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_6

    :cond_13
    invoke-static {v7, v4}, Lmf/org/apache/xml/serialize/HTMLdtd;->isBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v9, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_6

    :cond_14
    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v9, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v10, "=\""

    invoke-virtual {v9, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_6

    .end local v0    # "attr":Lmf/org/w3c/dom/Attr;
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_15
    const/4 v9, 0x1

    iput-boolean v9, v6, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    goto/16 :goto_3

    .restart local v2    # "child":Lmf/org/w3c/dom/Node;
    :cond_16
    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/HTMLSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto/16 :goto_4

    .end local v2    # "child":Lmf/org/w3c/dom/Node;
    :cond_17
    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v9}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    iget-boolean v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v9, :cond_18

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v10, " />"

    invoke-virtual {v9, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_7
    const/4 v9, 0x1

    iput-boolean v9, v6, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    const/4 v9, 0x0

    iput-boolean v9, v6, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v9}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    goto/16 :goto_5

    :cond_18
    iget-object v9, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_7
.end method

.method public setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3
    .param p1, "format"    # Lmf/org/apache/xml/serialize/OutputFormat;

    .prologue
    if-eqz p1, :cond_0

    .end local p1    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :goto_0
    invoke-super {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V

    return-void

    .restart local p1    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    :cond_0
    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    .end local p1    # "format":Lmf/org/apache/xml/serialize/OutputFormat;
    const-string v0, "html"

    const-string v1, "ISO-8859-1"

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setXHTMLNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "newNamespace"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    return-void
.end method

.method protected startDocument(Ljava/lang/String;)V
    .locals 3
    .param p1, "rootTagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3e

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->leaveDTD()Ljava/lang/String;

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_started:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v0, :cond_4

    const-string v0, "-//W3C//DTD XHTML 1.0 Strict//EN"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    const-string v0, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitDocumentType()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-eqz v0, :cond_7

    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "<!DOCTYPE html PUBLIC "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "                      "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_3
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_started:Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->serializePreRoot()V

    return-void

    :cond_4
    const-string v0, "-//W3C//DTD HTML 4.01//EN"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    const-string v0, "http://www.w3.org/TR/html4/strict.dtd"

    iput-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "<!DOCTYPE HTML PUBLIC "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "<!DOCTYPE html SYSTEM "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "<!DOCTYPE HTML SYSTEM "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 20
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .local v4, "addNSAttr":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    new-instance v16, Ljava/lang/IllegalStateException;

    const-string v17, "http://apache.org/xml/serializer"

    const-string v18, "NoWriterSupplied"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v7

    .local v7, "except":Ljava/io/IOException;
    new-instance v16, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v16

    .end local v7    # "except":Ljava/io/IOException;
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v14

    .local v14, "state":Lmf/org/apache/xml/serialize/ElementState;
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result v16

    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_started:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_d

    :cond_1
    move-object/from16 v16, p3

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->startDocument(Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-boolean v13, v14, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    .local v13, "preserveSpace":Z
    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_11

    const/4 v8, 0x1

    .local v8, "hasNamespaceURI":Z
    :goto_2
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_5

    :cond_3
    move-object/from16 p3, p2

    if-eqz v8, :cond_4

    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "prefix":Ljava/lang/String;
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_4

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .end local v12    # "prefix":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x1

    :cond_5
    if-nez v8, :cond_12

    move-object/from16 v9, p3

    .local v9, "htmlName":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    const/16 v17, 0x3c

    invoke-virtual/range {v16 .. v17}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    move/from16 v16, v0

    if-eqz v16, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    sget-object v17, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    if-eqz p4, :cond_6

    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v16

    move/from16 v0, v16

    if-lt v10, v0, :cond_16

    .end local v10    # "i":I
    :cond_6
    if-eqz v9, :cond_7

    invoke-static {v9}, Lmf/org/apache/xml/serialize/HTMLdtd;->isPreserveSpace(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/4 v13, 0x1

    :cond_7
    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_prefixes:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "entries":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_1e

    .end local v5    # "entries":Ljava/util/Iterator;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v13}, Lmf/org/apache/xml/serialize/HTMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v14

    if-eqz v9, :cond_a

    const-string v16, "A"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_9

    const-string v16, "TD"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    :cond_9
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v14, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    const/16 v17, 0x3e

    invoke-virtual/range {v16 .. v17}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_a
    if-eqz v9, :cond_c

    const-string v16, "SCRIPT"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_b

    const-string v16, "STYLE"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    move/from16 v16, v0

    if-eqz v16, :cond_20

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v14, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    :cond_c
    :goto_7
    return-void

    .end local v8    # "hasNamespaceURI":Z
    .end local v9    # "htmlName":Ljava/lang/String;
    .end local v13    # "preserveSpace":Z
    :cond_d
    move-object/from16 v16, p2

    goto/16 :goto_0

    :cond_e
    iget-boolean v0, v14, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    move/from16 v16, v0

    if-eqz v16, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    const/16 v17, 0x3e

    invoke-virtual/range {v16 .. v17}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    iget-boolean v0, v14, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    iget-boolean v0, v14, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    move/from16 v16, v0

    if-nez v16, :cond_10

    iget-boolean v0, v14, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto/16 :goto_1

    .restart local v13    # "preserveSpace":Z
    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_2

    .restart local v8    # "hasNamespaceURI":Z
    :cond_12
    const-string v16, "http://www.w3.org/1999/xhtml"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    :cond_13
    move-object/from16 v9, p2

    .restart local v9    # "htmlName":Ljava/lang/String;
    goto/16 :goto_3

    .end local v9    # "htmlName":Ljava/lang/String;
    :cond_14
    const/4 v9, 0x0

    .restart local v9    # "htmlName":Ljava/lang/String;
    goto/16 :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_4

    .restart local v10    # "i":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .local v11, "name":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v15

    .local v15, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    move/from16 v16, v0

    if-nez v16, :cond_17

    if-eqz v8, :cond_19

    :cond_17
    if-nez v15, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    const-string v17, "=\"\""

    invoke-virtual/range {v16 .. v17}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    const-string v17, "=\""

    invoke-virtual/range {v16 .. v17}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    const/16 v17, 0x22

    invoke-virtual/range {v16 .. v17}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_8

    :cond_19
    if-nez v15, :cond_1a

    const-string v15, ""

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveEmptyAttributes()Z

    move-result v16

    if-nez v16, :cond_1b

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_8

    :cond_1b
    move-object/from16 v0, p3

    invoke-static {v0, v11}, Lmf/org/apache/xml/serialize/HTMLdtd;->isURI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    const-string v17, "=\""

    invoke-virtual/range {v16 .. v17}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lmf/org/apache/xml/serialize/HTMLSerializer;->escapeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    const/16 v17, 0x22

    invoke-virtual/range {v16 .. v17}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_8

    :cond_1c
    move-object/from16 v0, p3

    invoke-static {v0, v11}, Lmf/org/apache/xml/serialize/HTMLdtd;->isBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    const-string v17, "=\""

    invoke-virtual/range {v16 .. v17}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    const/16 v17, 0x22

    invoke-virtual/range {v16 .. v17}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_8

    .end local v10    # "i":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    .restart local v5    # "entries":Ljava/util/Iterator;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .restart local v15    # "value":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .restart local v11    # "name":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    const-string v17, "xmlns=\""

    invoke-virtual/range {v16 .. v17}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    const/16 v17, 0x22

    invoke-virtual/range {v16 .. v17}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_6

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    const-string v17, "xmlns:"

    invoke-virtual/range {v16 .. v17}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    const-string v17, "=\""

    invoke-virtual/range {v16 .. v17}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v16, v0

    const/16 v17, 0x22

    invoke-virtual/range {v16 .. v17}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_6

    .end local v5    # "entries":Ljava/util/Iterator;
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v11    # "name":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :cond_20
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v14, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 10
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "attrs"    # Lorg/xml/sax/AttributeList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "http://apache.org/xml/serializer"

    const-string v8, "NoWriterSupplied"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .local v0, "except":Ljava/io/IOException;
    new-instance v6, Lorg/xml/sax/SAXException;

    invoke-direct {v6, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .end local v0    # "except":Ljava/io/IOException;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v4

    .local v4, "state":Lmf/org/apache/xml/serialize/ElementState;
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_started:Z

    if-nez v6, :cond_1

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->startDocument(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-boolean v3, v4, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    .local v3, "preserveSpace":Z
    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v7, 0x3c

    invoke-virtual {v6, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-boolean v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_1
    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v6}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v6

    if-lt v1, v6, :cond_c

    .end local v1    # "i":I
    :cond_2
    invoke-static {p1}, Lmf/org/apache/xml/serialize/HTMLdtd;->isPreserveSpace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, p1, v3}, Lmf/org/apache/xml/serialize/HTMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v4

    const-string v6, "A"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "TD"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, v4, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_5
    const-string v6, "SCRIPT"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "STYLE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    iget-boolean v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v6, :cond_13

    const/4 v6, 0x1

    iput-boolean v6, v4, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    :cond_7
    :goto_3
    return-void

    .end local v3    # "preserveSpace":Z
    :cond_8
    iget-boolean v6, v4, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_9
    iget-boolean v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v4, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v6, :cond_1

    iget-boolean v6, v4, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v6, :cond_a

    iget-boolean v6, v4, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-eqz v6, :cond_1

    :cond_a
    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v6}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto/16 :goto_0

    .restart local v3    # "preserveSpace":Z
    :cond_b
    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v6, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    .restart local v1    # "i":I
    :cond_c
    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v6}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "value":Ljava/lang/String;
    iget-boolean v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v6, :cond_e

    if-nez v5, :cond_d

    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v6, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v7, "=\"\""

    invoke-virtual {v6, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_d
    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v6, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v7, "=\""

    invoke-virtual {v6, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_4

    :cond_e
    if-nez v5, :cond_f

    const-string v5, ""

    :cond_f
    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v6}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveEmptyAttributes()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v6, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    invoke-static {p1, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->isURI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v6, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v7, "=\""

    invoke-virtual {v6, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p0, v5}, Lmf/org/apache/xml/serialize/HTMLSerializer;->escapeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_4

    :cond_11
    invoke-static {p1, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->isBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v6, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_4

    :cond_12
    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v6, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v7, "=\""

    invoke-virtual {v6, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lmf/org/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v6, p0, Lmf/org/apache/xml/serialize/HTMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_4

    .end local v1    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_13
    const/4 v6, 0x1

    iput-boolean v6, v4, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method
