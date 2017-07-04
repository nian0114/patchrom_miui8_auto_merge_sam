.class public Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.super Landroid/widget/FrameLayout;
.source "TwToolBoxFloatingViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "toolbox"

.field private static final TOOLBOX_EDIT_INTENT:Ljava/lang/String; = "com.samsung.TOOLBOX_LIST"


# instance fields
.field private final BLOCK_LIST:[Ljava/lang/String;

.field private final FIXED_MAIN_ITEM_GAP:I

.field private final FIXED_MAIN_ITEM_HEIGHT:I

.field private final FIXED_MAIN_ITEM_WIDTH:I

.field private final FIXED_ROUND_TAIL_SIZE:I

.field private final FIXED_SHORTCUT_ITEM_GAP:I

.field private final FIXED_SHORTCUT_ITEM_SIZE:I

.field private final FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I

.field private final FIXED_START_POSITION_RIGHT_PADDING:I

.field private final FIXED_START_POSITION_TOP_PADDING:I

.field private final LONG_PRESS_PANEL_BUTTON_BG_HEIGHT:I

.field private final LONG_PRESS_PANEL_BUTTON_BG_WIDTH:I

.field private final LONG_PRESS_PANEL_BUTTON_SIZE:I

.field private final LONG_PRESS_PANEL_HEIGHT_PX:I

.field private final LONG_PRESS_PANEL_TOP_EMPTY_SPACE_PX:I

.field private final MAIN_DECREASE_RATIO:F

.field private final MAIN_DIM_RATIO:F

.field private final SCALED_APPROACH_SLOP:I

.field private final SCALED_TOUCH_SLOP:I

.field private final SLEEP_TIME_OUT:I

.field private final TOOLBOX_MAX_ITEM_COUNT:I

.field private final TOTAL_HEIGHT:I

.field private mAbsX:I

.field private mAbsY:I

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAllPackages:[Ljava/lang/Object;

.field private final mAndromedaWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mBoxAnimating:Z

.field private mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

.field private mCarMode:Z

.field private mCarModeObserver:Landroid/database/ContentObserver;

.field private mCenterX:I

.field private mCenterY:I

.field private final mCheckEnvironment:Ljava/lang/Runnable;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverOpen:Z

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mCurrentPackage:Ljava/lang/String;

.field private mDVFSCookie:I

.field private mDVFSHelper:Landroid/os/DVFSHelper;

.field private mDVFSHelperBUS:Landroid/os/DVFSHelper;

.field private mDVFSHelperCore:Landroid/os/DVFSHelper;

.field private mDVFSHelperGPU:Landroid/os/DVFSHelper;

.field private mDVFSLockAcquired:Z

.field private mDeivceProvisioned:Z

.field public mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

.field private mDeltaX:I

.field private mDeltaY:I

.field private final mDensity:F

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDisableFloatingViewer:Z

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDownSlopArea:Landroid/graphics/Rect;

.field private final mDrawGlobalRect:Landroid/graphics/Rect;

.field private mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEditAfterScreenCapture:I

.field private mEnableFloatingViewer:Z

.field private mEndFloatingBg:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingBgArea:Landroid/graphics/Rect;

.field private mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingEditBgArea:Landroid/graphics/Rect;

.field private mEndFloatingEditBtn:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingEditBtnArea:Landroid/graphics/Rect;

.field private mEndFloatingEditBtnFocused:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingEditConflictArea:Landroid/graphics/Rect;

.field private mEndFloatingMsgEdit:Ljava/lang/String;

.field private mEndFloatingMsgRemove:Ljava/lang/String;

.field private mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingRemoveBgArea:Landroid/graphics/Rect;

.field private mEndFloatingRemoveBtn:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

.field private final mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

.field private mEndFloatingRemoveBtnFocused:Landroid/graphics/drawable/Drawable;

.field private mEndFloatingRemoveBtnFocusedCover:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingRemoveConflictArea:Landroid/graphics/Rect;

.field private mEnterAnimator:Landroid/animation/ValueAnimator;

.field private mEnterProgressValue:F

.field private mExpandAnimator:Landroid/animation/ValueAnimator;

.field private mExpandProgressValue:F

.field private mExpanded:Z

.field private mExploreByTouchMode:Z

.field private mExploreByTouchModeObserver:Landroid/database/ContentObserver;

.field private mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

.field private final mFont:Landroid/graphics/Typeface;

.field private final mGlobalRect:Landroid/graphics/Rect;

.field private final mGoToPositionAndromeda:Ljava/lang/Runnable;

.field private final mGoToPositionCallback:Ljava/lang/Runnable;

.field private mHiddenToolBox:Z

.field private mInVSync:Z

.field private final mIsTablet:Z

.field private mKeyguardShowing:Z

.field private mKidsMode:Z

.field private mKidsModeObserver:Landroid/database/ContentObserver;

.field private mKnoxRunning:Z

.field private mLastOrientation:I

.field private mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

.field private mLongPressPanelPosition:I

.field private mLongPressPanelRemoveAnimating:Z

.field private mLongPressPanelRemoveBtnAngle:F

.field private final mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

.field private mLongPressPanelRemoveBtnPosition:I

.field private mLongPressPanelShowing:Z

.field private mLongPressed:Z

.field private mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

.field private mMainCharacterDecreaseAmount:I

.field private mMainCharacterDegree:I

.field private mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

.field private final mMaskCanvas:Landroid/graphics/Canvas;

.field private final mMaskPaint:Landroid/graphics/Paint;

.field private mMovingByAnimation:Z

.field private mNeedSaveCenterPosition:Z

.field private mOTAShowing:Z

.field private final mObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageListObserver:Landroid/database/ContentObserver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPersonaId:I

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mPinnedWindowReceiver:Landroid/content/BroadcastReceiver;

.field private final mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationEnterRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

.field private mPositionAnimatorX:Landroid/animation/ValueAnimator;

.field private mPositionAnimatorY:Landroid/animation/ValueAnimator;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReset:Ljava/lang/Runnable;

.field private mReseting:Z

.field private mResources:Landroid/content/res/Resources;

.field private mScreenUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private final mScreenWriteRecovery:Ljava/lang/Runnable;

.field private final mShadowRect:Landroid/graphics/Rect;

.field private final mShakeAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mSipReceiver:Landroid/content/BroadcastReceiver;

.field private mSipVisible:Z

.field private mSleepAnimator:Landroid/animation/ValueAnimator;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTargetX:I

.field private mTargetY:I

.field private final mTextBounds:Landroid/graphics/Rect;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTouchClickRunnable:Ljava/lang/Runnable;

.field private final mTouchLongClickRunnable:Ljava/lang/Runnable;

.field mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

.field private mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

.field private final mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

.field private mTracking:Z

.field private mTransparentAnimator:Landroid/animation/ValueAnimator;

.field private mTurnOffAnimator:Landroid/animation/ValueAnimator;

.field private mTurnOffEffectRatio:F

.field private mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

.field private final mUpdateLongPressPanelRect:Ljava/lang/Runnable;

.field private final mUpdateVisibility:Ljava/lang/Runnable;

.field private mUserManager:Landroid/os/UserManager;

.field private mValidUser:Z

.field private mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mVisible:Z

.field private mVisibleFloatingStyle:Z

.field public final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mXfermode:Landroid/graphics/PorterDuffXfermode;

.field private methodPauseGc:Ljava/lang/reflect/Method;

.field private methodResumeGc:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0xff

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SLEEP_TIME_OUT:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->TOOLBOX_MAX_ITEM_COUNT:I

    const v0, 0x3e75c28f    # 0.24f

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->MAIN_DECREASE_RATIO:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->MAIN_DIM_RATIO:F

    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisible:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCarMode:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKnoxRunning:Z

    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mInVSync:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEditAfterScreenCapture:I

    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPersonaId:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDrawGlobalRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownSlopArea:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBgArea:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBgArea:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditConflictArea:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveConflictArea:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBgArea:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    const-string v0, "sec-roboto-light"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFont:Landroid/graphics/Typeface;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelper:Landroid/os/DVFSHelper;

    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSLockAcquired:Z

    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodPauseGc:Ljava/lang/reflect/Method;

    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodResumeGc:Ljava/lang/reflect/Method;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$1;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v3

    const-string v2, "com.sec.android.app.camera.shootingmode.sequence"

    aput-object v2, v0, v1

    const/4 v2, 0x2

    const-string v4, "com.sec.android.app.ma.recorder"

    aput-object v4, v0, v2

    const/4 v2, 0x3

    const-string v4, "com.sec.android.app.simcardmanagement"

    aput-object v4, v0, v2

    const/4 v2, 0x4

    const-string v4, "com.sec.android.app.kidshome"

    aput-object v4, v0, v2

    const/4 v2, 0x5

    const-string v4, "com.sec.kidsplat.parentalcontrol"

    aput-object v4, v0, v2

    const/4 v2, 0x6

    const-string v4, "com.sec.android.app.magnifier"

    aput-object v4, v0, v2

    const/4 v2, 0x7

    const-string v4, "com.sec.android.app.bcocr"

    aput-object v4, v0, v2

    const/16 v2, 0x8

    const-string v4, "com.sec.android.app.ocr3"

    aput-object v4, v0, v2

    const/16 v2, 0x9

    const-string v4, "com.sec.allsharecastplayer"

    aput-object v4, v0, v2

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$7;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$10;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    sget-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->NORMAL:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$18;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$18;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$19;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$19;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchClickRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$20;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$20;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationEnterRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$21;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$21;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$22;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$22;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$23;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$23;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$24;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$24;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$26;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$26;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionCallback:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$28;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$28;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionAndromeda:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$29;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$29;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mScreenWriteRecovery:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateLongPressPanelRect:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mActivityManager:Landroid/app/ActivityManager;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowManager:Landroid/view/WindowManager;

    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDreamManager:Landroid/service/dreams/IDreamManager;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUserManager:Landroid/os/UserManager;

    const-string v0, "persona"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPersonaManager:Landroid/os/PersonaManager;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/toolbox/TwToolBoxManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    const/16 v2, 0x64

    const/16 v4, 0x64

    const/16 v5, 0x65

    const/16 v6, 0x65

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v0, v2, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10501ed

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10501ed

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_HEIGHT:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10501f0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_GAP:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10501ee

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10501ef

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_GAP:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10501ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10501f1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ROUND_TAIL_SIZE:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10501f2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_TOP_PADDING:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10501f3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_RIGHT_PADDING:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10501eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10501ec

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_TOP_EMPTY_SPACE_PX:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10501f6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_BUTTON_SIZE:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10501f7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_BUTTON_BG_WIDTH:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10501f8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_BUTTON_BG_HEIGHT:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10501f9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_APPROACH_SLOP:I

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_HEIGHT:I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_GAP:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_GAP:I

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ROUND_TAIL_SIZE:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->TOTAL_HEIGHT:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x10501f5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10501f4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .local v9, "textShadowSize":I
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v2, v9

    int-to-float v4, v9

    int-to-float v5, v9

    const/high16 v6, -0x40000000    # -2.0f

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .end local v9    # "textShadowSize":I
    :cond_0
    const v0, 0x1080a2c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    const v0, 0x1080a37

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBg:Landroid/graphics/drawable/Drawable;

    const v0, 0x1080a29

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    const v0, 0x1080a2a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtn:Landroid/graphics/drawable/Drawable;

    const v0, 0x1080a2b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnFocused:Landroid/graphics/drawable/Drawable;

    const v0, 0x1080a38

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    const v0, 0x1080a39

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtn:Landroid/graphics/drawable/Drawable;

    const v0, 0x1080a3a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocused:Landroid/graphics/drawable/Drawable;

    const v0, 0x1080a3b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocusedCover:Landroid/graphics/drawable/Drawable;

    const v0, 0x104072a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    const v0, 0x10404fd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "touch_exploration_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "kids_home_mode"

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "car_mode_on"

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_7

    :goto_4
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCarMode:Z

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isValidUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isKnoxRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKnoxRunning:Z

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->TOTAL_HEIGHT:I

    const/16 v5, 0x7df

    const/16 v6, 0x318

    const/4 v7, -0x3

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "TwToolBoxFloatingViewer"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAndromedaWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAndromedaWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAndromedaWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAndromedaWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, -0x2710

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelper:Landroid/os/DVFSHelper;

    const-string v1, "ListView_scroll"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER_GPU"

    const/16 v3, 0x10

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    const-string v1, "ListView_scroll"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER_BUS"

    const/16 v3, 0x13

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    const-string v1, "ListView_scroll"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    sget v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER_CORE"

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    sget v2, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_2
    const-class v8, Ldalvik/system/VMRuntime;

    .local v8, "clazz":Ljava/lang/Class;
    :try_start_0
    const-string v0, "pauseGc"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodPauseGc:Ljava/lang/reflect/Method;

    const-string v0, "resumeGc"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodResumeGc:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    iget-object v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->mLongPressPanelAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .end local v8    # "clazz":Ljava/lang/Class;
    :cond_3
    move v0, v3

    goto/16 :goto_0

    :cond_4
    move v0, v3

    goto/16 :goto_1

    :cond_5
    move v0, v3

    goto/16 :goto_2

    :cond_6
    move v0, v3

    goto/16 :goto_3

    :cond_7
    move v1, v3

    goto/16 :goto_4

    .restart local v8    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5
.end method

.method static synthetic access$002(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPersonaId:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    return v0
.end method

.method static synthetic access$10000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocusedCover:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;III)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchUpOrCancel(III)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getSCoverState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/service/dreams/IDreamManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDreamManager:Landroid/service/dreams/IDreamManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnableOTA()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isValidUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    return v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionAndromeda:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    return p1
.end method

.method static synthetic access$3100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->clearToolBox()V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->prepareToolBoxLinear()V

    return-void
.end method

.method static synthetic access$3302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->startActivityOrTask(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    return v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCarMode:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCarMode:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onToolLongClick()V

    return-void
.end method

.method static synthetic access$4300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onToolClick()V

    return-void
.end method

.method static synthetic access$4400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationEnter()V

    return-void
.end method

.method static synthetic access$4500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationSleep()V

    return-void
.end method

.method static synthetic access$4600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationWakeup()V

    return-void
.end method

.method static synthetic access$4700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationExpand()V

    return-void
.end method

.method static synthetic access$4800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationCollapse()V

    return-void
.end method

.method static synthetic access$4900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationFadeIn()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationFadeOut()V

    return-void
.end method

.method static synthetic access$502(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetX:I

    return v0
.end method

.method static synthetic access$5200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    return v0
.end method

.method static synthetic access$5202(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    return p1
.end method

.method static synthetic access$5212(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    return v0
.end method

.method static synthetic access$5300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetY:I

    return v0
.end method

.method static synthetic access$5400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    return v0
.end method

.method static synthetic access$5402(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    return p1
.end method

.method static synthetic access$5412(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    return v0
.end method

.method static synthetic access$5500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setEnableVSync(Z)V

    return-void
.end method

.method static synthetic access$5600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z

    return v0
.end method

.method static synthetic access$5602(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveCenterPosition()V

    return-void
.end method

.method static synthetic access$5800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_APPROACH_SLOP:I

    return v0
.end method

.method static synthetic access$5900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPositionAndromeda()V

    return-void
.end method

.method static synthetic access$6200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEditAfterScreenCapture:I

    return v0
.end method

.method static synthetic access$6202(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEditAfterScreenCapture:I

    return p1
.end method

.method static synthetic access$6302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    return p1
.end method

.method static synthetic access$6402(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    return p1
.end method

.method static synthetic access$6502(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    return p1
.end method

.method static synthetic access$6600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    return v0
.end method

.method static synthetic access$6602(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    return p1
.end method

.method static synthetic access$6700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateLongPressPanelRect:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I

    return v0
.end method

.method static synthetic access$6902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F

    return v0
.end method

.method static synthetic access$7002(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F

    return p1
.end method

.method static synthetic access$7102(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    return p1
.end method

.method static synthetic access$7200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/Intent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->startActivityOrTask(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$7300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getTorchStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->toggleTorch()V

    return-void
.end method

.method static synthetic access$7500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->screenCapture()V

    return-void
.end method

.method static synthetic access$7600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mScreenWriteRecovery:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/util/DisplayMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBgArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_BUTTON_SIZE:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_BUTTON_BG_WIDTH:I

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_BUTTON_BG_HEIGHT:I

    return v0
.end method

.method static synthetic access$8200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$8300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I

    return v0
.end method

.method static synthetic access$8400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBgArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBgArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditConflictArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveConflictArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_TOP_EMPTY_SPACE_PX:I

    return v0
.end method

.method static synthetic access$9100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtn:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtn:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnFocused:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocused:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    return-object v0
.end method

.method private acquireDVFS()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->releaseDVFS()V

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSLockAcquired:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSLockAcquired:Z

    :cond_4
    return-void
.end method

.method private clearToolBox()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateLongPressPanelRect:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationEnterRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0, v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setEnableVSync(Z)V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .local v2, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iput-object v6, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    iput-object v6, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v6, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadowBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .end local v2    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .local v0, "a":Landroid/animation/Animator;
    move-object v3, v0

    check-cast v3, Landroid/animation/ValueAnimator;

    .local v3, "va":Landroid/animation/ValueAnimator;
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    goto :goto_1

    .end local v0    # "a":Landroid/animation/Animator;
    .end local v3    # "va":Landroid/animation/ValueAnimator;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const-string v4, "toolbox"

    const-string v5, "ToolBox disposed..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iput-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iput-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    :cond_4
    iput-boolean v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    iput v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    iput v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    iput v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v4, v4

    iput v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    return-void
.end method

.method private drawToolBox(Landroid/graphics/Canvas;IIZ)V
    .locals 33
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # I
    .param p3, "centerY"    # I
    .param p4, "isReCalculation"    # Z

    .prologue
    const/4 v11, 0x0

    .local v11, "halfWidth":I
    const/4 v10, 0x0

    .local v10, "halfHeight":I
    const/4 v8, 0x0

    .local v8, "boxAnimating":Z
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v27

    or-int v8, v8, v27

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v27

    or-int v8, v8, v27

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .local v14, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->operationType:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    move-object/from16 v27, v0

    sget-object v28, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->TOGGLE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_3

    iget-boolean v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->toggleStatus:Z

    move/from16 v27, v0

    if-nez v27, :cond_3

    iget-object v7, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->backgroundInverse:Landroid/graphics/drawable/Drawable;

    .local v7, "background":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-boolean v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_4

    const/16 v27, 0xff

    :goto_2
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v6, v0

    .local v6, "alpha":I
    iget-boolean v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isAnimating:Z

    move/from16 v27, v0

    or-int v8, v8, v27

    instance-of v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move/from16 v27, v0

    if-eqz v27, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move/from16 v27, v0

    div-int/lit8 v11, v27, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_HEIGHT:I

    move/from16 v27, v0

    div-int/lit8 v10, v27, 0x2

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    sub-int v28, p2, v11

    sub-int v29, p3, v10

    add-int v30, p2, v11

    add-int v31, p3, v10

    invoke-virtual/range {v27 .. v31}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    move/from16 v27, v0

    const/high16 v28, 0x3f000000    # 0.5f

    sub-float v23, v27, v28

    .local v23, "progress":F
    const v27, 0x3e75c28f    # 0.24f

    mul-float v27, v27, v23

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v23

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    .end local v23    # "progress":F
    :goto_3
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .end local v6    # "alpha":I
    .end local v7    # "background":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v7, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .restart local v7    # "background":Landroid/graphics/drawable/Drawable;
    :cond_4
    const/16 v27, 0x80

    goto/16 :goto_2

    .restart local v6    # "alpha":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3e75c28f    # 0.24f

    mul-float v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_2

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    move/from16 v27, v0

    div-int/lit8 v11, v27, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    move/from16 v27, v0

    div-int/lit8 v10, v27, 0x2

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    sub-int v28, p2, v11

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v29, v0

    iget v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->y:F

    move/from16 v30, v0

    add-float v29, v29, v30

    int-to-float v0, v10

    move/from16 v30, v0

    sub-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v30, p2, v11

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v31, v0

    iget v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->y:F

    move/from16 v32, v0

    add-float v31, v31, v32

    int-to-float v0, v10

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v27 .. v31}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .end local v6    # "alpha":I
    .end local v7    # "background":Landroid/graphics/drawable/Drawable;
    .end local v14    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ROUND_TAIL_SIZE:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v31, v0

    sub-float v30, v30, v31

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    if-eqz p4, :cond_12

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updatePosition()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDrawGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDrawGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v28, v0

    add-int v25, v27, v28

    .local v25, "zeroOffsetX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDrawGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v28, v0

    add-int v26, v27, v28

    .local v26, "zeroOffsetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDrawGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Rect;->offsetTo(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v27, v0

    if-gtz v27, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    move/from16 v27, v0

    if-eqz v27, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDrawGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    const/high16 v28, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v20

    .local v20, "objectSize":I
    add-int/lit8 v13, v20, -0x1

    .local v13, "idx":I
    :goto_4
    if-ltz v13, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .restart local v14    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->operationType:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    move-object/from16 v27, v0

    sget-object v28, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->TOGGLE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_19

    iget-boolean v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->toggleStatus:Z

    move/from16 v27, v0

    if-nez v27, :cond_19

    iget-object v7, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->backgroundInverse:Landroid/graphics/drawable/Drawable;

    .restart local v7    # "background":Landroid/graphics/drawable/Drawable;
    :goto_5
    iget-boolean v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1a

    const/16 v27, 0xff

    :goto_6
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v6, v0

    .restart local v6    # "alpha":I
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    instance-of v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move/from16 v27, v0

    if-eqz v27, :cond_1b

    move-object v15, v14

    check-cast v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    .local v15, "main":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;
    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v27, v0

    if-eqz v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->bounds:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v27, v0

    const/high16 v28, 0x437f0000    # 255.0f

    const/high16 v29, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v30, v0

    sub-float v29, v29, v30

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3fc999999999999aL    # 0.2

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_c
    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->background:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    .local v18, "mainNormalBg":Landroid/graphics/drawable/Drawable;
    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    .local v16, "mainCenterX":I
    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    .local v17, "mainCenterY":I
    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v27, v0

    if-lez v27, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v27, v0

    const/16 v28, 0x5a

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v27, v0

    if-lez v27, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v27, v0

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_f
    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->backgroundOpen:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    .local v19, "mainOpenBg":Landroid/graphics/drawable/Drawable;
    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v27, v0

    if-lez v27, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x5a

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x42b40000    # 90.0f

    div-float v27, v27, v28

    const/high16 v28, 0x437f0000    # 255.0f

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v27, v0

    if-lez v27, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x5a

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .end local v15    # "main":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;
    .end local v16    # "mainCenterX":I
    .end local v17    # "mainCenterY":I
    .end local v18    # "mainNormalBg":Landroid/graphics/drawable/Drawable;
    .end local v19    # "mainOpenBg":Landroid/graphics/drawable/Drawable;
    :cond_11
    :goto_7
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_4

    .end local v6    # "alpha":I
    .end local v7    # "background":Landroid/graphics/drawable/Drawable;
    .end local v13    # "idx":I
    .end local v14    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v20    # "objectSize":I
    .end local v25    # "zeroOffsetX":I
    .end local v26    # "zeroOffsetY":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    .local v24, "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v9, "h":I
    const/16 v21, 0x0

    .local v21, "offsetX":I
    const/16 v22, 0x0

    .local v22, "offsetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    if-gez v27, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v21, v0

    :cond_13
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    if-gez v27, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v22, v0

    :cond_14
    :goto_9
    if-nez v21, :cond_15

    if-eqz v22, :cond_9

    :cond_15
    add-int v27, p2, v21

    add-int v28, p3, v22

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->drawToolBox(Landroid/graphics/Canvas;IIZ)V

    .end local v9    # "h":I
    .end local v21    # "offsetX":I
    .end local v22    # "offsetY":I
    .end local v24    # "w":I
    :cond_16
    return-void

    .restart local v9    # "h":I
    .restart local v21    # "offsetX":I
    .restart local v22    # "offsetY":I
    .restart local v24    # "w":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    sub-int v21, v24, v27

    goto :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v9, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    sub-int v22, v9, v27

    goto :goto_9

    .end local v9    # "h":I
    .end local v21    # "offsetX":I
    .end local v22    # "offsetY":I
    .end local v24    # "w":I
    .restart local v13    # "idx":I
    .restart local v14    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .restart local v20    # "objectSize":I
    .restart local v25    # "zeroOffsetX":I
    .restart local v26    # "zeroOffsetY":I
    :cond_19
    iget-object v7, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    .restart local v7    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1a
    const/16 v27, 0x80

    goto/16 :goto_6

    .restart local v6    # "alpha":I
    :cond_1b
    if-eqz v6, :cond_11

    iget v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->y:F

    move/from16 v27, v0

    int-to-float v0, v10

    move/from16 v28, v0

    cmpg-float v27, v27, v28

    if-ltz v27, :cond_11

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v27, v0

    int-to-double v0, v6

    move-wide/from16 v28, v0

    const-wide v30, 0x3fc999999999999aL    # 0.2

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1c
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_7
.end method

.method private getSCoverState()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getTorchStatus()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "torch_light"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private goToPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetX:I

    iput p2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetY:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setEnableVSync(Z)V

    return-void
.end method

.method private goToPositionAndromeda()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAndromedaWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private goToPositionOneShot(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    .local v0, "oldCenterX":I
    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    .local v1, "oldCenterY":I
    invoke-direct {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setEnableVSync(Z)V

    if-ne p1, v0, :cond_0

    if-eq p2, v1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_2

    new-array v2, v6, [I

    aput v0, v2, v4

    aput p1, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$31;

    invoke-direct {v3, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$31;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v6, [I

    aput v1, v2, v4

    aput p2, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$32;

    invoke-direct {v3, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$32;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$33;

    invoke-direct {v3, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$33;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    new-array v3, v6, [I

    aput v0, v3, v4

    aput p1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    new-array v3, v6, [I

    aput v1, v3, v4

    aput p2, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_0
.end method

.method private initVSync()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    :cond_0
    return-void
.end method

.method private initializeFunctionShortcut(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;I)Z
    .locals 6
    .param p1, "m"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.app.galaxyfinder"

    const-string v5, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "cm":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    const v5, 0x1080a32

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$55;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$55;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/ComponentName;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cm":Landroid/content/ComponentName;
    :goto_1
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sfinder Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    const v5, 0x1080a31

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;

    invoke-direct {v4, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuickConnect Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_3
    :try_start_2
    sget-object v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->TOGGLE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->operationType:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    const v5, 0x1080a36

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080a35

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->backgroundInverse:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getTorchStatus()Z

    move-result v4

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->toggleStatus:Z

    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$57;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$57;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TorchLight Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_4
    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    const v5, 0x1080a34

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$58;

    invoke-direct {v4, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$58;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScreenWrite Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_5
    :try_start_4
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.magnifier"

    const-string v5, "com.sec.android.app.magnifier.Magnifier"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "cm":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    const v5, 0x1080a30

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$59;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$59;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/ComponentName;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .end local v0    # "cm":Landroid/content/ComponentName;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Magnifier Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isDisableFloatingViewer()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .local v4, "needBlock":Z
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "blockPkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCarMode:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKnoxRunning:Z

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isWindowPinned()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const/4 v5, 0x1

    :goto_1
    return v5

    .restart local v1    # "blockPkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isEnableFloatingViewer()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .local v4, "needBlock":Z
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "blockPkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCarMode:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKnoxRunning:Z

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isWindowPinned()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    return v5

    .restart local v1    # "blockPkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isEnableOTA()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method private isEnabledPkg(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .local v1, "enable":I
    const/4 v4, 0x2

    if-eq v4, v1, :cond_0

    const/4 v4, 0x3

    if-ne v4, v1, :cond_1

    .end local v1    # "enable":I
    :cond_0
    :goto_0
    return v3

    .restart local v1    # "enable":I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .end local v1    # "enable":I
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isKnoxRunning()Z
    .locals 3

    .prologue
    const-string v0, "true"

    const-string v1, "dev.knoxapp.running"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPointInCircle(DDDII)Z
    .locals 15
    .param p1, "centerX"    # D
    .param p3, "centerY"    # D
    .param p5, "radius"    # D
    .param p7, "x"    # I
    .param p8, "y"    # I

    .prologue
    move/from16 v0, p7

    int-to-double v10, v0

    sub-double v12, p1, p5

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_1

    move/from16 v0, p7

    int-to-double v10, v0

    add-double v12, p1, p5

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_1

    move/from16 v0, p8

    int-to-double v10, v0

    sub-double v12, p3, p5

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_1

    move/from16 v0, p8

    int-to-double v10, v0

    add-double v12, p3, p5

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_1

    move/from16 v0, p7

    int-to-double v10, v0

    sub-double v4, p1, v10

    .local v4, "dx":D
    move/from16 v0, p8

    int-to-double v10, v0

    sub-double v6, p3, v10

    .local v6, "dy":D
    mul-double/2addr v4, v4

    mul-double/2addr v6, v6

    add-double v2, v4, v6

    .local v2, "distanceSquared":D
    mul-double v8, p5, p5

    .local v8, "radiusSquared":D
    cmpg-double v10, v2, v8

    if-gtz v10, :cond_0

    const/4 v10, 0x1

    .end local v2    # "distanceSquared":D
    .end local v4    # "dx":D
    .end local v6    # "dy":D
    .end local v8    # "radiusSquared":D
    :goto_0
    return v10

    .restart local v2    # "distanceSquared":D
    .restart local v4    # "dx":D
    .restart local v6    # "dy":D
    .restart local v8    # "radiusSquared":D
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .end local v2    # "distanceSquared":D
    .end local v4    # "dx":D
    .end local v6    # "dy":D
    .end local v8    # "radiusSquared":D
    :cond_1
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private isValidUser()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPersonaId:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v4}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v0, v3

    .local v0, "isKnoxUser":Z
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .local v1, "user":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    return v3

    .end local v0    # "isKnoxUser":Z
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    move v0, v2

    goto :goto_0

    .restart local v0    # "isKnoxUser":Z
    .restart local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method private isWindowPinned()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    return v0
.end method

.method private loadCenterPosition()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "tw_tool_box_floating_x_ratio"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "tw_tool_box_floating_y_ratio"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    return-void
.end method

.method private onToolClick()V
    .locals 9

    .prologue
    const v8, 0xc359

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-ne v6, v7, :cond_8

    invoke-virtual {p0, v8}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->performHapticFeedback(I)Z

    invoke-virtual {p0, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playSoundEffect(I)V

    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v6, :cond_3

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    const-string v5, "toolbox"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Click() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget v7, v7, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->priority:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    if-nez v6, :cond_6

    move v0, v5

    .local v0, "allPkgCount":I
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v0, v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .local v3, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-eq v3, v6, :cond_4

    iget-boolean v6, v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    if-nez v6, :cond_4

    iget-object v6, v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->packageName:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "data":[Ljava/lang/String;
    aget-object v4, v1, v5

    .local v4, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnabledPkg(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .end local v1    # "data":[Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .end local v0    # "allPkgCount":I
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    array-length v0, v6

    goto :goto_2

    .restart local v0    # "allPkgCount":I
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .end local v0    # "allPkgCount":I
    :cond_8
    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-boolean v6, v6, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isEnabled:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v6, v6, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    invoke-interface {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;->onAction()V

    invoke-virtual {p0, v8}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->performHapticFeedback(I)Z

    invoke-virtual {p0, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playSoundEffect(I)V

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v5}, Landroid/app/StatusBarManager;->collapsePanels()V

    goto/16 :goto_1
.end method

.method private onToolLongClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    const-string v0, "toolbox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LongClick() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->performHapticFeedback(I)Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playSoundEffect(I)V

    sget-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaY:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPosition(II)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v2, v2

    aput v2, v1, v3

    aput v3, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationEnter()V

    goto :goto_0
.end method

.method private onTouchDown(II)V
    .locals 16
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v10, p1, v3

    .local v10, "relX":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v11, p2, v3

    .local v11, "relY":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .local v2, "conflict":Z
    :goto_1
    const/4 v15, 0x0

    .local v15, "tracking":Z
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    goto :goto_0

    .end local v2    # "conflict":Z
    .end local v15    # "tracking":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .restart local v2    # "conflict":Z
    .restart local v15    # "tracking":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .local v13, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v14, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    .local v14, "r":Landroid/graphics/Rect;
    iget-boolean v3, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isRectangleShape:Z

    if-eqz v3, :cond_7

    invoke-virtual {v14, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    iget-boolean v3, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isAnimating:Z

    if-nez v3, :cond_4

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v14    # "r":Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownSlopArea:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    sub-int v4, p1, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    sub-int v5, p2, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    add-int v6, v6, p1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    add-int v7, v7, p2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    iget-object v3, v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int v3, v10, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaX:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    iget-object v3, v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int v3, v11, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaY:I

    goto/16 :goto_0

    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .restart local v14    # "r":Landroid/graphics/Rect;
    :cond_7
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-double v4, v3

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-double v6, v3

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-double v8, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isPointInCircle(DDDII)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_2

    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v14    # "r":Landroid/graphics/Rect;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3
.end method

.method private onTouchMove(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-ne v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaX:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetX:I

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaY:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetY:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownSlopArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaY:I

    sub-int v1, p2, v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPosition(II)V

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private onTouchUpOrCancel(III)V
    .locals 22
    .param p1, "action"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    .local v12, "lastTouchMode":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownSlopArea:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->bounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .local v17, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_b

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v19, v0

    add-int v5, v18, v19

    .local v5, "absoluteMainLeft":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->mLongPressPanelRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v7, v18, v19

    .local v7, "absoluteMainTop":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v19, v0

    add-int v6, v18, v19

    .local v6, "absoluteMainRight":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->mLongPressPanelRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    .local v4, "absoluteMainBottom":I
    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .end local v4    # "absoluteMainBottom":I
    .end local v5    # "absoluteMainLeft":I
    .end local v6    # "absoluteMainRight":I
    .end local v7    # "absoluteMainTop":I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->hide()V

    :cond_3
    sget-object v18, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->NORMAL:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-eq v12, v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postInvalidate()V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getAlpha()F

    move-result v18

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v18, v18, v19

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    const-wide/16 v20, 0xbb8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    return-void

    .restart local v4    # "absoluteMainBottom":I
    .restart local v5    # "absoluteMainLeft":I
    .restart local v6    # "absoluteMainRight":I
    .restart local v7    # "absoluteMainTop":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditConflictArea:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7, v6, v4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v18

    if-eqz v18, :cond_7

    new-instance v11, Landroid/content/Intent;

    const-string v18, "com.samsung.TOOLBOX_LIST"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v11, "intent":Landroid/content/Intent;
    const v18, 0x10008000

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    const/16 v20, -0x2

    invoke-direct/range {v19 .. v20}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mStatusBarManager:Landroid/app/StatusBarManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/StatusBarManager;->collapsePanels()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "tw_tool_box_floating_x_ratio"

    const/16 v20, 0x0

    const/16 v21, -0x2

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v15, v0

    .local v15, "newCenterX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "tw_tool_box_floating_y_ratio"

    const/16 v20, 0x0

    const/16 v21, -0x2

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .local v16, "newCenterY":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPositionOneShot(II)V

    goto/16 :goto_0

    .end local v11    # "intent":Landroid/content/Intent;
    .end local v15    # "newCenterX":I
    .end local v16    # "newCenterY":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveConflictArea:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7, v6, v4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveCenterPosition()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    const/4 v14, 0x0

    .local v14, "needBlock":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    .local v8, "arr$":[Ljava/lang/String;
    array-length v13, v8

    .local v13, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v13, :cond_9

    aget-object v9, v8, v10

    .local v9, "blockPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/4 v14, 0x1

    .end local v9    # "blockPkg":Ljava/lang/String;
    :cond_9
    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .restart local v9    # "blockPkg":Ljava/lang/String;
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .end local v4    # "absoluteMainBottom":I
    .end local v5    # "absoluteMainLeft":I
    .end local v6    # "absoluteMainRight":I
    .end local v7    # "absoluteMainTop":I
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v9    # "blockPkg":Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "needBlock":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z

    goto/16 :goto_0
.end method

.method private pauseGC()V
    .locals 5

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->resumeGC()V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodPauseGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodPauseGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "AbsListScroll"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private playAnimationCollapse()V
    .locals 6

    .prologue
    iget-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .local v1, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_1

    .end local v1    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v2, v4, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private playAnimationEnter()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private playAnimationExpand()V
    .locals 3

    .prologue
    iget-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .local v1, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    instance-of v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    check-cast v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;

    invoke-interface {v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;->onUpdateToggleStatus()V

    :cond_2
    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    invoke-interface {v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;->onUpdateEnableStatus()V

    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private playAnimationFadeIn()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnableFloatingViewer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const-string v0, "toolbox"

    const-string v3, "playAnimationFadeIn()"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v2

    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getAlpha()F

    move-result v2

    aput v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private playAnimationFadeOut()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-string v0, "toolbox"

    const-string v1, "playAnimationFadeOut()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private playAnimationSleep()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->NORMAL:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x29b

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x3ecccccd    # 0.4f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private playAnimationWakeup()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    iget-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getAlpha()F

    move-result v0

    .local v0, "alpha":F
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0
.end method

.method private prepareToolBoxLinear()V
    .locals 40

    .prologue
    const-string v4, "toolbox"

    const-string v5, "prepareToolBoxLinear()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct/range {v23 .. v23}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    .local v23, "interpolator":Landroid/view/animation/interpolator/SineInOut80;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-virtual {v4}, Lcom/samsung/android/toolbox/TwToolBoxManager;->getToolList()[Ljava/lang/String;

    move-result-object v38

    .local v38, "tools":[Ljava/lang/String;
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .local v37, "toolArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "0"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, v38

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    aget-object v36, v13, v21

    .local v36, "t":Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .end local v36    # "t":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    const/16 v32, 0x0

    .local v32, "priority":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    .local v13, "arr$":[Ljava/lang/Object;
    array-length v0, v13

    move/from16 v25, v0

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    aget-object v28, v13, v21

    .local v28, "obj":Ljava/lang/Object;
    move-object/from16 v29, v28

    check-cast v29, Ljava/lang/String;

    .local v29, "pkg":Ljava/lang/String;
    const-string v4, "/"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .local v17, "data":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v30, v17, v4

    .local v30, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    const-string v10, "00"

    .local v10, "activityName":Ljava/lang/String;
    :goto_2
    const-string v4, "0"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .local v24, "isMainCharactor":Z
    if-eqz v24, :cond_4

    new-instance v26, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    .local v26, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :goto_3
    move/from16 v0, v32

    move-object/from16 v1, v26

    iput v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->priority:I

    new-instance v11, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$34;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v11, v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$34;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)V

    .local v11, "animatorListener":Landroid/animation/Animator$AnimatorListener;
    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    const v5, 0x1080a2d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v26

    iput-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object/from16 v0, v26

    iput-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$35;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$35;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_4
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    instance-of v4, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    .local v14, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    const/4 v6, 0x1

    invoke-static {v14, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .local v15, "bitmapMask":Landroid/graphics/Bitmap;
    :goto_5
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v26

    iput-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadowBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v15, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadowBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v26

    iput-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v15    # "bitmapMask":Landroid/graphics/Bitmap;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v32, v32, 0x1

    :cond_2
    :goto_6
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .end local v10    # "activityName":Ljava/lang/String;
    .end local v11    # "animatorListener":Landroid/animation/Animator$AnimatorListener;
    .end local v24    # "isMainCharactor":Z
    .end local v26    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_3
    const/4 v4, 0x1

    aget-object v10, v17, v4

    goto/16 :goto_2

    .restart local v10    # "activityName":Ljava/lang/String;
    .restart local v24    # "isMainCharactor":Z
    :cond_4
    new-instance v26, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V

    goto/16 :goto_3

    .restart local v11    # "animatorListener":Landroid/animation/Animator$AnimatorListener;
    .restart local v26    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v31, v0

    .local v31, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "00"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v26

    iput-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnabledPkg(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    if-eqz v4, :cond_2

    .end local v31    # "pm":Landroid/content/pm/PackageManager;
    :cond_6
    new-instance v12, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$36;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v12, v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$36;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)V

    .local v12, "animatorUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/16 v35, 0x0

    .local v35, "startY":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_GAP:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_GAP:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    add-int/2addr v5, v6

    add-int/lit8 v6, v32, -0x1

    mul-int/2addr v5, v6

    add-int v20, v4, v5

    .local v20, "endY":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v20, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object/from16 v0, v26

    iput-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    array-length v5, v5

    sub-int v5, v5, v32

    mul-int/lit8 v5, v5, 0x21

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto/16 :goto_4

    .end local v12    # "animatorUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .end local v20    # "endY":I
    .end local v35    # "startY":I
    .restart local v31    # "pm":Landroid/content/pm/PackageManager;
    :cond_7
    :try_start_1
    new-instance v16, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v16, "cm":Landroid/content/ComponentName;
    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v26

    iput-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_7

    .end local v16    # "cm":Landroid/content/ComponentName;
    .end local v31    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v19

    .local v19, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "toolbox"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is no package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "index"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_2
    const-string v4, "index"

    const-string v5, ""

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .local v22, "index":I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->initializeFunctionShortcut(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_6

    .end local v22    # "index":I
    :catch_1
    move-exception v27

    .local v27, "nfe":Ljava/lang/NumberFormatException;
    goto/16 :goto_6

    .end local v19    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v27    # "nfe":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v19

    .local v19, "e":Ljava/lang/Exception;
    goto/16 :goto_6

    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    const/4 v6, 0x1

    invoke-static {v14, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    goto/16 :goto_5

    .end local v10    # "activityName":Ljava/lang/String;
    .end local v11    # "animatorListener":Landroid/animation/Animator$AnimatorListener;
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v17    # "data":[Ljava/lang/String;
    .end local v24    # "isMainCharactor":Z
    .end local v26    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v28    # "obj":Ljava/lang/Object;
    .end local v29    # "pkg":Ljava/lang/String;
    .end local v30    # "pkgName":Ljava/lang/String;
    :cond_9
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$37;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$37;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$38;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$38;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x190

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$39;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$39;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$40;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$40;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$42;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$42;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_4

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$43;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$43;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$44;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$44;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$45;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$45;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$46;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$46;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v33, v0

    .local v33, "removeButtonMoveAmount":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v33, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v39

    .local v39, "upAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x96

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x3c

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$47;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$47;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$48;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$48;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v33, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v18

    .local v18, "downAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x96

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x3c

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$49;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$49;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$50;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$50;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v4, 0x6

    new-array v4, v4, [F

    fill-array-data v4, :array_5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v34

    .local v34, "shakeAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x190

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x3c

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$51;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$51;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$52;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$52;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$53;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$53;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$54;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$54;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postInvalidate()V

    const-string v4, "toolbox"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 4
        0x0
        0x5a
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x41400000    # 12.0f
        -0x3ec00000    # -12.0f
        0x41400000    # 12.0f
        -0x3ec00000    # -12.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private releaseDVFS()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_4
    iput-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSLockAcquired:Z

    :cond_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private resumeGC()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private saveCenterPosition()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "tw_tool_box_floating_x_ratio"

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "tw_tool_box_floating_y_ratio"

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method

.method private saveDefaultCenterPosition()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-nez v5, :cond_0

    const/4 v0, 0x0

    .local v0, "defaultHalfWidth":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v5

    .local v3, "screenWidth":F
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v5

    .local v2, "screenHeight":F
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_TOP_PADDING:I

    .local v4, "topPadding":I
    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_RIGHT_PADDING:I

    .local v1, "rightPadding":I
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "tw_tool_box_floating_x_ratio"

    int-to-float v7, v0

    sub-float v7, v3, v7

    int-to-float v8, v1

    sub-float/2addr v7, v8

    div-float/2addr v7, v3

    invoke-static {v5, v6, v7, v9}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "tw_tool_box_floating_y_ratio"

    add-int v7, v0, v4

    int-to-float v7, v7

    div-float/2addr v7, v2

    invoke-static {v5, v6, v7, v9}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void

    .end local v0    # "defaultHalfWidth":I
    .end local v1    # "rightPadding":I
    .end local v2    # "screenHeight":F
    .end local v3    # "screenWidth":F
    .end local v4    # "topPadding":I
    :cond_0
    iget v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    sub-int v0, v5, v6

    goto :goto_0
.end method

.method private screenCapture()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$60;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$60;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setEnableVSync(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->pauseGC()V

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->acquireDVFS()V

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVSync()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->stopVSync()V

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->releaseDVFS()V

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->resumeGC()V

    goto :goto_0
.end method

.method private setInitVSync()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mInVSync:Z

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->initVSync()V

    return-void
.end method

.method private startActivityOrTask(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->startActivityOrTask(Landroid/content/Intent;Z)V

    return-void
.end method

.method private startActivityOrTask(Landroid/content/Intent;Z)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isFunctionShortcut"    # Z

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, -0x1

    .local v1, "bestMatchTaskId":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, "component":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .local v7, "targetPackageName":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v11, 0x1e

    invoke-virtual {v10, v11}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    .local v9, "taskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v9, :cond_4

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .local v8, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v10, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v10, :cond_5

    const-string v5, "null"

    .local v5, "runningPackageName":Ljava/lang/String;
    :goto_2
    iget-object v10, v8, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    if-nez v10, :cond_6

    const-string v6, "null"

    .local v6, "sourcePackageName":Ljava/lang/String;
    :goto_3
    iget-boolean v10, v8, Landroid/app/ActivityManager$RunningTaskInfo;->isHomeType:Z

    if-nez v10, :cond_1

    iget v10, v8, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v11

    if-ne v10, v11, :cond_1

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_1

    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v2, v11}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_7

    iget-object v10, v8, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-nez v10, :cond_7

    const/4 v1, -0x1

    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "runningPackageName":Ljava/lang/String;
    .end local v6    # "sourcePackageName":Ljava/lang/String;
    .end local v8    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    :goto_4
    if-ltz v1, :cond_4

    :try_start_2
    iget-object v10, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v1, v11}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    const-string v10, "toolbox"

    const-string v11, "moveTaskToFront()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "targetPackageName":Ljava/lang/String;
    .end local v9    # "taskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "toolbox"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception startActivityOrTask() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v10, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v10, p1, v11}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v10, "toolbox"

    const-string v11, "startActivityAsUser()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v2    # "component":Landroid/content/ComponentName;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "targetPackageName":Ljava/lang/String;
    .restart local v8    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v9    # "taskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_5
    :try_start_3
    iget-object v10, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .restart local v5    # "runningPackageName":Ljava/lang/String;
    :cond_6
    iget-object v10, v8, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .restart local v6    # "sourcePackageName":Ljava/lang/String;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_4

    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_7
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget v1, v8, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    goto :goto_4

    :cond_8
    if-nez p2, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget v1, v8, Landroid/app/ActivityManager$RunningTaskInfo;->id:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method

.method private stopVSync()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mInVSync:Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    :cond_0
    return-void
.end method

.method private toggleTorch()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getTorchStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.intent.action.ASSISTIVELIGHT_OFF"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "com.samsung.intent.action.ASSISTIVELIGHT_ON"

    goto :goto_0
.end method

.method private updatePosition()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateVSync()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mInVSync:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mInVSync:Z

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->initVSync()V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionCallback:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateVisibility()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .local v1, "isDreaming":Z
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v6}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    const-string v6, "toolbox"

    const-string v7, "Daydream isDreaming"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

    invoke-interface {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;->isKeyguardShowing()Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v1, :cond_1

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

    invoke-interface {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;->isKeyguardSecure()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

    invoke-interface {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;->inKeyguardRestrictedKeyInputMode()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_1
    move v2, v5

    .local v2, "keyguardShowing":Z
    :goto_1
    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    if-eq v2, v6, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnableOTA()Z

    move-result v0

    .local v0, "OTAShowing":Z
    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    if-eq v0, v6, :cond_3

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    :cond_3
    sget-boolean v6, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "toolbox_onoff"

    const/4 v8, -0x2

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v5, :cond_5

    move v6, v5

    :goto_2
    iput-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisible:Z

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isValidUser()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isKnoxRunning()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKnoxRunning:Z

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getSCoverState()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnableFloatingViewer()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isDisableFloatingViewer()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisible:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    if-eqz v6, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isWindowPinned()Z

    move-result v6

    if-nez v6, :cond_6

    :goto_3
    iput-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    :try_start_1
    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    if-eqz v5, :cond_7

    move v3, v4

    .local v3, "visibility":I
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_8

    invoke-virtual {p0, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "visibility":I
    :goto_5
    iget-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    return v4

    .end local v0    # "OTAShowing":Z
    .end local v2    # "keyguardShowing":Z
    :cond_4
    move v2, v4

    goto :goto_1

    .restart local v0    # "OTAShowing":Z
    .restart local v2    # "keyguardShowing":Z
    :cond_5
    move v6, v4

    goto :goto_2

    :cond_6
    move v5, v4

    goto :goto_3

    :cond_7
    const/16 v3, 0x8

    goto :goto_4

    .restart local v3    # "visibility":I
    :cond_8
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->invalidate()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .end local v3    # "visibility":I
    :catch_0
    move-exception v4

    goto :goto_5

    .end local v0    # "OTAShowing":Z
    .end local v2    # "keyguardShowing":Z
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->drawToolBox(Landroid/graphics/Canvas;IIZ)V

    return-void
.end method

.method public invalidate()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    invoke-virtual {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 10

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .local v2, "handler":Landroid/os/Handler;
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .local v3, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$12;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$12;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageListObserver:Landroid/database/ContentObserver;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$13;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$13;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$14;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$14;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchModeObserver:Landroid/database/ContentObserver;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$15;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$15;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsModeObserver:Landroid/database/ContentObserver;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$16;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$16;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCarModeObserver:Landroid/database/ContentObserver;

    const-string v5, "toolbox_apps"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v5, "device_provisioned"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v5, "touch_exploration_enabled"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v5, "kids_home_mode"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v5, "car_mode_on"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCarModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationEnterRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x2bc

    add-long/2addr v6, v8

    invoke-virtual {p0, v5, v6, v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v1, 0x104072a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v1, 0x10404fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationCollapse()V

    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postInvalidate()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .local v0, "orientation":I
    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "tw_tool_box_floating_x_ratio"

    const/4 v4, -0x2

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    .local v1, "ratioX":F
    cmpl-float v2, v1, v5

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveDefaultCenterPosition()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V

    .end local v1    # "ratioX":F
    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    if-eq v2, v0, :cond_1

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationCollapse()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v1, v5

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v2, v5

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    .local v2, "y":I
    if-nez v0, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchDown(II)V

    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    if-nez v5, :cond_5

    :cond_1
    if-eq v0, v4, :cond_2

    if-ne v0, v6, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    iget v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v5, v5

    if-ne v4, v5, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    if-eqz v4, :cond_4

    :cond_3
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    iget v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    invoke-direct {p0, v6, v4, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchUpOrCancel(III)V

    const-string v4, "toolbox"

    const-string v5, "Recovered LongPressPanel"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_4
    :goto_0
    :pswitch_1
    return v3

    .restart local v1    # "x":I
    .restart local v2    # "y":I
    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchMove(II)V

    :cond_6
    :goto_1
    move v3, v4

    goto :goto_0

    :cond_7
    if-eq v0, v4, :cond_8

    if-ne v0, v6, :cond_6

    :cond_8
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchUpOrCancel(III)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPositionAndromeda()V

    goto :goto_0
.end method

.method public registerCallback()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    iget-object v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    invoke-virtual {v7, v8}, Lcom/samsung/android/toolbox/TwToolBoxManager;->registerCallback(Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;)Z

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setInitVSync()V

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v7, v8}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPersonaManager:Landroid/os/PersonaManager;

    new-instance v8, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$2;

    invoke-direct {v8, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$2;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v7, v8}, Landroid/os/PersonaManager;->registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, "config":Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v7, v5, :cond_6

    move v2, v5

    .local v2, "haveHardKeyboard":Z
    :goto_0
    if-eqz v2, :cond_7

    iget v7, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_7

    move v1, v5

    .local v1, "hardKeyShown":Z
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez v1, :cond_8

    :goto_2
    iput-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    :cond_2
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .local v4, "sipIntentFilter":Landroid/content/IntentFilter;
    const-string v5, "ResponseAxT9Info"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_3

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mScreenUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_4

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mScreenUnlockReceiver:Landroid/content/BroadcastReceiver;

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mScreenUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPinnedWindowReceiver:Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_5

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPinnedWindowReceiver:Landroid/content/BroadcastReceiver;

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPinnedWindowReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->prepareToolBoxLinear()V

    return-void

    .end local v1    # "hardKeyShown":Z
    .end local v2    # "haveHardKeyboard":Z
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "sipIntentFilter":Landroid/content/IntentFilter;
    :cond_6
    move v2, v6

    goto :goto_0

    .restart local v2    # "haveHardKeyboard":Z
    :cond_7
    move v1, v6

    goto :goto_1

    .restart local v1    # "hardKeyShown":Z
    .restart local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_8
    move v5, v6

    goto :goto_2
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1f4

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const-wide/16 v0, 0xa

    goto :goto_0
.end method

.method public unregisterCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxManager;->unregisterCallback(Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mScreenUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mScreenUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mScreenUnlockReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPinnedWindowReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPinnedWindowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPinnedWindowReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->clearToolBox()V

    return-void
.end method
