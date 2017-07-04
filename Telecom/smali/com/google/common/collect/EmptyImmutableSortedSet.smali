.class Lcom/google/common/collect/EmptyImmutableSortedSet;
.super Lcom/google/common/collect/ImmutableSortedSet;
.source "EmptyImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public asList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 0

    .prologue
    return p2
.end method

.method public descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    return-object p0
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    return-object p0
.end method

.method tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "[]"

    return-object v0
.end method
