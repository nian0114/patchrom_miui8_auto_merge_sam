.class public Lcom/sec/android/app/camera/shootingmode/RearSelfie;
.super Ljava/lang/Object;
.source "RearSelfie.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ShutterEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/sec/android/seccamera/SecCamera$BeautyEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;


# static fields
.field private static final DEFAULT_SELFIE_GUIDE_MOVING_THRESHOLD:F = 5.0f

.field private static final DELAY_TIME_TO_INTERVAL_SHOT_CAPTURE:I = 0x7d0

.field private static final DELAY_TIME_TO_INTERVAL_SHOT_FACE_DETECT:I = 0x1f4

.field private static final MAIN_FD_APPROACH_GUIDE_BOUNDARYLINE:I = 0x1

.field private static final MAIN_FD_APPROACH_GUIDE_BOUNDARYLINE_100:I = 0x4

.field private static final MAIN_FD_APPROACH_GUIDE_BOUNDARYLINE_TO_100:I = 0x3

.field private static final MAIN_FD_APPROACH_GUIDE_BOUNDARYLINE_TO_50:I = 0x2

.field private static final MAIN_FD_OUT_OF_GUIDE_BOUNDARYLINE:I = 0x0

.field private static final MOVING:I = 0x2

.field private static final NONE:I = 0x0

.field private static final RESIZING:I = 0x1

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SELFIE_GUIDE_HEIGHT:F

.field private static final SELFIE_GUIDE_HEIGHT_MAX:I = 0x3

.field private static final SELFIE_GUIDE_HEIGHT_MIN:I = 0x1

.field private static final SELFIE_GUIDE_POS_LANDSCAPE_X:F

.field private static final SELFIE_GUIDE_POS_Y:F

.field private static final SELFIE_GUIDE_WIDTH:F

.field private static final SELFIE_GUIDE_WIDTH_MAX:I = 0x2

.field private static final SELFIE_GUIDE_WIDTH_MIN:I = 0x0

.field private static final SELFSHOT_CAPTURE_START:I = 0x1

.field private static final SELFSHOT_CAPTURE_TIMER:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "RearSelfie"

.field private static final TOUCH_VERTEX_AREA_WIDTH:I

.field private static final TOUCH_VERTEX_LB:I = 0x2

.field private static final TOUCH_VERTEX_LT:I = 0x1

.field private static final TOUCH_VERTEX_NON:I = 0x0

.field private static final TOUCH_VERTEX_RB:I = 0x4

.field private static final TOUCH_VERTEX_RT:I = 0x3


