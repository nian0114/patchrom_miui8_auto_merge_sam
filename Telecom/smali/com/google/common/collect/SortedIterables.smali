.class final Lcom/google/common/collect/SortedIterables;
.super Ljava/lang/Object;
.source "SortedIterables.java"


# direct methods
.method public static comparator(Ljava/util/SortedSet;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/SortedSet;

    invoke-static {p1}, Lcom/google/common/collect/SortedIterables;->comparator(Ljava/util/SortedSet;)Ljava/util/Comparator;

    move-result-object v0

    :goto_0
    invoke-interface {p0, v0}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/SortedIterable;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/common/collect/SortedIterable;

    invoke-interface {p1}, Lcom/google/common/collect/SortedIterable;->comparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
