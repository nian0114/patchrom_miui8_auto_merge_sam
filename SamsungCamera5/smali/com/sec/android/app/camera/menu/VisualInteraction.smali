.class public Lcom/sec/android/app/camera/menu/VisualInteraction;
.super Ljava/lang/Object;
.source "VisualInteraction.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;


# static fields
.field private static final SHUTTER_ANIMATION_DURATION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "Camera5VI"


# instance fields
.field private mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

.field private mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mBlurImage:Lcom/samsung/android/glview/GLImage;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentPreviewAnimation:I

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mGLContext:Lcom/samsung/android/glview/GLContext;

.field private mHideSwitchingAnimationLock:Ljava/lang/Object;

.field private mIsBlurImageAnimating:Z

.field private mIsHideSwitchingAnimationWaiting:Z

.field private mIsPreviewChangingAnimationRunning:Z

.field private mIsSwitchCameraAnimationFinished:Z

.field private mIsSwitchCameraAnimationStarted:Z

.field private mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

.field private mPreviewImage:Lcom/samsung/android/glview/GLImage;

.field private mPreviewLeftMargin:Lcom/samsung/android/glview/GLRectangle;

.field private mPreviewRightMargin:Lcom/samsung/android/glview/GLRectangle;

.field private mResources:Landroid/content/res/Resources;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

.field private mWhiteOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;)V
    .locals 9
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 57
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 58
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    .line 59
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 60
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 61
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mHideSwitchingAnimationLock:Ljava/lang/Object;

    .line 72
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    .line 73
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    .line 75
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationStarted:Z

    .line 76
    iput-boolean v8, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationFinished:Z

    .line 77
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsHideSwitchingAnimationWaiting:Z

    .line 78
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsPreviewChangingAnimationRunning:Z

    .line 83
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsBlurImageAnimating:Z

    .line 87
    iput v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    .line 90
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 91
    iput-object p3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 94
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0901bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenWidth:I

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0901be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenHeight:I

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenWidth:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenHeight:I

    int-to-float v5, v3

    const v3, 0x7f0c000c

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenWidth:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenHeight:I

    int-to-float v5, v3

    const v3, 0x7f0c003b

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 111
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/menu/VisualInteraction;Lcom/samsung/android/glview/GLViewGroup;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;
    .param p1, "x1"    # Lcom/samsung/android/glview/GLViewGroup;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLRectangle;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/menu/VisualInteraction;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mHideSwitchingAnimationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/menu/VisualInteraction;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsHideSwitchingAnimationWaiting:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsHideSwitchingAnimationWaiting:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/menu/VisualInteraction;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hideCameraSwitchingAnimation()V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsBlurImageAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/menu/VisualInteraction;Lcom/samsung/android/glview/GLImage;)Lcom/samsung/android/glview/GLImage;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;
    .param p1, "x1"    # Lcom/samsung/android/glview/GLImage;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationFinished:Z

    return p1
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsPreviewChangingAnimationRunning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/menu/VisualInteraction;Lcom/samsung/android/glview/GLImage;)Lcom/samsung/android/glview/GLImage;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;
    .param p1, "x1"    # Lcom/samsung/android/glview/GLImage;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method private cancelCameraSwitchingAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 469
    const-string v0, "Camera5VI"

    const-string v1, "cancelCameraSwitchingAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationFinished:Z

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 474
    const-string v0, "Camera5VI"

    const-string v1, "Remove the mPreviewImage"

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 479
    iput-object v4, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 483
    const-string v0, "Camera5VI"

    const-string v1, "Remove the mBlurImage"

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsBlurImageAnimating:Z

    .line 485
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsHideSwitchingAnimationWaiting:Z

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 490
    iput-object v4, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    .line 492
    :cond_1
    return-void
.end method

.method private cancelPreviewChangingAnimation()V
    .locals 2

    .prologue
    .line 498
    const-string v0, "Camera5VI"

    const-string v1, "cancelPreviewChangingAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 501
    const-string v0, "Camera5VI"

    const-string v1, "Remove the mPreviewImage"

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    .line 507
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsPreviewChangingAnimationRunning:Z

    .line 508
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hideBlackOverlay()V

    .line 509
    return-void
.end method

