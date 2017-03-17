.class public Lmf/org/apache/xerces/impl/validation/ValidationManager;
.super Ljava/lang/Object;
.source "ValidationManager.java"


# instance fields
.field protected fCachedDTD:Z

.field protected fGrammarFound:Z

.field protected final fVSs:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationManager;->fVSs:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationManager;->fGrammarFound:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationManager;->fCachedDTD:Z

    return-void
.end method


# virtual methods
.method public final addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V
    .locals 1
    .param p1, "vs"    # Lmf/org/apache/xerces/impl/validation/ValidationState;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationManager;->fVSs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final isCachedDTD()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationManager;->fCachedDTD:Z

    return v0
.end method

.method public final isGrammarFound()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationManager;->fGrammarFound:Z

    return v0
.end method

.method public final reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationManager;->fVSs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationManager;->fGrammarFound:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationManager;->fCachedDTD:Z

    return-void
.end method

.method public final setCachedDTD(Z)V
    .locals 0
    .param p1, "cachedDTD"    # Z

    .prologue
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/validation/ValidationManager;->fCachedDTD:Z

    return-void
.end method

.method public final setEntityState(Lmf/org/apache/xerces/impl/validation/EntityState;)V
    .locals 2
    .param p1, "state"    # Lmf/org/apache/xerces/impl/validation/EntityState;

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationManager;->fVSs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationManager;->fVSs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setEntityState(Lmf/org/apache/xerces/impl/validation/EntityState;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final setGrammarFound(Z)V
    .locals 0
    .param p1, "grammar"    # Z

    .prologue
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/validation/ValidationManager;->fGrammarFound:Z

    return-void
.end method
