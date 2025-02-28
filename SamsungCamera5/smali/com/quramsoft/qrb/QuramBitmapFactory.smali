.class public Lcom/quramsoft/qrb/QuramBitmapFactory;
.super Ljava/lang/Object;
.source "QuramBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/qrb/QuramBitmapFactory$MidPointerData;,
        Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEC_CANCELED:I = 0x6

.field public static final DEC_FAIL:I = 0x0

.field public static final DEC_PROGRESS:I = 0x4

.field public static final DEC_SUCCESS:I = 0x1

.field public static final LENGTH_OF_MID_POINTER:I = 0x3c

.field public static final Quram_JPEG:Ljava/lang/String; = "Quram_JPEG"

.field private static final TAG:Ljava/lang/String; = "QuramBitmapFactory"

.field protected static final USE_AUTO_BUFFERMODE:I = 0x2

.field protected static final USE_AUTO_FILEMODE:I = 0x0

.field public static final USE_FULLSIZE_BUFFER:I = 0x0

.field public static final USE_ITERSIZE_BUFFER:I = 0x1

.field public static final USE_MAKE_REGIONMAP:I = 0x2

.field protected static final USE_POWER_PROCESS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    :try_start_0
    const-string v0, "Qjpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native AbortJPEGFromFileIter(I)I
.end method

.method public static native CompareJPEG(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;IIJJJI)D
.end method

.method public static native DecodeCancel(I)V
.end method

.method static native DecodeJPEGFromFileIter(ILandroid/graphics/Bitmap;IIII)I
.end method

.method static native DecodeJPEGFromFileIter4LTN(ILandroid/graphics/Bitmap;IIII)I
.end method

.method static native DecodeJPEGFromFileIter4LTNToBuffer(ILjava/nio/Buffer;IIIII)I
.end method

.method static native DecodeJPEGFromFileIter4LTNToBufferMidpoint(ILjava/nio/Buffer;IIIIII)I
.end method

