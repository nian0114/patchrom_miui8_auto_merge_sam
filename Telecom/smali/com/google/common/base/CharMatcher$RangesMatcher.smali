.class Lcom/google/common/base/CharMatcher$RangesMatcher;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangesMatcher"
.end annotation


# instance fields
.field private final rangeEnds:[C

.field private final rangeStarts:[C


# direct methods
.method constructor <init>(Ljava/lang/String;[C[C)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    iput-object p3, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    array-length v0, p2

    array-length v3, p3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    move v0, v2

    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_4

    aget-char v3, p2, v0

    aget-char v4, p3, v0

    if-gt v3, v4, :cond_2

    move v3, v1

    :goto_2
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    add-int/lit8 v3, v0, 0x1

    array-length v4, p2

    if-ge v3, v4, :cond_0

    aget-char v3, p3, v0

    add-int/lit8 v4, v0, 0x1

    aget-char v4, p2, v4

    if-ge v3, v4, :cond_3

    move v3, v1

    :goto_3
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v1

    if-ltz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    xor-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    aget-char v1, v2, v1

    if-le p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
