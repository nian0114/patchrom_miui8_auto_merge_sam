.class Lcom/sec/android/app/camera/engine/CommonEngine$20$1;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine$20;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

.field final synthetic val$jpegData:[B


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine$20;[B)V
    .locals 0

    .prologue
    .line 7418
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->val$jpegData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 7421
    const-string v6, "Video SnapShot Saving Thread"

    invoke-static {v6}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 7422
    const-string v6, "CommonEngine"

    const-string v7, "starting save..."

    invoke-static {v6, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7424
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v7, v7, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mOrientationOnTake:I
    invoke-static {v7}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3700(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/engine/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v18

    .line 7425
    .local v18, "orientationForPicture":I
    const-string v6, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "storeImage - orientationForPicture : "

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7426
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/camera/util/Util;->convertToExifInterfaceOrientation(I)I

    move-result v17

    .line 7427
    .local v17, "orientationForExif":I
    const-string v6, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "storeImage - ExifInterface Orientation : "

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 7430
    .local v4, "dateTaken":J
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/ImageUtils;->createName(J)Ljava/lang/String;

    move-result-object v16

    .line 7431
    .local v16, "name":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7432
    .local v3, "filename":Ljava/lang/String;
    const-string v2, ""

    .line 7433
    .local v2, "directory":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7434
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/ImageUtils;->getCoverCameraImageSavingDir(I)Ljava/lang/String;

    move-result-object v2

    .line 7439
    :goto_0
    new-instance v10, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7440
    .local v10, "f":Ljava/io/File;
    const/4 v12, 0x0

    .line 7441
    .local v12, "filenumber":I
    :goto_1
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7442
    const-string v6, "CommonEngine"

    const-string v7, "Duplicated file name found"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7444
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "filenumber":I
    .local v13, "filenumber":I
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7446
    const-string v6, "CommonEngine"

    const-string v7, "New file name created"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7447
    new-instance v10, Ljava/io/File;

    .end local v10    # "f":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v10    # "f":Ljava/io/File;
    move v12, v13

    .end local v13    # "filenumber":I
    .restart local v12    # "filenumber":I
    goto :goto_1

    .line 7436
    .end local v10    # "f":Ljava/io/File;
    .end local v12    # "filenumber":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 7450
    .restart local v10    # "f":Ljava/io/File;
    .restart local v12    # "filenumber":I
    :cond_1
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->val$jpegData:[B

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/camera/util/ImageUtils;->addImage(Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;[B)Z

    .line 7452
    new-instance v20, Landroid/content/ContentValues;

    const/16 v6, 0xa

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 7454
    .local v20, "values":Landroid/content/ContentValues;
    const-string v6, "_display_name"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7455
    const-string v6, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7456
    const-string v6, "mime_type"

    const-string v7, "image/jpeg"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7457
    const-string v6, "height"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v7, v7, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mVideoSnapShotHeight:I
    invoke-static {v7}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3800(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7458
    const-string v6, "width"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v7, v7, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mVideoSnapShotWidth:I
    invoke-static {v7}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3900(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7459
    const-string v6, "orientation"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7460
    const-string v6, "_data"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v21, "/"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7462
    const/4 v11, 0x0

    .line 7465
    .local v11, "fileUri":Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v15

    .line 7466
    .local v15, "location":Landroid/location/Location;
    if-eqz v15, :cond_2

    .line 7467
    const-string v6, "latitude"

    invoke-virtual {v15}, Landroid/location/Location;->getLatitude()D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v7, v0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 7468
    const-string v6, "longitude"

    invoke-virtual {v15}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v7, v0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 7471
    :cond_2
    const-string v6, "langagecode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7472
    const-string v6, "addr"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v7, v7, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mAddressValue:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4000(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7474
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4100(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 7476
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/engine/CommonEngine;->getAddressValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz v11, :cond_3

    .line 7477
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getImageIDListHaveAddress()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7480
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4100(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-static {v6, v11, v0, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    .line 7481
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v6, :cond_4

    .line 7482
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 7483
    .local v8, "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 7484
    const-string v6, "Z002"

    const-string v7, "RECORDING_SNAPSHOT"

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7488
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/ContentValues;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/ContentValues;

    invoke-static {v7, v6}, Lcom/sec/android/app/camera/util/Util;->broadcastMultipleGeneralEventForLogging(Landroid/content/Context;[Landroid/content/ContentValues;)V

    .line 7490
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v11}, Lcom/sec/android/app/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 7492
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 7493
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v11}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->addSnapshotUriListInSecureCamera(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 7519
    .end local v8    # "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v15    # "location":Landroid/location/Location;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->isFirstRequest(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 7520
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 7521
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleCaptureEventListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;
    invoke-static {v6}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4200(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 7522
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleCaptureEventListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;
    invoke-static {v6}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4200(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;->onSingleCaptureCompleted()V

    .line 7526
    :cond_5
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 7527
    return-void

    .line 7486
    .restart local v8    # "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v15    # "location":Landroid/location/Location;
    :cond_6
    :try_start_1
    const-string v6, "Z001"

    const-string v7, "RECORDING_SNAPSHOT"

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 7496
    .end local v8    # "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v15    # "location":Landroid/location/Location;
    :catch_0
    move-exception v19

    .line 7497
    .local v19, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v6, "CommonEngine"

    const-string v7, "Not enough space in database"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7498
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v6, :cond_4

    .line 7499
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/camera/engine/CommonEngine$20$1$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/sec/android/app/camera/engine/CommonEngine$20$1$1;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine$20$1;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 7506
    .end local v19    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v14

    .line 7507
    .local v14, "ise":Ljava/lang/IllegalStateException;
    const-string v6, "CommonEngine"

    const-string v7, "Unable to create new file. SD card removed"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7508
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v6, :cond_4

    .line 7509
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, v6, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/camera/engine/CommonEngine$20$1$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/sec/android/app/camera/engine/CommonEngine$20$1$2;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine$20$1;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 7516
    .end local v14    # "ise":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v9

    .line 7517
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "CommonEngine"

    const-string v7, "ContentResolver insert failed"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
