.class Lmf/org/apache/html/dom/CollectionIndex;
.super Ljava/lang/Object;
.source "HTMLCollectionImpl.java"


# instance fields
.field private _index:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmf/org/apache/html/dom/CollectionIndex;->_index:I

    return-void
.end method


# virtual methods
.method decrement()V
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/html/dom/CollectionIndex;->_index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/html/dom/CollectionIndex;->_index:I

    return-void
.end method

.method getIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/html/dom/CollectionIndex;->_index:I

    return v0
.end method

.method isZero()Z
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/html/dom/CollectionIndex;->_index:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
