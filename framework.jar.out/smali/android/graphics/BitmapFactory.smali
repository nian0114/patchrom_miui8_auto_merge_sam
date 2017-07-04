.class public Landroid/graphics/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final DECODE_BUFFER_SIZE:I = 0x4000

.field private static SprClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static SprCreateFromStream:Ljava/lang/reflect/Method; = null

.field private static SprGetBitmap:Ljava/lang/reflect/Method; = null

.field private static final TAG:Ljava/lang/String; = "BitmapFactory"

.field static checkedPreferIPT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/BitmapFactory;->SprClass:Ljava/lang/Class;

    sput-object v0, Landroid/graphics/BitmapFactory;->SprCreateFromStream:Ljava/lang/reflect/Method;

    sput-object v0, Landroid/graphics/BitmapFactory;->SprGetBitmap:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/graphics/BitmapFactory;->checkedPreferIPT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPreferIPTToRGBA()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    sget-boolean v7, Landroid/graphics/BitmapFactory;->checkedPreferIPT:Z

    if-nez v7, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .local v2, "activityThread":Landroid/app/ActivityThread;
    if-eqz v2, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    .local v3, "app":Landroid/app/Application;
    if-nez v3, :cond_1

    .end local v3    # "app":Landroid/app/Application;
    :cond_0
    :goto_0
    return-void

    .restart local v3    # "app":Landroid/app/Application;
    :cond_1
    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .local v6, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_0

    sput-boolean v9, Landroid/graphics/BitmapFactory;->checkedPreferIPT:Z

    :try_start_0
    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_0

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .local v0, "aBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v7, "index-palette-bitmaps-supported"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "aValue":Z
    if-ne v1, v9, :cond_0

    invoke-static {}, Landroid/graphics/BitmapFactory;->nativeSetPreferIPTToRGBA()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "aBundle":Landroid/os/Bundle;
    .end local v1    # "aValue":Z
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v5

    .local v5, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "BitmapFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GFX Error checking checkPreferIPTToRGBA"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const-wide/16 v4, 0x2

    or-int v1, p1, p2

    if-ltz v1, :cond_0

    array-length v1, p0

    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_1
    invoke-static {}, Landroid/graphics/BitmapFactory;->checkPreferIPTToRGBA()V

    const-string v1, "decodeBitmap"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    iget-object v1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem decoding into existing bitmap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v1

    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_1
    invoke-static {v0, p3}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v2, 0x0

    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .local v13, "stream":Ljava/io/InputStream;
    if-eqz p0, :cond_1

    :try_start_0
    const-string v15, ".dcf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v13, 0x0

    new-instance v3, Landroid/drm/DrmManagerClient;

    const/4 v15, 0x0

    invoke-direct {v3, v15}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .local v3, "drmClient":Landroid/drm/DrmManagerClient;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "drmMimetype":Ljava/lang/String;
    const-string v15, "BitmapFactory"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "decodeFile drmMimetype = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_0

    const-string v15, "image/"

    invoke-virtual {v5, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v15}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v11

    .local v11, "rightStatus":I
    if-nez v11, :cond_8

    const-string v7, "application/vnd.oma.drm.content"

    .local v7, "mimeType":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v8

    .local v8, "fileLength":J
    new-instance v4, Landroid/drm/DrmInfoRequest;

    const/16 v15, 0xa

    invoke-direct {v4, v15, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .local v4, "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string v15, "drm_path"

    move-object/from16 v0, p0

    invoke-virtual {v4, v15, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v15, "LENGTH"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v10

    .local v10, "resultInfo":Landroid/drm/DrmInfo;
    const-string v15, "status"

    invoke-virtual {v10, v15}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "status":Ljava/lang/String;
    const-string v15, "BitmapFactory"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "decodeFile acquireDrmInfo status is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "success"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v10}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v15

    if-eqz v15, :cond_5

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v10}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v13    # "stream":Ljava/io/InputStream;
    .local v14, "stream":Ljava/io/InputStream;
    move-object v13, v14

    .end local v4    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "fileLength":J
    .end local v10    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v11    # "rightStatus":I
    .end local v12    # "status":Ljava/lang/String;
    .end local v14    # "stream":Ljava/io/InputStream;
    .restart local v13    # "stream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/drm/DrmManagerClient;->release()V

    .end local v3    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v5    # "drmMimetype":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v13, :cond_2

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v13, v15, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v13, :cond_3

    :try_start_1
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->setImagePath(Ljava/lang/String;)V

    :cond_4
    return-object v2

    .restart local v3    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v4    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .restart local v5    # "drmMimetype":Ljava/lang/String;
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v8    # "fileLength":J
    .restart local v10    # "resultInfo":Landroid/drm/DrmInfo;
    .restart local v11    # "rightStatus":I
    .restart local v12    # "status":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v15, "BitmapFactory"

    const-string v16, "decodeFile acquireDrmInfo resultInfo is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v3    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v4    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v5    # "drmMimetype":Ljava/lang/String;
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "fileLength":J
    .end local v10    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v11    # "rightStatus":I
    .end local v12    # "status":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v15, "BitmapFactory"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to decode stream: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v13, :cond_3

    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v15

    goto :goto_2

    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v4    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .restart local v5    # "drmMimetype":Ljava/lang/String;
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v8    # "fileLength":J
    .restart local v10    # "resultInfo":Landroid/drm/DrmInfo;
    .restart local v11    # "rightStatus":I
    .restart local v12    # "status":Ljava/lang/String;
    :cond_6
    :try_start_5
    const-string v15, "BitmapFactory"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "decodeFile FAIL status = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "INFO"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .end local v3    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v4    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v5    # "drmMimetype":Ljava/lang/String;
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "fileLength":J
    .end local v10    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v11    # "rightStatus":I
    .end local v12    # "status":Ljava/lang/String;
    :catchall_0
    move-exception v15

    if-eqz v13, :cond_7

    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_7
    :goto_3
    throw v15

    .restart local v3    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v5    # "drmMimetype":Ljava/lang/String;
    .restart local v11    # "rightStatus":I
    :cond_8
    :try_start_7
    const-string v15, "BitmapFactory"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "decodeFile Rights not present. rightStatus = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v5    # "drmMimetype":Ljava/lang/String;
    .end local v11    # "rightStatus":I
    :cond_9
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v13    # "stream":Ljava/io/InputStream;
    .restart local v14    # "stream":Ljava/io/InputStream;
    move-object v13, v14

    .end local v14    # "stream":Ljava/io/InputStream;
    .restart local v13    # "stream":Ljava/io/InputStream;
    goto/16 :goto_1

    :catch_2
    move-exception v15

    goto/16 :goto_2

    :catch_3
    move-exception v16

    goto :goto_3
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const-wide/16 v4, 0x2

    invoke-static {}, Landroid/graphics/BitmapFactory;->checkPreferIPTToRGBA()V

    const-string v2, "decodeFileDescriptor"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->nativeIsSeekable(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bm":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Problem decoding into existing bitmap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    throw v2

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v0, 0x0

    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .local v2, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, p2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v3

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_1
    throw v3

    .restart local v2    # "value":Landroid/util/TypedValue;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v2    # "value":Landroid/util/TypedValue;
    :catch_3
    move-exception v4

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 28
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "pad"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const-string v19, ""

    .local v19, "text":Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v23, ".9."
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v11, "/data/mct/external_res"

    .local v11, "mctRootDirPath":Ljava/lang/String;
    sget-object v23, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v24, "eng"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    new-instance v23, Ljava/io/File;

    const-string v24, "/data/mct/external_res"

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v14

    .local v14, "pkgName":Ljava/lang/String;
    const-string v23, "BitmapFactory"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[MCT] ResSwitch - OriginalResInfo(1)_PackageName : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .local v22, "valueStr":Ljava/lang/String;
    const-string v23, "BitmapFactory"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[MCT] ResSwitch - OriginalResInfo(2)_ValueString : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v21

    .local v21, "valueEntryName":Ljava/lang/String;
    const-string v23, "BitmapFactory"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[MCT] ResSwitch - OriginalResInfo(3)_EntryName : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/data/mct/external_res/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/all_images_null"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v12, "nullFlagFile":Ljava/io/File;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1

    const-string v23, "BitmapFactory"

    const-string v24, "[MCT] ResSwitch - Using emptyBmp mode"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    const/16 v24, 0x1

    sget-object v25, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v23 .. v25}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .end local v12    # "nullFlagFile":Ljava/io/File;
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v21    # "valueEntryName":Ljava/lang/String;
    .end local v22    # "valueStr":Ljava/lang/String;
    :goto_1
    return-object v6

    .end local v11    # "mctRootDirPath":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v23, "BitmapFactory"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "DecodeImagePath(decodeResourceStream3) : value is null. res : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v23

    goto/16 :goto_0

    .restart local v11    # "mctRootDirPath":Ljava/lang/String;
    .restart local v12    # "nullFlagFile":Ljava/io/File;
    .restart local v14    # "pkgName":Ljava/lang/String;
    .restart local v21    # "valueEntryName":Ljava/lang/String;
    .restart local v22    # "valueStr":Ljava/lang/String;
    :cond_1
    const-string v18, ""

    .local v18, "subDirPath":Ljava/lang/String;
    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v23, 0x0

    const/16 v24, 0x2f

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    :cond_2
    const-string v23, "-v"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_3

    const/16 v23, 0x0

    const-string v24, "-v"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    :cond_3
    const-string v23, "BitmapFactory"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[MCT] ResSwitch - OriginalResInfo(4)_subDir : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .local v9, "found":Z
    const-string v8, ""

    .local v8, "externalImagePath":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/data/mct/external_res/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v17, "subDir":Ljava/io/File;
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v23

    if-eqz v23, :cond_4

    const-string v23, "BitmapFactory"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[MCT] ResSwitch - External subDir exists : /data/mct/external_res/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Landroid/graphics/BitmapFactory$1;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/graphics/BitmapFactory$1;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "externalFilename":[Ljava/lang/String;
    if-eqz v7, :cond_4

    array-length v0, v7

    move/from16 v23, v0

    if-lez v23, :cond_4

    const/16 v23, 0x0

    aget-object v23, v7, v23

    if-eqz v23, :cond_4

    const/4 v9, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/data/mct/external_res/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v24, v7, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v7    # "externalFilename":[Ljava/lang/String;
    :cond_4
    if-nez v9, :cond_5

    new-instance v13, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/data/mct/external_res/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v13, "pkgDir":Ljava/io/File;
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v23

    if-eqz v23, :cond_5

    const-string v23, "BitmapFactory"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[MCT] ResSwitch - External pkgDir exists : /data/mct/external_res/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Landroid/graphics/BitmapFactory$2;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/graphics/BitmapFactory$2;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "externalFilename":[Ljava/lang/String;
    if-eqz v7, :cond_5

    array-length v0, v7

    move/from16 v23, v0

    if-lez v23, :cond_5

    const/16 v23, 0x0

    aget-object v23, v7, v23

    if-eqz v23, :cond_5

    const/4 v9, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/data/mct/external_res/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v24, v7, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v7    # "externalFilename":[Ljava/lang/String;
    .end local v13    # "pkgDir":Ljava/io/File;
    :cond_5
    if-eqz v9, :cond_6

    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local p2    # "is":Ljava/io/InputStream;
    .local v10, "is":Ljava/io/InputStream;
    :try_start_3
    const-string v23, "BitmapFactory"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[MCT] ResSwitch - Succeeded in finding to external resource : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 p2, v10

    .end local v8    # "externalImagePath":Ljava/lang/String;
    .end local v9    # "found":Z
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v12    # "nullFlagFile":Ljava/io/File;
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v17    # "subDir":Ljava/io/File;
    .end local v18    # "subDirPath":Ljava/lang/String;
    .end local v21    # "valueEntryName":Ljava/lang/String;
    .end local v22    # "valueStr":Ljava/lang/String;
    .restart local p2    # "is":Ljava/io/InputStream;
    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    :try_start_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    :cond_7
    const/16 v16, 0x0

    .local v16, "srcName":Ljava/lang/String;
    :goto_3
    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_8

    const-string v23, ".bmp"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_8

    const-string v23, ".spr"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->markSupported()Z

    move-result v23

    if-eqz v23, :cond_d

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v3, v0, [B

    .local v3, "b":[B
    const/16 v23, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    const/16 v23, 0x0

    const/16 v24, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->reset()V

    const/16 v23, 0x0

    aget-byte v23, v3, v23

    const/16 v24, 0x53

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    const/16 v23, 0x1

    aget-byte v23, v3, v23

    const/16 v24, 0x50

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    const/16 v23, 0x2

    aget-byte v23, v3, v23

    const/16 v24, 0x52

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    sget-object v23, Landroid/graphics/BitmapFactory;->SprClass:Ljava/lang/Class;

    if-nez v23, :cond_9

    const-string v23, "com.samsung.android.sdk.spr.drawable.SprDrawable"

    invoke-static/range {v23 .. v23}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v23

    sput-object v23, Landroid/graphics/BitmapFactory;->SprClass:Ljava/lang/Class;

    :cond_9
    sget-object v23, Landroid/graphics/BitmapFactory;->SprCreateFromStream:Ljava/lang/reflect/Method;

    if-nez v23, :cond_a

    sget-object v23, Landroid/graphics/BitmapFactory;->SprClass:Ljava/lang/Class;

    const-string v24, "createFromStream"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-class v27, Ljava/lang/String;

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const-class v27, Ljava/io/InputStream;

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    sput-object v23, Landroid/graphics/BitmapFactory;->SprCreateFromStream:Ljava/lang/reflect/Method;

    :cond_a
    sget-object v23, Landroid/graphics/BitmapFactory;->SprCreateFromStream:Ljava/lang/reflect/Method;

    sget-object v24, Landroid/graphics/BitmapFactory;->SprClass:Ljava/lang/Class;

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v16, v25, v26

    const/16 v26, 0x1

    aput-object p2, v25, v26

    invoke-virtual/range {v23 .. v25}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .local v15, "spr":Ljava/lang/Object;
    sget-object v23, Landroid/graphics/BitmapFactory;->SprGetBitmap:Ljava/lang/reflect/Method;

    if-nez v23, :cond_b

    sget-object v23, Landroid/graphics/BitmapFactory;->SprClass:Ljava/lang/Class;

    const-string v24, "getBitmap"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    sput-object v23, Landroid/graphics/BitmapFactory;->SprGetBitmap:Ljava/lang/reflect/Method;

    :cond_b
    sget-object v23, Landroid/graphics/BitmapFactory;->SprGetBitmap:Ljava/lang/reflect/Method;

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v6, v23

    goto/16 :goto_1

    .end local v3    # "b":[B
    .end local v15    # "spr":Ljava/lang/Object;
    .end local v16    # "srcName":Ljava/lang/String;
    .restart local v8    # "externalImagePath":Ljava/lang/String;
    .restart local v9    # "found":Z
    .restart local v12    # "nullFlagFile":Ljava/io/File;
    .restart local v14    # "pkgName":Ljava/lang/String;
    .restart local v17    # "subDir":Ljava/io/File;
    .restart local v18    # "subDirPath":Ljava/lang/String;
    .restart local v21    # "valueEntryName":Ljava/lang/String;
    .restart local v22    # "valueStr":Ljava/lang/String;
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    :goto_4
    const-string v23, "BitmapFactory"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[MCT] ResSwitch - FAIL : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "externalImagePath":Ljava/lang/String;
    .end local v9    # "found":Z
    .end local v12    # "nullFlagFile":Ljava/io/File;
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v17    # "subDir":Ljava/io/File;
    .end local v18    # "subDirPath":Ljava/lang/String;
    .end local v21    # "valueEntryName":Ljava/lang/String;
    .end local v22    # "valueStr":Ljava/lang/String;
    :cond_c
    :try_start_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v16

    goto/16 :goto_3

    :catch_2
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_d
    if-nez p4, :cond_e

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {p4 .. p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .restart local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_e
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    move/from16 v23, v0

    if-nez v23, :cond_f

    if-eqz p1, :cond_f

    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->density:I

    .local v4, "density":I
    if-nez v4, :cond_12

    const/16 v23, 0xa0

    move/from16 v0, v23

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .end local v4    # "density":I
    :cond_f
    :goto_5
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    move/from16 v23, v0

    if-nez v23, :cond_10

    if-eqz p0, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    :cond_10
    invoke-static/range {p2 .. p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v20

    .local v20, "tmpBitmap":Landroid/graphics/Bitmap;
    if-eqz v20, :cond_11

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setImagePath(Landroid/util/TypedValue;)V

    :cond_11
    move-object/from16 v6, v20

    goto/16 :goto_1

    .end local v20    # "tmpBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "density":I
    :cond_12
    const v23, 0xffff

    move/from16 v0, v23

    if-eq v4, v0, :cond_f

    move-object/from16 v0, p4

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_5

    .end local v4    # "density":I
    .end local p2    # "is":Ljava/io/InputStream;
    .restart local v8    # "externalImagePath":Ljava/lang/String;
    .restart local v9    # "found":Z
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v12    # "nullFlagFile":Ljava/io/File;
    .restart local v14    # "pkgName":Ljava/lang/String;
    .restart local v17    # "subDir":Ljava/io/File;
    .restart local v18    # "subDirPath":Ljava/lang/String;
    .restart local v21    # "valueEntryName":Ljava/lang/String;
    .restart local v22    # "valueStr":Ljava/lang/String;
    :catch_3
    move-exception v5

    move-object/from16 p2, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local p2    # "is":Ljava/io/InputStream;
    goto/16 :goto_4
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const-wide/16 v6, 0x2

    invoke-static {}, Landroid/graphics/BitmapFactory;->checkPreferIPTToRGBA()V

    if-nez p0, :cond_0

    const/4 v2, 0x0

    .end local p0    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_0
    const/4 v2, 0x0

    .local v2, "bm":Landroid/graphics/Bitmap;
    const-string v3, "decodeBitmap"

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    instance-of v3, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v3, :cond_1

    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0    # "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v0

    .local v0, "asset":J
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .end local v0    # "asset":J
    :goto_1
    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .end local p0    # "is":Ljava/io/InputStream;
    :cond_2
    invoke-static {v2, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0
.end method

.method private static decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v0, 0x0

    .local v0, "tempStorage":[B
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    :cond_0
    if-nez v0, :cond_1

    const/16 v1, 0x4000

    new-array v0, v1, [B

    :cond_1
    invoke-static {p0, v0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static native nativeDecodeAsset(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeIsSeekable(Ljava/io/FileDescriptor;)Z
.end method

.method private static native nativeSetPreferIPTToRGBA()V
.end method

.method private static setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    .locals 5
    .param p0, "outputBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .local v0, "density":I
    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .local v3, "targetDensity":I
    if-eqz v3, :cond_0

    if-eq v0, v3, :cond_0

    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-eq v0, v4, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .local v2, "np":[B
    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    .local v1, "isNinePatch":Z
    :goto_1
    iget-boolean v4, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v4, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0

    .end local v1    # "isNinePatch":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .end local v2    # "np":[B
    .end local v3    # "targetDensity":I
    :cond_4
    iget-object v4, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0
.end method
