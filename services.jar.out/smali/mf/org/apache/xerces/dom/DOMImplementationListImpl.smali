.class public Lmf/org/apache/xerces/dom/DOMImplementationListImpl;
.super Ljava/lang/Object;
.source "DOMImplementationListImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DOMImplementationList;


# instance fields
.field private final fImplementations:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;->fImplementations:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "params"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;->fImplementations:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1
    .param p1, "params"    # Ljava/util/Vector;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;->fImplementations:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;->fImplementations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/DOMImplementation;
    .locals 2
    .param p1, "index"    # I

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;->getLength()I

    move-result v0

    .local v0, "length":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;->fImplementations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/w3c/dom/DOMImplementation;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
