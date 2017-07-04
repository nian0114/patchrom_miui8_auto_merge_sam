.class public Lcom/android/internal/policy/MultiPhoneWindow;
.super Lcom/android/internal/policy/PhoneWindow;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;,
        Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;,
        Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;,
        Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;,
        Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final DEBUG_FLOATING_BGCOLOR:Z

.field static final DEBUG_FLOATING_CYCLE:Z

.field static final DEBUG_FLOATING_SIZE:Z

.field static final DEBUG_GUIDEVIEW:Z = false

.field public static final DEBUG_MINIMIZE_ANIM:Z

.field static final DEBUG_ORIENTATION:Z

.field static final DEBUG_RESIZE_VISUAL_CUE:Z

.field static final DEBUG_TAB:Z

.field private static final LOGGING_REASON_DOCKING:I = 0x1

.field private static final STATE_FLOATING:I = 0x2

.field private static final STATE_MINIMIZED_FLOATING:I = 0x4

.field private static final STATE_NONE:I = -0x1

.field private static final STATE_NORMAL:I = 0x1

.field private static final STATE_SCALED_FLOATING:I = 0x3

.field static final TAG:Ljava/lang/String; = "MultiPhoneWindow"

.field private static final bDSSEnabled:Z = true


# instance fields
.field private final NOT_SET:I

.field protected final TEMP_TOAST_HEIGHT:I

.field private badgeIcon:Landroid/graphics/drawable/Drawable;

.field private mActivity:Landroid/app/Activity;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBlackColor:Landroid/graphics/drawable/ColorDrawable;

.field private mBorder:Lcom/android/internal/policy/multiwindow/Border;

.field private mContentLayoutGenerated:Z

.field private mContentRootContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

.field private mCustomMinimizedView:Landroid/view/View;

.field private mDismissGuideByDockingCanceled:Z

.field private mDocking:Lcom/android/internal/policy/multiwindow/Docking;

.field private mDragMode:Z

.field mDragModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDssScale:F

.field private mFloatingFlag:I

.field private mFloatingMenuRightMargin:I

.field private mFocusedViewId:I

.field private mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

.field private mHScale:F

.field mHandler:Landroid/os/Handler;

.field private mHasStackFocus:Z

.field private mHeaderButtonSoundId:I

.field private mInitialFlag:I

.field private mIsAttachedToWindow:Z

.field private mIsBorderShown:Z

.field private mIsFinishing:Z

.field private mIsFullScreen:Z

.field private mIsMinimizeDisabled:Z

.field private mIsPenButtonPressed:Z

.field private mIsSecure:Z

.field private final mIsSupportDiagonalResizable:Z

.field private final mIsSupportMinimizeAnimation:Z

.field private final mIsSupportSimplificationUI:Z

.field private mLastHoverIcon:I

.field private mLastOrientation:I

.field private mLastRotated:Z

.field private mLastStackBound:Landroid/graphics/Rect;

.field private mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

.field private mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

.field private mMaxSizeRatio:F

.field private mMinStackBoundForLand:Landroid/graphics/Rect;

.field private mMinStackBoundForPort:Landroid/graphics/Rect;

.field private mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

.field private mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

.field private final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

.field private mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

.field private mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mResizablePadding:Landroid/graphics/Rect;

.field private mRotation:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStackBound:Landroid/graphics/Rect;

.field private mStatusBarHeight:I

.field private mSubWindow:Landroid/view/Window;

.field private mTargetSdkVersion:I

.field private mThickness:I

.field private mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

.field private mTitleBarHeight:I

.field private mTmpBound:Landroid/graphics/Rect;

.field private mToken:Landroid/os/IBinder;

.field private mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

.field private mVScale:F

.field private mVideoCapabilityDialog:Landroid/app/AlertDialog;

.field private mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

