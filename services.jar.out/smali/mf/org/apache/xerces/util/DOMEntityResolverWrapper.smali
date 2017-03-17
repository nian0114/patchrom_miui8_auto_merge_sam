.class public Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;
.super Ljava/lang/Object;
.source "DOMEntityResolverWrapper.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;


# static fields
.field private static final XML_TYPE:Ljava/lang/String; = "http://www.w3.org/TR/REC-xml"

.field private static final XSD_TYPE:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"


# instance fields
.field protected fEntityResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/ls/LSResourceResolver;)V
    .locals 0
    .param p1, "entityResolver"    # Lmf/org/w3c/dom/ls/LSResourceResolver;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->setEntityResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method

.method private getType(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Ljava/lang/String;
    .locals 3
    .param p1, "resourceIdentifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    .prologue
    instance-of v1, p1, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .local v0, "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    .end local v0    # "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "http://www.w3.org/TR/REC-xml"

    goto :goto_0
.end method


# virtual methods
.method public getEntityResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->fEntityResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    return-object v0
.end method

.method public resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 15
    .param p1, "resourceIdentifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->fEntityResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->fEntityResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lmf/org/w3c/dom/ls/LSResourceResolver;->resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ls/LSInput;

    move-result-object v11

    .local v11, "inputSource":Lmf/org/w3c/dom/ls/LSInput;
    :goto_0
    if-eqz v11, :cond_4

    invoke-interface {v11}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v12

    .local v12, "publicId":Ljava/lang/String;
    invoke-interface {v11}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v13

    .local v13, "systemId":Ljava/lang/String;
    invoke-interface {v11}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v6

    .local v6, "baseSystemId":Ljava/lang/String;
    invoke-interface {v11}, Lmf/org/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v7

    .local v7, "byteStream":Ljava/io/InputStream;
    invoke-interface {v11}, Lmf/org/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v8

    .local v8, "charStream":Ljava/io/Reader;
    invoke-interface {v11}, Lmf/org/w3c/dom/ls/LSInput;->getEncoding()Ljava/lang/String;

    move-result-object v10

    .local v10, "encoding":Ljava/lang/String;
    invoke-interface {v11}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v9

    .local v9, "data":Ljava/lang/String;
    new-instance v14, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v14, v12, v13, v6}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v14, "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    if-eqz v8, :cond_2

    invoke-virtual {v14, v8}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    :cond_0
    :goto_1
    invoke-virtual {v14, v10}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    .end local v6    # "baseSystemId":Ljava/lang/String;
    .end local v7    # "byteStream":Ljava/io/InputStream;
    .end local v8    # "charStream":Ljava/io/Reader;
    .end local v9    # "data":Ljava/lang/String;
    .end local v10    # "encoding":Ljava/lang/String;
    .end local v11    # "inputSource":Lmf/org/w3c/dom/ls/LSInput;
    .end local v12    # "publicId":Ljava/lang/String;
    .end local v13    # "systemId":Ljava/lang/String;
    .end local v14    # "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :goto_2
    return-object v14

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->fEntityResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    invoke-direct/range {p0 .. p1}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->getType(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lmf/org/w3c/dom/ls/LSResourceResolver;->resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ls/LSInput;

    move-result-object v11

    goto :goto_0

    .restart local v6    # "baseSystemId":Ljava/lang/String;
    .restart local v7    # "byteStream":Ljava/io/InputStream;
    .restart local v8    # "charStream":Ljava/io/Reader;
    .restart local v9    # "data":Ljava/lang/String;
    .restart local v10    # "encoding":Ljava/lang/String;
    .restart local v11    # "inputSource":Lmf/org/w3c/dom/ls/LSInput;
    .restart local v12    # "publicId":Ljava/lang/String;
    .restart local v13    # "systemId":Ljava/lang/String;
    .restart local v14    # "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v14, v7}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_3
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    goto :goto_1

    .end local v6    # "baseSystemId":Ljava/lang/String;
    .end local v7    # "byteStream":Ljava/io/InputStream;
    .end local v8    # "charStream":Ljava/io/Reader;
    .end local v9    # "data":Ljava/lang/String;
    .end local v10    # "encoding":Ljava/lang/String;
    .end local v11    # "inputSource":Lmf/org/w3c/dom/ls/LSInput;
    .end local v12    # "publicId":Ljava/lang/String;
    .end local v13    # "systemId":Ljava/lang/String;
    .end local v14    # "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_4
    const/4 v14, 0x0

    goto :goto_2
.end method

.method public setEntityResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V
    .locals 0
    .param p1, "entityResolver"    # Lmf/org/w3c/dom/ls/LSResourceResolver;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->fEntityResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    return-void
.end method
