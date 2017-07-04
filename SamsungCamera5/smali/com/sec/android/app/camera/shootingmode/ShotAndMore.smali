.class public Lcom/sec/android/app/camera/shootingmode/ShotAndMore;
.super Ljava/lang/Object;
.source "ShotAndMore.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/seccamera/SecCamera$ShotAndMoreEventListener;


# static fields
.field private static final CAPTURE_PROGRESS_HEIGHT:I

.field private static final CAPTURE_PROGRESS_WIDTH:I

.field private static final CAPTURE_PROGRESS_X:[I

.field private static final CAPTURE_PROGRESS_Y:[I

.field protected static final DISABLE_MENU:I = 0x0

.field protected static final ENABLE_MENU:I = 0x1

.field private static final INTENT_SEF_PATH_NAME:Ljava/lang/String; = "sef_file_name"

.field private static final INTENT_START_TYPE:Ljava/lang/String; = "start_type"

.field private static final PROGRESSBAR_TEXT_BOTTOM_PADDING:I

.field private static final PROGRESSBAR_TEXT_HEIGHT:I

.field private static final PROGRESSBAR_TEXT_SIZE:F

.field private static final PROGRESS_GROUP_HEIGHT:I

.field private static final PROGRESS_TEXT_HEIGHT:I

.field private static final PROGRESS_TEXT_STROKE_COLOR:I

.field private static final PROGRESS_TEXT_STROKE_WIDTH:I

.field private static final PROGRESS_TEXT_WIDTH:I

.field private static final REQUIRED_STORAGE_SIZE_FRONT:J = 0xa00000L

.field private static final REQUIRED_STORAGE_SIZE_REAR:J = 0x1900000L

.field private static final SHOTANDMORE_MODES:Ljava/lang/String; = "com.sec.android.app.camera.shootingmode.shotandmore.ShotandmoreActivity"

.field private static final SHOTANDMORE_PACKAGE:Ljava/lang/String; = "com.sec.android.app.camera.shootingmode.shotandmore"

.field private static SHOT_AND_MORE_FRONT_MAX_IMAGE_COUNT:I = 0x0

.field private static SHOT_AND_MORE_MAX_IMAGE_COUNT:I = 0x0

.field private static SHOT_AND_MORE_MAX_PROGRESS_COUNT:I = 0x0

.field public static final SHOT_AND_MORE_STATE_IDLE:I = 0x1

.field public static final SHOT_AND_MORE_STATE_START:I = 0x2

.field public static final SHOT_AND_MORE_STATE_STOP:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "ShotAndMore"


# instance fields
.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field protected mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureCount:I

.field private mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mInputPath:Ljava/lang/String;

.field private mMaxImageCount:I

.field private mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProgressText:Lcom/samsung/android/glview/GLText;

.field private mShotAndMoreState:I

.field private final mShotAndMoreStateLock:Ljava/lang/Object;

.field private mTempFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    const v0, 0x7f0901f0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_GROUP_HEIGHT:I

    .line 64
    new-array v0, v6, [I

    const v1, 0x7f0901e8

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0901eb

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0901e9

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0901ea

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_X:[I

    .line 67
    new-array v0, v6, [I

    const v1, 0x7f0901ec

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0901ef

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0901ed

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0901ee

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_Y:[I

    .line 70
    const v0, 0x7f0901f6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_WIDTH:I

    .line 71
    const v0, 0x7f0901f3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_HEIGHT:I

    .line 72
    const v0, 0x7f0901f5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESSBAR_TEXT_HEIGHT:I

    .line 73
    const v0, 0x7f0901f4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESSBAR_TEXT_BOTTOM_PADDING:I

    .line 74
    const/high16 v0, 0x7f0a0000

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESSBAR_TEXT_SIZE:F

    .line 75
    const v0, 0x7f0901f2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_WIDTH:I

    .line 76
    const v0, 0x7f0901f1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_HEIGHT:I

    .line 77
    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_STROKE_WIDTH:I

    .line 78
    const v0, 0x7f0c0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_STROKE_COLOR:I

    .line 83
    const/16 v0, 0x20

    sput v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SHOT_AND_MORE_MAX_IMAGE_COUNT:I

    .line 84
    const/16 v0, 0x10

    sput v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SHOT_AND_MORE_FRONT_MAX_IMAGE_COUNT:I

    .line 85
    const/16 v0, 0x64

    sput v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SHOT_AND_MORE_MAX_PROGRESS_COUNT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 3
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreStateLock:Ljava/lang/Object;

    .line 87
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 88
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    .line 89
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mMaxImageCount:I

    .line 90
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mInputPath:Ljava/lang/String;

    .line 91
    const-string v0, ".shotandmore.temp"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mTempFileName:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 96
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 97
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreState:I

    .line 101
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 102
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 103
    return-void
.end method

.method private cancelShotAndMoreCapture()V
    .locals 2

    .prologue
    .line 415
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    const-string v0, "ShotAndMore"

    const-string v1, "cancelShotAndMoreCapture - invalide state return"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 421
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->stopShotAndMoreShutterSound()V

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShotAndMore()V

    .line 423
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->onShotAndMoreCapturingCancel()V

    goto :goto_0
.end method

.method private checkShotAndMoreDumpDir()V
    .locals 5

    .prologue
    .line 429
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "saveDirName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 432
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 433
    const-string v2, "ShotAndMore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to Create Directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    return-void
.end method

.method private getRequiredStorageSize()J
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const-wide/32 v0, 0xa00000

    .line 443
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x1900000

    goto :goto_0
.end method

.method private getShotAndMoreState()I
    .locals 2

    .prologue
    .line 448
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 449
    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreState:I

    monitor-exit v1

    return v0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getShotAndMoreTempFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mTempFileName:Ljava/lang/String;

    return-object v0
.end method

.method private hideCaptureLayout()V
    .locals 2

    .prologue
    .line 465
    const-string v0, "ShotAndMore"

    const-string v1, "hideCaptureLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 467
    return-void
.end method

.method private launchShotAndMoreStudio()V
    .locals 6

    .prologue
    .line 471
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sec.android.app.camera.shootingmode.shotandmore"

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 472
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v4, "com.sec.android.app.camera.shootingmode.shotandmore"

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showApplicationDisabledPopup(Ljava/lang/String;)V

    .line 497
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sec.android.app.camera.shootingmode.shotandmore"

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 477
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 478
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.camera.shootingmode.shotandmore"

    const-string v4, "com.sec.android.app.camera.shootingmode.shotandmore.ShotandmoreActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 481
    const-string v3, "sef_file_name"

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mInputPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string v3, "start_type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 484
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isFromLockScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    const-string v3, "createdByLockscreen"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 489
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/high16 v4, 0x7f050000

    const v5, 0x7f050001

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 490
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "ShotAndMore"

    const-string v4, "com.arcsoft.magicshotstudio is not found "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 495
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v4, "com.sec.android.app.camera.shootingmode.shotandmore"

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showApplicationDisabledPopup(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onShotAndMoreCapturingCancel()V
    .locals 5

    .prologue
    const/16 v4, 0x1a

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 500
    const-string v0, "ShotAndMore"

    const-string v1, "onShotAndMoreCapturingCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 509
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->reset(Z)V

    .line 510
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->removeTempFile()V

    .line 511
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setShotAndMoreState(I)V

    .line 512
    return-void
.end method

.method private onShotAndMoreCapturingStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 515
    const-string v0, "ShotAndMore"

    const-string v1, "ShotAndMoreCapturingStop"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->getShotAndMoreState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 518
    const-string v0, "ShotAndMore"

    const-string v1, "onShotAndMoreCapturingStop - getShotAndMoreState is not SHOT_AND_MORE_STATE_START, return"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopShotAndMore()V

    .line 526
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setShotAndMoreState(I)V

    .line 527
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->hideCaptureLayout()V

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(I)V

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    goto :goto_0
.end method

.method private pushInputString(Ljava/lang/String;)V
    .locals 3
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mInputPath:Ljava/lang/String;

    .line 536
    sget-boolean v0, Lcom/sec/android/app/camera/util/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 537
    const-string v0, "ShotAndMore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushInputString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    return-void
.end method

.method private removeTempFile()V
    .locals 6

    .prologue
    .line 541
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "directory":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v1

    .line 546
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "ShotAndMore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reset(Z)V
    .locals 3
    .param p1, "bPause"    # Z

    .prologue
    const/4 v2, 0x0

    .line 551
    const-string v0, "ShotAndMore"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SHOT_AND_MORE_FRONT_MAX_IMAGE_COUNT:I

    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mMaxImageCount:I

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    sget v1, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SHOT_AND_MORE_MAX_PROGRESS_COUNT:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgressBar;->setMax(I)V

    .line 555
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    .line 557
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->hideCaptureLayout()V

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mMaxImageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 566
    :cond_1
    return-void

    .line 553
    :cond_2
    sget v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SHOT_AND_MORE_MAX_IMAGE_COUNT:I

    goto :goto_0
.end method

.method private setCaptureProgressIncreased()V
    .locals 5

    .prologue
    .line 569
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SHOT_AND_MORE_FRONT_MAX_IMAGE_COUNT:I

    :goto_0
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mMaxImageCount:I

    .line 570
    const/4 v1, 0x0

    .line 572
    .local v1, "progress":I
    :try_start_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SHOT_AND_MORE_MAX_PROGRESS_COUNT:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mMaxImageCount:I

    div-int v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :goto_1
    const-string v2, "ShotAndMore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCaptureCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string v2, "ShotAndMore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "progress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    .line 580
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 582
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 583
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, -0x181

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 584
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->showCaptureLayout()V

    .line 586
    :cond_0
    return-void

    .line 569
    .end local v1    # "progress":I
    :cond_1
    sget v2, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SHOT_AND_MORE_MAX_IMAGE_COUNT:I

    goto :goto_0

    .line 573
    .restart local v1    # "progress":I
    :catch_0
    move-exception v0

    .line 574
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "ShotAndMore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture count calculate - finish : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private setOutputFile()V
    .locals 6

    .prologue
    .line 589
    const-string v3, "ShotAndMore"

    const-string v4, "setOutputFile"

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "directory":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 594
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 595
    const-string v3, "ShotAndMore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to Create Directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 601
    new-instance v0, Ljava/io/File;

    .end local v0    # "cameraDir":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 602
    .restart local v0    # "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 603
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 604
    const-string v3, "ShotAndMore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to Create Directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, -0xa

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    .line 613
    :goto_0
    return-void

    .line 610
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "filename":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setOutputFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setShotAndMoreState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 454
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 455
    :try_start_0
    const-string v0, "ShotAndMore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShotAndMoreState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreState:I

    .line 457
    monitor-exit v1

    .line 458
    return-void

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private showCaptureLayout()V
    .locals 2

    .prologue
    .line 616
    const-string v0, "ShotAndMore"

    const-string v1, "showCaptureLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    .line 621
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private stopShotAndMoreShutterSound()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(I)V

    .line 625
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 626
    return-void
.end method


# virtual methods
.method public getMaxFileSizeOfImage()J
    .locals 2

    .prologue
    .line 107
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCapturing()Z
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 114
    const/4 v0, 0x1

    monitor-exit v1

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isZoomAvailable()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setShotAndMoreState(I)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setShotAndMoreEventListener(Lcom/sec/android/seccamera/SecCamera$ShotAndMoreEventListener;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 134
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    const/16 v0, 0x7530

    .line 146
    invoke-virtual {p1, v0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "picture-size"

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->SHOT_AND_MORE_BACK_RESOLUTION:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v0, "picture-size"

    const-string v1, "1920x1080"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 10
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 158
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 160
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_X:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v2, v1

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_Y:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 164
    new-instance v0, Lcom/samsung/android/glview/GLProgressBar;

    const/4 v2, 0x0

    sget v1, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESSBAR_TEXT_BOTTOM_PADDING:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESSBAR_TEXT_HEIGHT:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_HEIGHT:I

    int-to-float v5, v1

    const v6, 0x7f020144

    const v7, 0x7f020145

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLProgressBar;-><init>(Lcom/samsung/android/glview/GLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 168
    new-instance v0, Lcom/samsung/android/glview/GLText;

    sget v1, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_HEIGHT:I

    int-to-float v5, v1

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESSBAR_TEXT_SIZE:F

    const v1, 0x7f0c0011

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_X:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_Y:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_X:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_Y:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_X:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_Y:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SHOT_AND_MORE_FRONT_MAX_IMAGE_COUNT:I

    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mMaxImageCount:I

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    sget v1, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SHOT_AND_MORE_MAX_PROGRESS_COUNT:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgressBar;->setMax(I)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mMaxImageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 185
    return-void

    .line 178
    :cond_0
    sget v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SHOT_AND_MORE_MAX_IMAGE_COUNT:I

    goto :goto_0
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 189
    const-string v0, "sef_file_type"

    const/16 v1, 0x830

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    const-string v0, "height"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string v0, "width"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setShotAndMoreState(I)V

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->clearSideQuickSetting()V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShotAndMoreEventListener(Lcom/sec/android/seccamera/SecCamera$ShotAndMoreEventListener;)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 209
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->cancelShotAndMoreCapture()V

    .line 210
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->reset(Z)V

    .line 211
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->removeTempFile()V

    .line 212
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 216
    const-string v0, "ShotAndMore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "ShotAndMore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown return, keycode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 228
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->stopShotAndMoreShutterSound()V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShotAndMore()V

    .line 234
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->onShotAndMoreCapturingCancel()V

    move v0, v1

    .line 235
    goto :goto_0

    .line 237
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    if-lez v2, :cond_0

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopShotAndMore()V

    move v0, v1

    .line 239
    goto :goto_0

    .line 226
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
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public onShotAndMoreApplicableMode(I)V
    .locals 2
    .param p1, "modes"    # I

    .prologue
    .line 262
    const-string v0, "ShotAndMore"

    const-string v1, "onShotAndMoreApplicableMode"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method

.method public onShotAndMoreCaptureProgress(II)V
    .locals 4
    .param p1, "current"    # I
    .param p2, "max"    # I

    .prologue
    const/4 v3, 0x0

    .line 267
    const-string v0, "ShotAndMore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShotAndMoreCaptureProgress - current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getRemainCount(I)I

    move-result v0

    sub-int v1, p2, p1

    if-ge v0, v1, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->cancelShotAndMoreCapture()V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setStorageStatusLow()V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x191

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    .line 291
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->getShotAndMoreState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 277
    const-string v0, "ShotAndMore"

    const-string v1, "onShotAndMoreCaptureProgress - getShotAndMoreState is not SHOT_AND_MORE_STATE_START, return"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :cond_1
    if-nez p1, :cond_2

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x5

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    .line 286
    :cond_2
    add-int/lit8 v0, p2, -0x1

    if-le p1, v0, :cond_3

    .line 287
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->onShotAndMoreCapturingStop()V

    goto :goto_0

    .line 289
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setCaptureProgressIncreased()V

    goto :goto_0
.end method

.method public onShotAndMoreComplete()V
    .locals 11

    .prologue
    const/16 v10, 0x1a

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 295
    const-string v4, "ShotAndMore"

    const-string v5, "onShotAndMoreComplete"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 299
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->getShotAndMoreState()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 330
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->getShotAndMoreTempFileName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->renamePostSavingFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "outputFileName":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 307
    const-string v4, "ShotAndMore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shot and more file name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->pushInputString(Ljava/lang/String;)V

    .line 310
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getCurrentThumbnailSize()[I

    move-result-object v3

    .line 311
    .local v3, "thumbnailSize":[I
    aget v4, v3, v7

    aget v5, v3, v8

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/camera/util/ImageUtils;->makeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 312
    .local v2, "thumbnailBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 313
    .local v0, "orientation":I
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v4, v2, v0, v7}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 318
    .end local v0    # "orientation":I
    .end local v2    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "thumbnailSize":[I
    :goto_1
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->reset(Z)V

    .line 319
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 320
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setShotAndMoreState(I)V

    .line 322
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4, v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 323
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4, v10, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 325
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4, v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 326
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4, v9, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 329
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->launchShotAndMoreStudio()V

    goto :goto_0

    .line 315
    :cond_3
    const-string v4, "ShotAndMore"

    const-string v5, "shot and more output file error"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onShotAndMoreProcessProgress(II)V
    .locals 3
    .param p1, "current"    # I
    .param p2, "max"    # I

    .prologue
    .line 334
    const-string v0, "ShotAndMore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShotAndMoreProcessProgress - current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-nez p1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 7
    .param p1, "captureMethod"    # I

    .prologue
    const/16 v6, 0x1a

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 356
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    const-string v2, "ShotAndMore"

    const-string v3, "Return, isCapturing"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    return v1

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->checkShotAndMoreDumpDir()V

    .line 362
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x10

    .line 363
    .local v0, "maxCaptureCount":I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getRemainCount()I

    move-result v3

    if-ge v3, v0, :cond_2

    .line 364
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setStorageStatusLow()V

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v3, 0x191

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    move v1, v2

    .line 366
    goto :goto_0

    .line 362
    .end local v0    # "maxCaptureCount":I
    :cond_1
    const/16 v0, 0x20

    goto :goto_1

    .line 368
    .restart local v0    # "maxCaptureCount":I
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v4, -0x181

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 370
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 372
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isContinuousAutoFocusSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isHalfShutter()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v3

    if-nez v3, :cond_3

    .line 373
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleAutoFocus()V

    .line 376
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartShotAndMore()V

    .line 378
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->getShotAndMoreState()I

    move-result v3

    if-ne v3, v1, :cond_6

    .line 379
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setShotAndMoreState(I)V

    .line 381
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 382
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v6, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 383
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 384
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 386
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->lockAEAWB()V

    .line 387
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setOutputFile()V

    .line 389
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusState(I)V

    .line 390
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->removeResetTouchFocusMessage()V

    .line 391
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopAFWaitTimer()V

    .line 392
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeAFmessage()V

    .line 393
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestTransientAudioFocus()V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 398
    goto/16 :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 403
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 407
    return-void
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method