.method private hideCameraSwitchingAnimation()V
    .locals 8

    .prologue
    const v7, 0x7f0a001a

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 515
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    if-nez v3, :cond_0

    .line 516
    const-string v3, "Camera5VI"

    const-string v4, "mBlurImage is null. return."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mHideSwitchingAnimationLock:Ljava/lang/Object;

    monitor-enter v4

    .line 521
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->isAnimationFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsBlurImageAnimating:Z

    if-eqz v3, :cond_2

    .line 522
    :cond_1
    const-string v3, "Camera5VI"

    const-string v5, "mBlurImage animation is not finished. return."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsHideSwitchingAnimationWaiting:Z

    .line 524
    monitor-exit v4

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    const-string v3, "Camera5VI"

    const-string v4, "hideCameraSwitchingAnimation"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iput-boolean v5, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationStarted:Z

    .line 531
    iput-boolean v5, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationFinished:Z

    .line 532
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 534
    .local v1, "hideAnim":Landroid/view/animation/Animation;
    const/4 v0, 0x0

    .line 535
    .local v0, "duration":I
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_MULTI_INSTANCE_CAMERA:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isMultiInstanceCameraSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 536
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 541
    :goto_1
    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 542
    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 544
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    new-instance v4, Lcom/sec/android/app/camera/menu/VisualInteraction$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/menu/VisualInteraction$3;-><init>(Lcom/sec/android/app/camera/menu/VisualInteraction;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 565
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 566
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 568
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 569
    .local v2, "hideDuration":I
    invoke-static {v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 538
    .end local v2    # "hideDuration":I
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_1
.end method

.method private hidePreviewChangingAnimation()V
    .locals 4

    .prologue
    .line 576
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    if-nez v1, :cond_0

    .line 577
    const-string v1, "Camera5VI"

    const-string v2, "mPreviewImage is null. Return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :goto_0
    return-void

    .line 581
    :cond_0
    const-string v1, "Camera5VI"

    const-string v2, "hidePreviewChangingAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 584
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    sget v1, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 585
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 586
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 588
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/sec/android/app/camera/menu/VisualInteraction$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/VisualInteraction$4;-><init>(Lcom/sec/android/app/camera/menu/VisualInteraction;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 611
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 612
    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private isSwitchCameraAnimationFinished()Z
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationFinished:Z

    return v0
.end method

.method private showWhiteOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "parentViewGroup"    # Lcom/samsung/android/glview/GLViewGroup;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 632
    const-string v0, "Camera5VI"

    const-string v1, "White overlay is already visible"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :goto_0
    return-void

    .line 636
    :cond_0
    const-string v0, "Camera5VI"

    const-string v1, "showWhiteOverlayWithAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 638
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->startAnimation()V

    .line 641
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto :goto_0
.end method

.method private startCameraSwitchingAnimation([B)V
    .locals 47
    .param p1, "data"    # [B

    .prologue
    .line 650
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 651
    const-string v6, "Camera5VI"

    const-string v7, "Camera is pausing. Skip the switching Animation"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :goto_0
    return-void

    .line 655
    :cond_0
    const-string v6, "Camera5VI"

    const-string v7, "startCameraSwitchingAnimation"

    invoke-static {v6, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationStarted:Z

    .line 657
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v39

    .line 658
    .local v39, "isFront":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0901bf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    move/from16 v43, v0

    .line 659
    .local v43, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0901be

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    move/from16 v42, v0

    .line 660
    .local v42, "screenHeight":I
    const/16 v38, 0x0

    .line 661
    .local v38, "duration":I
    sget-boolean v6, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_MULTI_INSTANCE_CAMERA:Z

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isMultiInstanceCameraSupported()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 662
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0a0019

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v38

    .line 667
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewWidth()I

    move-result v41

    .line 668
    .local v41, "previewWidth":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewHeight()I

    move-result v40

    .line 669
    .local v40, "previewHeight":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f09015d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    move/from16 v46, v0

    .line 670
    .local v46, "widePreviewHeight":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f090026

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    move/from16 v37, v0

    .line 673
    .local v37, "blurImageWidth":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p1

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-static {v6, v0, v1, v2}, Lcom/sec/android/app/camera/util/ImageUtils;->convertYuvToRGB(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 674
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    const/16 p1, 0x0

    .line 677
    const/16 v19, 0x0

    .line 679
    .local v19, "nullBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewAspectRatio()D

    move-result-wide v34

    .line 680
    .local v34, "aspectRatio":D
    invoke-static/range {v34 .. v35}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v36

    .line 681
    .local v36, "aspectRatioType":I
    const/4 v6, 0x2

    move/from16 v0, v36

    if-ne v0, v6, :cond_3

    .line 682
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 683
    new-instance v6, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v0, v42

    int-to-float v10, v0

    move/from16 v0, v42

    int-to-float v11, v0

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    .line 684
    new-instance v13, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-direct/range {v13 .. v19}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    .line 704
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    .line 705
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    .line 708
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 709
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 712
    if-eqz v39, :cond_7

    .line 713
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setFlip(Z)V

    .line 719
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x0

    const/16 v8, 0xb4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f090253

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0901be

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0a001d

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v10, v11

    const/16 v11, 0x64

    invoke-static/range {v6 .. v11}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSwitchAnimation(Lcom/samsung/android/glview/GLView;IIFFI)Landroid/view/animation/Animation;

    move-result-object v44

    .line 722
    .local v44, "switchAnim":Landroid/view/animation/Animation;
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 723
    move/from16 v0, v38

    int-to-long v6, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 724
    const/4 v6, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 725
    const/16 v20, 0x0

    .line 726
    .local v20, "scaleAnim":Landroid/view/animation/Animation;
    new-instance v20, Landroid/view/animation/ScaleAnimation;

    .end local v20    # "scaleAnim":Landroid/view/animation/Animation;
    const/high16 v21, 0x3f800000    # 1.0f

    const v22, 0x3f333333    # 0.7f

    const/high16 v23, 0x3f800000    # 1.0f

    const v24, 0x3f333333    # 0.7f

    const/16 v25, 0x1

    const/high16 v26, 0x3f000000    # 0.5f

    const/16 v27, 0x1

    const/high16 v28, 0x3f000000    # 0.5f

    invoke-direct/range {v20 .. v28}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 727
    .restart local v20    # "scaleAnim":Landroid/view/animation/Animation;
    move/from16 v0, v38

    int-to-long v6, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 728
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 729
    move-object/from16 v0, v20

    move/from16 v1, v43

    move/from16 v2, v42

    move/from16 v3, v43

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 730
    const/4 v6, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 731
    new-instance v30, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object/from16 v0, v30

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 732
    .local v30, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    div-int/lit8 v6, v38, 0x2

    int-to-long v6, v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 733
    new-instance v6, Landroid/view/animation/interpolator/QuintEaseIn;

    invoke-direct {v6}, Landroid/view/animation/interpolator/QuintEaseIn;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 734
    new-instance v32, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 735
    .local v32, "animationSet":Landroid/view/animation/AnimationSet;
    const/4 v6, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 736
    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 737
    move-object/from16 v0, v32

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 738
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    const/16 v7, -0xb4

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f090253

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0901be

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0a001d

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v10, v11

    const/16 v11, 0x65

    invoke-static/range {v6 .. v11}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSwitchAnimation(Lcom/samsung/android/glview/GLView;IIFFI)Landroid/view/animation/Animation;

    move-result-object v45

    .line 744
    .local v45, "switchAnim2":Landroid/view/animation/Animation;
    move/from16 v0, v38

    int-to-long v6, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 745
    new-instance v21, Landroid/view/animation/ScaleAnimation;

    const v22, 0x3f333333    # 0.7f

    const/high16 v23, 0x3f800000    # 1.0f

    const v24, 0x3f333333    # 0.7f

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v26, 0x1

    const/high16 v27, 0x3f000000    # 0.5f

    const/16 v28, 0x1

    const/high16 v29, 0x3f000000    # 0.5f

    invoke-direct/range {v21 .. v29}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 746
    .local v21, "scaleAnim2":Landroid/view/animation/Animation;
    move/from16 v0, v38

    int-to-long v6, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 747
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 748
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 749
    move-object/from16 v0, v21

    move/from16 v1, v43

    move/from16 v2, v42

    move/from16 v3, v43

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 750
    new-instance v31, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, v31

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 751
    .local v31, "alphaAnim2":Landroid/view/animation/AlphaAnimation;
    div-int/lit8 v6, v38, 0x2

    int-to-long v6, v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 752
    div-int/lit8 v6, v38, 0x2

    int-to-long v6, v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 753
    new-instance v6, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v6}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 754
    new-instance v33, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    move-object/from16 v0, v33

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 755
    .local v33, "animationSet2":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 756
    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 757
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 758
    const/4 v6, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 759
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    new-instance v10, Lcom/sec/android/app/camera/menu/VisualInteraction$5;

    move-object/from16 v11, p0

    move/from16 v13, v37

    move/from16 v14, v40

    move/from16 v15, v41

    move/from16 v16, v39

    invoke-direct/range {v10 .. v16}, Lcom/sec/android/app/camera/menu/VisualInteraction$5;-><init>(Lcom/sec/android/app/camera/menu/VisualInteraction;Landroid/graphics/Bitmap;IIIZ)V

    invoke-virtual {v6, v10}, Lcom/samsung/android/glview/GLImage;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->bringToFront()V

    .line 798
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 799
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 800
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/camera/menu/VisualInteraction$6;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/sec/android/app/camera/menu/VisualInteraction$6;-><init>(Lcom/sec/android/app/camera/menu/VisualInteraction;)V

    div-int/lit8 v8, v38, 0x2

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 807
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    new-instance v7, Lcom/sec/android/app/camera/menu/VisualInteraction$7;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/sec/android/app/camera/menu/VisualInteraction$7;-><init>(Lcom/sec/android/app/camera/menu/VisualInteraction;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    goto/16 :goto_0

    .line 664
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v19    # "nullBitmap":Landroid/graphics/Bitmap;
    .end local v20    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v21    # "scaleAnim2":Landroid/view/animation/Animation;
    .end local v30    # "alphaAnim":Landroid/view/animation/AlphaAnimation;
    .end local v31    # "alphaAnim2":Landroid/view/animation/AlphaAnimation;
    .end local v32    # "animationSet":Landroid/view/animation/AnimationSet;
    .end local v33    # "animationSet2":Landroid/view/animation/AnimationSet;
    .end local v34    # "aspectRatio":D
    .end local v36    # "aspectRatioType":I
    .end local v37    # "blurImageWidth":I
    .end local v40    # "previewHeight":I
    .end local v41    # "previewWidth":I
    .end local v44    # "switchAnim":Landroid/view/animation/Animation;
    .end local v45    # "switchAnim2":Landroid/view/animation/Animation;
    .end local v46    # "widePreviewHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0a0018

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v38

    goto/16 :goto_1

    .line 686
    .restart local v12    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "nullBitmap":Landroid/graphics/Bitmap;
    .restart local v34    # "aspectRatio":D
    .restart local v36    # "aspectRatioType":I
    .restart local v37    # "blurImageWidth":I
    .restart local v40    # "previewHeight":I
    .restart local v41    # "previewWidth":I
    .restart local v46    # "widePreviewHeight":I
    :cond_2
    new-instance v6, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f09024d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    const/4 v9, 0x0

    move/from16 v0, v42

    int-to-float v10, v0

    move/from16 v0, v42

    int-to-float v11, v0

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    .line 687
    new-instance v13, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f09024d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v15, v6

    const/16 v16, 0x0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-direct/range {v13 .. v19}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_2

    .line 689
    :cond_3
    const/4 v6, 0x1

    move/from16 v0, v36

    if-ne v0, v6, :cond_4

    .line 690
    new-instance v6, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f090148

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    const/4 v9, 0x0

    move/from16 v0, v42

    int-to-float v10, v0

    const/high16 v11, 0x40400000    # 3.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x40800000    # 4.0f

    mul-float/2addr v10, v11

    move/from16 v0, v42

    int-to-float v11, v0

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    .line 691
    new-instance v13, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f090148

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v15, v6

    const/16 v16, 0x0

    move/from16 v0, v42

    int-to-float v6, v0

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x40800000    # 4.0f

    mul-float v17, v6, v7

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-direct/range {v13 .. v19}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_2

    .line 693
    :cond_4
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 694
    new-instance v6, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v0, v43

    int-to-float v10, v0

    move/from16 v0, v42

    int-to-float v11, v0

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    .line 695
    new-instance v13, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-direct/range {v13 .. v19}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_2

    .line 696
    :cond_5
    sget-boolean v6, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v6

    if-nez v6, :cond_6

    .line 697
    new-instance v6, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v8, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_WIDTH:I

    sub-int v8, v43, v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/4 v9, 0x0

    sget v10, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_WIDTH:I

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_HEIGHT:I

    int-to-float v11, v11

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    .line 698
    new-instance v13, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v6, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_WIDTH:I

    sub-int v6, v43, v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v15, v6, v7

    const/16 v16, 0x0

    sget v6, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_WIDTH:I

    int-to-float v0, v6

    move/from16 v17, v0

    sget v6, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_HEIGHT:I

    int-to-float v0, v6

    move/from16 v18, v0

    invoke-direct/range {v13 .. v19}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_2

    .line 700
    :cond_6
    new-instance v6, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v8, 0x0

    sub-int v9, v42, v46

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move/from16 v0, v43

    int-to-float v10, v0

    move/from16 v0, v46

    int-to-float v11, v0

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    .line 701
    new-instance v13, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v15, 0x0

    sub-int v6, v42, v46

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v16, v6, v7

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-direct/range {v13 .. v19}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_2

    .line 715
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setFlip(Z)V

    goto/16 :goto_3
.end method

.method private startPreviewChangingAnimation([B)V
    .locals 18
    .param p1, "data"    # [B

    .prologue
    .line 839
    const-string v2, "Camera5VI"

    const-string v3, "startPreviewChangingAnimation - E"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v12

    .line 842
    .local v12, "isFront":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0901bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v16, v0

    .line 843
    .local v16, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0901be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v15, v2

    .line 844
    .local v15, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewWidth()I

    move-result v14

    .line 845
    .local v14, "previewWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewHeight()I

    move-result v13

    .line 847
    .local v13, "previewHeight":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsPreviewChangingAnimationRunning:Z

    .line 851
    if-eqz v14, :cond_0

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderWidth()I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderHeight()I

    move-result v2

    if-nez v2, :cond_2

    .line 852
    :cond_0
    const-string v2, "Camera5VI"

    const-string v3, "startPreviewChangingAnimation - set wrong preview size"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const-string v2, "Camera5VI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "w : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", h : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOriginalViewFinderWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", getOriginalViewFinderHeight() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setOriginalViewFinderWidth(I)V

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setOriginalViewFinderHeight(I)V

    .line 857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0, v14, v13}, Lcom/sec/android/app/camera/util/ImageUtils;->convertYuvToRGB(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 862
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    const/16 p1, 0x0

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewAspectRatio()D

    move-result-wide v10

    .line 865
    .local v10, "aspectRatio":D
    invoke-static {v10, v11}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v9

    .line 866
    .local v9, "aspectRatioType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 867
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v15

    int-to-float v7, v15

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    .line 885
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v8}, Lcom/samsung/android/glview/GLImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 890
    if-eqz v12, :cond_9

    .line 891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setFlip(Z)V

    .line 897
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    if-nez v2, :cond_a

    .line 898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_1

    .line 899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 902
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    .line 904
    :cond_1
    const-string v2, "Camera5VI"

    const-string v3, "Return, startPreviewChangingAnimation"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :goto_3
    return-void

    .line 860
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "aspectRatioType":I
    .end local v10    # "aspectRatio":D
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0, v14, v13}, Lcom/sec/android/app/camera/util/ImageUtils;->convertYuvToRGB(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;

    move-result-object v8

    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 868
    .restart local v9    # "aspectRatioType":I
    .restart local v10    # "aspectRatio":D
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 869
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f09008b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sub-int v5, v15, v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f09008c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v17, 0x7f09008b

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_1

    .line 871
    :cond_4
    const/4 v2, 0x2

    if-ne v9, v2, :cond_5

    .line 872
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f09024d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    int-to-float v6, v15

    int-to-float v7, v15

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_1

    .line 873
    :cond_5
    const/4 v2, 0x1

    if-ne v9, v2, :cond_6

    .line 874
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f090148

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    int-to-float v6, v15

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v6, v7

    int-to-float v7, v15

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_1

    .line 876
    :cond_6
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 877
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v16

    int-to-float v6, v0

    int-to-float v7, v15

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_1

    .line 878
    :cond_7
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v2

    if-nez v2, :cond_8

    .line 879
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_WIDTH:I

    sub-int v4, v16, v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_1

    .line 881
    :cond_8
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderHeight()I

    move-result v5

    sub-int v5, v15, v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move/from16 v0, v16

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_1

    .line 893
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setFlip(Z)V

    goto/16 :goto_2

    .line 908
    :cond_a
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/menu/VisualInteraction;->showBlackOverlay(FLcom/samsung/android/glview/GLViewGroup;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->bringToFront()V

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 911
    const-string v2, "Camera5VI"

    const-string v3, "startPreviewChangingAnimation - X"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method


# virtual methods
.method public cancelPreviewAnimation()V
    .locals 3

    .prologue
    .line 118
    const-string v0, "Camera5VI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelPreviewAnimation, mCurrentPreviewAnimation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    .line 129
    return-void

    .line 121
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->cancelCameraSwitchingAnimation()V

    goto :goto_0

    .line 125
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->cancelPreviewChangingAnimation()V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hideBlackOverlay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    .line 137
    const-string v0, "Camera5VI"

    const-string v1, "Black overlay is already invisible"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string v0, "Camera5VI"

    const-string v1, "hideBlackOverlay"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 144
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 156
    const-string v0, "Camera5VI"

    const-string v1, "hideBlackOverlayWithAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 158
    new-instance v0, Lcom/sec/android/app/camera/menu/VisualInteraction$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/VisualInteraction$1;-><init>(Lcom/sec/android/app/camera/menu/VisualInteraction;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->startAnimation()V

    .line 179
    return-void
.end method

.method public hidePreviewAnimation()V
    .locals 3

    .prologue
    .line 186
    const-string v0, "Camera5VI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidePreviewAnimation, mCurrentPreviewAnimation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    .line 198
    return-void

    .line 189
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hideCameraSwitchingAnimation()V

    goto :goto_0

    .line 193
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hidePreviewChangingAnimation()V

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hideScreenFlashAnimation()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "Camera5VI"

    const-string v1, "hideScreenFlashAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hideWhiteOverlay()V

    .line 207
    return-void
.end method

.method public hideWhiteOverlay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    .line 214
    const-string v0, "Camera5VI"

    const-string v1, "White overlay is already invisible"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return-void

    .line 218
    :cond_0
    const-string v0, "Camera5VI"

    const-string v1, "hideWhiteOverlay"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 221
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mWhiteOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public isBlackOverlayVisible()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraSwitchingAnimationRunning()Z
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->isCameraSwitchingAnimationStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->isSwitchCameraAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraSwitchingAnimationStarted()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationStarted:Z

    return v0
.end method

.method public isPreviewChangingAnimationRunning()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsPreviewChangingAnimationRunning:Z

    return v0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 454
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->isCameraSwitchingAnimationStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 458
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsHideSwitchingAnimationWaiting:Z

    .line 460
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationStarted:Z

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsSwitchCameraAnimationFinished:Z

    .line 462
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->hideBlackOverlay()V

    .line 463
    return-void
.end method

.method public setBlackOverlayAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    .line 274
    return-void
.end method

.method public setPreviewAnimation(I)V
    .locals 3
    .param p1, "animation"    # I

    .prologue
    .line 283
    const-string v0, "Camera5VI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewAnimation, animation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iput p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    .line 285
    return-void
.end method

.method public setPreviewRect()V
    .locals 15

    .prologue
    const v14, 0x7f0c000c

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 292
    const-string v0, "Camera5VI"

    const-string v1, "setPreviewRect"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v11

    .line 295
    .local v11, "previewArea":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 296
    .local v10, "leftMarginArea":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 299
    .local v12, "rightMarginArea":Landroid/graphics/Rect;
    iget v0, v11, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_0

    iget v0, v11, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenWidth:I

    if-ge v0, v1, :cond_0

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenHeight:I

    if-ne v0, v1, :cond_0

    .line 301
    iget v0, v11, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenHeight:I

    invoke-virtual {v10, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 302
    iget v0, v11, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenWidth:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenHeight:I

    invoke-virtual {v12, v0, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 324
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewLeftMargin:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_4

    .line 325
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v10, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/app/Activity;->getColor(I)I

    move-result v6

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewLeftMargin:Lcom/samsung/android/glview/GLRectangle;

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewLeftMargin:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBackgroundRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewLeftMargin:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 332
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewRightMargin:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_5

    .line 333
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v12, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/app/Activity;->getColor(I)I

    move-result v6

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewRightMargin:Lcom/samsung/android/glview/GLRectangle;

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewRightMargin:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBackgroundRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewRightMargin:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 340
    :goto_2
    return-void

    .line 303
    :cond_0
    iget v0, v11, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_1

    iget v0, v11, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_1

    iget v0, v11, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenWidth:I

    if-ne v0, v1, :cond_1

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenHeight:I

    if-ge v0, v1, :cond_1

    .line 306
    iget v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenWidth:I

    iget v1, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 307
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenWidth:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenHeight:I

    invoke-virtual {v12, v3, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0901be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v13, v0

    .line 311
    .local v13, "width":I
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0901bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f09010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int v9, v0, v1

    .line 313
    .local v9, "coverScreenWidth":I
    if-le v13, v9, :cond_2

    .line 314
    move v13, v9

    .line 316
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenWidth:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mScreenHeight:I

    invoke-virtual {v12, v13, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 318
    .end local v9    # "coverScreenWidth":I
    .end local v13    # "width":I
    :cond_3
    const-string v0, "Camera5VI"

    const-string v1, "setPreviewRect - Exceptional cases"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v10, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 320
    invoke-virtual {v12, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 330
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewLeftMargin:Lcom/samsung/android/glview/GLRectangle;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setRect(Landroid/graphics/RectF;)V

    goto/16 :goto_1

    .line 338
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewRightMargin:Lcom/samsung/android/glview/GLRectangle;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setRect(Landroid/graphics/RectF;)V

    goto/16 :goto_2
.end method

.method public showBlackOverlay(FLcom/samsung/android/glview/GLViewGroup;)V
    .locals 2
    .param p1, "alpha"    # F
    .param p2, "parentViewGroup"    # Lcom/samsung/android/glview/GLViewGroup;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 351
    const-string v0, "Camera5VI"

    const-string v1, "Black overlay is already visible"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_0
    return-void

    .line 354
    :cond_0
    const-string v0, "Camera5VI"

    const-string v1, "showBlackOverlay"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    if-nez p2, :cond_1

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBackgroundRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object p2

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    .line 362
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto :goto_0
.end method

.method public showBlackOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "parentViewGroup"    # Lcom/samsung/android/glview/GLViewGroup;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 376
    const-string v0, "Camera5VI"

    const-string v1, "Black overlay is already visible"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    return-void

    .line 379
    :cond_0
    const-string v0, "Camera5VI"

    const-string v1, "showBlackOverlayWithAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    if-nez p2, :cond_1

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBackgroundRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object p2

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 386
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->startAnimation()V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto :goto_0
.end method

.method public startPreviewAnimation([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 399
    const-string v0, "Camera5VI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreviewAnimation, mCurrentPreviewAnimation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mCurrentPreviewAnimation:I

    packed-switch v0, :pswitch_data_0

    .line 409
    :goto_0
    return-void

    .line 402
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->startCameraSwitchingAnimation([B)V

    goto :goto_0

    .line 406
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->startPreviewChangingAnimation([B)V

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startScreenFlashAnimation()V
    .locals 2

    .prologue
    .line 416
    const-string v0, "Camera5VI"

    const-string v1, "startScreenFlashAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(FI)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->showWhiteOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 418
    return-void
.end method

.method public startShutterAnimation()V
    .locals 4

    .prologue
    .line 425
    const-string v1, "Camera5VI"

    const-string v2, "startShutterAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_0

    .line 427
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 428
    .local v0, "alphaAnim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 429
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 430
    new-instance v1, Lcom/sec/android/app/camera/menu/VisualInteraction$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/VisualInteraction$2;-><init>(Lcom/sec/android/app/camera/menu/VisualInteraction;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 447
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->showBlackOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 449
    const-string v1, "Animating Shutter"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 451
    .end local v0    # "alphaAnim":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method
