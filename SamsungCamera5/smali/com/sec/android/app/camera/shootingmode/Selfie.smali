.class public Lcom/sec/android/app/camera/shootingmode/Selfie;
.super Ljava/lang/Object;
.source "Selfie.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HWFaceDetectionListener;
.implements Lcom/sec/android/seccamera/SecCamera$RelightEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;


# static fields
.field private static final BEAUTY_MENU_BUTTON_POS_X:I

.field private static final BEAUTY_MENU_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

.field private static final BEAUTY_MENU_BUTTON_POS_Y:I

.field private static final BEAUTY_MENU_BUTTON_WIDTH:I

.field private static final LIVE_BEAUTY_FACE_OFF_IMAGE_POS_X:F

.field private static final LIVE_BEAUTY_FACE_OFF_IMAGE_POS_Y:F

.field private static final SPOTLIGHT_MAX_LEVEL:I = 0x8

.field private static final SPOTLIGHT_MENU_GROUP_WIDTH:I

.field private static final SPOTLIGHT_MENU_IMAGE_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "Selfie"


# instance fields
.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

.field private mBeautySubMenu:Lcom/sec/android/app/camera/menu/BeautyListMenu;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEffectListMenu:Lcom/sec/android/app/camera/menu/EffectListMenu;

.field private mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mHWPreviewHeight:F

.field private mHWPreviewWidth:F

.field private mIsActivatedSpotLightSlider:Z

.field private mIsBurstCapturing:Z

.field private mIsEffectEngineRunning:Z

.field private mIsFace:Z

.field private mIsFaceRelight:Z

.field private mIsScreenFlashStarted:Z

.field private mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mMotionPhotoUnavailableToast:Landroid/widget/Toast;

.field private mNeedFlip:Z

.field private mPreviewSurfaceHeight:F

.field private mPreviewSurfaceRect:Landroid/graphics/Rect;

.field private mPreviewSurfaceWidth:F

.field private mSpotLightPositionX:F