# instance fields
.field private final RES_ID_SELFIE_GUIDE_FRAME_IMAGE:[I

.field private mAmountDeltaX:F

.field private mAmountDeltaY:F

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFaceDetectionRect:Landroid/graphics/Rect;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mModeListMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

.field private mMovePoint:Landroid/graphics/PointF;

.field private mPreviewRatio:D

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mRearSelfieGuideState:I

.field protected mRearSelfieMSGHandler:Landroid/os/Handler;

.field private mSelectedSelfieGuide:I

.field private mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

.field private mSelfieGuideMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 61
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SCREEN_WIDTH:I

    .line 62
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SCREEN_HEIGHT:I

    .line 81
    const v0, 0x7f0901d0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->TOUCH_VERTEX_AREA_WIDTH:I

    .line 88
    const v0, 0x7f0901ca

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_WIDTH:F

    .line 89
    const v0, 0x7f0901c9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_HEIGHT:F

    .line 90
    sget v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_POS_LANDSCAPE_X:F

    .line 91
    sget v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_POS_Y:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 4
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->RES_ID_SELFIE_GUIDE_FRAME_IMAGE:[I

    .line 101
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieGuideState:I

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mFaceDetectionRect:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mMovePoint:Landroid/graphics/PointF;

    .line 105
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    .line 106
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    .line 107
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    .line 108
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    .line 109
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    .line 110
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRatio:D

    .line 112
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 113
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 114
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 115
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 116
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mModeListMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

    .line 117
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 118
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/RearSelfie$1;-><init>(Lcom/sec/android/app/camera/shootingmode/RearSelfie;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieMSGHandler:Landroid/os/Handler;

    .line 148
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 149
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 150
    return-void

    .line 99
    :array_0
    .array-data 4
        0x7f0201c7
        0x7f0201c9
        0x7f0201c8
        0x7f0201cb
        0x7f0201ca
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/RearSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RearSelfie;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->startSelfShotCapture()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/RearSelfie;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RearSelfie;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/RearSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RearSelfie;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method private checkShotROIState([II)I
    .locals 6
    .param p1, "roistate"    # [I
    .param p2, "facecount"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 582
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 583
    aget v5, p1, v0

    if-ne v5, v1, :cond_0

    .line 598
    :goto_1
    return v1

    .line 582
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_3

    .line 587
    aget v1, p1, v0

    if-ne v1, v2, :cond_2

    move v1, v2

    .line 588
    goto :goto_1

    .line 586
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 590
    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p2, :cond_5

    .line 591
    aget v1, p1, v0

    if-ne v1, v3, :cond_4

    move v1, v3

    .line 592
    goto :goto_1

    .line 590
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 594
    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-ge v0, p2, :cond_7

    .line 595
    aget v1, p1, v0

    if-ne v1, v4, :cond_6

    move v1, v4

    .line 596
    goto :goto_1

    .line 594
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 598
    :cond_7
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private deNormalize(FI)F
    .locals 2
    .param p1, "value"    # F
    .param p2, "size"    # I

    .prologue
    .line 602
    const/high16 v0, 0x447a0000    # 1000.0f

    add-float/2addr v0, p1

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v1

    int-to-float v1, p2

    mul-float/2addr v0, v1

    return v0
.end method

.method private getSelfieGuideBoxResizeRange(Landroid/graphics/Rect;I)F
    .locals 3
    .param p1, "previewRect"    # Landroid/graphics/Rect;
    .param p2, "type"    # I

    .prologue
    const v2, 0x3f666666    # 0.9f

    const v1, 0x3ecccccd    # 0.4f

    .line 606
    if-eqz p1, :cond_0

    .line 607
    packed-switch p2, :pswitch_data_0

    .line 619
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 609
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    goto :goto_0

    .line 611
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    goto :goto_0

    .line 613
    :pswitch_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    goto :goto_0

    .line 615
    :pswitch_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    goto :goto_0

    .line 607
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hideSelfieGuideFrame()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_1

    .line 628
    invoke-direct {p0, v2, v2}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->onRearSelfieGuideStateChanged(IZ)V

    .line 630
    :cond_1
    return-void
.end method

.method private isRearSelfieFDDetecting()Z
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    .line 634
    const/4 v0, 0x1

    .line 636
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onRearSelfieGuideStateChanged(IZ)V
    .locals 1
    .param p1, "guideFrameState"    # I
    .param p2, "isMainFDOrROINull"    # Z

    .prologue
    .line 640
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFaceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 641
    const/4 p1, 0x0

    .line 643
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->isRearSelfieFDDetecting()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    if-nez p1, :cond_3

    .line 644
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieGuideState:I

    .line 645
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->stopRearSelfieGuideStateSound()V

    .line 646
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->removeRearSelfieCaptureMessage()V

    .line 659
    :cond_2
    :goto_0
    return-void

    .line 650
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieGuideState:I

    if-eq v0, p1, :cond_2

    .line 654
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieGuideState:I

    .line 655
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->removeRearSelfieCaptureMessage()V

    .line 657
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->stopRearSelfieGuideStateSound()V

    .line 658
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->playRearSelfieGuideStateSound(I)V

    goto :goto_0
.end method

.method private playRearSelfieGuideStateSound(I)V
    .locals 7
    .param p1, "guideFrameState"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 662
    const-string v1, "RearSelfie"

    const-string v2, "playRearSelfieGuideStateSound"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    packed-switch p1, :pswitch_data_0

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 666
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartInactivityTimer()V

    .line 667
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->stopRearSelfieGuideStateSound()V

    .line 668
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getForcedShutterSound()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 669
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 682
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieMSGHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 683
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieMSGHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 684
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieMSGHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 671
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 672
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 675
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/haptic/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    goto :goto_1

    .line 678
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    goto :goto_1

    .line 664
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 672
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private removeRearSelfieCaptureMessage()V
    .locals 3

    .prologue
    .line 691
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 692
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 701
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieMSGHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieMSGHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 703
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieMSGHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 705
    :cond_0
    return-void

    .line 695
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/haptic/HapticFeedback;->stopHaptic(Landroid/content/Context;)V

    goto :goto_0

    .line 698
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(I)V

    goto :goto_0

    .line 692
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 708
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    .line 710
    invoke-direct {p0, v0, v0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->onRearSelfieGuideStateChanged(IZ)V

    .line 711
    return-void
.end method

.method private resetFaceDetectionRect()V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mFaceDetectionRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mFaceDetectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetFaceRect()V

    .line 720
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->onRearSelfieGuideStateChanged(IZ)V

    .line 722
    :cond_1
    return-void
.end method

.method private resetSelfieGuideFrame()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 725
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    .line 726
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    .line 727
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v3, :cond_0

    .line 728
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->resetTranslate()V

    .line 729
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    sget v4, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_HEIGHT:F

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 732
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v2, v3, v7

    .line 733
    .local v2, "previewCenter":F
    sget v3, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SCREEN_WIDTH:I

    int-to-float v3, v3

    mul-float v0, v3, v7

    .line 734
    .local v0, "currentCenter":F
    sub-float v1, v2, v0

    .line 736
    .local v1, "delta":F
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v1, v6}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    .line 738
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    .line 739
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    .line 741
    .end local v0    # "currentCenter":F
    .end local v1    # "delta":F
    .end local v2    # "previewCenter":F
    :cond_0
    return-void
.end method

.method private declared-synchronized resizeSelfieGuide(IFFFF)V
    .locals 8
    .param p1, "vertexTouchMode"    # I
    .param p2, "deltaX"    # F
    .param p3, "deltaY"    # F
    .param p4, "amountSizeX"    # F
    .param p5, "amountSizeY"    # F

    .prologue
    const/4 v6, 0x0

    .line 744
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->getSelfieGuideBoxResizeRange(Landroid/graphics/Rect;I)F

    move-result v3

    .line 745
    .local v3, "MIN_ROIWIDTH":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->getSelfieGuideBoxResizeRange(Landroid/graphics/Rect;I)F

    move-result v2

    .line 746
    .local v2, "MIN_ROIHEIGHT":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->getSelfieGuideBoxResizeRange(Landroid/graphics/Rect;I)F

    move-result v1

    .line 747
    .local v1, "MAX_ROIWIDTH":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->getSelfieGuideBoxResizeRange(Landroid/graphics/Rect;I)F

    move-result v0

    .line 749
    .local v0, "MAX_ROIHEIGHT":F
    packed-switch p1, :pswitch_data_0

    .line 847
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    sget v5, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    add-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_HEIGHT:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    monitor-exit p0

    return-void

    .line 751
    :pswitch_0
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float/2addr v4, p2

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_2

    .line 752
    cmpl-float v4, p2, v6

    if-ltz v4, :cond_0

    .line 753
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v4, v3

    .line 761
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float/2addr v4, p3

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_3

    .line 762
    cmpl-float v4, p3, v6

    if-ltz v4, :cond_1

    .line 763
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v4, v2

    .line 771
    :cond_1
    :goto_2
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    sub-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    .line 772
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    sub-float/2addr v4, p3

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    .line 773
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, p3, v5}, Lcom/samsung/android/glview/GLNinePatch;->translate(FFZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 744
    .end local v0    # "MAX_ROIHEIGHT":F
    .end local v1    # "MAX_ROIWIDTH":F
    .end local v2    # "MIN_ROIHEIGHT":F
    .end local v3    # "MIN_ROIWIDTH":F
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 755
    .restart local v0    # "MAX_ROIHEIGHT":F
    .restart local v1    # "MAX_ROIWIDTH":F
    .restart local v2    # "MIN_ROIHEIGHT":F
    .restart local v3    # "MIN_ROIWIDTH":F
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float/2addr v4, p2

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_0

    .line 756
    cmpg-float v4, p2, v6

    if-gtz v4, :cond_0

    .line 757
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v4, v1

    goto :goto_1

    .line 765
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float/2addr v4, p3

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_1

    .line 766
    cmpg-float v4, p3, v6

    if-gtz v4, :cond_1

    .line 767
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v4, v0

    goto :goto_2

    .line 776
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float/2addr v4, p2

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_6

    .line 777
    cmpl-float v4, p2, v6

    if-ltz v4, :cond_4

    .line 778
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float p2, v4, v3

    .line 785
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    add-float/2addr v4, p3

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_7

    .line 786
    cmpg-float v4, p3, v6

    if-gtz v4, :cond_5

    .line 787
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v2, v4

    .line 795
    :cond_5
    :goto_4
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    sub-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    .line 796
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    add-float/2addr v4, p3

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    .line 797
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, p2, v5, v6}, Lcom/samsung/android/glview/GLNinePatch;->translate(FFZ)V

    goto/16 :goto_0

    .line 780
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float/2addr v4, p2

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_4

    .line 781
    cmpg-float v4, p2, v6

    if-gtz v4, :cond_4

    .line 782
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v4, v1

    goto :goto_3

    .line 789
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    add-float/2addr v4, p3

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_5

    .line 790
    cmpl-float v4, p3, v6

    if-ltz v4, :cond_5

    .line 791
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v0, v4

    goto :goto_4

    .line 800
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    add-float/2addr v4, p2

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_a

    .line 801
    cmpg-float v4, p2, v6

    if-gtz v4, :cond_8

    .line 802
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v3, v4

    .line 809
    :cond_8
    :goto_5
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float/2addr v4, p3

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_b

    .line 810
    cmpl-float v4, p3, v6

    if-ltz v4, :cond_9

    .line 811
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v4, v2

    .line 818
    :cond_9
    :goto_6
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    .line 819
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    sub-float/2addr v4, p3

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    .line 820
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Lcom/samsung/android/glview/GLNinePatch;->translate(FFZ)V

    goto/16 :goto_0

    .line 804
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    add-float/2addr v4, p2

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_8

    .line 805
    cmpl-float v4, p2, v6

    if-ltz v4, :cond_8

    .line 806
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v1, v4

    goto :goto_5

    .line 813
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float/2addr v4, p3

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_9

    .line 814
    cmpg-float v4, p3, v6

    if-gtz v4, :cond_9

    .line 815
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v4, v0

    goto :goto_6

    .line 823
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    add-float/2addr v4, p2

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_e

    .line 824
    cmpg-float v4, p2, v6

    if-gtz v4, :cond_c

    .line 825
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v3, v4

    .line 832
    :cond_c
    :goto_7
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    add-float/2addr v4, p3

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_f

    .line 833
    cmpg-float v4, p3, v6

    if-gtz v4, :cond_d

    .line 834
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float p3, v2, v4

    .line 841
    :cond_d
    :goto_8
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    add-float/2addr v4, p2

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    .line 842
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    add-float/2addr v4, p3

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    goto/16 :goto_0

    .line 827
    :cond_e
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    add-float/2addr v4, p2

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_c

    .line 828
    cmpl-float v4, p2, v6

    if-ltz v4, :cond_c

    .line 829
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float p2, v1, v4

    goto :goto_7

    .line 836
    :cond_f
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    add-float/2addr v4, p3

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_d

    .line 837
    cmpl-float v4, p3, v6

    if-ltz v4, :cond_d

    .line 838
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    sub-float p3, v0, v4

    goto :goto_8

    .line 749
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSelectedSelfieGuide(FF)V
    .locals 8
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 851
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v1

    .line 852
    .local v1, "curGuideLeft":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v2

    .line 853
    .local v2, "curGuideRight":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentTop()F

    move-result v3

    .line 854
    .local v3, "curGuideTop":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentBottom()F

    move-result v0

    .line 856
    .local v0, "curGuideBottom":F
    cmpg-float v4, v1, p1

    if-gez v4, :cond_1

    sget v4, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1

    cmpg-float v4, v3, p2

    if-gez v4, :cond_1

    sget v4, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, v4, p2

    if-lez v4, :cond_1

    .line 857
    const/4 v4, 0x1

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    .line 867
    :goto_0
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-eqz v4, :cond_0

    .line 868
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->RES_ID_SELFIE_GUIDE_FRAME_IMAGE:[I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    .line 869
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    sget v5, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    add-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_HEIGHT:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 872
    :cond_0
    return-void

    .line 858
    :cond_1
    sget v4, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_2

    cmpl-float v4, v2, p1

    if-lez v4, :cond_2

    cmpg-float v4, v3, p2

    if-gez v4, :cond_2

    sget v4, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, v4, p2

    if-lez v4, :cond_2

    .line 859
    const/4 v4, 0x3

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    goto :goto_0

    .line 860
    :cond_2
    cmpg-float v4, v1, p1

    if-gez v4, :cond_3

    sget v4, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpl-float v4, v4, p1

    if-lez v4, :cond_3

    sget v4, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_3

    cmpl-float v4, v0, p2

    if-lez v4, :cond_3

    .line 861
    const/4 v4, 0x2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    goto :goto_0

    .line 862
    :cond_3
    sget v4, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_4

    cmpl-float v4, v2, p1

    if-lez v4, :cond_4

    sget v4, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_4

    cmpl-float v4, v0, p2

    if-lez v4, :cond_4

    .line 863
    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    goto :goto_0

    .line 865
    :cond_4
    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    goto :goto_0
.end method

.method private showSelfieGuideFrame()V
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 884
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 886
    :cond_1
    return-void

    .line 878
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startSelfShotCapture()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 889
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 891
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->isRearSelfieFDDetecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideFaceRect(Z)V

    .line 894
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->removeRearSelfieCaptureMessage()V

    .line 895
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->stopRearSelfieGuideStateSound()V

    .line 897
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(I)V

    .line 900
    :cond_0
    return-void
.end method

.method private stopRearSelfieGuideStateSound()V
    .locals 3

    .prologue
    .line 903
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 904
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 913
    :goto_0
    return-void

    .line 907
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/haptic/HapticFeedback;->stopHaptic(Landroid/content/Context;)V

    goto :goto_0

    .line 910
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(I)V

    goto :goto_0

    .line 904
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getMaxFileSizeOfImage()J
    .locals 2

    .prologue
    .line 154
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomAvailable()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 4
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v3, 0x4

    .line 169
    const-string v0, "RearSelfie"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/ModeListMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mModeListMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mModeListMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterEventListener;)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRetouchLevelSync(I)V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyLevel(I)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRatio:D

    .line 188
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->reset()V

    .line 189
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->showSelfieGuideFrame()V

    .line 190
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public onBeautySavingProgress(I)V
    .locals 7
    .param p1, "progress"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x1a

    const/4 v3, 0x3

    .line 199
    const-string v0, "RearSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBeautyShotSavingProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 212
    :cond_1
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 224
    :goto_1
    return-void

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    goto :goto_0

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 216
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->hideSelfieGuideFrame()V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    goto :goto_1

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCameraSettingChanged(II)V
    .locals 9
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const v8, 0x7f0901be

    .line 228
    const-string v5, "RearSelfie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCameraSettingsChanged menuid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " modeid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    packed-switch p1, :pswitch_data_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 232
    :pswitch_0
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    .line 234
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    .line 235
    .local v1, "resolution":I
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 237
    .local v4, "width":I
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 239
    .local v0, "height":I
    invoke-static {v4, v0}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v2

    .line 240
    .local v2, "ratio":D
    iget-wide v6, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRatio:D

    invoke-static {v6, v7, v2, v3}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v5

    if-nez v5, :cond_0

    .line 241
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRatio:D

    .line 242
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->resetSelfieGuideFrame()V

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 0
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    .line 251
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 256
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 257
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    .line 260
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_POS_LANDSCAPE_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_HEIGHT:F

    const v6, 0x7f0201c7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    .line 262
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->resetSelfieGuideFrame()V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLNinePatch;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setClickable(Z)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setTitle(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 270
    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 274
    const-string v0, "sef_file_type"

    const/16 v1, 0x900

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized onFaceDetection([Lcom/sec/android/seccamera/SecCamera$Face;)Z
    .locals 22
    .param p1, "faces"    # [Lcom/sec/android/seccamera/SecCamera$Face;

    .prologue
    .line 280
    monitor-enter p0

    const/16 v14, 0xa

    :try_start_0
    new-array v12, v14, [I

    .line 281
    .local v12, "selfShotROIState":[I
    const/4 v13, 0x0

    .line 283
    .local v13, "selfShotROIStateResult":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeHideFaceRectMessage()V

    .line 285
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMemoryStatus()I

    move-result v14

    if-eqz v14, :cond_0

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v15, 0x191

    invoke-interface {v14, v15}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    const/4 v14, 0x0

    .line 373
    :goto_0
    monitor-exit p0

    return v14

    .line 290
    :cond_0
    if-eqz p1, :cond_d

    :try_start_1
    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->isRearSelfieFDDetecting()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 291
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 293
    .local v9, "faceFrameRect":Landroid/graphics/RectF;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v10, v14, :cond_c

    .line 294
    const/4 v11, 0x0

    .line 295
    .local v11, "rectMargin":F
    aget-object v14, p1, v10

    iget-object v14, v14, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v9, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 297
    iget v14, v9, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->deNormalize(FI)F

    move-result v14

    iput v14, v9, Landroid/graphics/RectF;->left:F

    .line 298
    iget v14, v9, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->deNormalize(FI)F

    move-result v14

    iput v14, v9, Landroid/graphics/RectF;->right:F

    .line 299
    iget v14, v9, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->deNormalize(FI)F

    move-result v14

    iput v14, v9, Landroid/graphics/RectF;->top:F

    .line 300
    iget v14, v9, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->deNormalize(FI)F

    move-result v14

    iput v14, v9, Landroid/graphics/RectF;->bottom:F

    .line 301
    iget v14, v9, Landroid/graphics/RectF;->top:F

    iget v15, v9, Landroid/graphics/RectF;->top:F

    float-to-double v0, v15

    move-wide/from16 v16, v0

    iget v15, v9, Landroid/graphics/RectF;->top:F

    float-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide v20, 0x3fe999999999999aL    # 0.8

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v15, v0

    add-float/2addr v14, v15

    iput v14, v9, Landroid/graphics/RectF;->top:F

    .line 303
    iget v14, v9, Landroid/graphics/RectF;->right:F

    iget v15, v9, Landroid/graphics/RectF;->left:F

    sub-float/2addr v14, v15

    const v15, 0x3dcccccd    # 0.1f

    mul-float v11, v14, v15

    .line 304
    iget v14, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v14, v11

    iput v14, v9, Landroid/graphics/RectF;->left:F

    .line 305
    iget v14, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v14, v11

    iput v14, v9, Landroid/graphics/RectF;->right:F

    .line 307
    iget v14, v9, Landroid/graphics/RectF;->bottom:F

    iget v15, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v14, v15

    const v15, 0x3dcccccd    # 0.1f

    mul-float v11, v14, v15

    .line 308
    iget v14, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v14, v11

    iput v14, v9, Landroid/graphics/RectF;->top:F

    .line 309
    iget v14, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v14, v11

    iput v14, v9, Landroid/graphics/RectF;->bottom:F

    .line 311
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-eqz v14, :cond_1

    .line 312
    iget v14, v9, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    iput v14, v9, Landroid/graphics/RectF;->left:F

    .line 313
    iget v14, v9, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    iput v14, v9, Landroid/graphics/RectF;->top:F

    .line 314
    iget v14, v9, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    iput v14, v9, Landroid/graphics/RectF;->right:F

    .line 315
    iget v14, v9, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    iput v14, v9, Landroid/graphics/RectF;->bottom:F

    .line 320
    :cond_1
    iget v14, v9, Landroid/graphics/RectF;->left:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_2

    iget v14, v9, Landroid/graphics/RectF;->top:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-lez v14, :cond_3

    :cond_2
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_4

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v14

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_4

    .line 321
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->resetFaceDetectionRect()V

    .line 322
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->onRearSelfieGuideStateChanged(IZ)V

    .line 323
    const-string v14, "RearSelfie"

    const-string v15, "RearSelfieFDRectChanged resetFaceDetectionRect return"

    invoke-static {v14, v15}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 327
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v14}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v6

    .line 328
    .local v6, "curGuideLeft":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v14}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v7

    .line 329
    .local v7, "curGuideRight":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v14}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentTop()F

    move-result v8

    .line 330
    .local v8, "curGuideTop":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v14}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentBottom()F

    move-result v5

    .line 332
    .local v5, "curGuideBottom":F
    const/high16 v4, 0x40a00000    # 5.0f

    .line 333
    .local v4, "boundary_gap":F
    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 334
    .local v2, "FDCenX":F
    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 337
    .local v3, "FDCenY":F
    iget v14, v9, Landroid/graphics/RectF;->left:F

    cmpg-float v14, v6, v14

    if-gtz v14, :cond_5

    iget v14, v9, Landroid/graphics/RectF;->right:F

    cmpl-float v14, v7, v14

    if-ltz v14, :cond_5

    iget v14, v9, Landroid/graphics/RectF;->top:F

    cmpg-float v14, v8, v14

    if-gtz v14, :cond_5

    iget v14, v9, Landroid/graphics/RectF;->bottom:F

    cmpl-float v14, v5, v14

    if-ltz v14, :cond_5

    .line 338
    const/4 v14, 0x4

    aput v14, v12, v10

    .line 355
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mFaceDetectionRect:Landroid/graphics/Rect;

    iget v15, v9, Landroid/graphics/RectF;->left:F

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->left:I

    .line 356
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mFaceDetectionRect:Landroid/graphics/Rect;

    iget v15, v9, Landroid/graphics/RectF;->top:F

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->top:I

    .line 357
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mFaceDetectionRect:Landroid/graphics/Rect;

    iget v15, v9, Landroid/graphics/RectF;->right:F

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->right:I

    .line 358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mFaceDetectionRect:Landroid/graphics/Rect;

    iget v15, v9, Landroid/graphics/RectF;->bottom:F

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->bottom:I

    .line 293
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 339
    :cond_5
    cmpg-float v14, v6, v2

    if-gtz v14, :cond_6

    cmpl-float v14, v7, v2

    if-ltz v14, :cond_6

    cmpg-float v14, v8, v3

    if-gtz v14, :cond_6

    cmpl-float v14, v5, v3

    if-ltz v14, :cond_6

    .line 340
    const/4 v14, 0x3

    aput v14, v12, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 280
    .end local v2    # "FDCenX":F
    .end local v3    # "FDCenY":F
    .end local v4    # "boundary_gap":F
    .end local v5    # "curGuideBottom":F
    .end local v6    # "curGuideLeft":F
    .end local v7    # "curGuideRight":F
    .end local v8    # "curGuideTop":F
    .end local v9    # "faceFrameRect":Landroid/graphics/RectF;
    .end local v10    # "i":I
    .end local v11    # "rectMargin":F
    .end local v12    # "selfShotROIState":[I
    .end local v13    # "selfShotROIStateResult":I
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 341
    .restart local v2    # "FDCenX":F
    .restart local v3    # "FDCenY":F
    .restart local v4    # "boundary_gap":F
    .restart local v5    # "curGuideBottom":F
    .restart local v6    # "curGuideLeft":F
    .restart local v7    # "curGuideRight":F
    .restart local v8    # "curGuideTop":F
    .restart local v9    # "faceFrameRect":Landroid/graphics/RectF;
    .restart local v10    # "i":I
    .restart local v11    # "rectMargin":F
    .restart local v12    # "selfShotROIState":[I
    .restart local v13    # "selfShotROIStateResult":I
    :cond_6
    :try_start_2
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v14, v6, v14

    add-float/2addr v14, v4

    cmpg-float v14, v14, v2

    if-gtz v14, :cond_7

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v14, v7

    sub-float/2addr v14, v4

    cmpl-float v14, v14, v2

    if-ltz v14, :cond_7

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v14, v8, v14

    add-float/2addr v14, v4

    cmpg-float v14, v14, v3

    if-gtz v14, :cond_7

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v14, v5

    sub-float/2addr v14, v4

    cmpl-float v14, v14, v3

    if-ltz v14, :cond_7

    .line 345
    const/4 v14, 0x2

    aput v14, v12, v10

    goto :goto_2

    .line 346
    :cond_7
    iget v14, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v14, v4

    cmpl-float v14, v6, v14

    if-gtz v14, :cond_8

    add-float v14, v7, v4

    iget v15, v9, Landroid/graphics/RectF;->left:F

    cmpg-float v14, v14, v15

    if-ltz v14, :cond_8

    iget v14, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v14, v4

    cmpl-float v14, v8, v14

    if-gtz v14, :cond_8

    add-float v14, v5, v4

    iget v15, v9, Landroid/graphics/RectF;->top:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_9

    .line 348
    :cond_8
    const/4 v14, 0x0

    aput v14, v12, v10

    goto/16 :goto_2

    .line 349
    :cond_9
    iget v14, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v14, v4

    cmpg-float v14, v6, v14

    if-lez v14, :cond_a

    iget v14, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v14, v4

    cmpg-float v14, v7, v14

    if-lez v14, :cond_a

    iget v14, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v14, v4

    cmpg-float v14, v8, v14

    if-lez v14, :cond_a

    iget v14, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v14, v4

    cmpg-float v14, v5, v14

    if-gtz v14, :cond_b

    .line 351
    :cond_a
    const/4 v14, 0x1

    aput v14, v12, v10

    goto/16 :goto_2

    .line 353
    :cond_b
    const-string v14, "RearSelfie"

    const-string v15, "Boundary line check error"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 360
    .end local v2    # "FDCenX":F
    .end local v3    # "FDCenY":F
    .end local v4    # "boundary_gap":F
    .end local v5    # "curGuideBottom":F
    .end local v6    # "curGuideLeft":F
    .end local v7    # "curGuideRight":F
    .end local v8    # "curGuideTop":F
    .end local v11    # "rectMargin":F
    :cond_c
    move-object/from16 v0, p1

    array-length v14, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->checkShotROIState([II)I

    move-result v13

    .line 361
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->onRearSelfieGuideStateChanged(IZ)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->isCapturing()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 370
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 363
    .end local v9    # "faceFrameRect":Landroid/graphics/RectF;
    .end local v10    # "i":I
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->resetFaceDetectionRect()V

    .line 364
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->onRearSelfieGuideStateChanged(IZ)V

    .line 365
    const-string v14, "RearSelfie"

    const-string v15, "RearSelfieFDRectChanged resetFaceDetectionRect"

    invoke-static {v14, v15}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 373
    .restart local v9    # "faceFrameRect":Landroid/graphics/RectF;
    .restart local v10    # "i":I
    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public onImageStoringCompleted()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 378
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 379
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 386
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetFaceRect()V

    .line 389
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mRearSelfieGuideState:I

    .line 390
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->showSelfieGuideFrame()V

    .line 391
    return v3

    .line 382
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/haptic/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onInactivate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 396
    const-string v0, "RearSelfie"

    const-string v1, "onInActivate"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->clearSideQuickSetting()V

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mModeListMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 402
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mModeListMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopFaceDetection()V

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterEventListener;)V

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 410
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->hideSelfieGuideFrame()V

    .line 412
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->removeRearSelfieCaptureMessage()V

    .line 413
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->stopRearSelfieGuideStateSound()V

    .line 414
    invoke-direct {p0, v3, v3}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->onRearSelfieGuideStateChanged(IZ)V

    .line 415
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 2

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->stopRearSelfieGuideStateSound()V

    .line 435
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->removeRearSelfieCaptureMessage()V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideFaceRect(Z)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 1
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 443
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mModeListMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->resetFaceDetectionRect()V

    .line 446
    :cond_0
    return-void
.end method

.method public onShutter()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 2
    .param p1, "captureMethod"    # I

    .prologue
    .line 464
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideFaceRect(Z)V

    .line 466
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->removeRearSelfieCaptureMessage()V

    .line 467
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->stopRearSelfieGuideStateSound()V

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(I)V

    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 475
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 479
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x3

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 483
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v1, :cond_0

    .line 573
    :goto_0
    return v0

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    if-ne p1, v1, :cond_13

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v1

    if-nez v1, :cond_13

    .line 487
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v6

    .line 568
    goto :goto_0

    .line 489
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 492
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->setSelectedSelfieGuide(FF)V

    .line 497
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-eqz v0, :cond_2

    .line 498
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    goto :goto_1

    .line 500
    :cond_2
    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    goto :goto_1

    .line 505
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mMovePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v2, v0, v1

    .line 510
    .local v2, "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mMovePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v3, v0, v1

    .line 514
    .local v3, "deltaY":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_1

    .line 518
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    if-ne v0, v5, :cond_9

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v0

    add-float/2addr v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    .line 520
    const/4 v2, 0x0

    .line 522
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v0

    add-float/2addr v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 523
    const/4 v2, 0x0

    .line 525
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentTop()F

    move-result v0

    add-float/2addr v0, v3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    .line 526
    const/4 v3, 0x0

    .line 528
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentBottom()F

    move-result v0

    add-float/2addr v0, v3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_7

    .line 529
    const/4 v3, 0x0

    .line 532
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    .line 554
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_1

    .line 533
    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    if-ne v0, v6, :cond_8

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v0

    add-float/2addr v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_b

    .line 535
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-eq v6, v0, :cond_a

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-ne v5, v0, :cond_b

    .line 536
    :cond_a
    const/4 v2, 0x0

    .line 538
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v0

    add-float/2addr v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_d

    .line 539
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-eq v7, v0, :cond_c

    const/4 v0, 0x4

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-ne v0, v1, :cond_d

    .line 540
    :cond_c
    const/4 v2, 0x0

    .line 542
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentTop()F

    move-result v0

    add-float/2addr v0, v3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_f

    .line 543
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-eq v6, v0, :cond_e

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-ne v7, v0, :cond_f

    .line 544
    :cond_e
    const/4 v3, 0x0

    .line 546
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentBottom()F

    move-result v0

    add-float/2addr v0, v3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_11

    .line 547
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-eq v5, v0, :cond_10

    const/4 v0, 0x4

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    if-ne v0, v1, :cond_11

    .line 548
    :cond_10
    const/4 v3, 0x0

    .line 550
    :cond_11
    const-string v0, "RearSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SelfShot][BONG]onTouch ACTION_MOVE / RESIZING: mSelectedSelfieGuide : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", DeltaX : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", DeltaY : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->resizeSelfieGuide(IFFFF)V

    goto/16 :goto_2

    .line 558
    .end local v2    # "deltaX":F
    .end local v3    # "deltaY":F
    :pswitch_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    if-ne v1, v6, :cond_12

    .line 559
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->RES_ID_SELFIE_GUIDE_FRAME_IMAGE:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    .line 560
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideFrame:Lcom/samsung/android/glview/GLNinePatch;

    sget v4, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaX:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->SELFIE_GUIDE_HEIGHT:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mAmountDeltaY:F

    add-float/2addr v5, v7

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 563
    :cond_12
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelfieGuideMode:I

    .line 564
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mSelectedSelfieGuide:I

    goto/16 :goto_1

    .line 570
    :cond_13
    const-string v1, "RearSelfie"

    const-string v4, "[SelfShot]view is not self shot frame view"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    return v0
.end method
