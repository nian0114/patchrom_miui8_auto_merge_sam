.class public Lcom/sec/android/app/camera/shootingmode/AnimatedGif;
.super Ljava/lang/Object;
.source "AnimatedGif.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;


# static fields
.field private static ANIMATEDGIF_MAX_IMAGE_COUNT:I = 0x0

.field private static final DEFAULT_PLAY_SPEED:I = 0xc8

.field protected static final TAG:Ljava/lang/String; = "AnimatedGif"


# instance fields
.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCapturedFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentStringProgressCount:I

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mIsBurstCapturing:Z

.field private mLastCaptureCount:I

.field private mStoringDirOriginPath:Ljava/lang/String;

.field private mStoringDirVirtualPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x14

    sput v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->ANIMATEDGIF_MAX_IMAGE_COUNT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 62
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 63
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 64
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 65
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    .line 66
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    .line 68
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLastCaptureCount:I

    .line 69
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentStringProgressCount:I

    .line 71
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirVirtualPath:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirOriginPath:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 76
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 77
    return-void
.end method

.method private calculateOrientationForPicture(I)I
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 292
    move v0, p1

    .line 293
    .local v0, "rotation":I
    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_1

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 295
    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    .line 302
    :cond_1
    :goto_0
    return v0

    .line 297
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 298
    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method private makeAnimatedGif()V
    .locals 32

    .prologue
    .line 306
    const-string v28, "AnimatedGif"

    const-string v29, "makeAnimatedGif E"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v28, v0

    if-nez v28, :cond_0

    .line 482
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 312
    .local v8, "dateTaken":J
    invoke-static {v8, v9}, Lcom/sec/android/app/camera/util/ImageUtils;->createName(J)Ljava/lang/String;

    move-result-object v20

    .line 315
    .local v20, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, "directory":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ".gif"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 318
    .local v10, "fileName":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 320
    .local v11, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v28

    const-string v29, "com.sec.agif_maker"

    invoke-static/range {v28 .. v29}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_c

    .line 321
    new-instance v4, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    invoke-direct {v4}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;-><init>()V

    .line 322
    .local v4, "agif":Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;
    const/16 v27, 0x0

    .line 323
    .local v27, "width":I
    const/16 v16, 0x0

    .line 324
    .local v16, "height":I
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v21

    .line 325
    .local v21, "orientation":I
    const-string v28, "QURAM"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "orientation = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    rem-int/lit8 v28, v21, 0x2

    if-eqz v28, :cond_3

    .line 327
    const/16 v27, 0x1e0

    .line 328
    const/16 v16, 0x280

    .line 334
    :goto_1
    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setMaxTaskTP(I)V

    .line 335
    const/16 v28, 0xc8

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setDelay(I)V

    .line 336
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setDispose(I)V

    .line 339
    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setPosition(II)V

    .line 340
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setRepeat(I)V

    .line 341
    move/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setGlobalSize(II)V

    .line 342
    move/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setSize(II)V

    .line 343
    const/16 v28, -0x1

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setTransparent(I)V

    .line 344
    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setWriteFunc(I)V

    .line 345
    invoke-virtual {v4, v11}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->start(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_1

    .line 346
    const-string v28, "QURAM"

    const-string v29, "start error"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_1
    const/16 v17, 0x0

    .local v17, "index":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    mul-int/lit8 v29, v21, 0x5a

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->calculateOrientationForPicture(I)I

    move-result v29

    move-object/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v16

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ImageUtils;->loadBitmapToDesiredDimension(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 353
    .local v23, "tempBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->addFrameTP(Landroid/graphics/Bitmap;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 354
    const-string v28, "QURAM"

    const-string v29, "addFrame error"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 330
    .end local v17    # "index":I
    .end local v23    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_3
    const/16 v27, 0x280

    .line 331
    const/16 v16, 0x1e0

    goto/16 :goto_1

    .line 358
    .restart local v17    # "index":I
    :cond_4
    invoke-virtual {v4}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->finish()Z

    move-result v28

    if-nez v28, :cond_5

    .line 359
    const-string v28, "QURAM"

    const-string v29, "finish error"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_5
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->removeTempGifBurstPics(Z)Z

    .line 365
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v15, "fromquram":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 367
    .local v12, "fileSize":J
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_6

    .line 368
    const-string v28, "AnimatedGif"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " is not exsist.."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 372
    :cond_6
    const-string v19, "Animated_Gif_Info"

    .line 373
    .local v19, "keyName":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x960

    const/16 v30, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v11, v0, v1, v2, v3}, Lcom/sec/android/secvision/sef/SEF;->addSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I

    .line 375
    const/4 v14, 0x0

    .line 376
    .local v14, "fileUri":Landroid/net/Uri;
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 377
    .local v26, "values":Landroid/content/ContentValues;
    const-string v28, "title"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v28, "_display_name"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v28, "datetaken"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 384
    const-string v28, "mime_type"

    const-string v29, "image/gif"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v28, "orientation"

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    const-string v28, "_data"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v28, "height"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    const-string v28, "width"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    const-string v28, "_size"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 391
    const-string v28, "langagecode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v28, "addr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/Engine;->getAddressValue()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v28, "date_modified"

    const-wide/16 v30, 0x3e8

    div-long v30, v8, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 397
    :try_start_0
    const-string v28, "AnimatedGif"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "db insert E"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    sget-object v29, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 399
    const-string v28, "AnimatedGif"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "db insert X"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    if-eqz v14, :cond_9

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/Engine;->getAddressValue()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_7

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getImageIDListHaveAddress()Ljava/util/ArrayList;

    move-result-object v28

    invoke-static {v14}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_7
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v28

    if-eqz v28, :cond_8

    .line 408
    const-string v28, "GATE"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<GATE-M>PICTURE_TAKEN : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " </GATE-M>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentUri(Landroid/net/Uri;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v11}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentFilePath(Ljava/lang/String;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/util/ContentData;->setContentVideoType(Z)V

    .line 416
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v6, "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v28

    if-eqz v28, :cond_b

    .line 418
    const-string v28, "Z002"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [Landroid/content/ContentValues;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->broadcastMultipleGeneralEventForLogging(Landroid/content/Context;[Landroid/content/ContentValues;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 427
    .end local v6    # "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v8, v9, v11}, Lcom/sec/android/app/camera/interfaces/Engine;->insertUTCToSEF(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v28

    new-instance v29, Landroid/content/Intent;

    const-string v30, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v31, Ljava/io/File;

    move-object/from16 v0, v31

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v31 .. v31}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/Engine;->getCurrentThumbnailSize()[I

    move-result-object v25

    .line 436
    .local v25, "thumbnailSize":[I
    const/16 v28, 0x0

    aget v28, v25, v28

    const/16 v29, 0x1

    aget v29, v25, v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v11, v0, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->makeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 437
    .local v24, "thumbnailBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v28

    if-eqz v28, :cond_a

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->addUriListInSecureCamera(Landroid/net/Uri;)V

    .line 443
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateLatestMedia()V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateQuickView()V

    .line 481
    .end local v4    # "agif":Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;
    .end local v12    # "fileSize":J
    .end local v14    # "fileUri":Landroid/net/Uri;
    .end local v15    # "fromquram":Ljava/io/File;
    .end local v16    # "height":I
    .end local v19    # "keyName":Ljava/lang/String;
    .end local v21    # "orientation":I
    .end local v24    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    .end local v25    # "thumbnailSize":[I
    .end local v26    # "values":Landroid/content/ContentValues;
    .end local v27    # "width":I
    :goto_5
    const-string v28, "AnimatedGif"

    const-string v29, "makeAnimatedGif X"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 420
    .restart local v4    # "agif":Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;
    .restart local v6    # "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v12    # "fileSize":J
    .restart local v14    # "fileUri":Landroid/net/Uri;
    .restart local v15    # "fromquram":Ljava/io/File;
    .restart local v16    # "height":I
    .restart local v19    # "keyName":Ljava/lang/String;
    .restart local v21    # "orientation":I
    .restart local v26    # "values":Landroid/content/ContentValues;
    .restart local v27    # "width":I
    :cond_b
    :try_start_1
    const-string v28, "Z001"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 428
    .end local v6    # "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v22

    .line 429
    .local v22, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v28, "AnimatedGif"

    const-string v29, "Not enough space in database"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v28, v0

    const v29, 0x7f080176

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 446
    .end local v4    # "agif":Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;
    .end local v12    # "fileSize":J
    .end local v14    # "fileUri":Landroid/net/Uri;
    .end local v15    # "fromquram":Ljava/io/File;
    .end local v16    # "height":I
    .end local v17    # "index":I
    .end local v19    # "keyName":Ljava/lang/String;
    .end local v21    # "orientation":I
    .end local v22    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    .end local v26    # "values":Landroid/content/ContentValues;
    .end local v27    # "width":I
    :cond_c
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 447
    .local v18, "intent":Landroid/content/Intent;
    const-string v28, "com.sec.agif_maker"

    const-string v29, "com.sec.agif_maker.GifMakerActivity"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v28, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v5, v0, [Ljava/lang/String;

    .line 452
    .local v5, "capturedFilePath":[Ljava/lang/String;
    const/16 v17, 0x0

    .restart local v17    # "index":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v5, v17

    .line 455
    aget-object v28, v5, v17

    if-nez v28, :cond_d

    .line 456
    const-string v28, "AnimatedGif"

    const-string v29, "[AGIF] showAnimatedGifMode return error! : file Path is null!! "

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 452
    :cond_d
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 462
    :cond_e
    const-string v28, "FilePaths"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string v28, "ResultFilePath"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v28

    if-eqz v28, :cond_11

    .line 468
    const-string v28, "Orientation"

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v29

    mul-int/lit8 v29, v29, 0x5a

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/sec/android/app/camera/util/Util;->calculateOrientation(IZ)I

    move-result v29

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isFromLockScreen()Z

    move-result v28

    if-nez v28, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 474
    :cond_f
    const-string v28, "createdByLockscreen"

    const/16 v29, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 477
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const/16 v29, 0x7e8

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const/high16 v29, 0x7f050000

    const v30, 0x7f050001

    invoke-virtual/range {v28 .. v30}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_5

    .line 470
    :cond_11
    const-string v28, "Orientation"

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v29

    mul-int/lit8 v29, v29, 0x5a

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_7
.end method

.method private removeTempGifBurstPics(Z)Z
    .locals 7
    .param p1, "removeDir"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 485
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirVirtualPath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    .local v2, "storingDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 510
    :cond_0
    :goto_0
    return v3

    .line 490
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 492
    .local v0, "fileList":[Ljava/io/File;
    if-eqz v0, :cond_3

    .line 493
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_3

    .line 494
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 495
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 496
    const-string v3, "AnimatedGif"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to delete file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 497
    goto :goto_0

    .line 493
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 503
    .end local v1    # "i":I
    :cond_3
    if-eqz p1, :cond_0

    .line 504
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 505
    const-string v3, "AnimatedGif"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to delete directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 506
    goto :goto_0
.end method


# virtual methods
.method public getMaxFileSizeOfImage()J
    .locals 2

    .prologue
    .line 81
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    return v0
.end method

.method public isZoomAvailable()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 3
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v2, 0x0

    .line 96
    const-string v0, "AnimatedGif"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v1, v2, [I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    .line 105
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.AgifPic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirVirtualPath:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirVirtualPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->makeDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    const-string v0, "AnimatedGif"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to make directory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirVirtualPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirVirtualPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->convertOriginFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirOriginPath:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public onBurstCaptureCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    const-string v0, "AnimatedGif"

    const-string v1, "onBurstCaptureCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->terminateBurstCapture()V

    .line 124
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    .line 126
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLastCaptureCount:I

    .line 127
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentStringProgressCount:I

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideCaptureProgressText()V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x7e

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 139
    return-void
.end method

.method public onBurstCaptureProgressed(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 143
    const-string v0, "AnimatedGif"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstCaptureProgressed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureSound(I)V

    .line 146
    if-nez p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showCaptureProgressText()V

    .line 149
    :cond_0
    return-void
.end method

.method public onBurstCaptureStarted()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "AnimatedGif"

    const-string v1, "onBurstCaptureStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x7e

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    .line 160
    return-void
.end method

.method public onBurstCaptureStopped(I)Z
    .locals 2
    .param p1, "lastImageNum"    # I

    .prologue
    .line 164
    const-string v0, "AnimatedGif"

    const-string v1, "onBurstCaptureStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLastCaptureCount:I

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public onBurstCaptureThumbnailTaken(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    .line 171
    return-void
.end method

.method public onBurstStringProgressed([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 175
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentStringProgressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentStringProgressCount:I

    .line 176
    const-string v0, "AnimatedGif"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstStringProgressed, stringProgressedCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentStringProgressCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new String(data) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->convertVirtualFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->requestBurstCaptureString()V

    .line 182
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentStringProgressCount:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLastCaptureCount:I

    if-ne v0, v1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->makeAnimatedGif()V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->burstCaptureCompleted()V

    .line 186
    :cond_0
    return-void
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    .line 190
    const-string v0, "picture-size"

    const-string v1, "640x480"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 196
    const-string v0, "AnimatedGif"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 198
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 2

    .prologue
    .line 207
    const-string v0, "AnimatedGif"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->clearSideQuickSetting()V

    .line 210
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelBurstCapture()V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    .line 215
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->removeTempGifBurstPics(Z)Z

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 217
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 221
    const-string v0, "AnimatedGif"

    const-string v1, "onKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 227
    const-string v0, "AnimatedGif"

    const-string v1, "onKeyUp"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    packed-switch p1, :pswitch_data_0

    .line 236
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 230
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x1

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 2

    .prologue
    .line 257
    const-string v0, "AnimatedGif"

    const-string v1, "onShutterKeyPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirOriginPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureStoringFilePath(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->disableChangeBurstShootingMode()V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterPressed()V

    .line 264
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 2
    .param p1, "captureMethod"    # I

    .prologue
    .line 271
    const-string v0, "AnimatedGif"

    const-string v1, "onShutterKeyReleased"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterReleased()V

    .line 275
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 280
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 284
    return-void
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method
