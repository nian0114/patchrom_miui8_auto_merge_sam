.class final Lmf/org/apache/xerces/jaxp/validation/WeakReferenceXMLSchema;
.super Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
.source "WeakReferenceXMLSchema.java"


# instance fields
.field private fGrammarPool:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/WeakReferenceXMLSchema;->fGrammarPool:Ljava/lang/ref/WeakReference;

    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized getGrammarPool()Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/WeakReferenceXMLSchema;->fGrammarPool:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .line 49
    .local v0, "grammarPool":Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;

    .end local v0    # "grammarPool":Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;-><init>()V

    .line 51
    .restart local v0    # "grammarPool":Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/WeakReferenceXMLSchema;->fGrammarPool:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit p0

    return-object v0

    .line 46
    .end local v0    # "grammarPool":Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isFullyComposed()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method
