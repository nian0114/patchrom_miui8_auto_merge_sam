.class public final Lmf/org/apache/xerces/impl/io/Latin1Reader;
.super Ljava/io/Reader;
.source "Latin1Reader.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x800


# instance fields
.field protected final fBuffer:[B

.field protected final fInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/io/Latin1Reader;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .prologue
    new-array v0, p2, [B

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/io/Latin1Reader;-><init>(Ljava/io/InputStream;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B

    .prologue
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fInputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fBuffer:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 5
    .param p1, "ch"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fBuffer:[B

    array-length v2, v2

    if-le p3, v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fBuffer:[B

    array-length p3, v2

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fInputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fBuffer:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    return v0

    :cond_1
    add-int v2, p2, v1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fBuffer:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
