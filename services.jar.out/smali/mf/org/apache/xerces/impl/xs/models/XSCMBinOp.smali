.class public Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;
.super Lmf/org/apache/xerces/impl/dtd/models/CMNode;
.source "XSCMBinOp.java"


# instance fields
.field private fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

.field private fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;


# direct methods
.method public constructor <init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "leftNode"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .param p3, "rightNode"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;-><init>(I)V

    .line 42
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->type()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    .line 43
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->type()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ImplementationMessages.VAL_BST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .line 49
    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .line 50
    return-void
.end method


# virtual methods
.method protected calcFirstPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 2
    .param p1, "toSet"    # Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .prologue
    .line 87
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->type()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 89
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 90
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->type()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    .line 98
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 99
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_0

    .line 103
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ImplementationMessages.VAL_BST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected calcLastPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 2
    .param p1, "toSet"    # Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .prologue
    .line 108
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->type()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 111
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->type()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    .line 119
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 120
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_0

    .line 124
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ImplementationMessages.VAL_BST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    return-object v0
.end method

.method final getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    return-object v0
.end method

.method public isNullable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->type()I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_2

    .line 75
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->type()I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_3

    .line 77
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 79
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ImplementationMessages.VAL_BST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
