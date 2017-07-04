.class public Lcom/sec/android/app/camera/shootingmode/VirtualShot;
.super Ljava/lang/Object;
.source "VirtualShot.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/seccamera/SecCamera$InteractiveShotEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;


# static fields
.field private static final ANIMATION_FADE_INOUT_TIMER:I = 0x226

.field private static final ANIMATION_NEXT_TIMER:I = 0x64

.field private static final CAPTURED_OBJ_ALPHA_VALUE:F = 0.4f

.field private static final CAPTURE_DIRECTION_TO_DOWN:I = 0x2

.field private static final CAPTURE_DIRECTION_TO_LEFT:I = 0x4

.field private static final CAPTURE_DIRECTION_TO_RIGHT:I = 0x3

.field private static final CAPTURE_DIRECTION_TO_UP:I = 0x1

.field private static final CAPTURE_DIRECTION_UNKNOWN:I = 0x0

.field private static final CAPTURE_WARN_NOT_ENOUGH_FRAMES:I = 0x3

.field private static final CAPTURE_WARN_NO_ERROR:I = 0x0

.field private static final CAPTURE_WARN_OUT_OF_RANGE:I = 0x2

.field private static final CAPTURE_WARN_WRONG_DIRECTION:I = 0x1

.field private static final CENTER_OBJECT_FRONT_X:F

.field private static final CENTER_OBJECT_FRONT_Y:F

.field private static final CENTER_OBJECT_REAR_X:F

.field private static final CENTER_OBJECT_REAR_Y:F

.field private static final NUM_OF_ANIMATION:I = 0x5

.field private static final NUM_OF_DIRECTION:I = 0x6

.field private static final PROGRESS_FRONT_X:F

.field private static final PROGRESS_FRONT_Y:F

.field private static final PROGRESS_REAR_X:F

.field private static final PROGRESS_REAR_Y:F

.field private static final SAVE_RESTRICTION_FRAME_NUM:I = 0x5

.field protected static SCREEN_HEIGHT:I = 0x0

.field protected static SCREEN_WIDTH:I = 0x0

.field private static final STOP_BUTTON_DIAMETER:I

.field private static final STOP_BUTTON_POS_X:I

.field private static final STOP_BUTTON_POS_Y:I

.field private static final TAG:Ljava/lang/String; = "VirtualShot"

.field private static final VIRTUALSHOT_CAPTURE_EXPIRED:I = 0x7

.field private static final VIRTUALSHOT_CAPTURE_EXPIRED_TIMER:I = 0x1b58

.field private static final VIRTUALSHOT_DEVICE_GUIDE_ANI_FADEIN:I = 0x2

.field private static final VIRTUALSHOT_DEVICE_GUIDE_ANI_FADEOUT:I = 0x3

.field private static final VIRTUALSHOT_DEVICE_GUIDE_ANI_NEXT:I = 0x1

.field private static final VIRTUALSHOT_GUIDE_H:F

.field private static final VIRTUALSHOT_GUIDE_W:F

