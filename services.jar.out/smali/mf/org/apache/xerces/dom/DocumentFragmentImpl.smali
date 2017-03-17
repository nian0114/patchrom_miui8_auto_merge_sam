.class public Lmf/org/apache/xerces/dom/DocumentFragmentImpl;
.super Lmf/org/apache/xerces/dom/ParentNode;
.source "DocumentFragmentImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DocumentFragment;


# static fields
.field static final serialVersionUID:J = -0x696c02ff5db4e68aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ParentNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 0
    .param p1, "ownerDoc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .prologue
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "#document-fragment"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    const/16 v0, 0xb

    return v0
.end method

.method public normalize()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->isNormalized()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->needsSyncChildren()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->synchronizeChildren()V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .local v0, "kid":Lmf/org/apache/xerces/dom/ChildNode;
    :goto_1
    if-nez v0, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->isNormalized(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .local v1, "next":Lmf/org/apache/xerces/dom/ChildNode;
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v2

    if-ne v2, v4, :cond_3

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v2

    if-ne v2, v4, :cond_4

    move-object v2, v0

    check-cast v2, Lmf/org/w3c/dom/Text;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v1, v0

    :cond_3
    :goto_2
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->normalize()V

    move-object v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_5
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_2
.end method
