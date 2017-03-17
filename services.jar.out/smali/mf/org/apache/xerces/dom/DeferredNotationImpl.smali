.class public Lmf/org/apache/xerces/dom/DeferredNotationImpl;
.super Lmf/org/apache/xerces/dom/NotationImpl;
.source "DeferredNotationImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x4f2d6dee39d1f240L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 1
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    .param p2, "nodeIndex"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/NotationImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->needsSyncData(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    return v0
.end method

.method protected synchronizeData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->needsSyncData(Z)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .local v1, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->name:Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(I)S

    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->publicId:Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->systemId:Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v0

    .local v0, "extraDataIndex":I
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(I)S

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->baseURI:Ljava/lang/String;

    return-void
.end method
