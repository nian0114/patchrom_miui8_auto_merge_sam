.class public Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;
.super Lmf/org/apache/xerces/impl/dtd/models/CMNode;
.source "CMUniOp.java"


# instance fields
.field private final fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;


# direct methods
.method public constructor <init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "childNode"    # Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .prologue
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;-><init>(I)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->type()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->type()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->type()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ImplementationMessages.VAL_UST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    return-void
.end method


# virtual methods
.method protected calcFirstPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 1
    .param p1, "toSet"    # Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    return-void
.end method

.method protected calcLastPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 1
    .param p1, "toSet"    # Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    return-void
.end method

.method final getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    return-object v0
.end method

.method public isNullable()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->type()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
