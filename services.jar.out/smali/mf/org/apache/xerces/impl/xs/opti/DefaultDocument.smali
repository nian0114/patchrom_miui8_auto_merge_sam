.class public Lmf/org/apache/xerces/impl/xs/opti/DefaultDocument;
.super Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;
.source "DefaultDocument.java"

# interfaces
.implements Lmf/org/w3c/dom/Document;


# instance fields
.field private fDocumentURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/DefaultDocument;->fDocumentURI:Ljava/lang/String;

    const/16 v0, 0x9

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/opti/DefaultDocument;->nodeType:S

    return-void
.end method


# virtual methods
.method public adoptNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3
    .param p1, "source"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public createComment(Ljava/lang/String;)Lmf/org/w3c/dom/Comment;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 3
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public createEntityReference(Ljava/lang/String;)Lmf/org/w3c/dom/EntityReference;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDoctype()Lmf/org/w3c/dom/DocumentType;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentElement()Lmf/org/w3c/dom/Element;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/DefaultDocument;->fDocumentURI:Ljava/lang/String;

    return-object v0
.end method

.method public getDomConfig()Lmf/org/w3c/dom/DOMConfiguration;
    .locals 3

    .prologue
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getElementById(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 1
    .param p1, "elementId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1
    .param p1, "tagname"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "#document"

    return-object v0
.end method

.method public getStrictErrorChecking()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXmlStandalone()Z
    .locals 3

    .prologue
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public importNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 3
    .param p1, "importedNode"    # Lmf/org/w3c/dom/Node;
    .param p2, "deep"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public normalizeDocument()V
    .locals 3

    .prologue
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public renameNode(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 3
    .param p1, "n"    # Lmf/org/w3c/dom/Node;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "documentURI"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/opti/DefaultDocument;->fDocumentURI:Ljava/lang/String;

    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .locals 3
    .param p1, "strictErrorChecking"    # Z

    .prologue
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setXmlStandalone(Z)V
    .locals 3
    .param p1, "standalone"    # Z

    .prologue
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
