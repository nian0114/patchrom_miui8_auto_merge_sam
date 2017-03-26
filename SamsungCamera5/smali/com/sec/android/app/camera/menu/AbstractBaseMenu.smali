.class public abstract Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "AbstractBaseMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/BaseMenuController;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$KeyListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;


# static fields
.field protected static final ANIMATION_DURATION_200:I = 0xc8

.field protected static final ANIMATION_DURATION_300:I = 0x12c

.field protected static final ANIMATION_DURATION_400:I = 0x190

.field protected static final ANIMATION_DURATION_470:I = 0x1d6

.field protected static final ANIMATION_DURATION_570:I = 0x23a

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SHOOTINGMODE_TEXT_SIZE_DEFAULT:I

.field private static final SHOOTINGMODE_TEXT_SIZE_EXTRA_SMALL:I

.field private static final SHOOTINGMODE_TEXT_SIZE_LARGE:I

.field private static final SHOOTINGMODE_TEXT_SIZE_SMALL:I


# instance fields
.field private final REVIEW_HIDE_ANIMATION_DURATION:I

.field protected mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

.field protected mAttachMode:Z

.field protected mBottomParentView:Lcom/samsung/android/glview/GLView;

.field protected mBottomVIButton:Lcom/samsung/android/glview/GLButton;

.field protected mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

.field protected mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

.field protected mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

.field protected mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

.field protected mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

.field protected mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

.field protected mDimState:Z

.field protected mDisableIndicators:Z

.field protected mDisableOverlayLayout:Z

.field protected mDisableRecordingButton:Z

.field protected mDisableShootingModeButton:Z

.field protected mDisableShutterButton:Z

.field protected mDisableSideQuickSetting:Z

.field protected mDisableSwitchCameraButton:Z

.field protected mDisableThumbnailButton:Z

.field protected final mEAMReceiver:Landroid/content/BroadcastReceiver;

.field protected mFlingGestureDetector:Landroid/view/GestureDetector;

.field protected mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

.field protected mMiddleParentView:Lcom/samsung/android/glview/GLView;

.field protected mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

.field protected mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

.field protected mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

.field protected mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

.field protected mQuickViewAnimating:Z

.field protected mQuickViewShowing:Z

.field protected mRecordingAnimation:Z

.field protected mRecordingButton:Lcom/samsung/android/glview/GLButton;

.field protected mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

.field protected mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field protected mReviewShowing:Z

.field protected mShootingModeButton:Lcom/samsung/android/glview/GLButton;

.field protected mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

.field protected mShootingModeText:Lcom/samsung/android/glview/GLText;

.field protected mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field protected mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

.field protected mShutterButton:Lcom/samsung/android/glview/GLButton;

.field protected mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

.field protected mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field protected mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

.field protected mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

.field protected mSwitchCameraHideAnimationSet:Landroid/view/animation/AnimationSet;

.field protected mSwitchCameraShowAnimationSet:Landroid/view/animation/AnimationSet;

.field protected mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

.field protected mTopParentView:Lcom/samsung/android/glview/GLView;

.field protected mTopVIButton:Lcom/samsung/android/glview/GLButton;