.field private mSpotLightPositionY:F

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mTouch_Convert_ratio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    const v0, 0x7f0901fa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->LIVE_BEAUTY_FACE_OFF_IMAGE_POS_X:F

    .line 74
    const v0, 0x7f0901fb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->LIVE_BEAUTY_FACE_OFF_IMAGE_POS_Y:F

    .line 76
    const v0, 0x7f0902b0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    .line 77
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f09001f

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_X:I

    .line 79
    const v0, 0x7f090020

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

    .line 80
    const v0, 0x7f0902af

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_Y:I

    .line 81
    const v0, 0x7f09034c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->SPOTLIGHT_MENU_GROUP_WIDTH:I

    .line 82
    const v0, 0x7f09034d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->SPOTLIGHT_MENU_IMAGE_WIDTH:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 3
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    .line 85
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 86
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 87
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 88
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 89
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 90
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 91
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .line 92
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEffectListMenu:Lcom/sec/android/app/camera/menu/EffectListMenu;

    .line 93
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautySubMenu:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .line 97
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mPreviewSurfaceRect:Landroid/graphics/Rect;

    .line 99
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    .line 100
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mNeedFlip:Z

    .line 101
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFace:Z

    .line 102
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    .line 103
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z

    .line 104
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsEffectEngineRunning:Z

    .line 105
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionX:F

    .line 106
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionY:F

    .line 107
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsScreenFlashStarted:Z

    .line 109
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mTouch_Convert_ratio:F

    .line 110
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mPreviewSurfaceWidth:F

    .line 111
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mPreviewSurfaceHeight:F

    .line 112
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mHWPreviewWidth:F

    .line 113
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mHWPreviewHeight:F

    .line 115
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Selfie$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Selfie$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 141
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/Selfie;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setHRMsensor(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/MenuManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/samsung/android/glview/GLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/shootingmode/Selfie;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/Selfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    return-void
.end method

.method private hideScreenFlash()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideScreenFlashAnimation()V

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 908
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 909
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 910
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 913
    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsScreenFlashStarted:Z

    .line 914
    return-void
.end method

.method private setBeautyLevel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 918
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRetouchLevelSync(I)V

    .line 919
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SLIMFACE:Z

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSlimFaceLevelSync(I)V

    .line 922
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSpotlightLevelSync(I)V

    .line 924
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v0

    if-lez v0, :cond_5

    .line 925
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRelight(Z)V

    .line 926
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    .line 927
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightPostion()V

    .line 933
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_EYEENLARGE:Z

    if-eqz v0, :cond_2

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEyeEnlargeLevelSync(I)V

    .line 936
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SHAPECORRECTION:Z

    if-eqz v0, :cond_4

    .line 937
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v0

    if-lez v0, :cond_4

    .line 938
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceDistortionCompensation(Z)V

    .line 942
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    .line 943
    return-void

    .line 929
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRelight(Z)V

    .line 930
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    goto :goto_0
.end method

.method private setHRMsensor(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 946
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 948
    if-eqz p1, :cond_1

    .line 949
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    goto :goto_0
.end method

.method private setShapeEffectEngine(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 958
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRelight(Z)V

    .line 959
    if-eqz p1, :cond_1

    .line 960
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsEffectEngineRunning:Z

    if-nez v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleShapeCorrectionModeChanged(I)V

    .line 962
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsEffectEngineRunning:Z

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsEffectEngineRunning:Z

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleShapeCorrectionModeChanged(I)V

    .line 967
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsEffectEngineRunning:Z

    goto :goto_0
.end method

.method private showScreenFlash()V
    .locals 2

    .prologue
    .line 974
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsScreenFlashStarted:Z

    .line 975
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 976
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 978
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startScreenFlashAnimation()V

    .line 981
    :cond_0
    return-void
.end method

.method private turnOffSpotLightEffect()Z
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string v1, "SP=0,LE=0,TO=0,RI=0,BO=0,IA=0,IB=0,IC=0,ID=0,IE=0,IF=0,OG=0,IH=0,II=0,IJ=0,IK=0,IL=0,IM=0,IN=0"

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    .line 985
    const/4 v0, 0x0

    return v0
.end method

.method private updateSpotLightDragArea()V
    .locals 3

    .prologue
    .line 989
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mPreviewSurfaceRect:Landroid/graphics/Rect;

    .line 991
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mHWPreviewWidth:F

    .line 992
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mHWPreviewHeight:F

    .line 994
    const-string v0, "Selfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(X,Y) = ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mHWPreviewWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mHWPreviewHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mPreviewSurfaceRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mPreviewSurfaceWidth:F

    .line 997
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mPreviewSurfaceRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mPreviewSurfaceHeight:F

    .line 999
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mHWPreviewWidth:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mPreviewSurfaceWidth:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mTouch_Convert_ratio:F

    .line 1000
    return-void
.end method

.method private updateSpotLightPostion()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1004
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightPosition()I

    move-result v0

    .line 1006
    .local v0, "positionType":I
    packed-switch v0, :pswitch_data_0

    .line 1021
    :goto_0
    const-string v1, "Selfie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send SpotLight Position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ,  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionY:F

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setSpotlightPosition(II)V

    .line 1023
    return-void

    .line 1008
    :pswitch_0
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionX:F

    .line 1009
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionY:F

    goto :goto_0

    .line 1012
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionX:F

    .line 1013
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionY:F

    goto :goto_0

    .line 1016
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionX:F

    .line 1017
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionY:F

    goto :goto_0

    .line 1006
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSpotLightVI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1026
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    .line 1028
    .local v0, "lastSpotLightState":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-eqz v1, :cond_2

    .line 1029
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRelight(Z)V

    .line 1030
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    .line 1031
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFace:Z

    .line 1052
    :cond_1
    :goto_0
    return-void

    .line 1035
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1039
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v1

    if-lez v1, :cond_4

    .line 1040
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    .line 1045
    :goto_1
    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    if-eqz v1, :cond_3

    .line 1046
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setShapeEffectEngine(Z)V

    .line 1048
    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    if-nez v1, :cond_1

    .line 1049
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setShapeEffectEngine(Z)V

    goto :goto_0

    .line 1042
    :cond_4
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    .line 1043
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->turnOffSpotLightEffect()Z

    goto :goto_1
.end method


# virtual methods
.method public getMaxFileSizeOfImage()J
    .locals 2

    .prologue
    .line 146
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    return v0
.end method

.method public isZoomAvailable()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 9
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v1, 0x6

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 161
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "camera.action.COVER_ATTACHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v2, "camera.action.COVER_DETACHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v2, v5, v0}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 168
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 169
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v2, :cond_6

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v3, [I

    const/16 v5, 0xbc5

    aput v5, v2, v4

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 220
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 222
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v1

    if-ne v1, v3, :cond_21

    .line 235
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 240
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v1

    if-nez v1, :cond_22

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableLightConditionDetect(Z)V

    .line 246
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v1

    if-ne v1, v3, :cond_23

    .line 247
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 252
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v1

    if-ne v1, v3, :cond_24

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMotionPhoto(Z)V

    .line 258
    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v1

    if-nez v1, :cond_25

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 262
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyLevel()V

    .line 271
    :goto_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v1

    if-ne v1, v3, :cond_26

    move v1, v3

    :goto_6
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mNeedFlip:Z

    .line 273
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    .line 275
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setHWFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HWFaceDetectionListener;)V

    .line 276
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    .line 277
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 279
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v1, :cond_3

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;)V

    .line 283
    :cond_3
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_27

    .line 284
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x7f

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .line 285
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 291
    :goto_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x8

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 292
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x2a

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 293
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v1, :cond_4

    .line 294
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setRelightEventListener(Lcom/sec/android/seccamera/SecCamera$RelightEventListener;)V

    .line 295
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x6f

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 296
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x77

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 297
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v7, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 298
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x81

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 299
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightDragArea()V

    .line 300
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    .line 303
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x81

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautySubMenu:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .line 304
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautySubMenu:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 306
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    if-nez v1, :cond_5

    .line 307
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 310
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 312
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->sendOrientationInfotoHAL()V

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v2, 0x7f080183

    invoke-static {v1, v2, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMotionPhotoUnavailableToast:Landroid/widget/Toast;

    .line 315
    return-void

    .line 172
    :cond_6
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v2, :cond_7

    .line 173
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v8, [I

    fill-array-data v2, :array_0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    .line 175
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v5, v3, [I

    aput v1, v5, v4

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    .line 178
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 179
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v2, :cond_a

    .line 180
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/16 v6, 0xc

    aput v6, v5, v4

    sget-boolean v6, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v6, :cond_9

    const/16 v1, 0xab

    :cond_9
    aput v1, v5, v3

    const/16 v1, 0xaa

    aput v1, v5, v8

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 184
    :goto_8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    goto/16 :goto_0

    .line 182
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v5, v8, [I

    sget-boolean v6, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v6, :cond_b

    const/16 v1, 0xab

    :cond_b
    aput v1, v5, v4

    const/16 v1, 0xaa

    aput v1, v5, v3

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto :goto_8

    .line 185
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v2

    if-eqz v2, :cond_d

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v2, :cond_d

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v3, [I

    const/16 v5, 0xbc5

    aput v5, v2, v4

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    .line 187
    :cond_d
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 188
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v2, :cond_11

    .line 189
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v2, :cond_f

    .line 190
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v5, v7, [I

    const/16 v6, 0xc

    aput v6, v5, v4

    sget-boolean v6, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v6, :cond_e

    const/16 v1, 0xab

    :cond_e
    aput v1, v5, v3

    const/16 v1, 0xaa

    aput v1, v5, v8

    const/4 v1, 0x3

    aput v7, v5, v1

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    .line 192
    :cond_f
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v5, 0x3

    new-array v5, v5, [I

    sget-boolean v6, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v6, :cond_10

    const/16 v1, 0xab

    :cond_10
    aput v1, v5, v4

    const/16 v1, 0xaa

    aput v1, v5, v3

    aput v7, v5, v8

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    .line 195
    :cond_11
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v2, :cond_13

    .line 196
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/16 v6, 0xc

    aput v6, v5, v4

    sget-boolean v6, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v6, :cond_12

    const/16 v1, 0xab

    :cond_12
    aput v1, v5, v3

    aput v7, v5, v8

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    .line 198
    :cond_13
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v5, v8, [I

    sget-boolean v6, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v6, :cond_14

    const/16 v1, 0xab

    :cond_14
    aput v1, v5, v4

    aput v7, v5, v3

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    .line 202
    :cond_15
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v2, :cond_1b

    .line 203
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v2, :cond_18

    .line 204
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x5

    new-array v6, v2, [I

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v2, :cond_17

    const/16 v2, 0x7f

    :goto_9
    aput v2, v6, v4

    const/16 v2, 0xc

    aput v2, v6, v3

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v2, :cond_16

    const/16 v1, 0xab

    :cond_16
    aput v1, v6, v8

    const/4 v1, 0x3

    const/16 v2, 0xaa

    aput v2, v6, v1

    aput v7, v6, v7

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    :cond_17
    const/16 v2, 0x8

    goto :goto_9

    .line 207
    :cond_18
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v6, v7, [I

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v2, :cond_1a

    const/16 v2, 0x7f

    :goto_a
    aput v2, v6, v4

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v2, :cond_19

    const/16 v1, 0xab

    :cond_19
    aput v1, v6, v3

    const/16 v1, 0xaa

    aput v1, v6, v8

    const/4 v1, 0x3

    aput v7, v6, v1

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    :cond_1a
    const/16 v2, 0x8

    goto :goto_a

    .line 211
    :cond_1b
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v2, :cond_1e

    .line 212
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v6, v7, [I

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v2, :cond_1d

    const/16 v2, 0x7f

    :goto_b
    aput v2, v6, v4

    const/16 v2, 0xc

    aput v2, v6, v3

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v2, :cond_1c

    const/16 v1, 0xab

    :cond_1c
    aput v1, v6, v8

    const/4 v1, 0x3

    aput v7, v6, v1

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    :cond_1d
    const/16 v2, 0x8

    goto :goto_b

    .line 215
    :cond_1e
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x3

    new-array v6, v2, [I

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v2, :cond_20

    const/16 v2, 0x7f

    :goto_c
    aput v2, v6, v4

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v2, :cond_1f

    const/16 v1, 0xab

    :cond_1f
    aput v1, v6, v3

    aput v7, v6, v8

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_0

    :cond_20
    const/16 v2, 0x8

    goto :goto_c

    .line 237
    :cond_21
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto/16 :goto_1

    .line 243
    :cond_22
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableLightConditionDetect(Z)V

    goto/16 :goto_2

    .line 249
    :cond_23
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto/16 :goto_3

    .line 255
    :cond_24
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMotionPhoto(Z)V

    goto/16 :goto_4

    .line 264
    :cond_25
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultBeautyLevel()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRetouchLevelSync(I)V

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setSlimFaceLevelSync(I)V

    .line 266
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setSpotlightLevelSync(I)V

    .line 267
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setEyeEnlargeLevelSync(I)V

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    goto/16 :goto_5

    :cond_26
    move v1, v4

    .line 271
    goto/16 :goto_6

    .line 287
    :cond_27
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/EffectListMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEffectListMenu:Lcom/sec/android/app/camera/menu/EffectListMenu;

    .line 288
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEffectListMenu:Lcom/sec/android/app/camera/menu/EffectListMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto/16 :goto_7

    .line 173
    :array_0
    .array-data 4
        0xc
        0x6
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public onBurstCaptureCompleted()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 324
    const-string v0, "Selfie"

    const-string v1, "onBurstCaptureCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideCaptureProgressText()V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    .line 329
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 332
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyLevel()V

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x76

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMotionPhoto(Z)V

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFrontSensorMirror(I)V

    .line 343
    return-void
.end method

.method public onBurstCaptureProgressed(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 347
    const-string v0, "Selfie"

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

    .line 348
    if-nez p1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showCaptureProgressText()V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    .line 352
    return-void
.end method

.method public onBurstCaptureStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 356
    const-string v0, "Selfie"

    const-string v1, "onBurstCaptureStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x76

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 361
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 364
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMotionPhoto(Z)V

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string v1, "FA=0,LE=0,TO=0,RI=0,BO=0"

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string v1, "SP=0,LE=0,TO=0,RI=0,BO=0,IA=0,IB=0,IC=0,ID=0,IE=0,IF=0,OG=0,IH=0,II=0,IJ=0,IK=0,IL=0,IM=0,IN=0"

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public onBurstCaptureStopped(I)Z
    .locals 1
    .param p1, "lastImageNum"    # I

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public onBurstCaptureThumbnailTaken(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mNeedFlip:Z

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 382
    return-void
.end method

.method public onBurstStringProgressed([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 386
    return-void
.end method

.method public onCameraSettingChanged(II)V
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 390
    const-string v0, "Selfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraSettingsChanged menuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " modeid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    sparse-switch p1, :sswitch_data_0

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 394
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    const-string v0, "Selfie"

    const-string v1, "onCameraSettingsChanged set BeautyMenubutton dim"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultBeautyLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRetouchLevelSync(I)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setSlimFaceLevelSync(I)V

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setSpotlightLevelSync(I)V

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setEyeEnlargeLevelSync(I)V

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceDistortionCompensation(Z)V

    .line 409
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    goto :goto_0

    .line 405
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyLevel()V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    goto :goto_1

    .line 413
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    goto :goto_0

    .line 416
    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightDragArea()V

    .line 417
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightPostion()V

    goto :goto_0

    .line 420
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p2}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    goto :goto_0

    .line 423
    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_0

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_0

    .line 430
    :sswitch_5
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 431
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z

    .line 435
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    goto/16 :goto_0

    .line 433
    :cond_3
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z

    goto :goto_2

    .line 438
    :sswitch_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightPostion()V

    goto/16 :goto_0

    .line 441
    :sswitch_7
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMotionPhotoUnavailableToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 392
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x8 -> :sswitch_0
        0x2a -> :sswitch_7
        0x6f -> :sswitch_1
        0x77 -> :sswitch_6
        0x7d -> :sswitch_3
        0x81 -> :sswitch_5
        0xaa -> :sswitch_4
    .end sparse-switch
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 6
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    const/16 v5, 0x5dc0

    const/16 v4, 0x2710

    const/16 v3, 0x1f40

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 453
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p1, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 455
    const-string v0, "effect_hint"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 467
    :goto_0
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeValueForISPset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 468
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v0

    if-lez v0, :cond_2

    .line 457
    :cond_1
    invoke-virtual {p1, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 458
    const-string v0, "effect_hint"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAutoNightDetectionMode()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 460
    const/16 v0, 0x7530

    invoke-virtual {p1, v3, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 461
    const-string v0, "effect_hint"

    invoke-virtual {p1, v0, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 463
    :cond_3
    const-string v0, "effect_hint"

    invoke-virtual {p1, v0, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 464
    const/16 v0, 0x7530

    invoke-virtual {p1, v3, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

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
    .line 472
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 473
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 475
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/Selfie;->LIVE_BEAUTY_FACE_OFF_IMAGE_POS_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/Selfie;->LIVE_BEAUTY_FACE_OFF_IMAGE_POS_Y:F

    const v4, 0x7f020020

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p3, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-nez v0, :cond_3

    .line 488
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_Y:I

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v5, v1

    const v6, 0x7f020003

    const v7, 0x7f020004

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    .line 494
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f08006e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 496
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Selfie$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Selfie$2;-><init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 517
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 519
    :cond_2
    return-void

    .line 491
    :cond_3
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_Y:I

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v5, v1

    const v6, 0x7f020003

    const v7, 0x7f020004

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    goto :goto_0
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 524
    const-string v0, "sef_file_type"

    const/16 v1, 0xa30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 528
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 526
    :cond_0
    const-string v0, "sef_file_type"

    const/16 v1, 0x910

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public onFaceDetectionHW([Lcom/sec/android/seccamera/SecCamera$Face;)V
    .locals 7
    .param p1, "faces"    # [Lcom/sec/android/seccamera/SecCamera$Face;

    .prologue
    const/4 v5, 0x1

    .line 533
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-nez v4, :cond_2

    .line 534
    if-eqz p1, :cond_0

    array-length v4, p1

    if-ge v4, v5, :cond_3

    .line 535
    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFace:Z

    if-eqz v4, :cond_1

    .line 536
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFace:Z

    .line 537
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    .line 539
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string v5, "FA=0,LE=0,TO=0,RI=0,BO=0"

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    .line 561
    :cond_2
    :goto_0
    return-void

    .line 541
    :cond_3
    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFace:Z

    if-nez v4, :cond_4

    .line 542
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFace:Z

    .line 543
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    .line 545
    :cond_4
    array-length v4, p1

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 546
    const/4 v1, 0x0

    .line 547
    .local v1, "face_area":I
    const/4 v2, 0x0

    .line 549
    .local v2, "face_index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_6

    .line 550
    aget-object v4, p1, v3

    iget-object v4, v4, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    aget-object v5, p1, v3

    iget-object v5, v5, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int v0, v4, v5

    .line 551
    .local v0, "area":I
    if-le v0, v1, :cond_5

    .line 552
    move v1, v0

    .line 553
    move v2, v3

    .line 549
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 556
    .end local v0    # "area":I
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FA="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",LE="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v2

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",TO="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v2

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",RI="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v2

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",BO="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v2

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onHRMShutterDetected()V
    .locals 2

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-eqz v0, :cond_0

    .line 566
    const-string v0, "Selfie"

    const-string v1, "onHRMShutterDetected returned - BurstCapturing"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :goto_0
    return-void

    .line 569
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->onShutterKeyReleased(I)Z

    goto :goto_0
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 4
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEffectListMenu:Lcom/sec/android/app/camera/menu/EffectListMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 575
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopThumbnailPreviewCallback()V

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v1, 0x37

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShootingMode(I)V

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-nez v0, :cond_2

    .line 580
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyLevel()V

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 589
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 594
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMotionPhoto(Z)V

    .line 597
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFrontSensorMirror(I)V

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-nez v0, :cond_7

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableLightConditionDetect(Z)V

    .line 610
    :cond_4
    :goto_2
    return-void

    .line 586
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_0

    .line 592
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto :goto_1

    .line 601
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableLightConditionDetect(Z)V

    goto :goto_2

    .line 603
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautySubMenu:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 606
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z

    .line 607
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    goto :goto_2
.end method

.method public onImageStoringCompleted()Z
    .locals 5

    .prologue
    .line 614
    const-string v0, "Front_Cam_Selfie_Info"

    .line 615
    .local v0, "keyName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0x910

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/android/secvision/sef/SEF;->addSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I

    .line 617
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 618
    const/4 v1, 0x0

    return v1
.end method

.method public onInactivate()V
    .locals 7

    .prologue
    const/16 v6, 0x1a

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->clearSideQuickSetting()V

    .line 625
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 629
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelBurstCapture()V

    .line 631
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v6, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 638
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 641
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    if-eqz v0, :cond_5

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 643
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    .line 647
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    .line 652
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableLightConditionDetect(Z)V

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 654
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 656
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMotionPhoto(Z)V

    .line 658
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setHWFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HWFaceDetectionListener;)V

    .line 659
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 661
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v0, :cond_8

    .line 662
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsScreenFlashStarted:Z

    if-eqz v0, :cond_7

    .line 663
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideScreenFlash()V

    .line 665
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;)V

    .line 668
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 669
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x2a

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 671
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v0, :cond_9

    .line 672
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setRelightEventListener(Lcom/sec/android/seccamera/SecCamera$RelightEventListener;)V

    .line 673
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x6f

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x77

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 675
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 676
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x81

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 679
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 680
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceDistortionCompensation(Z)V

    .line 683
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v0

    if-lez v0, :cond_b

    .line 684
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceDistortionCompensation(Z)V

    .line 685
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRelight(Z)V

    .line 688
    :cond_b
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_c

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 693
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x81

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 694
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautySubMenu:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 695
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautySubMenu:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .line 697
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 700
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMotionPhotoUnavailableToast:Landroid/widget/Toast;

    .line 701
    return-void

    .line 691
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEffectListMenu:Lcom/sec/android/app/camera/menu/EffectListMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/EffectListMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 705
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 710
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 720
    :cond_0
    :goto_0
    return v0

    .line 712
    :pswitch_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-nez v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 716
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    :cond_1
    move v0, v1

    .line 718
    goto :goto_0

    .line 710
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuSelected(II)Z
    .locals 2
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 725
    const-string v0, "Selfie"

    const-string v1, "onMenuSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
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
    .line 732
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v0, "Z021"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v0, :cond_0

    .line 734
    const-string v0, "Z112"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    const-string v0, "Z113"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    const-string v0, "Z114"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_0
    const-string v0, "Z029"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    return-void
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 744
    const/4 v0, 0x0

    return v0
.end method

.method public onRelightTransformDataCb([Lcom/sec/android/seccamera/SecCamera$TransformData;)V
    .locals 9
    .param p1, "transformData"    # [Lcom/sec/android/seccamera/SecCamera$TransformData;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 749
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v0

    if-lez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",LE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$TransformData;->gnRange:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",TO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$TransformData;->gnRange:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",RI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$TransformData;->gnRange:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",BO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$TransformData;->gnRange:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",IA="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$TransformData;->gfTransformX:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",IB="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$TransformData;->gfTransformX:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",IC="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$TransformData;->gfTransformX:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$TransformData;->gfTransformX:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",IE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$TransformData;->gfTransformX:[I

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",IF="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$TransformData;->gfTransformX:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",IG="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$TransformData;->gfTransformY:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",IH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$TransformData;->gfTransformY:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",II="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$TransformData;->gfTransformY:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",IJ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$TransformData;->gfTransformY:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",IK="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$TransformData;->gfTransformY:[I

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",IL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$TransformData;->gfTransformY:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",IM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    iget v2, v2, Lcom/sec/android/seccamera/SecCamera$TransformData;->gnFaceAngle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",IN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    iget v2, v2, Lcom/sec/android/seccamera/SecCamera$TransformData;->gnLightIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    .line 774
    :goto_0
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string v1, "SP=0,LE=0,TO=0,RI=0,BO=0,IA=0,IB=0,IC=0,ID=0,IE=0,IF=0,OG=0,IH=0,II=0,IJ=0,IK=0,IL=0,IM=0,IN=0"

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScreenFlashStarted()V
    .locals 0

    .prologue
    .line 778
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showScreenFlash()V

    .line 779
    return-void
.end method

.method public onScreenFlashStopped()V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideScreenFlash()V

    .line 784
    return-void
.end method

.method public onShutterKeyLongPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 788
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterPressed()V

    .line 790
    const/4 v0, 0x1

    .line 796
    :cond_0
    :goto_0
    return v0

    .line 793
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isBurstCaptureAvailableFPS()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isLowLightDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 794
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v2, 0x7f0800fe

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 801
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    const/4 v0, 0x1

    .line 804
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 3
    .param p1, "captureMethod"    # I

    .prologue
    const/4 v0, 0x1

    .line 809
    const-string v1, "Engine"

    const-string v2, "onShutterKeyReleased selfie"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-eqz v1, :cond_1

    .line 811
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 812
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterReleased()V

    .line 821
    :cond_0
    :goto_0
    return v0

    .line 816
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(I)V

    .line 817
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 818
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1, v0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    .line 821
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 5
    .param p1, "event"    # I

    .prologue
    const/16 v4, 0xc0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 831
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isScreenFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    .line 838
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelIntervalCapture()V

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 843
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v0, :cond_3

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 847
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isScreenFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 850
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isVideoCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    goto :goto_0

    .line 855
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_5

    .line 856
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 858
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v0, :cond_5

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 863
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto/16 :goto_0

    .line 829
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 870
    const-string v0, "Selfie"

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

    .line 871
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 877
    :cond_1
    if-nez p1, :cond_3

    .line 878
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 879
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 880
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isScreenFlashAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 881
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 882
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 894
    :cond_3
    :goto_0
    return-void

    .line 886
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 887
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 888
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 889
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 890
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x0

    return v0
.end method
