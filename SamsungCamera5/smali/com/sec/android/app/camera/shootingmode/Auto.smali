.class public Lcom/sec/android/app/camera/shootingmode/Auto;
.super Ljava/lang/Object;
.source "Auto.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$SuperResolutionZoomEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$QRCodeDetectEventListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;


# static fields
.field private static final QR_CODE_CANT_DECODE:I = -0x7

.field private static final QR_CODE_ERROR_CORRECTION_FAILED:I = -0x2

.field private static final QR_CODE_INCOMPATIBLE_IMAGE_BUFFER:I = -0x6

.field private static final QR_CODE_SCAN_ERROR:I = -0x1

.field private static final QR_CODE_UNRECOGNIZED_FORMAT:I = -0x4

.field private static final QR_CODE_UNRECOGNIZED_MODE:I = -0x3

.field private static final QR_CODE_UNRECOGNIZED_VERSION:I = -0x5

.field protected static final TAG:Ljava/lang/String; = "Auto"

.field private static final URL_PREFIX:[Ljava/lang/String;


# instance fields
.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEffectListMenu:Lcom/sec/android/app/camera/menu/EffectListMenu;

.field private mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mErrorToast:Landroid/widget/Toast;

.field private mIsBurstCapturing:Z

.field private mIsQRCodeDetectionEnabled:Z

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mMotionPhotoUnavailableToast:Landroid/widget/Toast;

.field private mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Auto;->URL_PREFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 75
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 76
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 77
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 78
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 79
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 80
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .line 81
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEffectListMenu:Lcom/sec/android/app/camera/menu/EffectListMenu;

    .line 82
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    .line 84
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBurstCapturing:Z

    .line 86
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    .line 87
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsQRCodeDetectionEnabled:Z

    .line 90
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 91
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 92
    return-void
.end method

.method private checkQRDetectCondition()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 587
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    const-string v1, "Auto"

    const-string v2, "checkQRDetectCondition return isPausing"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :goto_0
    return v0

    .line 591
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 592
    const-string v1, "Auto"

    const-string v2, "checkQRDetectCondition return isStartPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 595
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 596
    const-string v1, "Auto"

    const-string v2, "checkQRDetectCondition return shutter key is already pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 599
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isPrepareRecording()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 600
    :cond_3
    const-string v1, "Auto"

    const-string v2, "checkQRDetectCondition return recording"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 603
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hideQRButton()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->hideQRButton()V

    .line 610
    :cond_0
    return-void
.end method

.method private hideQRErrorToast()V
    .locals 2

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isShowingQRErrorToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 615
    const-string v0, "Auto"

    const-string v1, "onQRErrorToast cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 617
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    .line 620
    :cond_0
    return-void
.end method

.method private isShowingQRErrorToast()Z
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 624
    :cond_0
    const/4 v0, 0x0

    .line 626
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSupportQRCode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 630
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Auto;->URL_PREFIX:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Auto;->URL_PREFIX:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 633
    :cond_1
    return v0
.end method

.method private onQRErrorToast(I)V
    .locals 3
    .param p1, "errCase"    # I

    .prologue
    const/4 v2, 0x0

    .line 638
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->checkQRDetectCondition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideQRErrorToast()V

    .line 642
    packed-switch p1, :pswitch_data_0

    .line 659
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 644
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f08019a

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    goto :goto_1

    .line 651
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f080192

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    goto :goto_1

    .line 654
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f080193

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    goto :goto_1

    .line 642
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMaxFileSizeOfImage()J
    .locals 2

    .prologue
    .line 96
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBurstCapturing:Z

    return v0
.end method

.method public isZoomAvailable()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 8
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 111
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v1, v3, [I

    const/16 v2, 0xbc4

    aput v2, v1, v4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v3, :cond_1b

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 162
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-nez v0, :cond_1c

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableLightConditionDetect(Z)V

    .line 168
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v0

    if-ne v0, v3, :cond_1d

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 174
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v0

    if-ne v0, v3, :cond_1e

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMotionPhoto(Z)V

    .line 180
    :goto_4
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBurstCapturing:Z

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setSuperResolutionZoomEventListener(Lcom/sec/android/app/camera/interfaces/Engine$SuperResolutionZoomEventListener;)V

    .line 184
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsQRCodeDetectionEnabled:Z

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setQRCodeDetectEventListener(Lcom/sec/android/seccamera/SecCamera$QRCodeDetectEventListener;)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->startQRCodeDetection()V

    .line 189
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_1f

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x7f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 196
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x2a

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f080183

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMotionPhotoUnavailableToast:Landroid/widget/Toast;

    .line 206
    return-void

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v5, [I

    const/16 v0, 0xc

    aput v0, v2, v4

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v0, :cond_5

    const/16 v0, 0xab

    :goto_6
    aput v0, v2, v3

    aput v5, v2, v7

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    goto/16 :goto_0

    .line 120
    :cond_5
    const/4 v0, 0x6

    goto :goto_6

    .line 122
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v1, v3, [I

    const/16 v2, 0xbc4

    aput v2, v1, v4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    .line 124
    :cond_7
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 125
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FLASH:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_9

    .line 126
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v6, [I

    const/16 v0, 0xc

    aput v0, v2, v4

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v0, :cond_8

    const/16 v0, 0xab

    :goto_7
    aput v0, v2, v3

    aput v5, v2, v7

    aput v6, v2, v5

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x6

    goto :goto_7

    .line 127
    :cond_9
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FLASH:Z

    if-eqz v0, :cond_b

    .line 128
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v5, [I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v0, :cond_a

    const/16 v0, 0xab

    :goto_8
    aput v0, v2, v4

    aput v5, v2, v3

    aput v6, v2, v7

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x6

    goto :goto_8

    .line 129
    :cond_b
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_d

    .line 130
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v5, [I

    const/16 v0, 0xc

    aput v0, v2, v4

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v0, :cond_c

    const/16 v0, 0xab

    :goto_9
    aput v0, v2, v3

    aput v6, v2, v7

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x6

    goto :goto_9

    .line 132
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v7, [I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v0, :cond_e

    const/16 v0, 0xab

    :goto_a
    aput v0, v2, v4

    aput v6, v2, v3

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x6

    goto :goto_a

    .line 135
    :cond_f
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FLASH:Z

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_12

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, 0x5

    new-array v2, v0, [I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_10

    const/16 v0, 0x7f

    :goto_b
    aput v0, v2, v4

    const/16 v0, 0xc

    aput v0, v2, v3

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v0, :cond_11

    const/16 v0, 0xab

    :goto_c
    aput v0, v2, v7

    aput v5, v2, v5

    aput v6, v2, v6

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x8

    goto :goto_b

    :cond_11
    const/4 v0, 0x6

    goto :goto_c

    .line 138
    :cond_12
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FLASH:Z

    if-eqz v0, :cond_15

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v6, [I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_13

    const/16 v0, 0x7f

    :goto_d
    aput v0, v2, v4

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v0, :cond_14

    const/16 v0, 0xab

    :goto_e
    aput v0, v2, v3

    aput v5, v2, v7

    aput v6, v2, v5

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0x8

    goto :goto_d

    :cond_14
    const/4 v0, 0x6

    goto :goto_e

    .line 141
    :cond_15
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_18

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v6, [I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_16

    const/16 v0, 0x7f

    :goto_f
    aput v0, v2, v4

    const/16 v0, 0xc

    aput v0, v2, v3

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v0, :cond_17

    const/16 v0, 0xab

    :goto_10
    aput v0, v2, v7

    aput v6, v2, v5

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0x8

    goto :goto_f

    :cond_17
    const/4 v0, 0x6

    goto :goto_10

    .line 145
    :cond_18
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v5, [I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_19

    const/16 v0, 0x7f

    :goto_11
    aput v0, v2, v4

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v0, :cond_1a

    const/16 v0, 0xab

    :goto_12
    aput v0, v2, v3

    aput v6, v2, v7

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x8

    goto :goto_11

    :cond_1a
    const/4 v0, 0x6

    goto :goto_12

    .line 159
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto/16 :goto_1

    .line 165
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableLightConditionDetect(Z)V

    goto/16 :goto_2

    .line 171
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto/16 :goto_3

    .line 177
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMotionPhoto(Z)V

    goto/16 :goto_4

    .line 193
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/EffectListMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEffectListMenu:Lcom/sec/android/app/camera/menu/EffectListMenu;

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEffectListMenu:Lcom/sec/android/app/camera/menu/EffectListMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto/16 :goto_5

    .line 117
    :array_0
    .array-data 4
        0xc
        0x6
        0x3
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 217
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 212
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideQRButton()V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBurstCaptureCompleted()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    const-string v0, "Auto"

    const-string v1, "onBurstCaptureCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBurstCapturing:Z

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideCaptureProgressText()V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x76

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMotionPhoto(Z)V

    .line 235
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsQRCodeDetectionEnabled:Z

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->startQRCodeDetection()V

    .line 238
    :cond_1
    return-void
.end method

.method public onBurstCaptureProgressed(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 242
    const-string v0, "Auto"

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

    .line 243
    if-nez p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showCaptureProgressText()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    .line 247
    return-void
.end method

.method public onBurstCaptureStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 251
    const-string v0, "Auto"

    const-string v1, "onBurstCaptureStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBurstCapturing:Z

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x76

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideTouchEVSlider()V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMotionPhoto(Z)V

    .line 261
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsQRCodeDetectionEnabled:Z

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopQRCodeDetection()V

    .line 263
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideQRButton()V

    .line 265
    :cond_1
    return-void
.end method

.method public onBurstCaptureStopped(I)Z
    .locals 1
    .param p1, "lastImageNum"    # I

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public onBurstCaptureThumbnailTaken(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    .line 274
    const-string v0, "Auto"

    const-string v1, "onBurstCaptureThumbnailTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 276
    return-void
.end method

.method public onBurstStringProgressed([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 280
    return-void
.end method

.method public onCameraSettingChanged(II)V
    .locals 2
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v1, 0x1

    .line 284
    sparse-switch p1, :sswitch_data_0

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 286
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMotionPhoto(Z)V

    goto :goto_0

    .line 293
    :sswitch_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMotionPhotoUnavailableToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 284
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x2a -> :sswitch_1
    .end sparse-switch
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 5
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    const/16 v4, 0x2710

    const/16 v3, 0x1f40

    const/4 v2, 0x1

    const/16 v1, 0x7530

    .line 304
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    const/16 v0, 0x5dc0

    invoke-virtual {p1, v4, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 307
    const-string v0, "effect_hint"

    invoke-virtual {p1, v0, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 308
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "phase-af"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v0, "dynamic-range-control"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeValueForISPset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 336
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAutoNightDetectionMode()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {p1, v4, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 327
    :goto_1
    const-string v0, "effect_hint"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 329
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_0

    .line 330
    const-string v0, "phase-af"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v0, "dynamic-range-control"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {p1, v3, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_1

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 322
    const/16 v0, 0x3a98

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_1

    .line 324
    :cond_4
    invoke-virtual {p1, v3, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_1
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 3
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    const/4 v2, 0x0

    .line 340
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 341
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isQRCodeDetectionSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsQRCodeDetectionEnabled:Z

    .line 345
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsQRCodeDetectionEnabled:Z

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 350
    :cond_0
    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 355
    const-string v0, "sef_file_type"

    const/16 v1, 0xa30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 1
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 362
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopThumbnailPreviewCallback()V

    .line 365
    :cond_0
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->clearSideQuickSetting()V

    .line 376
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBurstCapturing:Z

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelBurstCapture()V

    .line 378
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBurstCapturing:Z

    .line 381
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsQRCodeDetectionEnabled:Z

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopQRCodeDetection()V

    .line 383
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideQRButton()V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setQRCodeDetectEventListener(Lcom/sec/android/seccamera/SecCamera$QRCodeDetectEventListener;)V

    .line 387
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 392
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x2a

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableLightConditionDetect(Z)V

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMotionPhoto(Z)V

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setSuperResolutionZoomEventListener(Lcom/sec/android/app/camera/interfaces/Engine$SuperResolutionZoomEventListener;)V

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 408
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMotionPhotoUnavailableToast:Landroid/widget/Toast;

    .line 409
    return-void

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEffectListMenu:Lcom/sec/android/app/camera/menu/EffectListMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EffectListMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 418
    packed-switch p1, :pswitch_data_0

    .line 426
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 420
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBurstCapturing:Z

    if-eqz v0, :cond_0

    .line 421
    const/4 v0, 0x1

    goto :goto_0

    .line 418
    nop

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
    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public onNewImageLoggingPrepared(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v3, 0x0

    .line 436
    const-string v0, "Z028"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getTouchAeLockState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 438
    const-string v0, "Z068"

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getTouchAeLockState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 441
    const-string v0, "Z069"

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    const-string v0, "Z030"

    const-string v1, "Photo"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_2
    return-void
.end method

.method public onQRCodeDetect([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 4
    .param p1, "uri"    # [B
    .param p2, "camera"    # Lcom/sec/android/seccamera/SecCamera;

    .prologue
    const/4 v3, 0x0

    .line 450
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->checkQRDetectCondition()Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    const-string v1, "Auto"

    const-string v2, "onQRCodeDetect can\'t display QR button"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideQRButton()V

    .line 476
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->stopQRCodeDetection()V

    .line 457
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->showQRButton(Z)V

    .line 458
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setQRCodeDetectEventListener(Lcom/sec/android/seccamera/SecCamera$QRCodeDetectEventListener;)V

    .line 459
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsQRCodeDetectionEnabled:Z

    goto :goto_0

    .line 462
    :cond_1
    const-string v1, "Auto"

    const-string v2, "onQRCodeDetect"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideTouchEVSlider()V

    .line 466
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 468
    .local v0, "URL":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.android.app.qragent"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 469
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isSupportQRCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 470
    const/4 v1, -0x3

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Auto;->onQRErrorToast(I)V

    goto :goto_0

    .line 474
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setUri(Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->showQRButton(Z)V

    goto :goto_0
.end method

.method public onQRDetectError(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 480
    const-string v0, "Auto"

    const-string v1, "onQRDetectError"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->isVisible()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 482
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Auto;->onQRErrorToast(I)V

    .line 484
    :cond_0
    return-void
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 494
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    const-string v0, "startBurstCapture"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterPressed()V

    .line 497
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 498
    const/4 v0, 0x1

    .line 504
    :cond_0
    :goto_0
    return v0

    .line 501
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isBurstCaptureAvailableFPS()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isLowLightDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v2, 0x7f0800fe

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 509
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    const/4 v0, 0x1

    .line 512
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
    const/4 v0, 0x1

    .line 517
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBurstCapturing:Z

    if-eqz v1, :cond_1

    .line 518
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterReleased()V

    .line 528
    :cond_0
    :goto_0
    return v0

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(I)V

    .line 524
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 525
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1, v0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    .line 528
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 533
    packed-switch p1, :pswitch_data_0

    .line 551
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 535
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelIntervalCapture()V

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isVideoCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    goto :goto_0

    .line 546
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isVideoCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    goto :goto_0

    .line 533
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSuperResolutionZoomDetected(Z)V
    .locals 0
    .param p1, "detected"    # Z

    .prologue
    .line 555
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 559
    const-string v0, "Auto"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 566
    :cond_1
    if-nez p1, :cond_3

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 579
    :cond_3
    :goto_0
    return-void

    .line 573
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    goto :goto_0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 583
    const/4 v0, 0x0

    return v0
.end method