.field private static final VIRTUALSHOT_GUIDE_X:[F

.field private static final VIRTUALSHOT_GUIDE_Y:[F

.field private static final VIRTUALSHOT_SHOW_UI:I = 0x6

.field private static final VIRTUALSHOT_SHOW_UI_RESTART_TIMER:I = 0xa

.field private static final VIRTUALSHOT_STATUS_CAPTURING:I = 0x2

.field private static final VIRTUALSHOT_STATUS_IDLE:I = 0x0

.field private static final VIRTUALSHOT_STATUS_SAVING:I = 0x3

.field private static final VIRTUALSHOT_STATUS_START:I = 0x1

.field private static final sVirtualShotStatus:[Ljava/lang/String;


# instance fields
.field private mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

.field protected mAnimationHandler:Landroid/os/Handler;

.field private mArrowAnimation:Landroid/view/animation/AlphaAnimation;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

.field private mCaptureDirection:I

.field private mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

.field private mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

.field private mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

.field private mCenterObjBG:Lcom/samsung/android/glview/GLImage;

.field private mCurrentFadeInAni:I

.field private mCurrentFadeOutAni:I

.field private mCurrentGuideAni:I

.field private mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFrames:I

.field private mIsVirtualShotCaptureStarted:Z

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mProgress:I

.field private mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

.field private mTempFileName:Ljava/lang/String;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

.field protected mVirtualShotHandler:Landroid/os/Handler;

.field private mVirtualShotStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    const v0, 0x7f09020a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->STOP_BUTTON_POS_X:I

    .line 70
    const v0, 0x7f09020b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->STOP_BUTTON_POS_Y:I

    .line 71
    const v0, 0x7f090208

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->STOP_BUTTON_DIAMETER:I

    .line 93
    const v0, 0x7f09027b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_W:F

    .line 94
    const v0, 0x7f09027a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_H:F

    .line 95
    const v0, 0x7f090278

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_REAR_X:F

    .line 96
    const v0, 0x7f090279

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_REAR_Y:F

    .line 97
    const v0, 0x7f090276

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_FRONT_X:F

    .line 98
    const v0, 0x7f090277

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_FRONT_Y:F

    .line 99
    const v0, 0x7f090286

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_X:F

    .line 100
    const v0, 0x7f090287

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_Y:F

    .line 101
    const v0, 0x7f090284

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_X:F

    .line 102
    const v0, 0x7f090285

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_Y:F

    .line 103
    new-array v0, v6, [F

    const v1, 0x7f09027c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f09027d

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f09027e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f09027f

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_X:[F

    .line 105
    new-array v0, v6, [F

    const v1, 0x7f090280

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f090281

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f090282

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f090283

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_Y:[F

    .line 111
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "VIRTUALSHOT_STATUS_IDLE"

    aput-object v1, v0, v2

    const-string v1, "VIRTUALSHOT_STATUS_START"

    aput-object v1, v0, v3

    const-string v1, "VIRTUALSHOT_STATUS_CAPTURING"

    aput-object v1, v0, v4

    const-string v1, "VIRTUALSHOT_STATUS_SAVING"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->sVirtualShotStatus:[Ljava/lang/String;

    .line 112
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SCREEN_WIDTH:I

    .line 113
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SCREEN_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 115
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 116
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 117
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 118
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 119
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 120
    const-string v0, ".virtualshot.temp"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTempFileName:Ljava/lang/String;

    .line 121
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    .line 122
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    .line 123
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureDirection:I

    .line 124
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    .line 125
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeInAni:I

    .line 126
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeOutAni:I

    .line 132
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    .line 133
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    .line 134
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 135
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    .line 136
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 137
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 138
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotStatus:I

    .line 139
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$1;-><init>(Lcom/sec/android/app/camera/shootingmode/VirtualShot;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    .line 159
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$2;-><init>(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mIsVirtualShotCaptureStarted:Z

    .line 183
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;-><init>(Lcom/sec/android/app/camera/shootingmode/VirtualShot;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Landroid/os/Handler;

    .line 213
    const-string v0, "VirtualShot"

    const-string v1, "VirtualShot() - create"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 215
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startGuideDeviceNextAnimation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->reset()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopCaptureExpireTimer()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 65
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 65
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeInAni:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/VirtualShot;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->virtualShotGuideDeviceAnimation(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 65
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeOutAni:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/VirtualShot;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->hideVirtualShotGuideDeviceAnimation(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/VirtualShot;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setHRMsensor(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/VirtualShot;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mIsVirtualShotCaptureStarted:Z

    return v0
.end method

.method private cancelHandlerMessages()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x6

    .line 771
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 779
    :cond_1
    return-void
.end method

.method private cancelVirtualShot()V
    .locals 2

    .prologue
    .line 785
    const-string v0, "VirtualShot"

    const-string v1, "cancelVirtualShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v0, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->hideStopButton()V

    .line 792
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 793
    const-string v0, "VirtualShot"

    const-string v1, "cancelVirtualShot : cancelCaptureForVirtualShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelTakePicture()V

    .line 796
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setStopVirtualShot()V

    .line 798
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 799
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFlashMode(Ljava/lang/String;)V

    .line 802
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->removeTempFile()V

    .line 803
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mIsVirtualShotCaptureStarted:Z

    .line 804
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->reset()V

    .line 806
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    goto :goto_0
.end method

.method private getCaptureDirection()I
    .locals 1

    .prologue
    .line 815
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureDirection:I

    return v0
.end method

.method private getTempFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTempFileName:Ljava/lang/String;

    return-object v0
.end method

.method private getVirtualShotStatus()I
    .locals 1

    .prologue
    .line 828
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotStatus:I

    return v0
.end method

.method private hideStopButton()V
    .locals 2

    .prologue
    .line 840
    const-string v0, "VirtualShot"

    const-string v1, "hideStopButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->requestFocus(I)V

    .line 843
    return-void
.end method

.method private hideVirtualShotGuideDeviceAnimation(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 846
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 847
    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideVirtualShotGuideDeviceAnimation: mAnimationGuideDevice["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] will be invisible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->cancelAnimation()V

    .line 849
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 851
    :cond_0
    return-void
.end method

.method private initDeviceAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 854
    const-string v0, "VirtualShot"

    const-string v1, "initDeviceAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    .line 856
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeInAni:I

    .line 857
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeOutAni:I

    .line 858
    return-void
.end method

.method private isVirtualShotSavingAllowed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 866
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 870
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeTempFile()V
    .locals 6

    .prologue
    .line 878
    const-string v3, "VirtualShot"

    const-string v4, "removeTempFile"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, "directory":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 882
    .local v2, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :goto_0
    return-void

    .line 883
    :catch_0
    move-exception v1

    .line 884
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "VirtualShot"

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

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 893
    const-string v0, "VirtualShot"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    .line 895
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    .line 896
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureDirection:I

    .line 897
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopCaptureExpireTimer()V

    .line 898
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopAnimationTimer()V

    .line 899
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->initDeviceAnimation()V

    .line 900
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelHandlerMessages()V

    .line 901
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->resetProgressView()V

    .line 902
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->resetCaptureGuideRect()V

    .line 903
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setVirtualShotStatus(I)V

    .line 904
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    .line 906
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 908
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    .line 912
    :cond_0
    return-void
.end method

.method private resetCaptureGuideRect()V
    .locals 5

    .prologue
    const v4, 0x7f0200f1

    const v3, 0x7f0200db

    const/4 v2, 0x0

    .line 915
    const-string v0, "VirtualShot"

    const-string v1, "resetCaptureGuideRect"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 918
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 919
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 921
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 926
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 927
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 929
    return-void

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 924
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0
.end method

.method private resetProgressView()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 932
    const-string v1, "VirtualShot"

    const-string v2, "resetProgressView"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    .line 935
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 937
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 935
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 939
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 941
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 939
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 943
    :cond_1
    return-void
.end method

.method private setAlphaArrow(Lcom/samsung/android/glview/GLView;Z)V
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "bAnimate"    # Z

    .prologue
    .line 947
    if-eqz p2, :cond_1

    .line 948
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 949
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    .line 950
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 951
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 955
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    .line 959
    :goto_0
    return-void

    .line 957
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->cancelAnimation()V

    goto :goto_0
.end method

.method private setCapturingVirtualShot()V
    .locals 2

    .prologue
    .line 965
    const-string v0, "VirtualShot"

    const-string v1, "setCapturingShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setVirtualShotStatus(I)V

    .line 968
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopAnimationTimer()V

    .line 969
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->initDeviceAnimation()V

    .line 970
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getCaptureDirection()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->updateCaptureLayout(I)V

    .line 971
    return-void
.end method

.method private setFrontMode(Z)V
    .locals 9
    .param p1, "bIsFront"    # Z

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 974
    const-string v1, "VirtualShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFrontMode: bIsFront-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_2

    .line 977
    if-eqz p1, :cond_3

    .line 978
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200da

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 979
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200db

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 980
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200dc

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 982
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    sget v2, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_FRONT_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_FRONT_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 983
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    sget v2, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 984
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    sget v2, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 985
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    sget v2, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 986
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 987
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 986
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 989
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v4

    const v2, 0x7f0200dd

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 990
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v5

    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 991
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v6

    const v2, 0x7f0200df

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 992
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v7

    const v2, 0x7f0200e0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 993
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    const v2, 0x7f0200e1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 994
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 995
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 994
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 998
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200da

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1021
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 1000
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200f0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1001
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200f1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1002
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200f2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1004
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    sget v2, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_REAR_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_REAR_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 1005
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    sget v2, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 1006
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    sget v2, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 1007
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    sget v2, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 1008
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    const/4 v1, 0x6

    if-ge v0, v1, :cond_4

    .line 1009
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 1008
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1011
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v4

    const v2, 0x7f0200f3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1012
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v5

    const v2, 0x7f0200f4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1013
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v6

    const v2, 0x7f0200f5

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1014
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v7

    const v2, 0x7f0200f6

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1015
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    const v2, 0x7f0200f7

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1016
    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 1017
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 1016
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private setHRMsensor(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1024
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1026
    if-eqz p1, :cond_1

    .line 1027
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    goto :goto_0
.end method

.method private setOutputFile()V
    .locals 6

    .prologue
    .line 1039
    const-string v3, "VirtualShot"

    const-string v4, "setOutputFile"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 1042
    .local v1, "directory":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1043
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1044
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1045
    const-string v3, "VirtualShot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to Create Directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 1051
    new-instance v0, Ljava/io/File;

    .end local v0    # "cameraDir":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1052
    .restart local v0    # "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1053
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1054
    const-string v3, "VirtualShot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to Create Directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, -0xa

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    .line 1063
    :goto_0
    return-void

    .line 1060
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1062
    .local v2, "filename":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setOutputFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setStartVirtualShot()V
    .locals 4

    .prologue
    const v3, 0x7f0200ff

    const v2, 0x7f0200e9

    .line 1069
    const-string v0, "VirtualShot"

    const-string v1, "setStartVirtualShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startCaptureExpireTimer()V

    .line 1071
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setFrontMode(Z)V

    .line 1072
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x181

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 1074
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 1076
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setVirtualShotStatus(I)V

    .line 1078
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1080
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1086
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getCaptureDirection()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->updateCaptureLayout(I)V

    .line 1087
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startGuideDeviceNextAnimation()V

    .line 1088
    return-void

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1083
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0
.end method

.method private setStopVirtualShot()V
    .locals 2

    .prologue
    .line 1094
    const-string v0, "VirtualShot"

    const-string v1, "setStopVirtualShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1097
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->unlockAEAWB()V

    .line 1099
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 1105
    :goto_0
    return-void

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    goto :goto_0
.end method

.method private setVirtualShotStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 832
    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVirtualShotStatus - status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->sVirtualShotStatus:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotStatus:I

    goto :goto_0
.end method

.method private showStopButton()V
    .locals 2

    .prologue
    .line 1108
    const-string v0, "VirtualShot"

    const-string v1, "showStopButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1110
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1111
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 1112
    return-void
.end method

.method private showVirtualShotGuideGroup(Z)V
    .locals 3
    .param p1, "bShow"    # Z

    .prologue
    const/4 v2, 0x4

    .line 1115
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1116
    if-eqz p1, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1118
    const-string v0, "VirtualShot"

    const-string v1, "showVirtualShotGuideGroup : will be visible"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1123
    const-string v0, "VirtualShot"

    const-string v1, "showVirtualShotGuideGroup : will be invisible"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private startCaptureExpireTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 1131
    const-string v0, "VirtualShot"

    const-string v1, "startCaptureExpireTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1136
    return-void
.end method

.method private startFadeInAnimationTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1139
    const-string v0, "VirtualShot"

    const-string v1, "startFadeInAnimationTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1144
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeInAni:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1145
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x44c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1149
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x226

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private startFadeOutAnimationTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1152
    const-string v0, "VirtualShot"

    const-string v1, "startFadeOutAnimationTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x226

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1157
    return-void
.end method

.method private startGuideDeviceNextAnimation()V
    .locals 2

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1161
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->virtualShotGuideDeviceAnimation(IZ)V

    .line 1164
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 1165
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    .line 1167
    :cond_1
    return-void
.end method

.method private startNextAnimationTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1170
    const-string v0, "VirtualShot"

    const-string v1, "startNextAnimationTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1175
    return-void
.end method

.method private stopAnimationTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1178
    const-string v0, "VirtualShot"

    const-string v1, "stopAnimationTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1180
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1186
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1187
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1190
    :cond_2
    return-void
.end method

.method private stopCaptureExpireTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 1193
    const-string v0, "VirtualShot"

    const-string v1, "stopCancelTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1197
    :cond_0
    return-void
.end method

.method private stopVirtualShot()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 1200
    const-string v0, "VirtualShot"

    const-string v1, "stopVirtualShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVirtualShot()V

    .line 1205
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setStopVirtualShot()V

    .line 1206
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mIsVirtualShotCaptureStarted:Z

    .line 1207
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setVirtualShotStatus(I)V

    .line 1208
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    .line 1212
    :cond_0
    return-void
.end method

.method private updateCaptureLayout(I)V
    .locals 9
    .param p1, "direction"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 1215
    const-string v1, "VirtualShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCaptureLayout("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    if-ne p1, v4, :cond_3

    .line 1218
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1219
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 1221
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1222
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1220
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1225
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1226
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200e9

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1227
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v7

    const v2, 0x7f0200ea

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1228
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    const v2, 0x7f0200eb

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1229
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const v2, 0x7f0200ec

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1230
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v6

    const v2, 0x7f0200ed

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1231
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v4

    const v2, 0x7f0200ee

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1232
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v5

    const v2, 0x7f0200ef

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1271
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 1234
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200f8

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1235
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v7

    const v2, 0x7f0200f9

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1236
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    const v2, 0x7f0200fa

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1237
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const v2, 0x7f0200fb

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1238
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v6

    const v2, 0x7f0200fc

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1239
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v4

    const v2, 0x7f0200fd

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1240
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v5

    const v2, 0x7f0200fe

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_1

    .line 1242
    .end local v0    # "i":I
    :cond_3
    if-ne p1, v6, :cond_7

    .line 1243
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1244
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1245
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v5, :cond_5

    .line 1246
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1247
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1245
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1250
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1251
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200e2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1252
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v7

    const v2, 0x7f0200e3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1253
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    const v2, 0x7f0200e4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1254
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const v2, 0x7f0200e5

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1255
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v6

    const v2, 0x7f0200e6

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1256
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v4

    const v2, 0x7f0200e7

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1257
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v5

    const v2, 0x7f0200e8

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 1259
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200ff

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1260
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v7

    const v2, 0x7f020100

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1261
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    const v2, 0x7f020101

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1262
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const v2, 0x7f020102

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1263
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v6

    const v2, 0x7f020103

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1264
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v4

    const v2, 0x7f020104

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1265
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v5

    const v2, 0x7f020105

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 1268
    .end local v0    # "i":I
    :cond_7
    const-string v1, "VirtualShot"

    const-string v2, "unknown direction - apply default direction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private virtualShotGuideDeviceAnimation(IZ)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "bShow"    # Z

    .prologue
    const-wide/16 v6, 0x226

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1274
    const-string v0, "VirtualShot"

    const-string v1, "startGuideDeviceAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    .line 1277
    if-eqz p2, :cond_3

    .line 1278
    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "virtualShotGuideDeviceAnimation: mAnimationGuideDevice["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] will be start fade-in animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 1280
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1281
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1284
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1285
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1286
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1287
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeInAni:I

    .line 1289
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startFadeInAnimationTimer()V

    .line 1304
    :cond_2
    :goto_0
    return-void

    .line 1291
    :cond_3
    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "virtualShotGuideDeviceAnimation: mAnimationGuideDevice["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] will be start fade-out animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_4

    .line 1293
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1294
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1295
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1297
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1298
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1299
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeOutAni:I

    .line 1300
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startFadeOutAnimationTimer()V

    .line 1301
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startNextAnimationTimer()V

    goto :goto_0
.end method


# virtual methods
.method public getMaxFileSizeOfImage()J
    .locals 2

    .prologue
    .line 221
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mIsVirtualShotCaptureStarted:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomAvailable()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 6
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 241
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 242
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v3, [I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 243
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 245
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.COVER_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v1, "camera.action.COVER_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 250
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVirtualShotListener(Lcom/sec/android/seccamera/SecCamera$InteractiveShotEventListener;)V

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->sendOrientationInfotoHAL()V

    .line 262
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setFrontMode(Z)V

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    .line 267
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 273
    :cond_1
    :goto_0
    return-void

    .line 270
    :cond_2
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 3
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    const/16 v2, 0x7530

    .line 286
    const-string v0, "picture-size"

    const-string v1, "1280x720"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1, v2, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 288
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 9
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 292
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 293
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 295
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_X:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_Y:[F

    const/4 v3, 0x0

    aget v3, v1, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_W:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_H:F

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 299
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0200f0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    .line 300
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0200f1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    .line 301
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0200f1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 303
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0200f2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f020100

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f020101

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f020102

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f020103

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f020104

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x5

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f020105

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 311
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v0, 0x6

    if-ge v8, v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 311
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200f3

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200f4

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200f5

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200f6

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200f7

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 320
    const/4 v8, 0x0

    :goto_1
    const/4 v0, 0x5

    if-ge v8, v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 320
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 328
    const/4 v8, 0x0

    :goto_2
    const/4 v0, 0x6

    if-ge v8, v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 328
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 331
    :cond_2
    const/4 v8, 0x0

    :goto_3
    const/4 v0, 0x5

    if-ge v8, v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 331
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_X:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_Y:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_X:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_Y:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_X:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_Y:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 342
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->STOP_BUTTON_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v1

    const v4, 0x7f020109

    const v5, 0x7f02010a

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080142

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/VirtualShot$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$4;-><init>(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->STOP_BUTTON_DIAMETER:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p3, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 371
    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 375
    const-string v0, "sef_file_type"

    const/16 v1, 0x8d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    const-string v0, "height"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 377
    const-string v0, "width"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public onHRMShutterDetected()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 384
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mIsVirtualShotCaptureStarted:Z

    if-eqz v0, :cond_1

    .line 385
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    if-lt v0, v1, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    .line 393
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    goto :goto_0

    .line 391
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->onShutterKeyReleased(I)Z

    goto :goto_0
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->clearSideQuickSetting()V

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 409
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setVirtualShotListener(Lcom/sec/android/seccamera/SecCamera$InteractiveShotEventListener;)V

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 417
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    .line 418
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    .line 419
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopCaptureExpireTimer()V

    .line 420
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->reset()V

    .line 421
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    .line 422
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 423
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 424
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopAnimationTimer()V

    .line 425
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->initDeviceAnimation()V

    .line 426
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mIsVirtualShotCaptureStarted:Z

    .line 428
    return-void
.end method

.method public onInteractiveCaptureProgressed(II)V
    .locals 7
    .param p1, "progress"    # I
    .param p2, "frame_count"    # I

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x0

    .line 432
    const-string v2, "VirtualShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInteractiveCaptureProgressed - progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", frame_count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v2

    if-nez v2, :cond_1

    .line 435
    const-string v2, "VirtualShot"

    const-string v3, "onInteractiveCaptureProgressed - wrong state, callback is returned."

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    .line 440
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    .line 442
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    if-nez v2, :cond_2

    .line 443
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showStopButton()V

    .line 450
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getCaptureDirection()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getCaptureDirection()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    .line 451
    :cond_3
    const/4 v1, 0x0

    .line 453
    .local v1, "progressLevel":I
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    const/16 v3, 0x10

    if-gt v2, v3, :cond_5

    .line 454
    const/4 v1, 0x0

    .line 467
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_a

    .line 468
    const-string v2, "VirtualShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInteractiveCaptureProgressed - mProgressGuideFG["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] will be VISIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 470
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setAlphaArrow(Lcom/samsung/android/glview/GLView;Z)V

    .line 472
    if-lez v1, :cond_a

    .line 473
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    invoke-direct {p0, v2, v5}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setAlphaArrow(Lcom/samsung/android/glview/GLView;Z)V

    .line 474
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 476
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_a

    .line 477
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    .line 478
    const-string v2, "VirtualShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInteractiveCaptureProgressed - mProgressGuideFG["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] will be VISIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 476
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 455
    .end local v0    # "i":I
    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    const/16 v3, 0x21

    if-gt v2, v3, :cond_6

    .line 456
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 457
    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    const/16 v3, 0x32

    if-gt v2, v3, :cond_7

    .line 458
    const/4 v1, 0x2

    goto/16 :goto_1

    .line 459
    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    const/16 v3, 0x43

    if-gt v2, v3, :cond_8

    .line 460
    const/4 v1, 0x3

    goto/16 :goto_1

    .line 461
    :cond_8
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    const/16 v3, 0x54

    if-gt v2, v3, :cond_9

    .line 462
    const/4 v1, 0x4

    goto/16 :goto_1

    .line 464
    :cond_9
    const/4 v1, 0x5

    goto/16 :goto_1

    .line 485
    :cond_a
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    if-ne v2, v6, :cond_b

    .line 486
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v1

    invoke-direct {p0, v2, v5}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setAlphaArrow(Lcom/samsung/android/glview/GLView;Z)V

    .line 490
    .end local v1    # "progressLevel":I
    :cond_b
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    if-ne v2, v6, :cond_0

    .line 491
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    goto/16 :goto_0
.end method

.method public onInteractiveDirectionChanged(II)V
    .locals 3
    .param p1, "direction"    # I
    .param p2, "value"    # I

    .prologue
    .line 497
    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInteractiveDirectionChanged - direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    packed-switch p1, :pswitch_data_0

    .line 514
    :goto_0
    return-void

    .line 502
    :pswitch_0
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureDirection:I

    .line 503
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopCaptureExpireTimer()V

    .line 504
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setCapturingVirtualShot()V

    goto :goto_0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onInteractiveDirectionWarning(I)V
    .locals 4
    .param p1, "warn_state"    # I

    .prologue
    const/4 v3, 0x0

    .line 518
    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInteractiveDirectionWarning - warn_state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    packed-switch p1, :pswitch_data_0

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 523
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 524
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 525
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f080161

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 526
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    goto :goto_0

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f080163

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 529
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    goto :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onInteractiveProcessCompleted()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 542
    const-string v4, "VirtualShot"

    const-string v5, "onInteractiveProcessCompleted"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v4, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 549
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->hideStopButton()V

    .line 552
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getTempFileName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->renamePostSavingFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "outputFileName":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 554
    const-string v4, "VirtualShot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interactive file name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getCurrentThumbnailSize()[I

    move-result-object v3

    .line 557
    .local v3, "thumbnailSize":[I
    aget v4, v3, v7

    aget v5, v3, v8

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/camera/util/ImageUtils;->makeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 558
    .local v2, "thumbnailBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 559
    .local v0, "orientation":I
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v4, v2, v0, v7}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 565
    .end local v0    # "orientation":I
    .end local v2    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "thumbnailSize":[I
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 566
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/util/ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->addUriListInSecureCamera(Landroid/net/Uri;)V

    .line 569
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    .line 570
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateLatestMedia()V

    .line 571
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateQuickView()V

    .line 573
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 574
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->unlockAEAWB()V

    .line 576
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 577
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 582
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->reset()V

    .line 584
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    .line 586
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v4

    if-nez v4, :cond_0

    .line 587
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    goto/16 :goto_0

    .line 562
    :cond_3
    const-string v4, "VirtualShot"

    const-string v5, "interactive output file error"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 579
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    goto :goto_2
.end method

.method public onInteractiveProcessProgressed(II)V
    .locals 3
    .param p1, "current"    # I
    .param p2, "max"    # I

    .prologue
    .line 593
    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInteractiveProcessProgressed - current: "

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

    .line 595
    if-nez p1, :cond_0

    .line 596
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setVirtualShotStatus(I)V

    .line 597
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 601
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 605
    sparse-switch p1, :sswitch_data_0

    .line 625
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 609
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isVirtualShotSavingAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 611
    const-string v1, "VirtualShot"

    const-string v2, "onKeyDown : Ignore - VirtualShot can be saved (too short)"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 617
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    const-string v1, "VirtualShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown : ignore - status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 605
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x5

    const/4 v0, 0x1

    .line 630
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 681
    :goto_1
    return v0

    .line 632
    :sswitch_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    if-lt v2, v3, :cond_1

    .line 633
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    goto :goto_1

    .line 634
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    goto :goto_1

    .line 643
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 644
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isVirtualShotSavingAllowed()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 645
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 646
    :cond_2
    const-string v0, "VirtualShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp - invalid status - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 647
    goto :goto_1

    .line 649
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    if-lt v0, v3, :cond_4

    .line 650
    const-string v0, "VirtualShot"

    const-string v2, "onKeyUp : stop Virtual shot"

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    goto :goto_0

    .line 653
    :cond_4
    const-string v0, "VirtualShot"

    const-string v2, "onKeyUp : cancel Virtual shot"

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    goto :goto_0

    .line 658
    :cond_5
    const-string v1, "VirtualShot"

    const-string v2, "onKeyUp : Ignore - Virtual Shot can be saved (too short)"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 664
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 665
    const-string v1, "VirtualShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp : ignore - status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 668
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 669
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    if-lt v0, v3, :cond_7

    .line 670
    const-string v0, "VirtualShot"

    const-string v2, "onKeyUp : stop Virtual shot"

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    goto/16 :goto_0

    .line 673
    :cond_7
    const-string v0, "VirtualShot"

    const-string v2, "onKeyUp : cancel Virtual shot"

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    goto/16 :goto_0

    .line 630
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 687
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 703
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 3
    .param p1, "captureMethod"    # I

    .prologue
    const/4 v0, 0x1

    .line 708
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    const-string v1, "VirtualShot"

    const-string v2, "Return, isCapturing"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :goto_0
    return v0

    .line 713
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->lockAEAWB()V

    .line 714
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->stopFaceDetection()V

    .line 716
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isContinuousAutoFocusSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isHalfShutter()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 717
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleAutoFocus()V

    .line 720
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleTimer(I)Z

    .line 722
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 723
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestTransientAudioFocus()V

    .line 724
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mIsVirtualShotCaptureStarted:Z

    .line 725
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setOutputFile()V

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVirtualShot()V

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 728
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setStartVirtualShot()V

    .line 730
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 735
    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleCaptureEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    packed-switch p1, :pswitch_data_0

    .line 743
    :goto_0
    return-void

    .line 738
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    goto :goto_0

    .line 736
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 747
    const-string v0, "VirtualShot"

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

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 754
    :cond_1
    if-nez p1, :cond_2

    .line 755
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 757
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setStartVirtualShot()V

    .line 763
    :cond_2
    :goto_0
    return-void

    .line 759
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x0

    return v0
.end method
