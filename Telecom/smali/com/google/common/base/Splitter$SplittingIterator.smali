.class abstract Lcom/google/common/base/Splitter$SplittingIterator;
.super Lcom/google/common/base/AbstractIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SplittingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/AbstractIterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field limit:I

.field offset:I

.field final omitEmptyStrings:Z

.field final toSplit:Ljava/lang/CharSequence;

.field final trimmer:Lcom/google/common/base/CharMatcher;


# direct methods
.method protected constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/google/common/base/AbstractIterator;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    # getter for: Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$200(Lcom/google/common/base/Splitter;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    # getter for: Lcom/google/common/base/Splitter;->omitEmptyStrings:Z
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$300(Lcom/google/common/base/Splitter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    # getter for: Lcom/google/common/base/Splitter;->limit:I
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$400(Lcom/google/common/base/Splitter;)I

    move-result v0

    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    iput-object p2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    iget v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    if-eq v1, v5, :cond_6

    iget v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$SplittingIterator;->separatorStart(I)I

    move-result v1

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    :goto_1
    iget v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    if-ne v2, v0, :cond_8

    iget v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    iget v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    iget-object v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    iput v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$SplittingIterator;->separatorEnd(I)I

    move-result v2

    iput v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_1

    :goto_2
    if-ge v2, v1, :cond_7

    iget-object v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :goto_3
    if-le v0, v2, :cond_2

    iget-object v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    move v0, v1

    goto :goto_3

    :cond_2
    iget-boolean v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    if-eqz v1, :cond_3

    if-ne v2, v0, :cond_3

    iget v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    iget-object v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    :goto_4
    if-le v0, v2, :cond_5

    iget-object v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_4
    iget v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    :cond_5
    iget-object v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v2, v0

    goto :goto_2
.end method

.method abstract separatorEnd(I)I
.end method

.method abstract separatorStart(I)I
.end method
