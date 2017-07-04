.class public Lcom/sec/android/app/camera/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field public static final ANIMATEDGIF_BUCKET:Ljava/lang/String; = "/.AgifPic"

.field public static final BESTPHOTO_BUCKET:Ljava/lang/String; = "/.BestPic"

.field public static final DB_SEF_SUB_TYPE:Ljava/lang/String; = "sef_file_sub_type"

.field public static final DB_SEF_TYPE:Ljava/lang/String; = "sef_file_type"

.field public static final HIGHLIGHT_VIDEO_METADATA_FILE_PATH:Ljava/lang/String; = "/data/media/0/DCIM/.metadata"

.field public static final HIGHLIGHT_VIDEO_METADATA_PATH:Ljava/lang/String; = "/data/media/0/DCIM/.metadata/HighLight.meta"

.field public static final MEDIA_TYPE_IMAGE:I = 0x0

.field public static final MEDIA_TYPE_VIDEO:I = 0x1

.field public static final SELECTIVE_FOCUS_BUCKET:Ljava/lang/String; = "/.SelectiveFocus"

.field protected static final TAG:Ljava/lang/String; = "ImageUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImage(Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;[B)Z
    .locals 10
    .param p0, "directory"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "dateTaken"    # J
    .param p4, "source"    # Landroid/graphics/Bitmap;
    .param p5, "jpegData"    # [B

    .prologue
    const/4 v6, 0x0

    .line 72
    const/4 v4, 0x0

    .line 75
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 78
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    if-eqz p4, :cond_4

    .line 81
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x4b

    invoke-virtual {p4, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 87
    :cond_1
    :goto_0
    invoke-virtual {v3, p2, p3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    if-eqz v5, :cond_2

    .line 97
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 103
    :cond_2
    :goto_1
    const/4 v6, 0x1

    move-object v4, v5

    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :cond_3
    :goto_2
    return v6

    .line 83
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :cond_4
    if-eqz v5, :cond_1

    if-eqz p5, :cond_1

    .line 84
    :try_start_3
    invoke-virtual {v5, p5}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 89
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .local v2, "ex":Ljava/io/FileNotFoundException;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :goto_3
    :try_start_4
    const-string v7, "ImageUtils"

    invoke-static {v7, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    if-eqz v4, :cond_3

    .line 97
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 98
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "ImageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 98
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/FileNotFoundException;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 99
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "ImageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 91
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_3
    move-exception v2

    .line 92
    .local v2, "ex":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v7, "ImageUtils"

    invoke-static {v7, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 96
    if-eqz v4, :cond_3

    .line 97
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 98
    :catch_4
    move-exception v1

    .line 99
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "ImageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 95
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 96
    :goto_5
    if-eqz v4, :cond_5

    .line 97
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 100
    :cond_5
    :goto_6
    throw v6

    .line 98
    :catch_5
    move-exception v1

    .line 99
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "ImageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 95
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_5

    .line 91
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_4

    .line 88
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    :catch_7
    move-exception v2

    goto/16 :goto_3
.end method

.method public static blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 115
    .local v3, "outputBitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v4

    .line 117
    .local v4, "rs":Landroid/renderscript/RenderScript;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_0

    .line 118
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 122
    .local v1, "input":Landroid/renderscript/Allocation;
    :goto_0
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 123
    .local v2, "output":Landroid/renderscript/Allocation;
    invoke-static {v4}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    .line 124
    .local v0, "blurScript":Landroid/renderscript/ScriptIntrinsicBlur;
    const/high16 v5, 0x41c80000    # 25.0f

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 125
    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 126
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 127
    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 128
    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->destroy()V

    .line 129
    return-object v3

    .line 120
    .end local v0    # "blurScript":Landroid/renderscript/ScriptIntrinsicBlur;
    .end local v1    # "input":Landroid/renderscript/Allocation;
    .end local v2    # "output":Landroid/renderscript/Allocation;
    :cond_0
    invoke-static {v4, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .restart local v1    # "input":Landroid/renderscript/Allocation;
    goto :goto_0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 134
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 135
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 136
    .local v4, "width":I
    const/4 v3, 0x1

    .line 138
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_2

    .line 140
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 141
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 145
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-gt v5, p2, :cond_1

    div-int v5, v1, v3

    if-le v5, p1, :cond_2

    .line 146
    :cond_1
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 150
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_2
    return v3
.end method

.method public static convertYuvToRGB(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v9, 0x1

    .line 163
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v4

    .line 165
    .local v4, "rs":Landroid/renderscript/RenderScript;
    invoke-static {v4}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v5

    .line 166
    .local v5, "yuvToRgbScript":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    new-instance v7, Landroid/renderscript/Type$Builder;

    invoke-static {v4}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    array-length v8, p1

    invoke-virtual {v7, v8}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v6

    .line 167
    .local v6, "yuvType":Landroid/renderscript/Type$Builder;
    new-instance v7, Landroid/renderscript/Type$Builder;

    invoke-static {v4}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {v7, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v7

    invoke-virtual {v7, p3}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object v1

    .line 168
    .local v1, "bmpType":Landroid/renderscript/Type$Builder;
    invoke-virtual {v6}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v7

    invoke-static {v4, v7, v9}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 169
    .local v2, "convertInput":Landroid/renderscript/Allocation;
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v7

    invoke-static {v4, v7, v9}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 170
    .local v3, "convertOutput":Landroid/renderscript/Allocation;
    invoke-virtual {v2, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 171
    invoke-virtual {v5, v2}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 172
    invoke-virtual {v5, v3}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 173
    invoke-virtual {v3, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 174
    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->destroy()V

    .line 176
    return-object v0
.end method

.method public static createCaptureBitmap([B)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 182
    invoke-static {}, Lcom/sec/android/app/camera/util/ImageUtils;->getTempJpegPath()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "filepath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 184
    .local v1, "degree":I
    invoke-static {v2, p0}, Lcom/sec/android/app/camera/util/Util;->saveDataToFile(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    invoke-static {v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 186
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 190
    :cond_0
    const v3, 0xc800

    invoke-static {p0, v3}, Lcom/sec/android/app/camera/util/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    return-object v0
.end method

.method public static createName(J)Ljava/lang/String;
    .locals 2
    .param p0, "dateTaken"    # J

    .prologue
    .line 196
    const-string v0, "yyyyMMdd_kkmmss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createName(JI)Ljava/lang/String;
    .locals 2
    .param p0, "dateTaken"    # J
    .param p2, "sequenceNumber"    # I

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createName(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dateTaken"    # J
    .param p2, "addStr"    # Ljava/lang/String;

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCoverCameraImageSavingDir(I)Ljava/lang/String;
    .locals 3
    .param p0, "storage"    # I

    .prologue
    .line 209
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/CoverCamera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "savingDir":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 212
    .end local v0    # "savingDir":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/CoverCamera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "savingDir":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 8
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "degree":I
    const/4 v2, 0x0

    .line 221
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v3, "exif":Landroid/media/ExifInterface;
    move-object v2, v3

    .line 225
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 226
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 227
    .local v4, "orientation":I
    if-eq v4, v7, :cond_0

    .line 229
    packed-switch v4, :pswitch_data_0

    .line 245
    .end local v4    # "orientation":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "ex":Ljava/io/IOException;
    const-string v5, "ImageUtils"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 231
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 232
    goto :goto_1

    .line 234
    :pswitch_2
    const/16 v0, 0xb4

    .line 235
    goto :goto_1

    .line 237
    :pswitch_3
    const/16 v0, 0x10e

    .line 238
    goto :goto_1

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "storage"    # I
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.sec.android.app.camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "savingDir":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 253
    .end local v0    # "savingDir":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.sec.android.app.camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "savingDir":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getImageSavingDir(I)Ljava/lang/String;
    .locals 3
    .param p0, "storage"    # I

    .prologue
    .line 260
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "savingDir":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 263
    .end local v0    # "savingDir":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "savingDir":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getSampleSize(IIII)I
    .locals 5
    .param p0, "actualWidth"    # I
    .param p1, "actualHeight"    # I
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I

    .prologue
    .line 278
    int-to-float v3, p1

    int-to-float v4, p3

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 279
    .local v0, "heightRatio":I
    int-to-float v3, p0

    int-to-float v4, p2

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 282
    .local v2, "widthRatio":I
    if-le v0, v2, :cond_0

    move v1, v0

    .line 283
    .local v1, "sampleSize":I
    :goto_0
    return v1

    .end local v1    # "sampleSize":I
    :cond_0
    move v1, v2

    .line 282
    goto :goto_0
.end method

.method public static getTempJpegPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.tempjpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTintBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "color"    # I

    .prologue
    const/4 v5, 0x0

    .line 537
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 538
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 539
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 540
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 541
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 542
    return-object v0
.end method

.method public static getVideoThumbnail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "autoRotation"    # Z

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/sec/android/app/camera/util/ImageUtils;->getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "autoRotation"    # Z

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 322
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 324
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    if-eqz p0, :cond_0

    .line 325
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 329
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p2, p3, v3, v4}, Landroid/media/MediaMetadataRetriever;->setVideoSize(IIZZ)V

    .line 330
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 337
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 343
    :goto_1
    return-object v0

    .line 327
    :cond_0
    :try_start_2
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 337
    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 338
    :catch_1
    move-exception v1

    .line 339
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 338
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 339
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 333
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 334
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 337
    :try_start_6
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 338
    :catch_4
    move-exception v1

    .line 339
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 336
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    .line 337
    :try_start_7
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    .line 340
    :goto_2
    throw v3

    .line 338
    :catch_5
    move-exception v1

    .line 339
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;Z)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "autoRotation"    # Z

    .prologue
    .line 291
    const-string v3, "getVideoThumbnail"

    invoke-static {v3}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x0

    .line 295
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 297
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    if-eqz p0, :cond_0

    .line 298
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 302
    :goto_0
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 309
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 315
    :goto_1
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 316
    return-object v0

    .line 300
    :cond_0
    :try_start_2
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v1

    .line 304
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 310
    :catch_1
    move-exception v1

    .line 311
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 310
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 311
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 305
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 306
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 309
    :try_start_6
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 310
    :catch_4
    move-exception v1

    .line 311
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 308
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    .line 309
    :try_start_7
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    .line 312
    :goto_2
    throw v3

    .line 310
    :catch_5
    move-exception v1

    .line 311
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2
.end method

.method public static loadBitmapToDesiredDimension(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I
    .param p3, "digree"    # I

    .prologue
    .line 359
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 360
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 363
    const/4 v4, 0x0

    .local v4, "adjDensityHeight":I
    move v5, v4

    .line 364
    .local v5, "adjDensityWidth":I
    iget v15, v14, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    const/4 v7, 0x1

    .line 365
    .local v7, "differentDensity":Z
    :goto_0
    if-eqz v7, :cond_0

    iget v15, v14, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-eqz v15, :cond_0

    iget v15, v14, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eqz v15, :cond_0

    .line 377
    iget v15, v14, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    int-to-float v15, v15

    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v8, v15, v16

    .line 378
    .local v8, "imgDensityToTargetDensityScale":F
    iget v15, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v15, v15

    mul-float/2addr v15, v8

    float-to-int v5, v15

    .line 379
    iget v15, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v15, v15

    mul-float/2addr v15, v8

    float-to-int v4, v15

    .line 385
    .end local v8    # "imgDensityToTargetDensityScale":F
    :cond_0
    iget v15, v14, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const/4 v10, 0x1

    .line 386
    .local v10, "isImgDensityEqualToTarget":Z
    :goto_1
    iget v15, v14, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    const/4 v11, 0x1

    .line 387
    .local v11, "isImgDensityHigherThanTarget":Z
    :goto_2
    iget v15, v14, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_9

    const/4 v12, 0x1

    .line 388
    .local v12, "isImgDensityLowerThanTarget":Z
    :goto_3
    iget v15, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p1

    if-gt v15, v0, :cond_1

    iget v15, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    if-le v15, v0, :cond_a

    :cond_1
    const/4 v13, 0x1

    .line 389
    .local v13, "isOriginalBiggerThanDesired":Z
    :goto_4
    move/from16 v0, p1

    if-gt v5, v0, :cond_2

    move/from16 v0, p2

    if-le v4, v0, :cond_b

    :cond_2
    const/4 v9, 0x1

    .line 391
    .local v9, "isAdjustedBiggerThanDesired":Z
    :goto_5
    if-eqz v11, :cond_c

    if-eqz v9, :cond_c

    .line 396
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v5, v4, v0, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->getSampleSize(IIII)I

    move-result v15

    iput v15, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 416
    :cond_3
    :goto_6
    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 417
    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 418
    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 419
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v15, v14, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 420
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 422
    .local v6, "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v6, v1, v2, v3}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 425
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    move/from16 v0, p1

    if-lt v15, v0, :cond_4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    move/from16 v0, p2

    if-ge v15, v0, :cond_f

    .line 426
    :cond_4
    const/4 v15, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v6, v0, v1, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 431
    :cond_5
    :goto_7
    if-eqz v6, :cond_11

    .line 436
    iget v15, v14, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v6, v15}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 440
    :goto_8
    return-object v6

    .line 364
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "differentDensity":Z
    .end local v9    # "isAdjustedBiggerThanDesired":Z
    .end local v10    # "isImgDensityEqualToTarget":Z
    .end local v11    # "isImgDensityHigherThanTarget":Z
    .end local v12    # "isImgDensityLowerThanTarget":Z
    .end local v13    # "isOriginalBiggerThanDesired":Z
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 385
    .restart local v7    # "differentDensity":Z
    :cond_7
    const/4 v10, 0x0

    goto :goto_1

    .line 386
    .restart local v10    # "isImgDensityEqualToTarget":Z
    :cond_8
    const/4 v11, 0x0

    goto :goto_2

    .line 387
    .restart local v11    # "isImgDensityHigherThanTarget":Z
    :cond_9
    const/4 v12, 0x0

    goto :goto_3

    .line 388
    .restart local v12    # "isImgDensityLowerThanTarget":Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_4

    .line 389
    .restart local v13    # "isOriginalBiggerThanDesired":Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_5

    .line 397
    .restart local v9    # "isAdjustedBiggerThanDesired":Z
    :cond_c
    if-eqz v12, :cond_d

    if-eqz v13, :cond_d

    .line 402
    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 403
    iget v15, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v15, v0, v1, v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getSampleSize(IIII)I

    move-result v15

    iput v15, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_6

    .line 404
    :cond_d
    if-eqz v12, :cond_e

    if-eqz v9, :cond_e

    .line 408
    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_6

    .line 409
    :cond_e
    if-eqz v10, :cond_3

    if-eqz v13, :cond_3

    .line 413
    iget v15, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v15, v0, v1, v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getSampleSize(IIII)I

    move-result v15

    iput v15, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto/16 :goto_6

    .line 427
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    :cond_f
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    move/from16 v0, p1

    if-gt v15, v0, :cond_10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    move/from16 v0, p2

    if-le v15, v0, :cond_5

    .line 428
    :cond_10
    const/4 v15, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v6, v0, v1, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_7

    .line 438
    :cond_11
    const-string v15, "ImageUtils"

    const-string v16, "loadBitmapToDesiredDimension() failed to decode image stream"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static makeBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "mFilePath"    # Ljava/lang/String;
    .param p1, "sampleSize"    # I

    .prologue
    .line 445
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 446
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 447
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 448
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 449
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 450
    const/16 v2, 0x4000

    new-array v2, v2, [B

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 452
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 456
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    const-string v2, "ImageUtils"

    const-string v3, "Got oom exception "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static makeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "mFilePath"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 463
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 464
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 465
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 468
    invoke-static {v1, p1, p2}, Lcom/sec/android/app/camera/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 469
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 470
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 473
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 474
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 478
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    const-string v2, "ImageUtils"

    const-string v3, "Got oom exception "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static overlapBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap1"    # Landroid/graphics/Bitmap;
    .param p1, "bitmap2"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 546
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 547
    .local v3, "width":I
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 549
    .local v0, "height":I
    :goto_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 551
    .local v1, "overlapBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 552
    .local v2, "overlapImage":Landroid/graphics/Canvas;
    invoke-virtual {v2, p0, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 553
    invoke-virtual {v2, p1, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 555
    return-object v1

    .line 546
    .end local v0    # "height":I
    .end local v1    # "overlapBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "overlapImage":Landroid/graphics/Canvas;
    .end local v3    # "width":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    goto :goto_0

    .line 547
    .restart local v3    # "width":I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_1
.end method

.method private static rotateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I
    .param p4, "degree"    # I

    .prologue
    const/4 v1, 0x0

    .line 492
    if-eqz p4, :cond_1

    .line 493
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 494
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p4

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 496
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 497
    const-string v0, "ImageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotateBitmap-->digree= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",bitmap.getWidth()= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",bitmap.getHeight()= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string v0, "ImageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotateBitmap-->desiredHeight= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",(bitmap.getHeight() - desiredHeight) / 2= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, p3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v2, p2, 0x2

    if-le v0, v2, :cond_0

    .line 501
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {p1, v0, v1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 504
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/lit8 v2, p3, 0x2

    if-le v0, v2, :cond_1

    .line 505
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v0, v2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 509
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_1
    return-object p1
.end method

.method public static setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # J

    .prologue
    const/4 v3, 0x0

    .line 513
    const-string v1, "ImageUtils"

    const-string v2, "setImageSize E"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 516
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 517
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 518
    invoke-virtual {p0, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 519
    :cond_0
    const-string v1, "ImageUtils"

    const-string v2, "setImageSize X"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void
.end method

.method public static updatePostSavingFile(Landroid/content/ContentResolver;Landroid/net/Uri;J)V
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # J

    .prologue
    const/4 v6, 0x0

    .line 523
    const-string v3, "ImageUtils"

    const-string v4, "updatePostSavingFile"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v0

    .line 527
    .local v0, "dateTaken":J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 528
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 529
    const-string v3, "date_modified"

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 531
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 532
    invoke-virtual {p0, p1, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 534
    :cond_0
    return-void
.end method