.field protected mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SCREEN_WIDTH:I

    .line 74
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SCREEN_HEIGHT:I

    .line 75
    const v0, 0x7f090204

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SHOOTINGMODE_TEXT_SIZE_DEFAULT:I

    .line 76
    const v0, 0x7f090206

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SHOOTINGMODE_TEXT_SIZE_LARGE:I

    .line 77
    const v0, 0x7f090207

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SHOOTINGMODE_TEXT_SIZE_SMALL:I

    .line 78
    const v0, 0x7f090205

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SHOOTINGMODE_TEXT_SIZE_EXTRA_SMALL:I

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 9
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p7, "zOrder"    # I

    .prologue
    .line 145
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    .line 79
    const v0, 0x7f0a0015

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->REVIEW_HIDE_ANIMATION_DURATION:I

    .line 87
    new-instance v0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$1;-><init>(Lcom/sec/android/app/camera/menu/AbstractBaseMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mReviewShowing:Z

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickViewShowing:Z

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickViewAnimating:Z

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableShutterButton:Z

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableRecordingButton:Z

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableSwitchCameraButton:Z

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableThumbnailButton:Z

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableShootingModeButton:Z

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableSideQuickSetting:Z

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableOverlayLayout:Z

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableIndicators:Z

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mRecordingAnimation:Z

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAttachMode:Z

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDimState:Z

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    .line 146
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 147
    return-void
.end method


# virtual methods
.method public enableRecordingAnimation()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mRecordingAnimation:Z

    .line 152
    return-void
.end method

.method public endShutterProgressWheel()V
    .locals 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDimState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    .line 160
    return-void
.end method

.method protected abstract getAnchor(I)Lcom/samsung/android/glview/GLImage;
.end method

.method protected getCurrentLocaleModeTextSize()I
    .locals 2

    .prologue
    .line 555
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "currentLanguage":Ljava/lang/String;
    const-string v1, "hu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    sget v1, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SHOOTINGMODE_TEXT_SIZE_EXTRA_SMALL:I

    .line 567
    :goto_0
    return v1

    .line 559
    :cond_0
    const-string v1, "da"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "lt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 560
    :cond_1
    sget v1, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SHOOTINGMODE_TEXT_SIZE_SMALL:I

    goto :goto_0

    .line 561
    :cond_2
    const-string v1, "am"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "as"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "bn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "gu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "hi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "is"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "mr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "te"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 565
    :cond_3
    sget v1, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SHOOTINGMODE_TEXT_SIZE_LARGE:I

    goto/16 :goto_0

    .line 567
    :cond_4
    sget v1, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->SHOOTINGMODE_TEXT_SIZE_DEFAULT:I

    goto/16 :goto_0
.end method

.method public abstract getIndicators()Lcom/sec/android/app/camera/menu/Indicators;
.end method

.method public getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    return-object v0
.end method

.method public hideQuickView()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickViewShowing:Z

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/QuickView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->hideQuickView()V

    .line 220
    :cond_0
    return-void
.end method

.method public hideReview(Z)V
    .locals 4
    .param p1, "withAnimation"    # Z

    .prologue
    const/4 v3, 0x0

    .line 166
    const-string v1, "AbstractMenu"

    const-string v2, "hideReview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/QuickView;->removeReviewTimeOutCallback()V

    .line 172
    :cond_0
    if-eqz p1, :cond_2

    .line 173
    iget v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->REVIEW_HIDE_ANIMATION_DURATION:I

    new-instance v2, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 174
    .local v0, "hideAnim":Landroid/view/animation/Animation;
    new-instance v1, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$2;-><init>(Lcom/sec/android/app/camera/menu/AbstractBaseMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mReviewShowing:Z

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/QuickView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/QuickView;->startAnimation()V

    .line 209
    .end local v0    # "hideAnim":Landroid/view/animation/Animation;
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mReviewShowing:Z

    .line 210
    return-void

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/QuickView;->isShareViaWorking()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/QuickView;->hideReview()V

    .line 207
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/QuickView;->cancelAnimation()V

    goto :goto_0

    .line 204
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/QuickView;->setVisibility(I)V

    .line 205
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mReviewShowing:Z

    goto :goto_1
.end method

.method public abstract hideView(I)V
.end method

.method public isDimmed(I)Z
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 236
    sparse-switch p1, :sswitch_data_0

    .line 246
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 238
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    goto :goto_0

    .line 240
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    goto :goto_0

    .line 242
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->isDim()Z

    move-result v0

    goto :goto_0

    .line 236
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public isPressed(I)Z
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 251
    packed-switch p1, :pswitch_data_0

    .line 257
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 253
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isPressed()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isPressed()Z

    move-result v0

    goto :goto_0

    .line 255
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isPressed()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isPressed()Z

    move-result v0

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isQuickViewImageUpdated()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->isQuickViewImageUpdated()Z

    move-result v0

    .line 228
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickViewShowing()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickViewShowing:Z

    return v0
.end method

.method public isReviewShowing()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mReviewShowing:Z

    return v0
.end method

.method public isShareViaWorking()Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->isShareViaWorking()Z

    move-result v0

    .line 414
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterProgressWheelVisible()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 268
    const/4 v0, 0x1

    .line 270
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract makeBaseMenuVIAnimation()V
.end method

.method protected abstract makeRecordingMenuVIAnimation()V
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    const/4 v0, 0x1

    .line 581
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onQuickViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickViewShowing:Z

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/QuickView;->quickViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 400
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestFocus(I)V
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 275
    packed-switch p1, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 277
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected resetView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 585
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableShutterButton:Z

    .line 586
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableRecordingButton:Z

    .line 587
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableSwitchCameraButton:Z

    .line 588
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableThumbnailButton:Z

    .line 589
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableShootingModeButton:Z

    .line 590
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableSideQuickSetting:Z

    .line 591
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableOverlayLayout:Z

    .line 592
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableIndicators:Z

    .line 593
    return-void
.end method

.method protected setAttachMode(Z)V
    .locals 4
    .param p1, "attachMode"    # Z

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 601
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAttachMode:Z

    if-eq v0, p1, :cond_0

    .line 602
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAttachMode:Z

    .line 604
    if-eqz p1, :cond_1

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 606
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableShootingModeButton:Z

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    .line 608
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableThumbnailButton:Z

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setDim(Z)V

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 612
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableShootingModeButton:Z

    .line 613
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    .line 614
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableThumbnailButton:Z

    .line 615
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setDim(Z)V

    goto :goto_0
.end method

.method public setCoverCamera(Z)V
    .locals 5
    .param p1, "coverCamera"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 292
    if-nez p1, :cond_2

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/QuickView;->setCoverCamera(Z)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 298
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(IZ)V

    .line 302
    iput-boolean v4, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableThumbnailButton:Z

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setRotatableForCoverCamera(Z)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->moveBaseLayoutAbsolute(FF)V

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_4

    .line 309
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->showView(I)V

    .line 311
    :cond_4
    return-void
.end method

.method public setDim(IZ)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "dim"    # Z

    .prologue
    .line 315
    sparse-switch p1, :sswitch_data_0

    .line 328
    :goto_0
    return-void

    .line 317
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0

    .line 320
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0

    .line 323
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setDim(Z)V

    goto :goto_0

    .line 315
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public setRecordingButtonForAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;)V
    .locals 1
    .param p1, "bottom"    # Lcom/samsung/android/glview/GLButton;
    .param p2, "middle"    # Lcom/samsung/android/glview/GLButton;
    .param p3, "top"    # Lcom/samsung/android/glview/GLButton;

    .prologue
    .line 332
    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p1, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mBottomParentView:Lcom/samsung/android/glview/GLView;

    .line 334
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 337
    :cond_0
    if-eqz p2, :cond_1

    .line 338
    iget-object v0, p2, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mMiddleParentView:Lcom/samsung/android/glview/GLView;

    .line 339
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 342
    :cond_1
    if-eqz p3, :cond_2

    .line 343
    iget-object v0, p3, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mTopParentView:Lcom/samsung/android/glview/GLView;

    .line 344
    iput-object p3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 347
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->makeRecordingMenuVIAnimation()V

    .line 348
    return-void
.end method

.method protected declared-synchronized setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 2
    .param p1, "shootingModeviewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p2, "shootingModeControllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;

    .prologue
    .line 621
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 622
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 625
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 626
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    monitor-exit p0

    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShutterProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    .line 352
    int-to-double v2, p1

    const-wide v4, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 353
    .local v0, "arcprocess":I
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setProgress(I)V

    .line 354
    return-void
.end method

.method public setThumbnailOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setThumbnailOrientation(I)V

    .line 361
    :cond_0
    return-void
.end method

.method public setThumbnailUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setThumbnailUri(Landroid/net/Uri;)V

    .line 368
    :cond_0
    return-void
.end method

.method public showQuickView()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/QuickView;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->initQuickViewDragging()V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->showQuickView()V

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickViewShowing:Z

    .line 392
    :cond_0
    return-void
.end method

.method public showReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "captureFileName"    # Ljava/lang/String;
    .param p4, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    .line 425
    const-string v0, "AbstractMenu"

    const-string v1, "showReview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    if-nez p1, :cond_1

    .line 428
    const-string v0, "AbstractMenu"

    const-string v1, "bitmap is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->isPressed(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isLaunchGallery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getZorderOnTop()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 437
    const-string v0, "AbstractMenu"

    const-string v1, "showReview : ignore showReview because another menu is showing now"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->isReviewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->isQuickViewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-nez v0, :cond_4

    .line 446
    new-instance v0, Lcom/sec/android/app/camera/menu/QuickView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/camera/menu/QuickView;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/BaseMenuController;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/QuickView;->setCoverCamera(Z)V

    .line 450
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/QuickView;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getPopupMenuRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 454
    :cond_4
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mReviewShowing:Z

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/menu/QuickView;->updateReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    new-instance v1, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;-><init>(Lcom/sec/android/app/camera/menu/AbstractBaseMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/QuickView;->setReviewButtonListener(Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;)V

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->startShowReviewAnimation()V

    goto :goto_0
.end method

.method protected showThumbnailButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 630
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAttachMode:Z

    if-eqz v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getUriListInSecureCamera()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setDim(Z)V

    goto :goto_0

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->clearLastContentUri()V

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setDim(Z)V

    goto :goto_0

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setDim(Z)V

    goto :goto_0
.end method

.method public abstract showView(I)V
.end method

.method public startShutterProgressWheel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDimState:Z

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setProgress(I)V

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    .line 517
    return-void
.end method

.method public updateQuickView(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "captureFileName"    # Ljava/lang/String;
    .param p4, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-nez v0, :cond_1

    .line 373
    new-instance v0, Lcom/sec/android/app/camera/menu/QuickView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/camera/menu/QuickView;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/BaseMenuController;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/QuickView;->setCoverCamera(Z)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/QuickView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getPopupMenuRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/menu/QuickView;->updateQuickView(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V

    .line 382
    return-void
.end method

.method public updateThumbnailButton()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->update()V

    goto :goto_0
.end method

.method public updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V
    .locals 3
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "needFlip"    # Z

    .prologue
    const/4 v2, 0x0

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setDim(Z)V

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->update(Landroid/graphics/Bitmap;IZ)V

    .line 550
    :cond_2
    return-void
.end method
