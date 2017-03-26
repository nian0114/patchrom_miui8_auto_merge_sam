.class public Lcom/sec/android/app/camera/menu/Indicators;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "Indicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field private static final INDICATOR_GROUP_HEIGHT:I

.field private static final INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

.field private static final INDICATOR_GROUP_LANDSCAPE_POS_X:I

.field private static final INDICATOR_GROUP_LANDSCAPE_POS_Y:I

.field private static final INDICATOR_GROUP_WIDTH:I

.field private static final INDICATOR_LAYOUT_X_BY_EFFECT_EDIT:I

.field private static final INDICATOR_TEXT_COLOR:I

.field private static final INDICATOR_TEXT_STROKE_COLOR:I

.field private static final INDICATOR_TEXT_STROKE_WIDTH:I

.field private static final REMAINCOUNTER_INDICATOR_TEXT_SIZE:I

.field private static final REMAIN_COUNTER_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "Indicators"

.field private static final VIEW_MODE_INDICATOR_TIMEOUT:I = 0x7d0

.field private static final VISIBLE_REMAIN_COUNT:I = 0x12c

.field private static final VOICE_INDICATOR_TIMEOUT:I = 0x320


# instance fields
.field private mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;

.field private mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

.field private mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

.field private mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

.field private final mHideViewModeIndicator:Ljava/lang/Runnable;

.field private final mHideVoiceIndicator:Ljava/lang/Runnable;

.field private mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

.field private mIntervalIndicator:Lcom/sec/android/app/camera/widget/gl/IntervalIndicator;

.field private mRemainCount:I

.field private mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

.field private mStorageIndicator:Lcom/sec/android/app/camera/widget/gl/StorageIndicator;

.field private mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

.field private mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