.field private userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_SIZE:Z

    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_BGCOLOR:Z

    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_TAB:Z

    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_ORIENTATION:Z

    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFinishing:Z

    iput v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->NOT_SET:I

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSecure:Z

    iput v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastOrientation:I

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastRotated:Z

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    const/16 v0, 0x28

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->TEMP_TOAST_HEIGHT:I

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsAttachedToWindow:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragMode:Z

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mBlackColor:Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsPenButtonPressed:Z

    iput v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastHoverIcon:I

    iput v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHeaderButtonSoundId:I

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->userId:I

    new-instance v0, Lcom/android/internal/policy/MultiPhoneWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiPhoneWindow$1;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    new-instance v0, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->userId:I

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMinimizeAnimation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTargetSdkVersion:I

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->dssScale:F

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    new-instance v0, Lcom/android/internal/policy/multiwindow/Docking;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/multiwindow/Docking;-><init>(Landroid/app/Activity;Lcom/samsung/android/multiwindow/MultiWindowFacade;F)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    new-instance v1, Lcom/android/internal/policy/MultiPhoneWindow$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/MultiPhoneWindow$2;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/Docking;->setOnDockingListener(Lcom/android/internal/policy/multiwindow/Docking$OnDockingListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateRestricedStackBounds()V

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initResource()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/MultiPhoneWindow;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/graphics/Rect;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/MultiPhoneWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/graphics/Point;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Point;
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/MultiPhoneWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/multiwindow/Border;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mThickness:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastHoverIcon:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/internal/policy/MultiPhoneWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastHoverIcon:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->isInputMethodShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/MultiPhoneWindow;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsAttachedToWindow:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsAttachedToWindow:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/MultiPhoneWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    return v0
.end method

.method static synthetic access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragMode:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragMode:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTitleBarHeight:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFinishing:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFinishing:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/multiwindow/Docking;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/internal/policy/MultiPhoneWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateIsFullScreen()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHeaderButtonSoundId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingMenuRightMargin:I

    return v0
.end method

.method static synthetic access$6202(Lcom/android/internal/policy/MultiPhoneWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingMenuRightMargin:I

    return p1
.end method

.method static synthetic access$6800(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTargetSdkVersion:I

    return v0
.end method

.method static synthetic access$6900(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsPenButtonPressed:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsPenButtonPressed:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/MultiPhoneWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initStackBound()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->forceHideInputMethod()Z

    move-result v0

    return v0
.end method

.method private adjustMinimizedStackBound(Landroid/graphics/Rect;)Z
    .locals 8
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .local v2, "outOfBound":Z
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10502af

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .local v1, "originPixelSize":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .local v4, "screenSize":Landroid/graphics/Point;
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int v3, v5, v1

    .local v3, "right":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int v0, v5, v1

    .local v0, "bottom":I
    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_2

    iget v5, p1, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    const/4 v2, 0x1

    :cond_0
    :goto_0
    iget v5, v4, Landroid/graphics/Point;->y:I

    if-le v0, v5, :cond_3

    iget v5, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    const/4 v2, 0x1

    :cond_1
    :goto_1
    return v2

    :cond_2
    iget v5, v4, Landroid/graphics/Point;->x:I

    if-le v3, v5, :cond_0

    iget v5, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v3

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    if-ge v5, v6, :cond_1

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    const/4 v2, 0x1

    goto :goto_1
.end method

.method private adjustScaleFactor()V
    .locals 6

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .local v1, "size":Landroid/graphics/Point;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-gt v3, v4, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-lt v3, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget v2, v1, Landroid/graphics/Point;->x:I

    .local v2, "temp":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    .end local v2    # "temp":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTitleBarHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_4

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustScaleFactor mStackBound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "size":Landroid/graphics/Point;
    :cond_4
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_5

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustScaleFactor result hScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",vScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    invoke-virtual {v3, v4, v5}, Landroid/view/WindowManagerGlobal;->setMultiWindowScale(FF)V

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewRootImpl;->setMultiWindowScale(FF)V

    :cond_6
    return-void
.end method

.method private adjustStackBound(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v0, v4, 0x3

    .local v0, "boundaryX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v1, v4, 0x3

    .local v1, "boundaryY":I
    const/4 v2, 0x0

    .local v2, "headerWindowMargin":I
    iget-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v5}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v5

    add-int v0, v4, v5

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502cd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    :cond_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .local v3, "maxSize":Landroid/graphics/Point;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v0

    if-le v4, v5, :cond_3

    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v0

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1
    :goto_0
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v1

    if-le v4, v5, :cond_4

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-ge v4, v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v0, v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_4
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_2

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1
.end method

.method private checkMaxStackSize(Landroid/graphics/Rect;I)Z
    .locals 19
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "orientation"    # I

    .prologue
    const/4 v7, 0x0

    .local v7, "isFixed":Z
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .local v1, "d":Landroid/graphics/Point;
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v12}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    .local v11, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    .local v6, "h":I
    iget v12, v1, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    mul-float/2addr v12, v13

    float-to-int v4, v12

    .local v4, "dw":I
    iget v12, v1, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    mul-float/2addr v12, v13

    float-to-int v3, v12

    .local v3, "dh":I
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v10

    .local v10, "mw":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v9

    .local v9, "mh":I
    :goto_0
    const/4 v8, 0x0

    .local v8, "isSelective":Z
    sget-boolean v12, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v9

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .local v2, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    move-object v12, v2

    check-cast v12, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I
    invoke-static {v12, v10}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->access$4102(Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;I)I

    check-cast v2, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    .end local v2    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    # setter for: Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I
    invoke-static {v2, v9}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->access$4202(Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;I)I

    :cond_0
    if-lt v11, v10, :cond_1

    if-lt v6, v9, :cond_1

    sget-boolean v12, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v12, :cond_2

    if-eqz v8, :cond_2

    :cond_1
    sub-int v12, v10, v11

    div-int/lit8 v5, v12, 0x2

    .local v5, "gapWidth":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v5

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v10

    sub-int/2addr v14, v5

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .end local v5    # "gapWidth":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v11, v4, :cond_6

    const/4 v7, 0x1

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v4

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v6

    move/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    int-to-float v0, v11

    move/from16 v18, v0

    div-float v17, v17, v18

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    :goto_2
    return v7

    .end local v8    # "isSelective":Z
    .end local v9    # "mh":I
    .end local v10    # "mw":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v10

    .restart local v10    # "mw":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v9

    .restart local v9    # "mh":I
    goto/16 :goto_0

    .restart local v8    # "isSelective":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v9

    goto/16 :goto_1

    :cond_6
    if-le v6, v3, :cond_3

    const/4 v7, 0x1

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->left:I

    int-to-float v15, v11

    int-to-float v0, v3

    move/from16 v16, v0

    int-to-float v0, v6

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v15, v15, v16

    float-to-int v15, v15

    add-int/2addr v14, v15

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2
.end method

.method private checkRotationNeeded(I)Z
    .locals 7
    .param p1, "requestedOrientation"    # I

    .prologue
    const/4 v6, -0x1

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getExpectedOrientation()I

    move-result v1

    .local v1, "expectedOrientation":I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getExplicitOrientation(I)I

    move-result v0

    .local v0, "expectedExplicitOrientation":I
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/MultiPhoneWindow;->isRotated(I)Z

    move-result v3

    .local v3, "rotated":Z
    const/4 v4, 0x0

    .local v4, "rotationNeeded":Z
    if-eq v0, v6, :cond_2

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-nez v3, :cond_2

    :cond_1
    const/4 v4, 0x1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->getExplicitOrientation(I)I

    move-result v2

    .local v2, "requestedExplicitOrientation":I
    if-nez v4, :cond_3

    if-eq v2, v6, :cond_3

    if-eq v2, v0, :cond_3

    const/4 v4, 0x0

    .end local v4    # "rotationNeeded":Z
    :cond_3
    return v4
.end method

.method private dismissWritingBuddy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v1

    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->finish(Z)V

    goto :goto_0
.end method

.method private forceHideInputMethod()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x0

    .local v4, "res":Z
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v4

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, "conf":Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v1, :cond_1

    move v2, v1

    .local v2, "haveHardKeyboard":Z
    :goto_0
    if-eqz v2, :cond_2

    iget v6, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .local v1, "hardKeyShown":Z
    :goto_1
    if-eqz v1, :cond_0

    const/4 v4, 0x0

    .end local v0    # "conf":Landroid/content/res/Configuration;
    .end local v1    # "hardKeyShown":Z
    .end local v2    # "haveHardKeyboard":Z
    :cond_0
    return v4

    .restart local v0    # "conf":Landroid/content/res/Configuration;
    :cond_1
    move v2, v5

    goto :goto_0

    .restart local v2    # "haveHardKeyboard":Z
    :cond_2
    move v1, v5

    goto :goto_1
.end method

.method private generatePenWindowLayout()V
    .locals 7

    .prologue
    iget-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    if-eqz v4, :cond_0

    new-instance v4, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    invoke-direct {v4, v5, p0, v6}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/MultiPhoneWindow;F)V

    iput-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090095

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    iput-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->generateLayout()V

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .local v1, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    move-object v4, v1

    check-cast v4, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->updateMultiPhoneWindowLayout()V

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "content":Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "content":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    goto :goto_0
.end method

.method private getDisplaySize(Landroid/graphics/Point;)Z
    .locals 1
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method private getDisplaySize(Landroid/graphics/Point;Z)Z
    .locals 5
    .param p1, "outbound"    # Landroid/graphics/Point;
    .param p2, "isReal"    # Z

    .prologue
    const/4 v3, 0x0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .local v2, "rect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRealSize(Landroid/graphics/Rect;Landroid/view/DisplayInfo;)Z

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_0
    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private getExplicitOrientation(I)I
    .locals 1
    .param p1, "requestedOrientation"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getState()I
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initFocusedView()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    return-void
.end method

.method private initResource()V
    .locals 4

    .prologue
    const v2, 0x10502c4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTitleBarHeight:I

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mThickness:I

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportCenterbarClickSound(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v3, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const v2, 0x1100022

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHeaderButtonSoundId:I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    goto :goto_0
.end method

.method private initStackBound()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "bound":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v3, v4, :cond_1

    move v1, v2

    .local v1, "isStackHasPortRatio":Z
    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;I)Z

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .end local v1    # "isStackHasPortRatio":Z
    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "isStackHasPortRatio":Z
    :cond_2
    const/4 v2, 0x2

    goto :goto_1
.end method

.method private isInputMethodShown()Z
    .locals 2

    .prologue
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRotated(I)Z
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshBorder()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    .local v0, "decorView":Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v1, :cond_0

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->access$4300(Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateBackground()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    iget-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/multiwindow/Border;->setFocus(Z)V

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .end local v0    # "decorView":Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method private refreshUI(I)V
    .locals 10
    .param p1, "forceState"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MultiPhoneWindow"

    const-string v4, "token is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    const/4 v2, -0x1

    .local v2, "state":I
    if-eq p1, v9, :cond_5

    move v2, p1

    :goto_1
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_3

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshUI state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eq v2, v8, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSecure:Z

    if-eqz v3, :cond_4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_4
    :goto_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .local v1, "flags":I
    packed-switch v2, :pswitch_data_0

    :goto_3
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "flags":I
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v2

    goto :goto_1

    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSecure:Z

    goto :goto_2

    .restart local v1    # "flags":I
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    :cond_8
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->removeResizeVisualCue()V

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initFocusedView()V

    iget v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mInitialFlag:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_a

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x201

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_3

    :pswitch_1
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    if-eqz v3, :cond_b

    const-string v3, "MultiPhoneWindow"

    const-string v4, "minimize function is disabled. do not minimize."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->isMinimizeIconVisible()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "MultiPhoneWindow"

    const-string v4, "minimize icon is already visible."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    iget v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingFlag:I

    if-ne v3, v9, :cond_d

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingFlag:I

    :cond_d
    invoke-direct {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_e

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->showMinimizedIconWindow()V

    :cond_e
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->saveFocusedView()V

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    goto/16 :goto_3

    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    :cond_f
    iput-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v7}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->restoreFocusedView()V

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshBorder()V

    goto/16 :goto_3

    :pswitch_3
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    :cond_11
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v7}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initFocusedView()V

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private requestState(I)V
    .locals 9
    .param p1, "state"    # I

    .prologue
    const/16 v8, 0x800

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .local v0, "requestStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestState state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",currentState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v0, v8, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v0, v8, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    :pswitch_3
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    if-eqz v1, :cond_2

    const-string v1, "MultiPhoneWindow"

    const-string v2, "minimize function is disabled. do not minimize"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-eq v1, v5, :cond_3

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    invoke-virtual {v0, v8, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_3
    invoke-virtual {v0, v7, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private restoreFocusedView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    iget v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    if-eq v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "needsFocus":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    .end local v0    # "needsFocus":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private saveFocusedView()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    :cond_0
    return-void
.end method

.method private setStackBoundByStackId(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "stackId"    # I
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-direct {p0, p2}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setStackBoundByStackId(ILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private setStackBoundInScreen(IIZ)V
    .locals 7
    .param p1, "leftBoundary"    # I
    .param p2, "topBoundary"    # I
    .param p3, "isMinimizing"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .local v0, "adjustBound":Z
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .local v2, "screenSize":Landroid/graphics/Point;
    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v1, "currStackBound":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-ge v4, p1, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int v4, p1, v4

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    const/4 v0, 0x1

    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-ge v4, p2, :cond_1

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, p2, v4

    invoke-virtual {v1, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    const/4 v0, 0x1

    :cond_1
    if-nez p3, :cond_4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    if-le v4, v5, :cond_2

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    const/4 v0, 0x1

    :cond_2
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_3

    iget v4, v2, Landroid/graphics/Point;->y:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    const/4 v0, 0x1

    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v3, "tempStackBound":Landroid/graphics/Rect;
    invoke-direct {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    .end local v3    # "tempStackBound":Landroid/graphics/Rect;
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    :cond_5
    return-void
.end method

.method private setStackBoundsInternel(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "newBounds"    # Landroid/graphics/Rect;

    .prologue
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x0

    .local v1, "sizeChanged":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_2

    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    .end local v1    # "sizeChanged":Z
    :cond_3
    return-void
.end method

.method private setStackFocus(Z)V
    .locals 2
    .param p1, "focus"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSubWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSubWindow:Landroid/view/Window;

    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    invoke-virtual {v0, v1}, Landroid/view/Window;->changeStackFocus(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshBorder()V

    goto :goto_0
.end method

.method private showGuide(Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->setMultiWindowFlags(I)V

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v6, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v0

    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v3, "scaledRect":Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->scale(F)V

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->getGuideState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    if-eqz v0, :cond_0

    iget v4, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    sub-int v2, v4, v5

    .local v2, "paddingRight":I
    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v5, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    sub-int v1, v4, v5

    .local v1, "paddingBottom":I
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4, v6, v6, v2, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuidePadding(IIII)V

    .end local v1    # "paddingBottom":I
    .end local v2    # "paddingRight":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v3    # "scaledRect":Landroid/graphics/Rect;
    :cond_1
    return-void

    .restart local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v3    # "scaledRect":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    if-eqz v0, :cond_0

    iget v4, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .restart local v2    # "paddingRight":I
    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v5, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .restart local v1    # "paddingBottom":I
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4, v6, v6, v2, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuidePadding(IIII)V

    goto :goto_0

    .end local v1    # "paddingBottom":I
    .end local v2    # "paddingRight":I
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4, v6, v6, v6, v6}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuidePadding(IIII)V

    goto :goto_0
.end method

.method private showMinimizedIconWindow()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MultiPhoneWindow"

    const-string v1, "showMinimizedIconWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->removeResizeVisualCue()V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow(Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow()V

    goto :goto_0
.end method

.method private updateIsFullScreen()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .local v0, "isFullScreen":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    if-eq v1, v0, :cond_1

    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refresh mIsFullScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    .end local v0    # "isFullScreen":Z
    :cond_1
    return-void

    .restart local v0    # "isFullScreen":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 4
    .param p1, "newStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v3, 0x1

    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMultiWindowStyle style:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",newStyle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(IZ)V

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissWritingBuddy()V

    :cond_1
    return-void
.end method

.method private updateRestricedStackBounds()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/high16 v12, 0x447a0000    # 1000.0f

    const/4 v9, 0x0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v0, v10, Landroid/content/res/Configuration;->orientation:I

    .local v0, "configOrientation":I
    if-ne v0, v8, :cond_0

    iget v10, v1, Landroid/graphics/Point;->x:I

    iget v11, v1, Landroid/graphics/Point;->y:I

    if-gt v10, v11, :cond_1

    :cond_0
    const/4 v10, 0x2

    if-ne v0, v10, :cond_4

    iget v10, v1, Landroid/graphics/Point;->y:I

    iget v11, v1, Landroid/graphics/Point;->x:I

    if-le v10, v11, :cond_4

    :cond_1
    move v7, v8

    .local v7, "toggle":Z
    :goto_0
    if-eqz v7, :cond_2

    iget v6, v1, Landroid/graphics/Point;->x:I

    .local v6, "temp":I
    iget v10, v1, Landroid/graphics/Point;->y:I

    iput v10, v1, Landroid/graphics/Point;->x:I

    iput v6, v1, Landroid/graphics/Point;->y:I

    .end local v6    # "temp":I
    :cond_2
    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e010b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .local v2, "floatingMinimumSizeRatioPercentage":I
    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e010e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .local v3, "floatingMinimumSizeSelectiveRatioPercentage":I
    new-instance v5, Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v10, v2

    int-to-float v10, v10

    div-float/2addr v10, v12

    float-to-int v10, v10

    iget v11, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v11, v2

    int-to-float v11, v11

    div-float/2addr v11, v12

    float-to-int v11, v11

    invoke-direct {v5, v9, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v5, "minSize":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v10, v3

    int-to-float v10, v10

    div-float/2addr v10, v12

    float-to-int v10, v10

    iget v11, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v11, v3

    int-to-float v11, v11

    div-float/2addr v11, v12

    float-to-int v11, v11

    invoke-direct {v4, v9, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v4, "maxSize":Landroid/graphics/Rect;
    if-ne v0, v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    iget v9, v5, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v8, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    sget-boolean v8, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "MultiPhoneWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateRestricedStackBounds, r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mMinPort="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mMinLand="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mMaxPortSelective="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mMaxLandSelective="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .end local v2    # "floatingMinimumSizeRatioPercentage":I
    .end local v3    # "floatingMinimumSizeSelectiveRatioPercentage":I
    .end local v4    # "maxSize":Landroid/graphics/Rect;
    .end local v5    # "minSize":Landroid/graphics/Rect;
    .end local v7    # "toggle":Z
    :cond_4
    move v7, v9

    goto/16 :goto_0

    .restart local v2    # "floatingMinimumSizeRatioPercentage":I
    .restart local v3    # "floatingMinimumSizeSelectiveRatioPercentage":I
    .restart local v4    # "maxSize":Landroid/graphics/Rect;
    .restart local v5    # "minSize":Landroid/graphics/Rect;
    .restart local v7    # "toggle":Z
    :cond_5
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    iget v9, v5, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v8, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_1
.end method

.method private validateStackBound(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v2, "screenWidth":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v1, "screenHeight":I
    if-ge v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lt v3, v5, :cond_2

    :cond_1
    if-le v2, v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v3, v5, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_4

    const-string v5, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "validateStackBound "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", bound=Point("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", screenSize=("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v3, v4

    goto/16 :goto_0

    :cond_5
    const-string v3, ""

    goto :goto_1
.end method


# virtual methods
.method public arrangeScaleStackBound()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isResumed()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->checkRotationNeeded(I)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x0

    .local v0, "bChangedStack":Z
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v7

    .local v7, "stackBound":Landroid/graphics/Rect;
    if-eqz v7, :cond_0

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v6

    .local v6, "requestedOrientation":I
    packed-switch v6, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    .local v4, "oldRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    iget v9, v4, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/graphics/Rect;->left:I

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    iget v12, v4, Landroid/graphics/Rect;->right:I

    invoke-direct {v3, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v3, "newRect":Landroid/graphics/Rect;
    sget-boolean v9, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v9, :cond_4

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .local v2, "displaySize":Landroid/graphics/Point;
    invoke-direct {p0, v2, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    iget v9, v2, Landroid/graphics/Point;->y:I

    iget v10, v2, Landroid/graphics/Point;->x:I

    if-le v9, v10, :cond_5

    move v1, v8

    .local v1, "displayOrientation":I
    :goto_2
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v5

    .local v5, "preferredOrientation":I
    sget-boolean v9, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v9

    if-eqz v9, :cond_3

    if-ne v1, v8, :cond_6

    const/4 v1, 0x2

    :cond_3
    :goto_3
    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;I)Z

    .end local v1    # "displayOrientation":I
    .end local v2    # "displaySize":Landroid/graphics/Point;
    .end local v5    # "preferredOrientation":I
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initStackBound()V

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    iget-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v8}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->updatePosition()V

    goto :goto_0

    .end local v3    # "newRect":Landroid/graphics/Rect;
    .end local v4    # "oldRect":Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-le v9, v10, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v9, v10, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .restart local v2    # "displaySize":Landroid/graphics/Point;
    .restart local v3    # "newRect":Landroid/graphics/Rect;
    .restart local v4    # "oldRect":Landroid/graphics/Rect;
    :cond_5
    const/4 v1, 0x2

    goto :goto_2

    .restart local v1    # "displayOrientation":I
    .restart local v5    # "preferredOrientation":I
    :cond_6
    const/4 v1, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public disableMultiWindowTrayBar(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    goto :goto_0
.end method

.method public dismissGuide()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->hide()V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    :cond_0
    return-void
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public exitByCloseBtn()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    invoke-interface {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;->onWindowExit()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MultiPhoneWindow"

    const-string v2, "onWindowExit return false"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v2, "SPLW"

    const-string v3, "CLOSE"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method protected generateDecor()Lcom/android/internal/policy/PhoneWindow$DecorView;
    .locals 3

    .prologue
    new-instance v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 5
    .param p1, "decor"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v1

    .local v1, "ret":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    sget-boolean v2, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateLayout(), local setBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mInitialFlag:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingFlag:I

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/MultiPhoneWindow;->isRotated(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastRotated:Z

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastOrientation:I

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/internal/policy/multiwindow/Border;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/multiwindow/Border;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->generatePenWindowLayout()V

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-nez v2, :cond_2

    new-instance v2, Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8d4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/view/View;I)V

    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    :cond_2
    return-object v1

    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_3
    sget-boolean v2, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateLayout(), bounds is null, mActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getContentRootContainer()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDockingInstance()Lcom/android/internal/policy/multiwindow/Docking;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    return-object v0
.end method

.method public getMultiPhoneWindowEvent()Ljava/lang/Object;
    .locals 0

    .prologue
    return-object p0
.end method

.method public getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v0    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v1
.end method

.method public getOptionsPanelGravity()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    .local v2, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .local v1, "requestOrientation":I
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    if-ne v1, v5, :cond_1

    if-eqz v0, :cond_1

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    if-eq v3, v5, :cond_0

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    const/16 v3, 0x51

    .end local v0    # "di":Landroid/view/DisplayInfo;
    .end local v1    # "requestOrientation":I
    .end local v2    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_0
    return v3

    :cond_1
    invoke-super {p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    goto :goto_0
.end method

.method public getRotationOfStackBound()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    return v0
.end method

.method public getScaleInfo()Landroid/graphics/PointF;
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public getStackBound()Landroid/graphics/Rect;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public handlePause()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .local v1, "isScreenOn":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .end local v0    # "display":Landroid/view/Display;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/MultiPhoneWindow$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/MultiPhoneWindow$3;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v1    # "isScreenOn":Z
    :cond_1
    return-void

    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "isScreenOn":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasStackFocus()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    return v0
.end method

.method protected isFloatingWindow()Z
    .locals 2

    .prologue
    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchBlocked()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v4, 0x1000

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public minimizeWindow(IZ)V
    .locals 3
    .param p1, "windowMode"    # I
    .param p2, "hide"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    .local v0, "state":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->minimizeWindow(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public moveStackBound(IIZ)Z
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "moving"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "outOfBound":Z
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v1, "stackBound":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    return v0
.end method

.method public moveWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public multiWindow(IZ)V
    .locals 1
    .param p1, "windowMode"    # I
    .param p2, "pinup"    # Z

    .prologue
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    return-void
.end method

.method protected needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 2
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->isFloatingWindow()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public normalWindow(I)V
    .locals 1
    .param p1, "windowMode"    # I

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    return-void
.end method

.method public onMultiWindowConfigurationChanged(I)V
    .locals 22
    .param p1, "configDiff"    # I

    .prologue
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    if-eqz v18, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateRestricedStackBounds()V

    :cond_0
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-nez v18, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v7

    .local v7, "mwState":I
    sget-boolean v18, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v18, :cond_3

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v10

    .local v10, "preferredOrientation":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFakeTarget(I)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    goto :goto_0

    .end local v10    # "preferredOrientation":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    .local v9, "oldRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .local v8, "newRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mLastOrientation:I

    sget-boolean v18, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_ORIENTATION:Z

    if-eqz v18, :cond_4

    const-string v19, "MultiPhoneWindow"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onMultiWindowConfigurationChanged "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    if-eqz v18, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v18

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "oldRect="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Display;->getRotation()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->isRotated(I)Z

    move-result v15

    .local v15, "rotated":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastRotated:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v15, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v7, v0, :cond_1

    :cond_5
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastRotated:Z

    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v7, v0, :cond_6

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v7, v0, :cond_9

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowConfigurationChanged()V

    :cond_7
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    goto/16 :goto_0

    .end local v15    # "rotated":Z
    :cond_8
    const-string v18, ""

    goto/16 :goto_1

    .restart local v15    # "rotated":Z
    :cond_9
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_1
    const/4 v11, 0x0

    .local v11, "relativeL":F
    const/4 v13, 0x0

    .local v13, "relativeT":F
    const/4 v12, 0x0

    .local v12, "relativeR":F
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .local v6, "maxSize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v14

    .local v14, "requestOrientation":I
    if-eqz v14, :cond_a

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_f

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    const/high16 v19, 0x400000

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v17

    .local v17, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v18

    if-eqz v18, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-nez v18, :cond_1

    :cond_c
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v12, v18, v19

    const/16 v18, 0x0

    cmpl-float v18, v12, v18

    if-lez v18, :cond_d

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v19

    sub-int v18, v18, v19

    if-lez v18, :cond_d

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v18, v18, v11

    add-float v19, v11, v12

    div-float v11, v18, v19

    :cond_d
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v13, v18, v19

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3851b717    # 5.0E-5f

    add-float v19, v19, v11

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3851b717    # 5.0E-5f

    add-float v20, v20, v13

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .end local v17    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :goto_2
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastOrientation:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;I)Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    goto/16 :goto_0

    :cond_f
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "newRect":Landroid/graphics/Rect;
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v8    # "newRect":Landroid/graphics/Rect;
    goto :goto_2

    .end local v6    # "maxSize":Landroid/graphics/Point;
    .end local v11    # "relativeL":F
    .end local v12    # "relativeR":F
    .end local v13    # "relativeT":F
    .end local v14    # "requestOrientation":I
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initStackBound()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .local v16, "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    const/4 v4, 0x0

    .local v4, "dx":I
    const/4 v5, 0x0

    .local v5, "dy":I
    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    if-gez v18, :cond_14

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v4, v0

    :cond_10
    :goto_3
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    :cond_11
    :goto_4
    if-nez v4, :cond_12

    if-eqz v5, :cond_13

    :cond_12
    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_14
    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    goto :goto_3

    :cond_15
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_11

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onMultiWindowFocusChanged(IZZ)V
    .locals 3
    .param p1, "notifyReason"    # I
    .param p2, "focus"    # Z
    .param p3, "keepInputMethod"    # Z

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackFocus(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->closeAllPanels()V

    if-nez p3, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->forceHideInputMethod()Z

    :cond_3
    return-void
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 10
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "notifyReason"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x4

    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_0

    const-string v3, "MultiPhoneWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMultiWindowStyleChanged, reason=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newStyle"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", oldStyle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mActivity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_2

    invoke-direct {p0, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    invoke-direct {p0, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_7

    const/high16 v3, 0x20000

    invoke-virtual {p1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    invoke-direct {p0, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v9, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    .local v1, "state":I
    if-eq v1, v7, :cond_1

    if-eq v1, v9, :cond_6

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    :cond_6
    invoke-direct {p0, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    goto :goto_0

    .end local v1    # "state":I
    .end local v2    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_7
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p1, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowStyleChanged(Landroid/graphics/Rect;)V

    :cond_8
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-eq v3, v5, :cond_d

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_c

    move v3, v4

    :goto_1
    invoke-interface {v5, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onModeChanged(Z)V

    :cond_9
    :goto_2
    const/4 v0, 0x0

    .local v0, "currStackBounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    .restart local v1    # "state":I
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_a

    and-int/lit16 v3, p2, 0x100

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowStyleChanged(Landroid/graphics/Rect;)V

    :cond_a
    if-ne v1, v4, :cond_b

    invoke-direct {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    goto/16 :goto_0

    .end local v0    # "currStackBounds":Landroid/graphics/Rect;
    .end local v1    # "state":I
    :cond_c
    const/4 v3, 0x0

    goto :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-eq v3, v5, :cond_9

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onZoneChanged(I)V

    goto :goto_2

    .restart local v0    # "currStackBounds":Landroid/graphics/Rect;
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->invalidate()V

    invoke-direct {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    goto/16 :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestMaximize()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .local v0, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    const-string v2, "Minimized->Floating"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x800

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v3, v3, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundInScreen(IIZ)V

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAppRequestOrientation(I)V
    .locals 4
    .param p1, "requestedOrientation"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v0

    .local v0, "prevOrientation":I
    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(IZ)V

    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAppRequestOrientation(), prev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", a="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setExitListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    const/4 v0, 0x1

    return v0
.end method

.method public setIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setIsolatedCenterPoint(Landroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public setMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_0

    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setMinimizeView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMinimizeView : request view is already added >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v1, :cond_4

    :cond_3
    const-string v0, "MultiPhoneWindow"

    const-string v1, "setMinimizeView : view width and height must be WRAP_CONTENT."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    if-eqz v0, :cond_5

    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    :cond_5
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    goto :goto_0
.end method

.method protected setStackBound(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "requestBound"    # Landroid/graphics/Rect;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .local v1, "sizeChanged":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean v2, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStackBounds, requestBound="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_7

    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method public setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    const/4 v0, 0x1

    return v0
.end method

.method public setStateChangeListener2(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    const/4 v0, 0x1

    return v0
.end method

.method public showGuide(Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
