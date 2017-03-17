.class public Lmf/org/apache/xerces/util/XMLStringBuffer;
.super Lmf/org/apache/xerces/xni/XMLString;
.source "XMLStringBuffer.java"


# static fields
.field public static final DEFAULT_SIZE:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    new-array v0, p1, [C

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 1
    .param p1, "s"    # Lmf/org/apache/xerces/xni/XMLString;

    .prologue
    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    invoke-direct {p0, p3}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 5
    .param p1, "c"    # C

    .prologue
    const/4 v4, 0x0

    iget v2, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v3, v3

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x2

    .local v0, "newLength":I
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v2, v2

    add-int/lit8 v2, v2, 0x20

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v2, v2

    add-int/lit8 v0, v2, 0x20

    :cond_0
    new-array v1, v0, [C

    .local v1, "newch":[C
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget v3, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    .end local v0    # "newLength":I
    .end local v1    # "newch":[C
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget v3, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    aput-char p1, v2, v3

    iget v2, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "length":I
    iget v3, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v4, v4

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v3, v3

    mul-int/lit8 v1, v3, 0x2

    .local v1, "newLength":I
    iget v3, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x20

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v3, v3

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, 0x20

    :cond_0
    new-array v2, v1, [C

    .local v2, "newch":[C
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget v4, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    .end local v1    # "newLength":I
    .end local v2    # "newch":[C
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget v4, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {p1, v5, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    iget v3, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/2addr v3, v0

    iput v3, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    return-void
.end method

.method public append(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 3
    .param p1, "s"    # Lmf/org/apache/xerces/xni/XMLString;

    .prologue
    iget-object v0, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    return-void
.end method

.method public append([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v3, 0x0

    iget v1, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/2addr v1, p3

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v2, v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v1, v1

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x20

    new-array v0, v1, [C

    .local v0, "newch":[C
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget v2, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    .end local v0    # "newch":[C
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget v2, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/2addr v1, p3

    iput v1, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iput v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    return-void
.end method