.field private mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f090155

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_WIDTH:I

    .line 49
    const v0, 0x7f090151

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_HEIGHT:I

    .line 50
    const v0, 0x7f090153

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    .line 51
    const v0, 0x7f090154

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_POS_Y:I

    .line 52
    const v0, 0x7f090152

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    .line 53
    const v0, 0x7f090156

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/Indicators;->REMAIN_COUNTER_WIDTH:I

    .line 55
    const v0, 0x7f0c000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_TEXT_COLOR:I

    .line 56
    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_TEXT_STROKE_WIDTH:I

    .line 57
    const v0, 0x7f0c0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_TEXT_STROKE_COLOR:I

    .line 59
    const v0, 0x7f090320

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_LAYOUT_X_BY_EFFECT_EDIT:I

    .line 61
    const v0, 0x7f0a0005

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/Indicators;->REMAINCOUNTER_INDICATOR_TEXT_SIZE:I

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 1
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    .line 96
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    .line 76
    new-instance v0, Lcom/sec/android/app/camera/menu/Indicators$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/Indicators$1;-><init>(Lcom/sec/android/app/camera/menu/Indicators;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideVoiceIndicator:Ljava/lang/Runnable;

    .line 83
    new-instance v0, Lcom/sec/android/app/camera/menu/Indicators$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/Indicators$2;-><init>(Lcom/sec/android/app/camera/menu/Indicators;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideViewModeIndicator:Ljava/lang/Runnable;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    .line 98
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 101
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/Indicators;->init()V

    .line 102
    return-void
.end method

.method private init()V
    .locals 12

    .prologue
    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    .line 451
    .local v1, "glContext":Lcom/samsung/android/glview/GLContext;
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    sget v2, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setDirection(I)V

    .line 454
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->setClipping(Z)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->setVisibility(I)V

    .line 458
    const/4 v11, 0x0

    .line 460
    .local v11, "selectedCommandId":I
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const/16 v0, 0xbc4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v11

    .line 466
    :goto_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->getSize()I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setSubTitle(Ljava/lang/String;)V

    .line 466
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 463
    .end local v10    # "i":I
    :cond_0
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v11

    goto :goto_0

    .line 471
    .restart local v10    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setFlashIndicator(I)V

    .line 473
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->setClipping(Z)V

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    const/16 v0, 0xbc5

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v11

    .line 483
    :goto_2
    const/4 v10, 0x0

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->getSize()I

    move-result v0

    if-ge v10, v0, :cond_3

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setSubTitle(Ljava/lang/String;)V

    .line 483
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 480
    :cond_2
    const/16 v0, 0xaa

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v11

    goto :goto_2

    .line 488
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setFrontFlashIndicator(I)V

    .line 490
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->setClipping(Z)V

    .line 492
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setTimerIndicator(I)V

    .line 493
    const/4 v10, 0x0

    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->getSize()I

    move-result v0

    if-ge v10, v0, :cond_4

    .line 494
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 495
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800d8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    .line 493
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 498
    :cond_4
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/IntervalIndicator;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/IntervalIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIntervalIndicator:Lcom/sec/android/app/camera/widget/gl/IntervalIndicator;

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIntervalIndicator:Lcom/sec/android/app/camera/widget/gl/IntervalIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IntervalIndicator;->setClipping(Z)V

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setIntervalIndicator(I)V

    .line 501
    const/4 v10, 0x0

    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIntervalIndicator:Lcom/sec/android/app/camera/widget/gl/IntervalIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/IntervalIndicator;->getSize()I

    move-result v0

    if-ge v10, v0, :cond_5

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIntervalIndicator:Lcom/sec/android/app/camera/widget/gl/IntervalIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/IntervalIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIntervalIndicator:Lcom/sec/android/app/camera/widget/gl/IntervalIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/IntervalIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08009e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    .line 501
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 506
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getRemainCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    .line 507
    new-instance v0, Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/Indicators;->REMAIN_COUNTER_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/Indicators;->REMAIN_COUNTER_WIDTH:I

    int-to-float v5, v5

    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/menu/Indicators;->REMAINCOUNTER_INDICATOR_TEXT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    .line 509
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 510
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setClipping(Z)V

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 515
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mStorageIndicator:Lcom/sec/android/app/camera/widget/gl/StorageIndicator;

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mStorageIndicator:Lcom/sec/android/app/camera/widget/gl/StorageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->setClipping(Z)V

    .line 517
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setStorageIndicator(I)V

    .line 518
    const/16 v0, 0x16

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v11

    .line 519
    const/4 v10, 0x0

    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mStorageIndicator:Lcom/sec/android/app/camera/widget/gl/StorageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->getSize()I

    move-result v0

    if-ge v10, v0, :cond_6

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mStorageIndicator:Lcom/sec/android/app/camera/widget/gl/StorageIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mStorageIndicator:Lcom/sec/android/app/camera/widget/gl/StorageIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800d6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mStorageIndicator:Lcom/sec/android/app/camera/widget/gl/StorageIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setSubTitle(Ljava/lang/String;)V

    .line 519
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 525
    :cond_6
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->setClipping(Z)V

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getBatteryLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setBatteryLevel(I)V

    .line 528
    const/4 v10, 0x0

    :goto_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getSize()I

    move-result v0

    if-ge v10, v0, :cond_7

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 528
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 532
    :cond_7
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->setClipping(Z)V

    .line 534
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_VOICE_COMMAND:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 535
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    .line 539
    :goto_8
    const/4 v10, 0x0

    :goto_9
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->getSize()I

    move-result v0

    if-ge v10, v0, :cond_9

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800df

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    .line 539
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 537
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->setVisibility(I)V

    goto :goto_8

    .line 544
    :cond_9
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;->setClipping(Z)V

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAutoNightDetectionMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 549
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->showAutoNightDetectionIndicator(I)V

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isLowLightDetected()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setAutoNightDetectionIndicator(I)V

    .line 559
    :goto_a
    const/4 v10, 0x0

    :goto_b
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;->getSize()I

    move-result v0

    if-ge v10, v0, :cond_c

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 561
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    .line 559
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 553
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setAutoNightDetectionIndicator(I)V

    goto :goto_a

    .line 556
    :cond_b
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->showAutoNightDetectionIndicator(I)V

    goto :goto_a

    .line 564
    :cond_c
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/HDRIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/HDRIndicator;->setClipping(Z)V

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/HDRIndicator;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setHDRIndicator(I)V

    .line 568
    const/16 v0, 0xc

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v11

    .line 569
    const/4 v10, 0x0

    :goto_c
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/HDRIndicator;->getSize()I

    move-result v0

    if-ge v10, v0, :cond_d

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/HDRIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/HDRIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800b4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/HDRIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setSubTitle(Ljava/lang/String;)V

    .line 569
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 575
    :cond_d
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;->setClipping(Z)V

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;->setVisibility(I)V

    .line 578
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v0, :cond_e

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setViewModeIndicator(I)V

    .line 583
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mStorageIndicator:Lcom/sec/android/app/camera/widget/gl/StorageIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIntervalIndicator:Lcom/sec/android/app/camera/widget/gl/IntervalIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 595
    iget v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setRemainCount(I)V

    .line 597
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 600
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(I)V

    .line 603
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 605
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setCoverCamera(Z)V

    .line 607
    :cond_10
    return-void
.end method

.method private setCoverCamera(Z)V
    .locals 1
    .param p1, "coverCamera"    # Z

    .prologue
    .line 610
    if-eqz p1, :cond_0

    .line 611
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(I)V

    .line 615
    :goto_0
    return-void

    .line 613
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntervalIndicator(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 618
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v0

    if-nez v0, :cond_1

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIntervalIndicator:Lcom/sec/android/app/camera/widget/gl/IntervalIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 623
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIntervalIndicator:Lcom/sec/android/app/camera/widget/gl/IntervalIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/IntervalIndicator;->setIntervalStatus(I)V

    .line 624
    return-void

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIntervalIndicator:Lcom/sec/android/app/camera/widget/gl/IntervalIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method private setTimerIndicator(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 627
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSideQuickSettingState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 632
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->setTimerStatus(I)V

    .line 633
    return-void

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method private showAutoNightDetectionIndicator(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 636
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;

    if-nez v0, :cond_0

    .line 640
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method private showVoiceInputIndicator(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 643
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    if-nez v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideVoiceIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideViewModeIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterPhaseAFListener()V

    .line 112
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 113
    return-void
.end method

.method public onCameraSettingChanged(II)V
    .locals 10
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 117
    sparse-switch p1, :sswitch_data_0

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 120
    :sswitch_0
    if-eq p2, v5, :cond_1

    .line 121
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/Indicators;->setFlashIndicator(I)V

    .line 123
    :cond_1
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    .line 124
    .local v2, "selectedCommandId":I
    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    .line 125
    .local v1, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLView;->setSubTitle(Ljava/lang/String;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    .end local v0    # "i":I
    .end local v1    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v2    # "selectedCommandId":I
    :sswitch_1
    if-eq p2, v5, :cond_2

    .line 132
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/Indicators;->setFrontFlashIndicator(I)V

    .line 134
    :cond_2
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    .line 135
    .restart local v2    # "selectedCommandId":I
    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    .line 136
    .restart local v1    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 137
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLView;->setSubTitle(Ljava/lang/String;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 142
    .end local v0    # "i":I
    .end local v1    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v2    # "selectedCommandId":I
    :sswitch_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/Indicators;->setTimerIndicator(I)V

    .line 143
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    .line 144
    .restart local v2    # "selectedCommandId":I
    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    .line 145
    .restart local v1    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLView;->setSubTitle(Ljava/lang/String;)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 150
    .end local v0    # "i":I
    .end local v1    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v2    # "selectedCommandId":I
    :sswitch_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/Indicators;->setIntervalIndicator(I)V

    goto/16 :goto_0

    .line 153
    :sswitch_4
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/menu/Indicators;->setStorageIndicator(I)V

    .line 154
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    .line 155
    .restart local v2    # "selectedCommandId":I
    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    .line 156
    .restart local v1    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mStorageIndicator:Lcom/sec/android/app/camera/widget/gl/StorageIndicator;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mStorageIndicator:Lcom/sec/android/app/camera/widget/gl/StorageIndicator;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLView;->setSubTitle(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 161
    .end local v0    # "i":I
    .end local v1    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v2    # "selectedCommandId":I
    :sswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 162
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    goto/16 :goto_0

    .line 164
    :cond_3
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/menu/Indicators;->showVoiceInputIndicator(I)V

    goto/16 :goto_0

    .line 168
    :sswitch_6
    if-ne p2, v5, :cond_5

    .line 169
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/menu/Indicators;->showAutoNightDetectionIndicator(I)V

    .line 170
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isLowLightDetected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 171
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/menu/Indicators;->setAutoNightDetectionIndicator(I)V

    goto/16 :goto_0

    .line 173
    :cond_4
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/Indicators;->setAutoNightDetectionIndicator(I)V

    goto/16 :goto_0

    .line 176
    :cond_5
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/menu/Indicators;->showAutoNightDetectionIndicator(I)V

    goto/16 :goto_0

    .line 180
    :sswitch_7
    if-eq p2, v5, :cond_6

    .line 181
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/Indicators;->setHDRIndicator(I)V

    .line 183
    :cond_6
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    .line 184
    .restart local v2    # "selectedCommandId":I
    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    .line 185
    .restart local v1    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/HDRIndicator;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/widget/gl/HDRIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLView;->setSubTitle(Ljava/lang/String;)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 190
    .end local v0    # "i":I
    .end local v1    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v2    # "selectedCommandId":I
    :sswitch_8
    if-ne p2, v5, :cond_7

    .line 191
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/Indicators;->setCoverCamera(Z)V

    goto/16 :goto_0

    .line 193
    :cond_7
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/menu/Indicators;->setCoverCamera(Z)V

    goto/16 :goto_0

    .line 197
    :sswitch_9
    if-ne p2, v5, :cond_b

    .line 198
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v3

    if-ne v3, v7, :cond_8

    .line 199
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v3, v4, v8}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 201
    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v3

    if-ne v3, v7, :cond_9

    .line 202
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v3, v4, v8}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 204
    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v3

    if-ne v3, v7, :cond_a

    .line 205
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v3, v4, v8}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 207
    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v3, v4, v8}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto/16 :goto_0

    .line 208
    :cond_b
    if-nez p2, :cond_0

    .line 209
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v3

    if-ne v3, v7, :cond_c

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    if-nez v3, :cond_c

    .line 210
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 212
    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v3

    if-ne v3, v7, :cond_d

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    if-ne v3, v5, :cond_d

    .line 213
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 215
    :cond_d
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v3

    if-eqz v3, :cond_e

    .line 216
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 218
    :cond_e
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 219
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto/16 :goto_0

    .line 224
    :sswitch_a
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v3

    if-eqz v3, :cond_f

    .line 225
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    sget v4, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_LAYOUT_X_BY_EFFECT_EDIT:I

    int-to-float v4, v4

    invoke-virtual {v3, v4, v9}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->moveBaseLayoutAbsolute(FF)V

    goto/16 :goto_0

    .line 227
    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    invoke-virtual {v3, v9, v9}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->moveBaseLayoutAbsolute(FF)V

    goto/16 :goto_0

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x6 -> :sswitch_2
        0x8 -> :sswitch_a
        0xc -> :sswitch_7
        0x16 -> :sswitch_4
        0x47 -> :sswitch_5
        0x57 -> :sswitch_6
        0x6a -> :sswitch_1
        0x6c -> :sswitch_0
        0x79 -> :sswitch_9
        0x7f -> :sswitch_3
        0x80 -> :sswitch_2
        0xaa -> :sswitch_1
        0x137 -> :sswitch_8
    .end sparse-switch
.end method

.method public refreshAllIndicator()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setTimerIndicator(I)V

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setIntervalIndicator(I)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setStorageIndicator(I)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setHDRIndicator(I)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setFlashIndicator(I)V

    .line 246
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_VOICE_COMMAND:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 247
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    .line 252
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAutoNightDetectionMode()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 253
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/Indicators;->showAutoNightDetectionIndicator(I)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isLowLightDetected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 255
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/Indicators;->setAutoNightDetectionIndicator(I)V

    .line 262
    :goto_2
    iget v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setRemainCount(I)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(I)V

    .line 267
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setViewModeIndicator(I)V

    .line 270
    :cond_2
    return-void

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setFrontFlashIndicator(I)V

    goto :goto_0

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->setVisibility(I)V

    goto :goto_1

    .line 257
    :cond_5
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/Indicators;->setAutoNightDetectionIndicator(I)V

    goto :goto_2

    .line 260
    :cond_6
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/Indicators;->showAutoNightDetectionIndicator(I)V

    goto :goto_2
.end method

.method public setAutoNightDetectionIndicator(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;

    if-nez v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 276
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0

    .line 278
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;->setAutoNightDetectionIndicatorStatus(I)V

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080059

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBatteryLevel(I)V
    .locals 7
    .param p1, "level"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const v3, 0x7f0800f5

    const/4 v2, 0x0

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBatteryCharging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    if-ltz p1, :cond_2

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->setLevel(I)V

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_2
    const/4 v0, 0x5

    if-lt p1, v0, :cond_3

    const/16 v0, 0x10

    if-ge p1, v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->setLevel(I)V

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_3
    const/16 v0, 0x10

    if-lt p1, v0, :cond_4

    const/16 v0, 0x1d

    if-ge p1, v0, :cond_4

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->setLevel(I)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_4
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto/16 :goto_0
.end method

.method public setFlashIndicator(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    .line 316
    if-nez p1, :cond_1

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 334
    :cond_0
    return-void

    .line 318
    :cond_1
    if-ne p1, v4, :cond_5

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 328
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->setFlashStatus(I)V

    goto :goto_0

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSideQuickSettingState()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_1

    .line 325
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_1

    .line 330
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method public setFrontFlashIndicator(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 338
    if-nez p1, :cond_1

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 356
    :cond_0
    return-void

    .line 340
    :cond_1
    if-ne p1, v4, :cond_5

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 350
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->setFlashStatus(I)V

    goto :goto_0

    .line 343
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSideQuickSettingState()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_1

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_1

    .line 352
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mFrontFlashIndicator:Lcom/sec/android/app/camera/widget/gl/FlashIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method public setHDRIndicator(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    if-eqz v0, :cond_0

    .line 360
    if-nez p1, :cond_1

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    if-ne p1, v4, :cond_5

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 372
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/HDRIndicator;->setHDR(I)V

    goto :goto_0

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSideQuickSettingState()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_1

    .line 369
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_1

    .line 374
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHDRIndicator:Lcom/sec/android/app/camera/widget/gl/HDRIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method public setRemainCount(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 380
    iput p1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    .line 381
    iget v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 387
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method public setStorageIndicator(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mStorageIndicator:Lcom/sec/android/app/camera/widget/gl/StorageIndicator;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mStorageIndicator:Lcom/sec/android/app/camera/widget/gl/StorageIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->setStorage(I)V

    .line 392
    if-nez p1, :cond_2

    .line 393
    iget v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_1

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mStorageIndicator:Lcom/sec/android/app/camera/widget/gl/StorageIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mStorageIndicator:Lcom/sec/android/app/camera/widget/gl/StorageIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mStorageIndicator:Lcom/sec/android/app/camera/widget/gl/StorageIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method public setViewModeIndicator(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    if-eqz v0, :cond_0

    .line 406
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;->setViewMode(I)V

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideViewModeIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideViewModeIndicator:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method public setVoiceStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 420
    const-string v0, "Indicators"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    if-nez v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideVoiceIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideVoiceIndicator:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 433
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->setVoiceStatus(I)V

    goto :goto_0

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_1
.end method

.method public showIndicators()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    if-eqz v0, :cond_0

    .line 440
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_VOICE_COMMAND:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 441
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->setVisibility(I)V

    goto :goto_0
.end method
