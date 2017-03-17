.class public Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
.super Ljava/lang/Object;
.source "XSAnnotationImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSAnnotation;


# instance fields
.field private fData:Ljava/lang/String;

.field private fGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->fData:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->fGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->fData:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->fGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    return-void
.end method

.method private declared-synchronized writeToDOM(Lmf/org/w3c/dom/Node;S)V
    .locals 9
    .param p1, "target"    # Lmf/org/w3c/dom/Node;
    .param p2, "type"    # S

    .prologue
    const/4 v8, 0x1

    monitor-enter p0

    if-ne p2, v8, :cond_1

    :try_start_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v5

    .local v5, "futureOwner":Lmf/org/w3c/dom/Document;
    :goto_0
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->fGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDOMParser()Lmf/org/apache/xerces/parsers/DOMParser;

    move-result-object v7

    .local v7, "parser":Lmf/org/apache/xerces/parsers/DOMParser;
    new-instance v2, Ljava/io/StringReader;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->fData:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .local v2, "aReader":Ljava/io/StringReader;
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "aSource":Lorg/xml/sax/InputSource;
    :try_start_1
    invoke-virtual {v7, v3}, Lmf/org/apache/xerces/parsers/DOMParser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v7}, Lmf/org/apache/xerces/parsers/DOMParser;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    .local v1, "aDocument":Lmf/org/w3c/dom/Document;
    invoke-virtual {v7}, Lmf/org/apache/xerces/parsers/DOMParser;->dropDocumentReferences()V

    invoke-interface {v1}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v4

    .local v4, "annotation":Lmf/org/w3c/dom/Element;
    const/4 v6, 0x0

    .local v6, "newElem":Lmf/org/w3c/dom/Node;
    instance-of v8, v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v8, :cond_2

    invoke-interface {v5, v4}, Lmf/org/w3c/dom/Document;->adoptNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 v8, 0x1

    invoke-interface {v5, v4, v8}, Lmf/org/w3c/dom/Document;->importNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v6

    :cond_0
    :goto_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v8

    invoke-interface {p1, v6, v8}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .end local v1    # "aDocument":Lmf/org/w3c/dom/Document;
    .end local v2    # "aReader":Ljava/io/StringReader;
    .end local v3    # "aSource":Lorg/xml/sax/InputSource;
    .end local v4    # "annotation":Lmf/org/w3c/dom/Element;
    .end local v5    # "futureOwner":Lmf/org/w3c/dom/Document;
    .end local v6    # "newElem":Lmf/org/w3c/dom/Node;
    .end local v7    # "parser":Lmf/org/apache/xerces/parsers/DOMParser;
    :cond_1
    :try_start_3
    move-object v0, p1

    check-cast v0, Lmf/org/w3c/dom/Document;

    move-object v8, v0

    move-object v5, v8

    goto :goto_0

    .restart local v1    # "aDocument":Lmf/org/w3c/dom/Document;
    .restart local v2    # "aReader":Ljava/io/StringReader;
    .restart local v3    # "aSource":Lorg/xml/sax/InputSource;
    .restart local v4    # "annotation":Lmf/org/w3c/dom/Element;
    .restart local v5    # "futureOwner":Lmf/org/w3c/dom/Document;
    .restart local v6    # "newElem":Lmf/org/w3c/dom/Node;
    .restart local v7    # "parser":Lmf/org/apache/xerces/parsers/DOMParser;
    :cond_2
    const/4 v8, 0x1

    invoke-interface {v5, v4, v8}, Lmf/org/w3c/dom/Document;->importNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    goto :goto_2

    .end local v1    # "aDocument":Lmf/org/w3c/dom/Document;
    .end local v4    # "annotation":Lmf/org/w3c/dom/Element;
    .end local v6    # "newElem":Lmf/org/w3c/dom/Node;
    :catch_0
    move-exception v8

    goto :goto_1

    :catch_1
    move-exception v8

    goto :goto_1

    .end local v2    # "aReader":Ljava/io/StringReader;
    .end local v3    # "aSource":Lorg/xml/sax/InputSource;
    .end local v5    # "futureOwner":Lmf/org/w3c/dom/Document;
    .end local v7    # "parser":Lmf/org/apache/xerces/parsers/DOMParser;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private declared-synchronized writeToSAX(Lorg/xml/sax/ContentHandler;)V
    .locals 4
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->fGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getSAXParser()Lmf/org/apache/xerces/parsers/SAXParser;

    move-result-object v2

    .local v2, "parser":Lmf/org/apache/xerces/parsers/SAXParser;
    new-instance v0, Ljava/io/StringReader;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->fData:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .local v0, "aReader":Ljava/io/StringReader;
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .local v1, "aSource":Lorg/xml/sax/InputSource;
    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/parsers/SAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    .end local v0    # "aReader":Ljava/io/StringReader;
    .end local v1    # "aSource":Lorg/xml/sax/InputSource;
    .end local v2    # "parser":Lmf/org/apache/xerces/parsers/SAXParser;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public getAnnotationString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->fData:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()S
    .locals 1

    .prologue
    const/16 v0, 0xc

    return v0
.end method

.method public writeAnnotation(Ljava/lang/Object;S)Z
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "targetType"    # S

    .prologue
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    :cond_0
    check-cast p1, Lmf/org/w3c/dom/Node;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->writeToDOM(Lmf/org/w3c/dom/Node;S)V

    :goto_0
    return v0

    .restart local p1    # "target":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    check-cast p1, Lorg/xml/sax/ContentHandler;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;->writeToSAX(Lorg/xml/sax/ContentHandler;)V

    goto :goto_0

    .restart local p1    # "target":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