.method static native DecodeJPEGFromFileIter4LTNToNativeBufferArray(IIII[IIII)I
.end method

.method static native DecodeJPEGFromFileIterToBuffer(ILjava/nio/Buffer;IIIII)I
.end method

.method static native DecodeJPEGFromFileMultiOutBuf(I[Landroid/graphics/Bitmap;IIII)I
.end method

.method public static native DecodeJPEGGetMidpoint(ILandroid/graphics/Bitmap;[BIIII)I
.end method

.method public static native DecodeJPEGThumbnail(ILandroid/graphics/Bitmap;III)I
.end method

.method static native DecodeJPEGThumbnailToNativeBuffer(I[III)I
.end method

.method public static native DecodeJpegFromStream(Ljava/io/InputStream;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;[BILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.end method

.method static native DecodePNGIterToNativeBufferArray(IIIIII[III)I
.end method

.method static native GetJPEGMidPoint(III)I
.end method

.method public static native GetJpegOffsetFromSRWFile(Ljava/lang/String;[I)I
.end method

.method public static native GetMidpoint([B)I
.end method

.method public static native PDecodeJPEGFromFile(ILandroid/graphics/Bitmap;III)I
.end method

.method static native PrepareJPEGFromFileIter(III)I
.end method

.method static native PrepareJPEGFromFileIterMidpoint(I[BIII)I
.end method

.method public static native RegionMapCancel(I)V
.end method

.method public static abortFileIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 1
    .param p0, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    .line 1030
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    invoke-static {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->AbortJPEGFromFileIter(I)I

    .line 1032
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 1034
    :cond_0
    return-void
.end method

.method public static abortIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 1
    .param p0, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    .line 1022
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    invoke-static {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->AbortJPEGFromFileIter(I)I

    .line 1024
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 1026
    :cond_0
    return-void
.end method

.method public static cancelDecode(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 1
    .param p0, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    .line 1152
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    if-eqz v0, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    .line 1155
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    invoke-static {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeCancel(I)V

    goto :goto_0
.end method

.method public static cancelRegionMap(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 1
    .param p0, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    .line 1161
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    if-eqz v0, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    .line 1165
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    invoke-static {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->RegionMapCancel(I)V

    goto :goto_0
.end method

.method public static compressToByte(Landroid/graphics/Bitmap;Ljava/lang/String;[BII)I
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "compressFormat"    # Ljava/lang/String;
    .param p2, "out"    # [B
    .param p3, "out_bufsize"    # I
    .param p4, "quality"    # I

    .prologue
    .line 1097
    const/4 v0, 0x0

    .line 1098
    .local v0, "ret":I
    const-string v1, "Quram_JPEG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1100
    const/4 v1, 0x0

    .line 1105
    :goto_0
    return v1

    .line 1103
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p2, p3, p4, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeEncodeByteArray(Landroid/graphics/Bitmap;[BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v0

    move v1, v0

    .line 1105
    goto :goto_0
.end method

.method public static compressToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "compressFormat"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .param p4, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    .line 1118
    const/4 v6, 0x0

    .line 1120
    .local v6, "ret":I
    const-string v0, "Quram_JPEG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1122
    const/4 v0, 0x0

    .line 1128
    :goto_0
    return v0

    .line 1126
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeEncodeFile(Landroid/graphics/Bitmap;Ljava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v6

    move v0, v6

    .line 1128
    goto :goto_0
.end method

.method public static compressToFile([BLjava/lang/String;Ljava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 7
    .param p0, "data"    # [B
    .param p1, "compressFormat"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "quality"    # I
    .param p6, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    .line 1133
    const/4 v6, 0x0

    .line 1135
    .local v6, "ret":I
    const-string v0, "Quram_JPEG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    const/4 v0, 0x0

    .line 1143
    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 1141
    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeEncodeFileFromByte([BLjava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v6

    move v0, v6

    .line 1143
    goto :goto_0
.end method

.method public static createDecInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    const/4 v1, 0x0

    .line 643
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 652
    :cond_1
    :goto_0
    return v0

    .line 646
    :cond_2
    invoke-static {p0, p1, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeCreateDecFileInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I

    move-result v0

    .line 648
    .local v0, "ret":I
    if-nez v0, :cond_1

    .line 649
    invoke-virtual {p1, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    goto :goto_0
.end method

.method public static createDecInfo([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    const/4 v1, 0x0

    .line 657
    if-eqz p0, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v0, v1

    .line 666
    :cond_1
    :goto_0
    return v0

    .line 660
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeCreateDecBufferInfo([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v0

    .line 662
    .local v0, "ret":I
    if-nez v0, :cond_1

    .line 663
    invoke-virtual {p3, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    goto :goto_0
.end method

.method public static decodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    const/4 v1, 0x0

    .line 250
    const/4 v0, 0x0

    .line 252
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-gez p1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-object v1

    .line 257
    :cond_1
    if-lez p2, :cond_0

    .line 262
    array-length v2, p0

    add-int v3, p2, p1

    if-lt v2, v3, :cond_0

    .line 267
    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v2

    if-nez v2, :cond_0

    .line 272
    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 273
    goto :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    .line 482
    const/4 v0, 0x0

    .line 484
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    const/4 v1, 0x0

    .line 494
    :goto_0
    return-object v1

    .line 491
    :cond_0
    invoke-static {p0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 493
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move-object v1, v0

    .line 494
    goto :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "origId"    # I

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 224
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const/4 v1, 0x0

    .line 237
    :goto_0
    return-object v1

    .line 231
    :cond_0
    invoke-virtual {p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    .line 232
    invoke-virtual {p1, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    .line 234
    invoke-static {p0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 236
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move-object v1, v0

    .line 237
    goto :goto_0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 1341
    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;-><init>()V

    .line 1342
    .local v0, "option":Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "outpadding"    # Landroid/graphics/Rect;
    .param p2, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    const/4 v8, 0x0

    .line 1347
    const/4 v6, 0x0

    .line 1348
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const/16 v1, 0x4000

    new-array v3, v1, [B

    .line 1350
    .local v3, "bytearray":[B
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1352
    .local v0, "fis":Ljava/io/FileInputStream;
    invoke-virtual {p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1354
    const-string v1, "QuramBitmapFactory"

    const-string v2, "option Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v8

    .line 1383
    :goto_0
    return-object v1

    .line 1360
    :cond_0
    :try_start_0
    iget v1, p2, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    if-nez v1, :cond_2

    .line 1361
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    iget v4, p2, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJpegFromStream(Ljava/io/InputStream;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;[BILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1372
    :cond_1
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 1374
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1382
    const/4 v3, 0x0

    move-object v1, v6

    .line 1383
    goto :goto_0

    .line 1362
    :cond_2
    :try_start_2
    iget v1, p2, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 1363
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    iget v4, p2, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJpegFromStream(Ljava/io/InputStream;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;[BILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    goto :goto_1

    .line 1366
    :catch_0
    move-exception v7

    .line 1368
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "QuramBitmapFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v8

    .line 1369
    goto :goto_0

    .line 1376
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 1378
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v1, "QuramBitmapFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v8

    .line 1379
    goto :goto_0
.end method

.method public static decodeFileFromThumbnail(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "origId"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, 0x0

    .line 77
    :goto_0
    return-object v1

    .line 71
    :cond_0
    invoke-virtual {p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    .line 72
    invoke-virtual {p1, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    .line 74
    invoke-static {p0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move-object v1, v0

    .line 77
    goto :goto_0
.end method

.method public static decodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Landroid/graphics/Bitmap;IIII)I
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "retBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "sampledWidth"    # I
    .param p4, "sampledHeight"    # I
    .param p5, "iterType"    # I
    .param p6, "decodeStep"    # I

    .prologue
    .line 791
    const/4 v6, 0x0

    .line 793
    .local v6, "ret":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 795
    :cond_0
    const/4 v0, 0x0

    .line 833
    :goto_0
    return v0

    .line 798
    :cond_1
    packed-switch p5, :pswitch_data_0

    .line 818
    :goto_1
    :pswitch_0
    if-nez v6, :cond_3

    .line 819
    if-eqz p2, :cond_2

    .line 820
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 821
    const/4 p2, 0x0

    .line 824
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 827
    const/4 v0, 0x0

    goto :goto_0

    .line 801
    :pswitch_1
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    .line 803
    const/4 v4, 0x0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    .line 800
    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter(ILandroid/graphics/Bitmap;IIII)I

    move-result v6

    .line 804
    goto :goto_1

    .line 811
    :pswitch_2
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 810
    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTN(ILandroid/graphics/Bitmap;IIII)I

    move-result v6

    goto :goto_1

    .line 829
    :cond_3
    const/4 v0, 0x1

    if-ne v6, v0, :cond_5

    .line 830
    if-eqz p5, :cond_4

    const/4 v0, 0x1

    if-ne p5, v0, :cond_5

    .line 831
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    :cond_5
    move v0, v6

    .line 833
    goto :goto_0

    .line 798
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static decodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Ljava/nio/Buffer;IIIII)I
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "buffer"    # Ljava/nio/Buffer;
    .param p3, "bufferHeight"    # I
    .param p4, "sampledWidth"    # I
    .param p5, "sampledHeight"    # I
    .param p6, "iterType"    # I
    .param p7, "decodeStep"    # I

    .prologue
    .line 846
    const/4 v7, 0x0

    .line 848
    .local v7, "ret":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 850
    :cond_0
    const/4 v0, 0x0

    .line 890
    :goto_0
    return v0

    .line 853
    :cond_1
    packed-switch p6, :pswitch_data_0

    .line 875
    :goto_1
    :pswitch_0
    if-nez v7, :cond_4

    .line 876
    if-eqz p2, :cond_2

    .line 878
    const/4 p2, 0x0

    .line 881
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 884
    const/4 v0, 0x0

    goto :goto_0

    .line 856
    :pswitch_1
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    .line 858
    const/4 v5, 0x0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v6, p7

    .line 855
    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIterToBuffer(ILjava/nio/Buffer;IIIII)I

    move-result v7

    .line 859
    goto :goto_1

    .line 863
    :pswitch_2
    add-int/lit8 v0, p7, 0x2

    if-ne v0, p3, :cond_3

    .line 866
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 865
    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTNToBuffer(ILjava/nio/Buffer;IIIII)I

    move-result v7

    .line 869
    goto :goto_1

    .line 870
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 886
    :cond_4
    const/4 v0, 0x1

    if-ne v7, v0, :cond_6

    .line 887
    if-eqz p6, :cond_5

    const/4 v0, 0x1

    if-ne p6, v0, :cond_6

    .line 888
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    :cond_6
    move v0, v7

    .line 890
    goto :goto_0

    .line 853
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static decodeFileIterToNativeBufferArray(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III[IIII)I
    .locals 9
    .param p0, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p1, "iterType"    # I
    .param p2, "sampledWidth"    # I
    .param p3, "sampledHeight"    # I
    .param p4, "nativeHandleArray"    # [I
    .param p5, "iterWidthStep"    # I
    .param p6, "iterHeightStep"    # I
    .param p7, "midOrder"    # I

    .prologue
    .line 985
    const/4 v8, 0x0

    .line 987
    .local v8, "ret":I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 989
    :cond_0
    const/4 v0, 0x0

    .line 1017
    :goto_0
    return v0

    .line 992
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1007
    :goto_1
    :pswitch_0
    if-nez v8, :cond_2

    .line 1008
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 1011
    const/4 v0, 0x0

    goto :goto_0

    .line 994
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 999
    :pswitch_2
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 998
    invoke-static/range {v0 .. v7}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTNToNativeBufferArray(IIII[IIII)I

    move-result v8

    goto :goto_1

    .line 1013
    :cond_2
    const/4 v0, 0x1

    if-ne v8, v0, :cond_4

    .line 1014
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 1015
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    :cond_4
    move v0, v8

    .line 1017
    goto :goto_0

    .line 992
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static decodeFileIterWithMidPointer(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Ljava/nio/Buffer;IIIIIZ)I
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "buffer"    # Ljava/nio/Buffer;
    .param p3, "bufferHeight"    # I
    .param p4, "sampledWidth"    # I
    .param p5, "sampledHeight"    # I
    .param p6, "iterType"    # I
    .param p7, "decodeStep"    # I
    .param p8, "useMidPoint"    # Z

    .prologue
    .line 917
    const/4 v8, 0x0

    .line 919
    .local v8, "ret":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 921
    :cond_0
    const/4 v0, 0x0

    .line 972
    :goto_0
    return v0

    .line 924
    :cond_1
    packed-switch p6, :pswitch_data_0

    .line 957
    :goto_1
    :pswitch_0
    if-nez v8, :cond_5

    .line 958
    if-eqz p2, :cond_2

    .line 960
    const/4 p2, 0x0

    .line 963
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 966
    const/4 v0, 0x0

    goto :goto_0

    .line 927
    :pswitch_1
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    .line 929
    const/4 v5, 0x0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v6, p7

    .line 926
    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIterToBuffer(ILjava/nio/Buffer;IIIII)I

    move-result v8

    .line 930
    goto :goto_1

    .line 934
    :pswitch_2
    add-int/lit8 v0, p7, 0x2

    if-ne v0, p3, :cond_4

    .line 936
    if-eqz p8, :cond_3

    .line 938
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    const/4 v2, 0x2

    move-object v1, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 937
    invoke-static/range {v0 .. v7}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTNToBufferMidpoint(ILjava/nio/Buffer;IIIIII)I

    move-result v8

    .line 941
    goto :goto_1

    .line 947
    :cond_3
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    .line 946
    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTNToBuffer(ILjava/nio/Buffer;IIIII)I

    move-result v8

    .line 951
    goto :goto_1

    .line 952
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 968
    :cond_5
    const/4 v0, 0x1

    if-ne v8, v0, :cond_7

    .line 969
    if-eqz p6, :cond_6

    const/4 v0, 0x1

    if-ne p6, v0, :cond_7

    .line 970
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    :cond_7
    move v0, v8

    .line 972
    goto :goto_0

    .line 924
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static decodeFileStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "inputstream"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    .line 336
    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileToBuffer(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileToBuffer(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileToBuffer(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "origId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 172
    const/4 v0, 0x0

    .line 174
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-object v2

    .line 181
    :cond_1
    iget v3, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 182
    mul-int v3, p2, p3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 193
    :goto_1
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 195
    invoke-virtual {p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    .line 196
    invoke-virtual {p1, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    .line 198
    invoke-static {p0, v0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeFileToBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v1

    .line 200
    .local v1, "ret":I
    invoke-virtual {p1, v6}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 202
    if-eqz v1, :cond_0

    move-object v2, v0

    .line 207
    goto :goto_0

    .line 183
    .end local v1    # "ret":I
    :cond_2
    iget v3, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    if-nez v3, :cond_3

    .line 184
    mul-int v3, p2, p3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    .line 185
    :cond_3
    iget v3, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 186
    mul-int v3, p2, p3

    add-int/lit8 v4, p2, 0x1

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, p3, 0x1

    shr-int/lit8 v5, v5, 0x1

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    .line 189
    :cond_4
    invoke-virtual {p1, v6}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    goto :goto_0
.end method

.method public static decodeFileToThumbnail(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;IIIZI)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "origId"    # I
    .param p5, "makeMidPoint"    # Z
    .param p6, "countOfMidPoint"    # I

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 88
    .local v1, "retBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    .line 95
    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeCreateDecFileInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I

    move-result v7

    .line 96
    .local v7, "ret":I
    if-nez v7, :cond_1

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 99
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :cond_1
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    .line 103
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 107
    :goto_1
    if-nez v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 109
    :cond_3
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v0, :cond_4

    .line 110
    const/4 v0, 0x1

    iput v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 112
    :cond_4
    if-eqz p5, :cond_7

    .line 113
    mul-int/lit8 v0, p6, 0x3c

    add-int/lit8 v0, v0, 0x4

    new-array v2, v0, [B

    .line 114
    .local v2, "midInfo":[B
    if-eqz v2, :cond_5

    .line 115
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    const/4 v6, 0x1

    move v3, p6

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGGetMidpoint(ILandroid/graphics/Bitmap;[BIIII)I

    move-result v7

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setMidpoint([BI)V

    .line 122
    .end local v2    # "midInfo":[B
    :cond_5
    :goto_2
    if-nez v7, :cond_8

    .line 124
    if-eqz v1, :cond_6

    .line 126
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    const/4 v1, 0x0

    .line 130
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 133
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :cond_7
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v0, v1, p2, p3, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGThumbnail(ILandroid/graphics/Bitmap;III)I

    move-result v7

    goto :goto_2

    .line 136
    :cond_8
    const/4 v0, 0x6

    if-ne v7, v0, :cond_9

    .line 140
    if-eqz v1, :cond_9

    .line 142
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    const/4 v1, 0x0

    .line 150
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move-object v0, v1

    .line 151
    goto :goto_0
.end method

.method public static decodeImageToBuffer(Ljava/lang/String;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;Lcom/quramsoft/qrb/ImageBufferData;)I
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p4, "output"    # Lcom/quramsoft/qrb/ImageBufferData;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 429
    const/4 v1, 0x1

    .line 431
    .local v1, "ret":I
    if-nez p0, :cond_1

    .line 470
    :cond_0
    :goto_0
    return v2

    .line 436
    :cond_1
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 441
    if-eqz p4, :cond_0

    .line 446
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v3

    if-nez v3, :cond_0

    .line 451
    const/4 v3, 0x2

    invoke-static {p0, p3, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeCreateDecFileInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I

    move-result v1

    .line 452
    if-eqz v1, :cond_3

    .line 453
    new-array v0, v4, [I

    .line 454
    .local v0, "nativeHandle":[I
    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v3

    invoke-static {v3, v0, p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGThumbnailToNativeBuffer(I[III)I

    move-result v1

    .line 456
    if-ne v1, v4, :cond_2

    .line 457
    sget-object v3, Lcom/quramsoft/qrb/ImageBufferData$Type;->HANDLE:Lcom/quramsoft/qrb/ImageBufferData$Type;

    iput-object v3, p4, Lcom/quramsoft/qrb/ImageBufferData;->type:Lcom/quramsoft/qrb/ImageBufferData$Type;

    .line 458
    iput p1, p4, Lcom/quramsoft/qrb/ImageBufferData;->width:I

    .line 459
    iput p2, p4, Lcom/quramsoft/qrb/ImageBufferData;->height:I

    .line 460
    aget v3, v0, v2

    iput v3, p4, Lcom/quramsoft/qrb/ImageBufferData;->handle:I

    .line 462
    :cond_2
    if-nez v1, :cond_3

    .line 469
    .end local v0    # "nativeHandle":[I
    :cond_3
    invoke-virtual {p3, v2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move v2, v1

    .line 470
    goto :goto_0
.end method

.method public static decodeIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Landroid/graphics/Bitmap;IIII)I
    .locals 7
    .param p0, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p1, "retBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "sampledWidth"    # I
    .param p3, "sampledHeight"    # I
    .param p4, "iterType"    # I
    .param p5, "decodeStep"    # I

    .prologue
    .line 761
    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Landroid/graphics/Bitmap;IIII)I

    move-result v0

    return v0
.end method

.method public static decodeIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Ljava/nio/Buffer;IIIII)I
    .locals 8
    .param p0, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p1, "buffer"    # Ljava/nio/Buffer;
    .param p2, "bufferHeight"    # I
    .param p3, "sampledWidth"    # I
    .param p4, "sampledHeight"    # I
    .param p5, "iterType"    # I
    .param p6, "decodeStep"    # I

    .prologue
    .line 773
    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Ljava/nio/Buffer;IIIII)I

    move-result v0

    return v0
.end method

.method public static decodeStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "inputstream"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    const/4 v5, 0x0

    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 282
    .local v1, "data":[B
    const/4 v4, 0x0

    .line 284
    .local v4, "ret":I
    const/4 v3, 0x0

    .line 286
    .local v3, "len":I
    if-nez p0, :cond_0

    .line 288
    const-string v6, "QuramBitmapFactory"

    const-string v7, "inputstream is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_0
    return-object v5

    .line 294
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 302
    :goto_1
    if-gtz v3, :cond_1

    .line 304
    const-string v6, "QuramBitmapFactory"

    const-string v7, "inpustream open fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :catch_0
    move-exception v2

    .line 298
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 299
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 308
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    new-array v1, v3, [B

    .line 312
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 320
    :goto_2
    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v6

    if-eqz v6, :cond_2

    .line 322
    const-string v6, "QuramBitmapFactory"

    const-string v7, "option Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    :catch_1
    move-exception v2

    .line 316
    .restart local v2    # "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 317
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 326
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p3, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    .line 327
    invoke-virtual {p3, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    .line 329
    const/4 v5, 0x0

    invoke-static {v1, v5, v3, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v5, v0

    .line 331
    goto :goto_0
.end method

.method public static decodeThumbnailByteArrayToBuffer([BIILcom/quramsoft/qrb/ImageBufferData;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "output"    # Lcom/quramsoft/qrb/ImageBufferData;
    .param p4, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    const/4 v3, 0x0

    .line 351
    const/4 v2, 0x0

    .line 352
    .local v2, "width":I
    const/4 v0, 0x0

    .line 354
    .local v0, "height":I
    const/4 v1, 0x0

    .line 356
    .local v1, "ret":I
    if-gez p1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v3

    .line 361
    :cond_1
    if-lez p2, :cond_0

    .line 366
    array-length v4, p0

    add-int v5, p2, p1

    if-lt v4, v5, :cond_0

    .line 371
    if-eqz p3, :cond_0

    .line 376
    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v4

    if-nez v4, :cond_0

    .line 381
    invoke-static {p0, v3, p2, p4}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeGetImageInfoFromBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v1

    .line 383
    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v2

    .line 384
    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v0

    .line 386
    if-nez v1, :cond_2

    .line 388
    invoke-virtual {p4, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    goto :goto_0

    .line 392
    :cond_2
    iget v4, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    .line 393
    mul-int v4, v2, v0

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    .line 404
    :goto_1
    iget-object v4, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 406
    invoke-virtual {p4, v2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    .line 407
    invoke-virtual {p4, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    .line 409
    iget-object v4, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p0, v4, p1, p2, p4}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v1

    .line 411
    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v4

    iput v4, p3, Lcom/quramsoft/qrb/ImageBufferData;->width:I

    .line 412
    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHeight()I

    move-result v4

    iput v4, p3, Lcom/quramsoft/qrb/ImageBufferData;->height:I

    .line 414
    invoke-virtual {p4, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 416
    iget-object v4, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_0

    .line 419
    const/4 v3, 0x1

    goto :goto_0

    .line 394
    :cond_3
    iget v4, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    if-nez v4, :cond_4

    .line 395
    mul-int v4, v2, v0

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 396
    :cond_4
    iget v4, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 397
    mul-int v4, v2, v0

    add-int/lit8 v5, v2, 0x1

    shr-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v0, 0x1

    shr-int/lit8 v6, v6, 0x1

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 400
    :cond_5
    invoke-virtual {p4, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    goto/16 :goto_0
.end method

.method public static getExifData(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    const/4 v1, 0x0

    .line 671
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 680
    :cond_1
    :goto_0
    return v0

    .line 674
    :cond_2
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v2

    invoke-static {p0, v2, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeGetExifData(Ljava/lang/String;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v0

    .line 676
    .local v0, "ret":I
    if-nez v0, :cond_1

    .line 677
    invoke-virtual {p1, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setExif(I)V

    goto :goto_0
.end method

.method public static getJPEGMidPointer(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I
    .locals 3
    .param p0, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p1, "midNum"    # I

    .prologue
    .line 895
    const/4 v0, 0x0

    .line 897
    .local v0, "ret":I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v1

    if-nez v1, :cond_1

    .line 898
    :cond_0
    const/4 v1, 0x0

    .line 903
    :goto_0
    return v1

    .line 901
    :cond_1
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v1

    iget v2, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    invoke-static {v1, v2, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->GetJPEGMidPoint(III)I

    move-result v0

    move v1, v0

    .line 903
    goto :goto_0
.end method

.method public static native nativeCreateDecBufferInfo([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeCreateDecFileInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I
.end method

.method public static native nativeDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native nativeDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native nativeDecodeFileToBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeDecodeJPEG(ILandroid/graphics/Bitmap;III)I
.end method

.method public static native nativeEncodeByteArray(Landroid/graphics/Bitmap;[BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeEncodeFile(Landroid/graphics/Bitmap;Ljava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeEncodeFileFromByte([BLjava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeGetExifData(Ljava/lang/String;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeGetImageInfoFromBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeGetImageInfoFromFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativePartialDecodeByteArray([BIIIIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native nativePartialDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IIIIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativePartialDecodeFile(Ljava/lang/String;IIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static partialDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p4, "left"    # I
    .param p5, "right"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I

    .prologue
    .line 506
    const/4 v9, 0x0

    .line 507
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p3

    iget v12, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 508
    .local v12, "sampleSize":I
    const/4 v13, 0x0

    .line 509
    .local v13, "width":I
    const/4 v11, 0x0

    .line 511
    .local v11, "height":I
    if-gez p1, :cond_0

    .line 513
    const/4 v1, 0x0

    .line 553
    :goto_0
    return-object v1

    .line 516
    :cond_0
    if-gtz p2, :cond_1

    .line 518
    const/4 v1, 0x0

    goto :goto_0

    .line 521
    :cond_1
    array-length v1, p0

    add-int v2, p2, p1

    if-ge v1, v2, :cond_2

    .line 523
    const/4 v1, 0x0

    goto :goto_0

    .line 526
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v1

    if-eqz v1, :cond_3

    .line 528
    const/4 v1, 0x0

    goto :goto_0

    .line 531
    :cond_3
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v1, :cond_5

    .line 532
    const/4 v1, 0x1

    move-object/from16 v0, p3

    iput v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 536
    :cond_4
    :goto_1
    sub-int v6, p5, p4

    sub-int v7, p7, p6

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v8}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativePartialDecodeByteArray([BIIIIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 538
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 540
    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v13

    .line 541
    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v11

    .line 543
    if-nez v9, :cond_6

    .line 544
    const/4 v1, 0x0

    goto :goto_0

    .line 533
    :cond_5
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_4

    .line 534
    const/16 v1, 0x8

    move-object/from16 v0, p3

    iput v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 546
    :cond_6
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-ge v1, v12, :cond_7

    .line 547
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v1, v13

    div-int/2addr v1, v12

    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v2, v11

    div-int/2addr v2, v12

    const/4 v3, 0x0

    invoke-static {v9, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 548
    .local v10, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 549
    move-object v9, v10

    .line 550
    move-object/from16 v0, p3

    iput v12, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .end local v10    # "bm":Landroid/graphics/Bitmap;
    :cond_7
    move-object v1, v9

    .line 553
    goto :goto_0
.end method

.method public static partialDecodeByteArrayToBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;IIIILcom/quramsoft/qrb/ImageBufferData;)I
    .locals 13
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p4, "left"    # I
    .param p5, "right"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "output"    # Lcom/quramsoft/qrb/ImageBufferData;

    .prologue
    .line 564
    const/4 v11, 0x0

    .line 568
    .local v11, "ret":I
    if-gez p1, :cond_0

    .line 570
    const/4 v1, 0x0

    .line 638
    :goto_0
    return v1

    .line 573
    :cond_0
    if-gtz p2, :cond_1

    .line 575
    const/4 v1, 0x0

    goto :goto_0

    .line 578
    :cond_1
    array-length v1, p0

    add-int v2, p2, p1

    if-ge v1, v2, :cond_2

    .line 580
    const/4 v1, 0x0

    goto :goto_0

    .line 583
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v1

    if-eqz v1, :cond_3

    .line 585
    const/4 v1, 0x0

    goto :goto_0

    .line 588
    :cond_3
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_4

    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-gez v1, :cond_5

    .line 590
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 593
    :cond_5
    if-nez p8, :cond_6

    .line 595
    const/4 v1, 0x0

    goto :goto_0

    .line 598
    :cond_6
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v1, :cond_8

    .line 599
    const/4 v1, 0x1

    move-object/from16 v0, p3

    iput v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 603
    :cond_7
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-static {p0, v1, p2, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeGetImageInfoFromBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v11

    .line 605
    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v12

    .line 606
    .local v12, "width":I
    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v10

    .line 608
    .local v10, "height":I
    if-nez v11, :cond_9

    .line 610
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 611
    const/4 v1, 0x0

    goto :goto_0

    .line 600
    .end local v10    # "height":I
    .end local v12    # "width":I
    :cond_8
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_7

    .line 601
    const/16 v1, 0x8

    move-object/from16 v0, p3

    iput v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 614
    .restart local v10    # "height":I
    .restart local v12    # "width":I
    :cond_9
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_a

    .line 615
    mul-int v1, v12, v10

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object/from16 v0, p8

    iput-object v1, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    .line 626
    :goto_2
    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 628
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    .line 629
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    .line 631
    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    sub-int v7, p5, p4

    sub-int v8, p7, p6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p4

    move/from16 v6, p6

    move-object/from16 v9, p3

    invoke-static/range {v1 .. v9}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativePartialDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IIIIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v11

    .line 633
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 635
    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_d

    .line 636
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 616
    :cond_a
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    if-nez v1, :cond_b

    .line 617
    mul-int v1, v12, v10

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object/from16 v0, p8

    iput-object v1, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 618
    :cond_b
    move-object/from16 v0, p3

    iget v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 619
    mul-int v1, v12, v10

    add-int/lit8 v2, v12, 0x1

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v10, 0x1

    shr-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object/from16 v0, p8

    iput-object v1, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 622
    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 623
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 638
    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static partialDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1044
    const/4 v9, 0x0

    .line 1045
    .local v9, "ret":I
    const/4 v6, 0x0

    .line 1046
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget v10, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 1047
    .local v10, "sampleSize":I
    const/4 v11, 0x0

    .line 1048
    .local v11, "width":I
    const/4 v8, 0x0

    .line 1050
    .local v8, "height":I
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    const/4 v0, 0x0

    .line 1083
    :goto_0
    return-object v0

    .line 1057
    :cond_0
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v0, :cond_2

    .line 1058
    const/4 v0, 0x1

    iput v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 1062
    :cond_1
    :goto_1
    sub-int v3, p3, p2

    sub-int v4, p5, p4

    move-object v0, p0

    move v1, p2

    move/from16 v2, p4

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativePartialDecodeFile(Ljava/lang/String;IIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1064
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 1066
    if-nez v6, :cond_3

    .line 1067
    const/4 v0, 0x0

    goto :goto_0

    .line 1059
    :cond_2
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 1060
    const/16 v0, 0x8

    iput v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 1069
    :cond_3
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v11

    .line 1070
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v8

    .line 1072
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-ge v0, v10, :cond_4

    .line 1074
    sub-int v0, p3, p2

    iget v1, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    div-int v11, v0, v1

    .line 1075
    sub-int v0, p5, p4

    iget v1, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    div-int v8, v0, v1

    .line 1077
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v0, v11

    div-int/2addr v0, v10

    iget v1, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v1, v8

    div-int/2addr v1, v10

    const/4 v2, 0x0

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1078
    .local v7, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1079
    move-object v6, v7

    .line 1080
    iput v10, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .end local v7    # "bm":Landroid/graphics/Bitmap;
    :cond_4
    move-object v0, v6

    .line 1083
    goto :goto_0
.end method

.method public static prepareDecodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;IIZ)I
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "decWidth"    # I
    .param p3, "decHeight"    # I
    .param p4, "makeMidPoint"    # Z

    .prologue
    const/4 v1, 0x0

    .line 695
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    if-lez p2, :cond_0

    if-gtz p3, :cond_2

    :cond_0
    move v0, v1

    .line 716
    :cond_1
    :goto_0
    return v0

    .line 702
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getMidpoint()[B

    move-result-object v2

    if-eqz v2, :cond_3

    .line 704
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v2

    .line 705
    # getter for: Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mMidpoint:[B
    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$0(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)[B

    move-result-object v3

    # getter for: Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mMidpointOffset:I
    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$1(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v4

    .line 703
    invoke-static {v2, v3, v4, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->PrepareJPEGFromFileIterMidpoint(I[BIII)I

    move-result v0

    .line 711
    .local v0, "ret":I
    :goto_1
    if-nez v0, :cond_1

    .line 712
    invoke-virtual {p1, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    goto :goto_0

    .line 708
    .end local v0    # "ret":I
    :cond_3
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v2

    invoke-static {v2, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->PrepareJPEGFromFileIter(III)I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_1
.end method

.method public static prepareDecodeIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p1, "decWidth"    # I
    .param p2, "decHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 728
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    if-lez p1, :cond_0

    if-gtz p2, :cond_2

    :cond_0
    move v0, v1

    .line 742
    :cond_1
    :goto_0
    return v0

    .line 735
    :cond_2
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory;->PrepareJPEGFromFileIter(III)I

    move-result v0

    .line 737
    .local v0, "ret":I
    if-nez v0, :cond_1

    .line 738
    invoke-virtual {p0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    goto :goto_0
.end method

.method static native recycleNativeBuffer(I)V
.end method

.method public static round(F)I
    .locals 1
    .param p0, "val"    # F

    .prologue
    .line 47
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static translateBitmapFactoryOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .locals 4
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v3, 0x7

    .line 1318
    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;-><init>()V

    .line 1319
    .local v0, "qrbOptions":Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    iget-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    .line 1321
    iput v3, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    .line 1332
    :goto_0
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 1333
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$2(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)V

    .line 1334
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$3(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)V

    .line 1336
    return-object v0

    .line 1323
    :cond_0
    iget-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    .line 1325
    const/4 v1, 0x0

    iput v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    goto :goto_0

    .line 1329
    :cond_1
    iput v3, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    goto :goto_0
.end method
