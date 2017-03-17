.class public Lmf/org/apache/xerces/util/EntityResolverWrapper;
.super Ljava/lang/Object;
.source "EntityResolverWrapper.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;


# instance fields
.field protected fEntityResolver:Lorg/xml/sax/EntityResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .param p1, "entityResolver"    # Lorg/xml/sax/EntityResolver;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/EntityResolverWrapper;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    return-void
.end method


# virtual methods
.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/util/EntityResolverWrapper;->fEntityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 13
    .param p1, "resourceIdentifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v7

    .local v7, "pubId":Ljava/lang/String;
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v9

    .local v9, "sysId":Ljava/lang/String;
    if-nez v7, :cond_1

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    iget-object v12, p0, Lmf/org/apache/xerces/util/EntityResolverWrapper;->fEntityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v12, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v12, p0, Lmf/org/apache/xerces/util/EntityResolverWrapper;->fEntityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {v12, v7, v9}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v6

    .local v6, "inputSource":Lorg/xml/sax/InputSource;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v8

    .local v8, "publicId":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v10

    .local v10, "systemId":Ljava/lang/String;
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    .local v0, "baseSystemId":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    .local v1, "byteStream":Ljava/io/InputStream;
    invoke-virtual {v6}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v2

    .local v2, "charStream":Ljava/io/Reader;
    invoke-virtual {v6}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v4

    .local v4, "encoding":Ljava/lang/String;
    new-instance v11, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v11, v8, v10, v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v11, "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-virtual {v11, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    invoke-virtual {v11, v2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    invoke-virtual {v11, v4}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "baseSystemId":Ljava/lang/String;
    .end local v1    # "byteStream":Ljava/io/InputStream;
    .end local v2    # "charStream":Ljava/io/Reader;
    .end local v4    # "encoding":Ljava/lang/String;
    .end local v6    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v8    # "publicId":Ljava/lang/String;
    .end local v10    # "systemId":Ljava/lang/String;
    .end local v11    # "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :catch_0
    move-exception v3

    .local v3, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v5

    .local v5, "ex":Ljava/lang/Exception;
    if-nez v5, :cond_2

    move-object v5, v3

    :cond_2
    new-instance v12, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v12, v5}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v12
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .param p1, "entityResolver"    # Lorg/xml/sax/EntityResolver;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/util/EntityResolverWrapper;->fEntityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method
