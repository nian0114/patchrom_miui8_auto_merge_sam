.class public Landroid/app/Activity;
.super Landroid/view/ContextThemeWrapper;
.source "Activity.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/Window$OnWindowDismissedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Activity$TranslucentConversionStateListener;,
        Landroid/app/Activity$HostCallbacks;,
        Landroid/app/Activity$TranslucentConversionListener;,
        Landroid/app/Activity$FeatureContextMenuListener;,
        Landroid/app/Activity$ManagedCursor;,
        Landroid/app/Activity$NonConfigurationInstances;,
        Landroid/app/Activity$ManagedDialog;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final DEBUG_DUALSCREEN:Z

.field private static final DEBUG_LIFECYCLE:Z = false

.field public static final DEFAULT_KEYS_DIALER:I = 0x1

.field public static final DEFAULT_KEYS_DISABLE:I = 0x0

.field public static final DEFAULT_KEYS_SEARCH_GLOBAL:I = 0x4

.field public static final DEFAULT_KEYS_SEARCH_LOCAL:I = 0x3

.field public static final DEFAULT_KEYS_SHORTCUT:I = 0x2

.field protected static final FOCUSED_STATE_SET:[I

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:fragments"

.field private static final HAS_CURENT_PERMISSIONS_REQUEST_KEY:Ljava/lang/String; = "android:hasCurrentPermissionsRequest"

.field private static final REQUEST_PERMISSIONS_WHO_PREFIX:Ljava/lang/String; = "@android:requestPermissions:"

.field public static final RESULT_CANCELED:I = 0x0

.field public static final RESULT_FIRST_USER:I = 0x1

.field public static final RESULT_OK:I = -0x1

.field private static final SAVED_DIALOGS_TAG:Ljava/lang/String; = "android:savedDialogs"

.field private static final SAVED_DIALOG_ARGS_KEY_PREFIX:Ljava/lang/String; = "android:dialog_args_"

.field private static final SAVED_DIALOG_IDS_KEY:Ljava/lang/String; = "android:savedDialogIds"

.field private static final SAVED_DIALOG_KEY_PREFIX:Ljava/lang/String; = "android:dialog_"

.field private static final TAG:Ljava/lang/String; = "Activity"

.field private static final WINDOW_HIERARCHY_TAG:Ljava/lang/String; = "android:viewHierarchyState"

.field private static mAsParamVal:[I

.field private static mDragBoostPossible:I

.field private static final mIsAmericano:Z

.field private static mIsFirstACtivityStart:Z

.field private static mPerf:Landroid/util/BoostFramework;

.field private static mPerfLockDuration:I


# instance fields
.field private final DEBUG_ELASTIC:Z

.field private final isElasticEnabled:Z

.field mActionBar:Landroid/app/ActionBar;

.field private mActionModeTypeStarting:I

.field mActivityInfo:Landroid/content/pm/ActivityInfo;

.field mActivityTransitionState:Landroid/app/ActivityTransitionState;

.field private mApplication:Landroid/app/Application;

.field mCalled:Z

.field private mChangeCanvasToTranslucent:Z

.field mChangingConfigurations:Z

.field private mComponent:Landroid/content/ComponentName;

.field mConfigChangeFlags:I

.field mCurrentConfig:Landroid/content/res/Configuration;

.field mDecor:Landroid/view/View;

.field private mDefaultKeyMode:I

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDestroyed:Z

.field private mDoReportFullyDrawn:Z

.field mEmbeddedID:Ljava/lang/String;

.field private mEnableDefaultActionBarUp:Z

.field mEnterTransitionListener:Landroid/app/SharedElementCallback;

.field mExitTransitionListener:Landroid/app/SharedElementCallback;

.field private mExpandRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;

.field private mFeatureContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field mFinished:Z

.field private mFlipfont:I

.field final mFragments:Landroid/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field private mHasCurrentPermissionsRequest:Z

.field private mIdent:I

.field private mInjectionManager:Landroid/app/im/InjectionManager;

.field private final mInstanceTracker:Ljava/lang/Object;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field mIntent:Landroid/content/Intent;

.field mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

.field private mLauncherBooster:Landroid/os/DVFSHelper;

.field mMainThread:Landroid/app/ActivityThread;

.field private final mManagedCursors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity$ManagedCursor;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedDialogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Activity$ManagedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuInflater:Landroid/view/MenuInflater;

.field mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field mParent:Landroid/app/Activity;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field public mPreferredOrientation:I

.field private mPreventEmbeddedTabs:Z

.field mReferrer:Ljava/lang/String;

.field mResultCode:I

.field mResultData:Landroid/content/Intent;

.field mResumed:Z

.field private mScreenChangeListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;

.field private mSearchEvent:Landroid/view/SearchEvent;

.field private mSearchManager:Landroid/app/SearchManager;

.field private mShrinkRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;

.field private mStackedHeight:I

.field mStartedActivity:Z

.field private mStopped:Z

.field mSubDecor:Landroid/view/View;

.field mSubWindow:Landroid/view/Window;

.field mSubWindowAdded:Z

.field private mSubWindowDummpy:Landroid/view/Window;

.field mTemporaryPause:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleReady:Z

.field private mToken:Landroid/os/IBinder;

.field private mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

.field private mUiThread:Ljava/lang/Thread;

.field mVisibleBehind:Z

.field mVisibleFromClient:Z

.field mVisibleFromServer:Z

.field private mVoiceInteractor:Landroid/app/VoiceInteractor;

.field private mWindow:Landroid/view/Window;

.field mWindowAdded:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private myName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 732
    const/4 v0, 0x0

    sput-object v0, Landroid/app/Activity;->mPerf:Landroid/util/BoostFramework;

    .line 733
    sput v1, Landroid/app/Activity;->mDragBoostPossible:I

    .line 734
    sput v1, Landroid/app/Activity;->mPerfLockDuration:I

    .line 809
    sget-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    sput-boolean v0, Landroid/app/Activity;->DEBUG_DUALSCREEN:Z

    .line 887
    new-array v0, v3, [I

    const/4 v1, 0x0

    const v2, 0x101009c

    aput v2, v0, v1

    sput-object v0, Landroid/app/Activity;->FOCUSED_STATE_SET:[I

    .line 893
    sput-boolean v3, Landroid/app/Activity;->mIsFirstACtivityStart:Z

    .line 7389
    const-string/jumbo v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "americano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/app/Activity;->mIsAmericano:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 727
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;-><init>()V

    .line 741
    iput-boolean v3, p0, Landroid/app/Activity;->isElasticEnabled:Z

    .line 742
    iput-boolean v3, p0, Landroid/app/Activity;->DEBUG_ELASTIC:Z

    .line 743
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->myName:Ljava/lang/String;

    .line 744
    new-instance v0, Landroid/app/Activity$FeatureContextMenuListener;

    invoke-direct {v0, p0, v2}, Landroid/app/Activity$FeatureContextMenuListener;-><init>(Landroid/app/Activity;Landroid/app/Activity$1;)V

    iput-object v0, p0, Landroid/app/Activity;->mFeatureContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 772
    iput v1, p0, Landroid/app/Activity;->mFlipfont:I

    .line 798
    iput-boolean v3, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 800
    iput-boolean v1, p0, Landroid/app/Activity;->mTemporaryPause:Z

    .line 802
    iput-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 813
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 817
    const/4 v0, -0x2

    iput v0, p0, Landroid/app/Activity;->mPreferredOrientation:I

    .line 839
    iput-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 840
    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 841
    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 842
    iput-boolean v3, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 843
    iput-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 849
    iput v1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 852
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    .line 853
    new-instance v0, Landroid/app/Activity$HostCallbacks;

    invoke-direct {v0, p0}, Landroid/app/Activity$HostCallbacks;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Landroid/app/FragmentController;->createController(Landroid/app/FragmentHostCallback;)Landroid/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    .line 869
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    .line 873
    iput v1, p0, Landroid/app/Activity;->mResultCode:I

    .line 874
    iput-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 881
    iput-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 882
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 884
    iput v1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 885
    iput-object v2, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 889
    invoke-static {p0}, Landroid/os/StrictMode;->trackActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mInstanceTracker:Ljava/lang/Object;

    .line 896
    new-instance v0, Landroid/app/ActivityTransitionState;

    invoke-direct {v0}, Landroid/app/ActivityTransitionState;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 897
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    .line 898
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 4234
    iput-object v2, p0, Landroid/app/Activity;->mLauncherBooster:Landroid/os/DVFSHelper;

    .line 7391
    iput-boolean v1, p0, Landroid/app/Activity;->mPreventEmbeddedTabs:Z

    .line 7414
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Activity;->mStackedHeight:I

    .line 7624
    iput-object v2, p0, Landroid/app/Activity;->mScreenChangeListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;

    .line 7625
    iput-object v2, p0, Landroid/app/Activity;->mExpandRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;

    .line 7626
    iput-object v2, p0, Landroid/app/Activity;->mShrinkRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;

    return-void
.end method

.method static synthetic access$300(Landroid/app/Activity;)Landroid/app/im/InjectionManager;
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 727
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/Activity;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 727
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method private addSubWindow()V
    .locals 4

    .prologue
    .line 7589
    iget-object v1, p0, Landroid/app/Activity;->mSubWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Activity;->mSubDecor:Landroid/view/View;

    .line 7590
    iget-object v1, p0, Landroid/app/Activity;->mSubDecor:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 7591
    iget-object v1, p0, Landroid/app/Activity;->mSubDecor:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7592
    iget-object v1, p0, Landroid/app/Activity;->mSubWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 7593
    .local v0, "sl":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x62

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 7594
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 7595
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 7596
    iget-object v1, p0, Landroid/app/Activity;->mSubWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 7597
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mSubWindowAdded:Z

    .line 7598
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mSubDecor:Landroid/view/View;

    iget-object v3, p0, Landroid/app/Activity;->mSubWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7600
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 7601
    iget-object v1, p0, Landroid/app/Activity;->mSubDecor:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7605
    .end local v0    # "sl":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4322
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 4323
    .local v0, "decor":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 4324
    invoke-virtual {v0}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 4326
    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/app/Activity;->isTopOfTask()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4327
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v1, p0, p1}, Landroid/app/ActivityTransitionState;->startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 4329
    :cond_1
    return-void

    .line 4322
    .end local v0    # "decor":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkFireWallPermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1056
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1057
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/app/Activity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    sget-boolean v2, Landroid/app/Activity;->mIsFirstACtivityStart:Z

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/NetworkPolicyManager;->checkFireWallPermission(ZLjava/lang/String;)V

    .line 1058
    const/4 v1, 0x0

    sput-boolean v1, Landroid/app/Activity;->mIsFirstACtivityStart:Z

    .line 1059
    return-void
.end method

.method private createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "dialogId"    # Ljava/lang/Integer;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1230
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 1231
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_0

    .line 1232
    const/4 v0, 0x0

    .line 1235
    .end local v0    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 1234
    .restart local v0    # "dialog":Landroid/app/Dialog;
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private dispatchRequestPermissionsResult(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 7257
    iput-boolean v3, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 7259
    if-eqz p2, :cond_0

    const-string v2, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7261
    .local v1, "permissions":[Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    const-string v2, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 7263
    .local v0, "grantResults":[I
    :goto_1
    invoke-virtual {p0, p1, v1, v0}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 7264
    return-void

    .line 7259
    .end local v0    # "grantResults":[I
    .end local v1    # "permissions":[Ljava/lang/String;
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    goto :goto_0

    .line 7261
    .restart local v1    # "permissions":[Ljava/lang/String;
    :cond_1
    new-array v0, v3, [I

    goto :goto_1
.end method

.method private dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 7269
    if-eqz p2, :cond_0

    const-string v2, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7271
    .local v1, "permissions":[Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    const-string v2, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 7273
    .local v0, "grantResults":[I
    :goto_1
    invoke-virtual {p3, p1, v1, v0}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 7274
    return-void

    .line 7269
    .end local v0    # "grantResults":[I
    .end local v1    # "permissions":[Ljava/lang/String;
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    goto :goto_0

    .line 7271
    .restart local v1    # "permissions":[Ljava/lang/String;
    :cond_1
    new-array v0, v3, [I

    goto :goto_1
.end method

.method private ensureSearchManager()V
    .locals 2

    .prologue
    .line 5752
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_0

    .line 5757
    :goto_0
    return-void

    .line 5756
    :cond_0
    new-instance v0, Landroid/app/SearchManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/SearchManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    goto :goto_0
.end method

.method private finish(Z)V
    .locals 4
    .param p1, "finishTask"    # Z

    .prologue
    .line 5244
    iget-object v2, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v2, :cond_2

    .line 5247
    monitor-enter p0

    .line 5248
    :try_start_0
    iget v0, p0, Landroid/app/Activity;->mResultCode:I

    .line 5249
    .local v0, "resultCode":I
    iget-object v1, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 5250
    .local v1, "resultData":Landroid/content/Intent;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5253
    if-eqz v1, :cond_0

    .line 5254
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 5256
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, v0, v1, p1}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5258
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Activity;->mFinished:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5266
    .end local v0    # "resultCode":I
    .end local v1    # "resultData":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 5250
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 5264
    :cond_2
    iget-object v2, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v2, p0}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    goto :goto_0

    .line 5260
    .restart local v0    # "resultCode":I
    .restart local v1    # "resultData":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initWindowDecorActionBar()V
    .locals 3

    .prologue
    .line 2360
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2364
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 2366
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    .line 2375
    :cond_0
    :goto_0
    return-void

    .line 2370
    :cond_1
    new-instance v1, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v1, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 2371
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v2, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 2373
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 2374
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultLogo(I)V

    goto :goto_0
.end method

.method private isSupportSmartManagerCHNEnhancedFeature(Ljava/lang/String;)Z
    .locals 3
    .param p1, "featureName"    # Ljava/lang/String;

    .prologue
    .line 1071
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "features":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTopOfTask()Z
    .locals 3

    .prologue
    .line 6174
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isTopOfTask(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6176
    :goto_0
    return v1

    .line 6175
    :catch_0
    move-exception v0

    .line 6176
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private missingDialog(I)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 3821
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no dialog with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was ever "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "shown via Activity#showDialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 7124
    if-eqz p1, :cond_0

    .line 7125
    const-string v0, "android:hasCurrentPermissionsRequest"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 7128
    :cond_0
    return-void
.end method

.method private restoreManagedDialogs(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1203
    const-string v7, "android:savedDialogs"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1204
    .local v0, "b":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 1227
    :cond_0
    return-void

    .line 1208
    :cond_1
    const-string v7, "android:savedDialogIds"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 1209
    .local v4, "ids":[I
    array-length v6, v4

    .line 1210
    .local v6, "numDialogs":I
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7, v6}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 1211
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 1212
    aget v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1213
    .local v1, "dialogId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1214
    .local v2, "dialogState":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 1217
    new-instance v5, Landroid/app/Activity$ManagedDialog;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$1;)V

    .line 1218
    .local v5, "md":Landroid/app/Activity$ManagedDialog;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 1219
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-direct {p0, v1, v2, v7}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 1220
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_2

    .line 1221
    iget-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1222
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    iget-object v9, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p0, v7, v8, v9}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1223
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1211
    .end local v5    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private saveManagedDialogs(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1582
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v6, :cond_1

    .line 1608
    :cond_0
    :goto_0
    return-void

    .line 1586
    :cond_1
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1587
    .local v5, "numDialogs":I
    if-eqz v5, :cond_0

    .line 1591
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1593
    .local v0, "dialogState":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    new-array v2, v6, [I

    .line 1596
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 1597
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1598
    .local v3, "key":I
    aput v3, v2, v1

    .line 1599
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity$ManagedDialog;

    .line 1600
    .local v4, "md":Landroid/app/Activity$ManagedDialog;
    invoke-static {v3}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1601
    iget-object v6, v4, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    .line 1602
    invoke-static {v3}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1596
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1606
    .end local v3    # "key":I
    .end local v4    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_3
    const-string v6, "android:savedDialogIds"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1607
    const-string v6, "android:savedDialogs"

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static savedDialogArgsKeyFor(I)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # I

    .prologue
    .line 1243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:dialog_args_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static savedDialogKeyFor(I)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # I

    .prologue
    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:dialog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startIntentSenderForResultInner(Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/app/Activity;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "activity"    # Landroid/app/Activity;
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4494
    const/4 v5, 0x0

    .line 4495
    .local v5, "resolvedType":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 4496
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 4497
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 4498
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 4500
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object/from16 v0, p6

    iget-object v7, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v3, p1

    move-object/from16 v4, p3

    move v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p7

    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v12

    .line 4504
    .local v12, "result":I
    const/4 v1, -0x6

    if-ne v12, v1, :cond_2

    .line 4505
    new-instance v1, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v1}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4508
    .end local v12    # "result":I
    :catch_0
    move-exception v1

    .line 4510
    :goto_0
    if-ltz p2, :cond_1

    .line 4518
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 4520
    :cond_1
    return-void

    .line 4507
    .restart local v12    # "result":I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v12, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 7118
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    if-eqz v0, :cond_0

    .line 7119
    const-string v0, "android:hasCurrentPermissionsRequest"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7121
    :cond_0
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2449
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2450
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2451
    return-void
.end method

.method final attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aThread"    # Landroid/app/ActivityThread;
    .param p3, "instr"    # Landroid/app/Instrumentation;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "ident"    # I
    .param p6, "application"    # Landroid/app/Application;
    .param p7, "intent"    # Landroid/content/Intent;
    .param p8, "info"    # Landroid/content/pm/ActivityInfo;
    .param p9, "title"    # Ljava/lang/CharSequence;
    .param p10, "parent"    # Landroid/app/Activity;
    .param p11, "id"    # Ljava/lang/String;
    .param p12, "lastNonConfigurationInstances"    # Landroid/app/Activity$NonConfigurationInstances;
    .param p13, "config"    # Landroid/content/res/Configuration;
    .param p14, "referrer"    # Ljava/lang/String;
    .param p15, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    .line 6788
    invoke-virtual {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 6790
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/FragmentController;->attachHost(Landroid/app/Fragment;)V

    .line 6792
    iput-object p4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6793
    move-object/from16 v0, p10

    iput-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 6795
    invoke-virtual {p0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 6796
    .local v1, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-nez p10, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1, p8, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isMultiPhoneWindowNeeded(Landroid/content/pm/ActivityInfo;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6797
    const/4 v2, 0x1

    invoke-virtual {p0, p0, v2}, Landroid/app/Activity;->makeNewWindow(Landroid/content/Context;Z)Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 6807
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6808
    new-instance v2, Lcom/android/internal/policy/SubPhoneWindow;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/SubPhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/app/Activity;->mSubWindow:Landroid/view/Window;

    .line 6809
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Landroid/app/Activity;->mSubWindow:Landroid/view/Window;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSubWindow(Landroid/view/Window;)V

    .line 6813
    :cond_0
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 6814
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, p0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    .line 6815
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 6816
    iget v2, p8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    if-eqz v2, :cond_1

    .line 6817
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v3, p8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 6819
    :cond_1
    iget v2, p8, Landroid/content/pm/ActivityInfo;->uiOptions:I

    if-eqz v2, :cond_2

    .line 6820
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v3, p8, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setUiOptions(I)V

    .line 6822
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    .line 6824
    iput-object p2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6825
    iput-object p3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 6829
    iput p5, p0, Landroid/app/Activity;->mIdent:I

    .line 6830
    iput-object p6, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    .line 6831
    iput-object p7, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 6832
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 6833
    invoke-virtual {p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 6834
    iput-object p8, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 6835
    move-object/from16 v0, p9

    iput-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 6837
    move-object/from16 v0, p11

    iput-object v0, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6838
    move-object/from16 v0, p12

    iput-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 6839
    if-eqz p15, :cond_3

    .line 6840
    if-eqz p12, :cond_6

    .line 6841
    move-object/from16 v0, p12

    iget-object v2, v0, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 6848
    :cond_3
    :goto_1
    iget-object v4, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    iget v3, p8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v4, v2, v5, v6, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 6852
    iget-object v2, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v2, :cond_4

    .line 6853
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 6855
    :cond_4
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    .line 6856
    move-object/from16 v0, p13

    iput-object v0, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 6857
    return-void

    .line 6799
    :cond_5
    new-instance v2, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    goto/16 :goto_0

    .line 6843
    :cond_6
    new-instance v2, Landroid/app/VoiceInteractor;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p15

    invoke-direct {v2, v0, p0, p0, v3}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    goto :goto_1

    .line 6848
    :cond_7
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public canStartActivityForResult()Z
    .locals 1

    .prologue
    .line 4932
    const/4 v0, 0x1

    return v0
.end method

.method public checkNoEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 7411
    iget-boolean v0, p0, Landroid/app/Activity;->mPreventEmbeddedTabs:Z

    return v0
.end method

.method public closeContextMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 3593
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3594
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 3596
    :cond_0
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3498
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3499
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 3501
    :cond_0
    return-void
.end method

.method public convertFromTranslucent()V
    .locals 3

    .prologue
    .line 6198
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 6199
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6200
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6205
    :cond_0
    :goto_0
    return-void

    .line 6202
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public convertFromTranslucent(Z)V
    .locals 3
    .param p1, "skipSetWindowOpaque"    # Z

    .prologue
    .line 6227
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 6228
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->convertFromTranslucent(Landroid/os/IBinder;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6229
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6234
    :cond_0
    :goto_0
    return-void

    .line 6231
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z
    .locals 6
    .param p1, "callback"    # Landroid/app/Activity$TranslucentConversionListener;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v5, 0x0

    .line 6297
    :try_start_0
    iput-object p1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 6298
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, p2}, Landroid/app/IActivityManager;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    .line 6300
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6301
    const/4 v0, 0x1

    .line 6307
    .local v0, "drawComplete":Z
    :goto_0
    iget-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v2, :cond_0

    .line 6309
    iget-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    invoke-interface {v2, v0}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 6311
    :cond_0
    iget-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    return v2

    .line 6302
    .end local v0    # "drawComplete":Z
    :catch_0
    move-exception v1

    .line 6304
    .local v1, "e":Landroid/os/RemoteException;
    iput-boolean v5, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    .line 6305
    const/4 v0, 0x0

    .restart local v0    # "drawComplete":Z
    goto :goto_0
.end method

.method public convertToTranslucent(Landroid/app/Activity$TranslucentConversionStateListener;)Z
    .locals 2
    .param p1, "callback"    # Landroid/app/Activity$TranslucentConversionStateListener;

    .prologue
    .line 6261
    new-instance v0, Landroid/app/Activity$2;

    invoke-direct {v0, p0, p1}, Landroid/app/Activity$2;-><init>(Landroid/app/Activity;Landroid/app/Activity$TranslucentConversionStateListener;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method public createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .prologue
    .line 5479
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5481
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 5482
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    :goto_0
    iget-object v4, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object p2, v6, v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    move v5, p1

    move v8, p3

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v11

    .line 5488
    .local v11, "target":Landroid/content/IIntentSender;
    if-eqz v11, :cond_1

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v11}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    .line 5492
    .end local v11    # "target":Landroid/content/IIntentSender;
    :goto_1
    return-object v0

    .line 5482
    :cond_0
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5488
    .restart local v11    # "target":Landroid/content/IIntentSender;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 5489
    .end local v11    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 5492
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public demoteRenderer()V
    .locals 1

    .prologue
    .line 2430
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->demoteRenderer()V

    .line 2431
    return-void
.end method

.method public final dismissDialog(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3805
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 3806
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 3809
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 3810
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_1

    .line 3811
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 3813
    :cond_1
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3814
    return-void
.end method

.method dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 6
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 7135
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 7136
    if-nez p1, :cond_1

    .line 7137
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 7164
    :cond_0
    :goto_0
    return-void

    .line 7138
    :cond_1
    const-string v4, "@android:requestPermissions:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7139
    const-string v4, "@android:requestPermissions:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 7140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7141
    invoke-direct {p0, p2, p4}, Landroid/app/Activity;->dispatchRequestPermissionsResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 7143
    :cond_2
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 7144
    .local v0, "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 7145
    invoke-direct {p0, p2, p4, v0}, Landroid/app/Activity;->dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V

    goto :goto_0

    .line 7148
    .end local v0    # "frag":Landroid/app/Fragment;
    :cond_3
    const-string v4, "@android:view:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7149
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v3

    .line 7151
    .local v3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 7152
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 7159
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v3    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    :cond_5
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 7160
    .restart local v0    # "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 7161
    invoke-virtual {v0, p2, p3, p4}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public dispatchEnterAnimationComplete()V
    .locals 1

    .prologue
    .line 6465
    invoke-virtual {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 6466
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6467
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnEnterAnimationComplete()V

    .line 6469
    :cond_0
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3081
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 3082
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3083
    const/4 v0, 0x1

    .line 3085
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 2967
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2971
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, p1}, Landroid/app/ActionBar;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2982
    :cond_0
    :goto_0
    return v2

    .line 2976
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2977
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2980
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2981
    .local v0, "decor":Landroid/view/View;
    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2982
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, p0, v2, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2996
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2997
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2998
    const/4 v0, 0x1

    .line 3000
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x1

    .line 3089
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3090
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3092
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3093
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v5, :cond_1

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v5, :cond_1

    move v0, v3

    .line 3095
    .local v0, "isFullScreen":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 3097
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 3098
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3099
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3102
    :cond_0
    return v3

    .line 3093
    .end local v0    # "isFullScreen":Z
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3043
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 3044
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 3046
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3047
    const/4 v0, 0x1

    .line 3049
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3063
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 3064
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3065
    const/4 v0, 0x1

    .line 3067
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 6084
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6085
    return-void
.end method

.method dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 6088
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Local Activity "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6089
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6090
    const-string v2, " State:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6091
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6092
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mResumed="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6093
    iget-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mStopped="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6094
    iget-boolean v2, p0, Landroid/app/Activity;->mStopped:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mFinished="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6095
    iget-boolean v2, p0, Landroid/app/Activity;->mFinished:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 6096
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mChangingConfigurations="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6097
    iget-boolean v2, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 6098
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mCurrentConfig="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6099
    iget-object v2, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6102
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v2, :cond_1

    .line 6103
    invoke-virtual {p0}, Landroid/app/Activity;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 6104
    .local v1, "overrideConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_0

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    if-eq v1, v2, :cond_0

    .line 6105
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "overrideConfig="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6106
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6108
    :cond_0
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "DisplayMetrics="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6109
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6111
    .end local v1    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mMultiWindowStyle="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6112
    iget-object v2, p0, Landroid/app/Activity;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6113
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    instance-of v2, v2, Lcom/android/internal/policy/MultiPhoneWindow;

    if-eqz v2, :cond_2

    .line 6114
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mStackBounds="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6115
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    check-cast v2, Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6131
    :cond_2
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2, v0, p2, p3, p4}, Landroid/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6132
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3, p4}, Landroid/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6133
    iget-object v2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v2, :cond_3

    .line 6134
    iget-object v2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v2, v0, p2, p3, p4}, Landroid/app/VoiceInteractor;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6137
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 6140
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6143
    :cond_4
    iget-object v2, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v2, v3, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6144
    return-void
.end method

.method public exitByCloseBtn()V
    .locals 1

    .prologue
    .line 7477
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->exitByCloseBtn()V

    .line 7478
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 2303
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2306
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Landroid/app/Activity;->mSubWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 2307
    iget-object v1, p0, Landroid/app/Activity;->mSubWindow:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2311
    :cond_0
    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 5274
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(Z)V

    .line 5275
    return-void
.end method

.method public finishActivity(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .prologue
    .line 5343
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 5345
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Landroid/app/IActivityManager;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5353
    :goto_0
    return-void

    .line 5351
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    goto :goto_0

    .line 5347
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 5365
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p2}, Landroid/app/IActivityManager;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5370
    :goto_0
    return-void

    .line 5367
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishAffinity()V
    .locals 2

    .prologue
    .line 5292
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 5293
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not be called from an embedded activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5295
    :cond_0
    iget v0, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 5296
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not be called to deliver a result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5299
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5300
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mFinished:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5305
    :cond_3
    :goto_0
    return-void

    .line 5302
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishAfterTransition()V
    .locals 1

    .prologue
    .line 5328
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->startExitBackTransition(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5329
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5331
    :cond_0
    return-void
.end method

.method public finishAndRemoveTask()V
    .locals 1

    .prologue
    .line 5377
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(Z)V

    .line 5378
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 0
    .param p1, "child"    # Landroid/app/Activity;

    .prologue
    .line 5317
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5318
    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 2321
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2322
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method public getActionBarTabSize()I
    .locals 1

    .prologue
    .line 7434
    iget v0, p0, Landroid/app/Activity;->mStackedHeight:I

    return v0
.end method

.method getActivityOptions()Landroid/app/ActivityOptions;
    .locals 2

    .prologue
    .line 6343
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 6346
    :goto_0
    return-object v0

    .line 6344
    :catch_0
    move-exception v0

    .line 6346
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getActivityToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 6861
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public final getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getCallingActivity()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 5123
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5125
    :goto_0
    return-object v1

    .line 5124
    :catch_0
    move-exception v0

    .line 5125
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5100
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5102
    :goto_0
    return-object v1

    .line 5101
    :catch_0
    move-exception v0

    .line 5102
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 1969
    iget v0, p0, Landroid/app/Activity;->mConfigChangeFlags:I

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 5731
    iget-object v0, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    .prologue
    .line 2485
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContentScene()Landroid/transition/Scene;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .prologue
    .line 2463
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getTransitionManager()Landroid/transition/TransitionManager;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 2130
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getLastNonConfigurationChildInstances()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2075
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1996
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 4034
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getLocalClassName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5714
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5715
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 5716
    .local v0, "cls":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 5717
    .local v1, "packageLen":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1

    .line 5721
    .end local v0    # "cls":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "cls":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .prologue
    .line 6021
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 4043
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 4044
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 4045
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 4046
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 4051
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0

    .line 4048
    :cond_1
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    goto :goto_0
.end method

.method public getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1

    .prologue
    .line 5591
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 5592
    iget-object v0, p0, Landroid/app/Activity;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 5594
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    goto :goto_0
.end method

.method public getOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 2

    .prologue
    .line 7527
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_0

    .line 7530
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->getOverrideConfiguration(Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 7532
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getParent()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method public getParentActivityIntent()Landroid/content/Intent;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 6696
    iget-object v6, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 6697
    .local v4, "parentName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6713
    :goto_0
    return-object v3

    .line 6702
    :cond_0
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6704
    .local v5, "target":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 6705
    .local v2, "parentInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 6706
    .local v1, "parentActivity":Ljava/lang/String;
    if-nez v1, :cond_1

    invoke-static {v5}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 6709
    .local v3, "parentIntent":Landroid/content/Intent;
    :goto_1
    goto :goto_0

    .line 6706
    .end local v3    # "parentIntent":Landroid/content/Intent;
    :cond_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 6710
    .end local v1    # "parentActivity":Ljava/lang/String;
    .end local v2    # "parentInfo":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v0

    .line 6711
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "Activity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in manifest"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPreferences(I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 5748
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredOrientation()I
    .locals 2

    .prologue
    .line 7482
    iget-object v0, p0, Landroid/app/Activity;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7483
    iget-object v0, p0, Landroid/app/Activity;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v0

    .line 7485
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/app/Activity;->mPreferredOrientation:I

    goto :goto_0
.end method

.method public getReferrer()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 5052
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5053
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 5054
    .local v1, "referrer":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 5064
    .end local v1    # "referrer":Landroid/net/Uri;
    :goto_0
    return-object v1

    .line 5057
    .restart local v1    # "referrer":Landroid/net/Uri;
    :cond_0
    const-string v3, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5058
    .local v2, "referrerName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 5059
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 5061
    :cond_1
    iget-object v3, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 5062
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "android-app"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 5064
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequestedOrientation()I
    .locals 2

    .prologue
    .line 5543
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 5545
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getRequestedOrientation(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5553
    :goto_0
    return v0

    .line 5551
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    goto :goto_0

    .line 5547
    :catch_0
    move-exception v0

    .line 5553
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getSearchEvent()Landroid/view/SearchEvent;
    .locals 1

    .prologue
    .line 3915
    iget-object v0, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    return-object v0
.end method

.method public getSubWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 7611
    invoke-static {p0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Activity;->mSubWindow:Landroid/view/Window;

    if-nez v0, :cond_1

    .line 7612
    iget-object v0, p0, Landroid/app/Activity;->mSubWindowDummpy:Landroid/view/Window;

    if-nez v0, :cond_0

    .line 7613
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mSubWindowDummpy:Landroid/view/Window;

    .line 7615
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mSubWindowDummpy:Landroid/view/Window;

    .line 7617
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mSubWindow:Landroid/view/Window;

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5761
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5762
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System services not available to Activities before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5766
    :cond_0
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5767
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    .line 5772
    :goto_0
    return-object v0

    .line 5768
    :cond_1
    const-string/jumbo v0, "search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5769
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 5770
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    goto :goto_0

    .line 5772
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getTaskId()I
    .locals 4

    .prologue
    .line 5663
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5666
    :goto_0
    return v1

    .line 5665
    :catch_0
    move-exception v0

    .line 5666
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 5817
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleColor()I
    .locals 1

    .prologue
    .line 5821
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    return v0
.end method

.method public getVoiceInteractor()Landroid/app/VoiceInteractor;
    .locals 1

    .prologue
    .line 1433
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    return-object v0
.end method

.method public final getVolumeControlStream()I
    .locals 1

    .prologue
    .line 5988
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public getWindowInfo()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 7453
    const-string/jumbo v3, "multiwindow_facade"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 7454
    .local v1, "mwFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7455
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 7456
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v2

    .line 7457
    .local v2, "rect":Landroid/graphics/Rect;
    const-string v3, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7458
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7462
    .end local v2    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .line 7460
    :cond_0
    const-string v3, "Activity"

    const-string v4, "getWindowInfo(), mwFacade is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public getWindowMode()I
    .locals 2

    .prologue
    .line 5602
    const/4 v0, 0x0

    .line 5603
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 5604
    iget-object v1, p0, Landroid/app/Activity;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->convertToWindowMode()I

    move-result v1

    .line 5611
    :goto_0
    return v1

    .line 5606
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 5607
    if-eqz v0, :cond_1

    .line 5608
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->convertToWindowMode()I

    move-result v1

    goto :goto_0

    .line 5611
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 3

    .prologue
    .line 2925
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2926
    .local v1, "w":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 2927
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2928
    .local v0, "d":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2929
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    .line 2932
    .end local v0    # "d":Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasWindowFocusSafe()Z
    .locals 3

    .prologue
    .line 2938
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2939
    .local v1, "w":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 2940
    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 2941
    .local v0, "d":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2942
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    .line 2945
    .end local v0    # "d":Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3274
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3276
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 3278
    :cond_1
    return-void
.end method

.method public isBackgroundVisibleBehind()Z
    .locals 2

    .prologue
    .line 6430
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 6433
    :goto_0
    return v0

    .line 6431
    :catch_0
    move-exception v0

    .line 6433
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChangingConfigurations()Z
    .locals 1

    .prologue
    .line 5218
    iget-boolean v0, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    return v0
.end method

.method public final isChild()Z
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 5205
    iget-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .prologue
    .line 5197
    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    return v0
.end method

.method public isFixedOrientationCascade()Z
    .locals 2

    .prologue
    .line 7517
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_0

    .line 7520
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->isFixedOrientationCascade(Landroid/os/IBinder;)Z

    move-result v0

    .line 7522
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImmersive()Z
    .locals 3

    .prologue
    .line 6159
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isImmersive(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6161
    :goto_0
    return v1

    .line 6160
    :catch_0
    move-exception v0

    .line 6161
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isResumed()Z
    .locals 1

    .prologue
    .line 7114
    iget-boolean v0, p0, Landroid/app/Activity;->mResumed:Z

    return v0
.end method

.method public isSelectiveOrientationState()Z
    .locals 2

    .prologue
    .line 7507
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_0

    .line 7510
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->isSelectiveOrientationState(Landroid/os/IBinder;)Z

    move-result v0

    .line 7512
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTaskRoot()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5678
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ltz v3, :cond_0

    .line 5681
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 5678
    goto :goto_0

    .line 5680
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    move v1, v2

    .line 5681
    goto :goto_0
.end method

.method public isVoiceInteraction()Z
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoiceInteractionRoot()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1421
    :try_start_0
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isRootVoiceInteraction(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1425
    :cond_0
    :goto_0
    return v0

    .line 1423
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isWindowAdded()Z
    .locals 1

    .prologue
    .line 7491
    iget-boolean v0, p0, Landroid/app/Activity;->mWindowAdded:Z

    return v0
.end method

.method public makeNewWindow(Landroid/content/Context;Z)Landroid/view/Window;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needMultiPhoneWindow"    # Z

    .prologue
    .line 7496
    if-eqz p2, :cond_0

    .line 7497
    new-instance v0, Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;-><init>(Landroid/content/Context;)V

    .line 7501
    :goto_0
    return-object v0

    .line 7499
    :cond_0
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 7500
    .local v0, "win":Lcom/android/internal/policy/PhoneWindow;
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    goto :goto_0
.end method

.method makeVisible()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5159
    iget-boolean v2, p0, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v2, :cond_0

    .line 5160
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 5161
    .local v1, "wm":Landroid/view/ViewManager;
    iget-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5162
    iput-boolean v5, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 5165
    iget-object v2, p0, Landroid/app/Activity;->mSubWindow:Landroid/view/Window;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/app/Activity;->mSubWindowAdded:Z

    if-nez v2, :cond_0

    .line 5166
    iget-object v2, p0, Landroid/app/Activity;->mSubWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5167
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 5168
    iget-object v2, p0, Landroid/app/Activity;->mSubDecor:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5169
    iput-boolean v5, p0, Landroid/app/Activity;->mSubWindowAdded:Z

    .line 5175
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/ViewManager;
    :cond_0
    iget-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5178
    iget-object v2, p0, Landroid/app/Activity;->mSubDecor:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 5179
    iget-object v2, p0, Landroid/app/Activity;->mSubDecor:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5183
    :cond_1
    return-void
.end method

.method public final managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2174
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2175
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2176
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 2178
    :cond_0
    return-object v6
.end method

.method public final managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2214
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2215
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2216
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 2218
    :cond_0
    return-object v6
.end method

.method public moveTaskToBack(Z)Z
    .locals 2
    .param p1, "nonRoot"    # Z

    .prologue
    .line 5698
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5703
    :goto_0
    return v0

    .line 5700
    :catch_0
    move-exception v0

    .line 5703
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public navigateUpTo(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "upIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 6636
    iget-object v6, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v6, :cond_3

    .line 6637
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 6638
    .local v0, "destInfo":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 6639
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 6640
    if-nez v0, :cond_0

    .line 6663
    .end local v0    # "destInfo":Landroid/content/ComponentName;
    :goto_0
    return v5

    .line 6643
    .restart local v0    # "destInfo":Landroid/content/ComponentName;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6644
    .end local p1    # "upIntent":Landroid/content/Intent;
    .local v4, "upIntent":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object p1, v4

    .line 6648
    .end local v4    # "upIntent":Landroid/content/Intent;
    .restart local p1    # "upIntent":Landroid/content/Intent;
    :cond_1
    monitor-enter p0

    .line 6649
    :try_start_0
    iget v2, p0, Landroid/app/Activity;->mResultCode:I

    .line 6650
    .local v2, "resultCode":I
    iget-object v3, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 6651
    .local v3, "resultData":Landroid/content/Intent;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6652
    if-eqz v3, :cond_2

    .line 6653
    invoke-virtual {v3}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 6656
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 6657
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v7, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v6, v7, p1, v2, v3}, Landroid/app/IActivityManager;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    goto :goto_0

    .line 6651
    .end local v2    # "resultCode":I
    .end local v3    # "resultData":Landroid/content/Intent;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 6659
    .restart local v2    # "resultCode":I
    .restart local v3    # "resultData":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 6660
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 6663
    .end local v0    # "destInfo":Landroid/content/ComponentName;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "resultCode":I
    .end local v3    # "resultData":Landroid/content/Intent;
    :cond_3
    iget-object v5, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v5, p0, p1}, Landroid/app/Activity;->navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v5

    goto :goto_0
.end method

.method public navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "upIntent"    # Landroid/content/Intent;

    .prologue
    .line 6680
    invoke-virtual {p0, p2}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 6578
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 6567
    return-void
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 5448
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 5427
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 7
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4057
    iget-object v4, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v4, :cond_1

    .line 4058
    invoke-super {p0, p1, p2, p3}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 4069
    :goto_0
    if-eqz p1, :cond_0

    .line 4070
    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4071
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0xe3

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 4072
    .local v1, "colorPrimary":I
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 4073
    .local v2, "textColorPrimary":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4074
    if-eqz v1, :cond_0

    .line 4075
    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v3, v6, v6, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 4078
    .local v3, "v":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {v3, v2}, Landroid/app/ActivityManager$TaskDescription;->setTextPrimaryColor(I)V

    .line 4079
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 4082
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "colorPrimary":I
    .end local v2    # "textColorPrimary":I
    .end local v3    # "v":Landroid/app/ActivityManager$TaskDescription;
    :cond_0
    return-void

    .line 4061
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4065
    :goto_1
    invoke-virtual {p1, p2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 4062
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 2139
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 2904
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 2734
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->collapseActionView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2745
    :cond_0
    :goto_0
    return-void

    .line 2739
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2740
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2742
    :catch_0
    move-exception v0

    .line 2743
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public onBackgroundVisibleBehindChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 6451
    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "childActivity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 5840
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1914
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    .line 1917
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/app/Activity;->mFlipfont:I

    iget v2, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-eq v1, v2, :cond_0

    .line 1918
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1919
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_4

    .line 1922
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V

    .line 1928
    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput v1, p0, Landroid/app/Activity;->mFlipfont:I

    .line 1932
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p1}, Landroid/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1934
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_1

    .line 1936
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1941
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mSubWindow:Landroid/view/Window;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/app/Activity;->mSubWindowAdded:Z

    if-eqz v1, :cond_2

    .line 1942
    iget-object v1, p0, Landroid/app/Activity;->mSubWindow:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1947
    :cond_2
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_3

    .line 1950
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1952
    :cond_3
    return-void

    .line 1926
    .restart local v0    # "context":Landroid/content/Context;
    :cond_4
    const-string v1, "android"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 2864
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3616
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3617
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 3619
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3630
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3631
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 3633
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 1006
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1007
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_5

    .line 1008
    const-string/jumbo v2, "trafficmanager"

    invoke-direct {p0, v2}, Landroid/app/Activity;->isSupportSmartManagerCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1009
    invoke-static {p0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Activity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 1010
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/Activity;->checkFireWallPermission(Ljava/lang/String;)V

    .line 1015
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V

    .line 1023
    :goto_0
    iget-object v2, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v2, :cond_1

    .line 1024
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v3, v3, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/app/FragmentController;->restoreLoaderNonConfig(Landroid/util/ArrayMap;)V

    .line 1026
    :cond_1
    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1027
    iget-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-nez v2, :cond_6

    .line 1028
    iput-boolean v4, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    .line 1033
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 1034
    const-string v2, "android:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 1035
    .local v1, "p":Landroid/os/Parcelable;
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v2, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v2, v2, Landroid/app/Activity$NonConfigurationInstances;->fragments:Ljava/util/List;

    :goto_2
    invoke-virtual {v3, v1, v2}, Landroid/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V

    .line 1038
    .end local v1    # "p":Landroid/os/Parcelable;
    :cond_3
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->dispatchCreate()V

    .line 1039
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroid/app/Application;->dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1040
    iget-object v2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v2, :cond_4

    .line 1041
    iget-object v2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v2, p0}, Landroid/app/VoiceInteractor;->attachActivity(Landroid/app/Activity;)V

    .line 1043
    :cond_4
    iput-boolean v4, p0, Landroid/app/Activity;->mCalled:Z

    .line 1053
    return-void

    .line 1019
    :cond_5
    const-string v2, "android"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1030
    :cond_6
    iget-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_1

    .line 1035
    .restart local v1    # "p":Landroid/os/Parcelable;
    :cond_7
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1097
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1098
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 3517
    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1723
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3640
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3679
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    .prologue
    .line 3451
    invoke-virtual {p1, p0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/app/TaskStackBuilder;

    .line 3452
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3309
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3310
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 3312
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 3126
    if-nez p1, :cond_1

    .line 3127
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 3129
    .local v0, "show":Z
    iget-object v2, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    if-eqz v2, :cond_0

    .line 3130
    iget-object v2, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    invoke-virtual {v2, p0, p2, v3, v1}, Landroid/app/im/InjectionManager;->dispatchCreateOptionsMenu(Ljava/lang/Object;Landroid/view/Menu;Landroid/view/MenuInflater;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3133
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3136
    .end local v0    # "show":Z
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 3114
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "outBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1701
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 6066
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6067
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 6070
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 6052
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    .line 1839
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/app/Activity;->mCalled:Z

    .line 1842
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v5, :cond_2

    .line 1843
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1844
    .local v4, "numDialogs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1845
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedDialog;

    .line 1846
    .local v2, "md":Landroid/app/Activity$ManagedDialog;
    iget-object v5, v2, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1847
    iget-object v5, v2, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 1844
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1850
    .end local v2    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 1854
    .end local v1    # "i":I
    .end local v4    # "numDialogs":I
    :cond_2
    iget-object v6, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1855
    :try_start_0
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1856
    .local v3, "numCursors":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1857
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedCursor;

    .line 1858
    .local v0, "c":Landroid/app/Activity$ManagedCursor;
    if-eqz v0, :cond_3

    .line 1859
    # getter for: Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Landroid/app/Activity$ManagedCursor;->access$200(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1856
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1862
    .end local v0    # "c":Landroid/app/Activity$ManagedCursor;
    :cond_4
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1863
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1866
    iget-object v5, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v5, :cond_5

    .line 1867
    iget-object v5, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {v5}, Landroid/app/SearchManager;->stopSearch()V

    .line 1870
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/app/Application;->dispatchActivityDestroyed(Landroid/app/Activity;)V

    .line 1871
    return-void

    .line 1863
    .end local v1    # "i":I
    .end local v3    # "numCursors":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 2914
    return-void
.end method

.method public onDisplayChanged(Landroid/view/Display;)V
    .locals 5
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 7639
    sget-boolean v0, Lcom/samsung/android/multidisplay/common/MultiDisplayFeatures;->DEBUG_MULTIDISPLAY:Z

    if-eqz v0, :cond_0

    .line 7640
    const-string v0, "Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7642
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->setDisplay(Landroid/view/Display;)V

    .line 7643
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 7647
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    .line 7655
    return-void

    .line 7643
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onEnterAnimationComplete()V
    .locals 0

    .prologue
    .line 6459
    return-void
.end method

.method public onExpandRequested(I)V
    .locals 3
    .param p1, "notifyReason"    # I

    .prologue
    .line 7679
    sget-boolean v0, Landroid/app/Activity;->DEBUG_DUALSCREEN:Z

    if-eqz v0, :cond_0

    .line 7680
    const-string v0, "Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onExpandRequested() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notifyReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7683
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mExpandRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;

    if-eqz v0, :cond_1

    .line 7684
    iget-object v0, p0, Landroid/app/Activity;->mExpandRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;->onExpandRequested(I)V

    .line 7686
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2826
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2623
    const/4 v7, 0x4

    if-ne p1, v7, :cond_2

    .line 2624
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v7, 0x5

    if-lt v6, v7, :cond_1

    .line 2626
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    :goto_0
    move v1, v5

    .line 2679
    :cond_0
    :goto_1
    return v1

    .line 2628
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 2633
    :cond_2
    iget v7, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    if-nez v7, :cond_3

    move v1, v6

    .line 2634
    goto :goto_1

    .line 2635
    :cond_3
    iget v7, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    if-ne v7, v8, :cond_5

    .line 2636
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 2637
    .local v4, "w":Landroid/view/Window;
    invoke-virtual {v4, v6}, Landroid/view/Window;->hasFeature(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4, v6, p1, p2, v8}, Landroid/view/Window;->performPanelShortcut(IILandroid/view/KeyEvent;I)Z

    move-result v7

    if-eqz v7, :cond_4

    move v1, v5

    .line 2640
    goto :goto_1

    :cond_4
    move v1, v6

    .line 2642
    goto :goto_1

    .line 2645
    .end local v4    # "w":Landroid/view/Window;
    :cond_5
    const/4 v0, 0x0

    .line 2647
    .local v0, "clearSpannable":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2648
    :cond_6
    const/4 v0, 0x1

    .line 2649
    const/4 v1, 0x0

    .line 2674
    .local v1, "handled":Z
    :cond_7
    :goto_2
    if-eqz v0, :cond_0

    .line 2675
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2676
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2677
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_1

    .line 2651
    .end local v1    # "handled":Z
    :cond_8
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v7

    iget-object v8, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v9, v8, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2653
    .restart local v1    # "handled":Z
    if-eqz v1, :cond_7

    iget-object v7, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 2656
    iget-object v7, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2657
    .local v3, "str":Ljava/lang/String;
    const/4 v0, 0x1

    .line 2659
    iget v7, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 2661
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2662
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2663
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 2666
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0, v3, v6, v9, v6}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 2669
    :pswitch_3
    invoke-virtual {p0, v3, v6, v9, v5}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 2659
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2689
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2725
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2759
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2760
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2708
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 2710
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2712
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 2713
    const/4 v0, 0x1

    .line 2716
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 2115
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2116
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchLowMemory()V

    .line 2117
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const v5, 0xc350

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3189
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3191
    .local v0, "titleCondensed":Ljava/lang/CharSequence;
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 3237
    :cond_0
    :goto_0
    return v1

    .line 3196
    :sswitch_0
    if-eqz v0, :cond_1

    .line 3197
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v5, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3200
    :cond_1
    iget-object v3, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    invoke-virtual {v3, p0, p2}, Landroid/app/im/InjectionManager;->dispatchOptionsItemSelected(Ljava/lang/Object;Landroid/view/MenuItem;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3204
    :cond_2
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3207
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3, p2}, Landroid/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3210
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x102002c

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 3212
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_3

    .line 3213
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v1

    goto :goto_0

    .line 3215
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result v1

    goto :goto_0

    :cond_4
    move v1, v2

    .line 3218
    goto :goto_0

    .line 3221
    :sswitch_1
    if-eqz v0, :cond_5

    .line 3222
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v5, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3225
    :cond_5
    iget-object v2, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    invoke-virtual {v2, p0, p2}, Landroid/app/im/InjectionManager;->dispatchContextItemSelected(Ljava/lang/Object;Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3227
    const-string v2, "Activity"

    const-string/jumbo v3, "onContextItemSelected handled by feature app"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3231
    :cond_6
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3234
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto/16 :goto_0

    .line 3191
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 3168
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 3169
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3170
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 3171
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 3176
    :cond_0
    :goto_0
    return v2

    .line 3173
    :cond_1
    const-string v0, "Activity"

    const-string v1, "Tried to open action bar menu with no action bar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMultiWindowConfigurationChanged(I)V
    .locals 1
    .param p1, "configDiff"    # I

    .prologue
    .line 7467
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->onMultiWindowConfigurationChanged(I)V

    .line 7468
    return-void
.end method

.method public onMultiWindowFocusChanged(IZZ)V
    .locals 1
    .param p1, "notifyReason"    # I
    .param p2, "focus"    # Z
    .param p3, "keepInputMethod"    # Z

    .prologue
    .line 7472
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/Window;->onMultiWindowFocusChanged(IZZ)V

    .line 7473
    return-void
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 1
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "notifyReason"    # I

    .prologue
    .line 7441
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 7444
    invoke-virtual {p0}, Landroid/app/Activity;->getSubWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7445
    invoke-virtual {p0}, Landroid/app/Activity;->getSubWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 7449
    :cond_0
    return-void
.end method

.method public onNavigateUp()Z
    .locals 4

    .prologue
    .line 3391
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3392
    .local v1, "upIntent":Landroid/content/Intent;
    if-eqz v1, :cond_4

    .line 3393
    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3397
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3416
    :goto_0
    const/4 v2, 0x1

    .line 3418
    :goto_1
    return v2

    .line 3398
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3399
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 3400
    .local v0, "b":Landroid/app/TaskStackBuilder;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    .line 3401
    invoke-virtual {p0, v0}, Landroid/app/Activity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    .line 3402
    invoke-virtual {v0}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 3406
    iget v2, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 3408
    :cond_1
    const-string v2, "Activity"

    const-string/jumbo v3, "onNavigateUp only finishing topmost activity to return a result"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3411
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_0

    .line 3414
    .end local v0    # "b":Landroid/app/TaskStackBuilder;
    :cond_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    goto :goto_0

    .line 3418
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onNavigateUpFromChild(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;

    .prologue
    .line 3428
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method public onNewActivityOptions(Landroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .line 6327
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 6328
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    if-nez v0, :cond_0

    .line 6329
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    .line 6331
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1458
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3359
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3360
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 3362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3477
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3478
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3480
    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3251
    sparse-switch p1, :sswitch_data_0

    .line 3266
    :goto_0
    return-void

    .line 3253
    :sswitch_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3254
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 3258
    :sswitch_1
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 3262
    :sswitch_2
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3263
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_0

    .line 3251
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1652
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPaused(Landroid/app/Activity;)V

    .line 1653
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1657
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->handlePause()V

    .line 1660
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 1263
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1264
    iput-boolean v2, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 1265
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getTitleColor()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 1268
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    if-eqz v0, :cond_1

    .line 1269
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/im/InjectionManager;->dispatchViewCreated(Ljava/lang/Object;Z)V

    .line 1272
    :cond_1
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 1273
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1288
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1289
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1397
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1398
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->makeActive()V

    .line 1399
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 1400
    :cond_1
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 1401
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3688
    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 3689
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3717
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 3718
    return-void
.end method

.method public onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    .prologue
    .line 3467
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3334
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3335
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 3337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3149
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 3150
    invoke-virtual {p0, p3}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 3152
    .local v0, "goforit":Z
    iget-object v1, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    if-eqz v1, :cond_0

    .line 3153
    iget-object v1, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    invoke-virtual {v1, p0, p3}, Landroid/app/im/InjectionManager;->dispatchPrepareOptionsMenu(Ljava/lang/Object;Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3156
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p3}, Landroid/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3159
    .end local v0    # "goforit":Z
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .locals 0
    .param p1, "outContent"    # Landroid/app/assist/AssistContent;

    .prologue
    .line 1760
    return-void
.end method

.method public onProvideAssistData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1738
    return-void
.end method

.method public onProvideReferrer()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 5074
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 4191
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 1336
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1337
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1161
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    .line 1162
    const-string v1, "android:viewHierarchyState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1163
    .local v0, "windowState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1164
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1167
    .end local v0    # "windowState":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1192
    if-eqz p1, :cond_0

    .line 1193
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1195
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 1372
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityResumed(Landroid/app/Activity;)V

    .line 1373
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->onResume()V

    .line 1374
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1378
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->arrangeScaleStackBound()V

    .line 1381
    return-void
.end method

.method onRetainNonConfigurationChildInstances()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2088
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2053
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1549
    const-string v1, "android:viewHierarchyState"

    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1550
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1551
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 1552
    const-string v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1554
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1555
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1573
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1574
    return-void
.end method

.method public onSearchRequested()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 3894
    invoke-static {}, Landroid/app/im/InjectionManager;->getInstance()Landroid/app/im/InjectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3895
    invoke-static {}, Landroid/app/im/InjectionManager;->getInstance()Landroid/app/im/InjectionManager;

    move-result-object v1

    sget-object v2, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONSEARCHREQUESTED:Landroid/app/im/InjectionConstants$DispatchParentCall;

    invoke-virtual {v1, v2, p0}, Landroid/app/im/InjectionManager;->dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/Object;)Z

    .line 3898
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 3900
    invoke-virtual {p0, v3, v0, v3, v0}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 3901
    const/4 v0, 0x1

    .line 3903
    :cond_1
    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 2
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .prologue
    .line 3882
    iput-object p1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    .line 3883
    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    .line 3884
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    .line 3885
    return v0
.end method

.method public onShrinkRequested(Lcom/samsung/android/dualscreen/DualScreen;I)V
    .locals 3
    .param p1, "toScreen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .param p2, "notifyReason"    # I

    .prologue
    .line 7694
    sget-boolean v0, Landroid/app/Activity;->DEBUG_DUALSCREEN:Z

    if-eqz v0, :cond_0

    .line 7695
    const-string v0, "Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShrinkRequested() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " toScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notifyReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7698
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mShrinkRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;

    if-eqz v0, :cond_1

    .line 7699
    iget-object v0, p0, Landroid/app/Activity;->mShrinkRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;->onShrinkRequested(Lcom/samsung/android/dualscreen/DualScreen;I)V

    .line 7701
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 1307
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1309
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderStart()V

    .line 1311
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStarted(Landroid/app/Activity;)V

    .line 1312
    return-void
.end method

.method public onStateNotSaved()V
    .locals 0

    .prologue
    .line 1347
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1801
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 1802
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->onStop()V

    .line 1803
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStopped(Landroid/app/Activity;)V

    .line 1804
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 1805
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1806
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 5825
    iget-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    if-eqz v1, :cond_1

    .line 5826
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5827
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 5828
    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 5829
    if-eqz p2, :cond_0

    .line 5830
    invoke-virtual {v0, p2}, Landroid/view/Window;->setTitleColor(I)V

    .line 5833
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    .line 5834
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 5837
    .end local v0    # "win":Landroid/view/Window;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2774
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2775
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2776
    const/4 v0, 0x1

    .line 2779
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2797
    const/4 v0, 0x0

    return v0
.end method

.method onTranslucentConversionComplete(Z)V
    .locals 3
    .param p1, "drawComplete"    # Z

    .prologue
    .line 6316
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v0, :cond_0

    .line 6317
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    invoke-interface {v0, p1}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 6318
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 6320
    :cond_0
    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-eqz v0, :cond_1

    .line 6321
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 6323
    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 2121
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2122
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchTrimMemory(I)V

    .line 2123
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 2849
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 1678
    return-void
.end method

.method public onVisibleBehindCanceled()V
    .locals 1

    .prologue
    .line 6412
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 6413
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2855
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 2856
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2857
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2858
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2861
    .end local v0    # "decor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onWindowDismissed()V
    .locals 0

    .prologue
    .line 2954
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2955
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 2894
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 6535
    iget v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    if-nez v0, :cond_0

    .line 6536
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 6537
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 6538
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 6541
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 6551
    :try_start_0
    iput p2, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 6552
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 6554
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    return-object v0

    :catchall_0
    move-exception v0

    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    throw v0
.end method

.method public onWindowStatusChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 0
    .param p1, "windowMode"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "windowInfoChanged"    # I

    .prologue
    .line 5652
    return-void
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3586
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 3587
    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3487
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->openOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3489
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    .line 3491
    :cond_1
    return-void
.end method

.method public overridePendingTransition(II)V
    .locals 3
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    .prologue
    .line 4980
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/app/IActivityManager;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4984
    :goto_0
    return-void

    .line 4982
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final performCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 6873
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread;->mLastIntendedActivityToken:Landroid/os/IBinder;

    .line 6875
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 6876
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 6880
    const-string v0, "Activity"

    const-string/jumbo v1, "performCreate Call Injection manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6881
    invoke-static {}, Landroid/app/im/InjectionManager;->getInstance()Landroid/app/im/InjectionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    .line 6882
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    if-eqz v0, :cond_0

    .line 6883
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    sget-object v1, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONCREATE:Landroid/app/im/InjectionConstants$DispatchParentCall;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/app/im/InjectionManager;->dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/Object;Landroid/os/Bundle;Z)V

    .line 6889
    :cond_0
    instance-of v0, p0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    .line 6890
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    if-eqz v0, :cond_1

    .line 6891
    iget-object v1, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    move-object v0, p0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v0}, Landroid/app/im/InjectionManager;->dispatchPreferences(Ljava/lang/Object;)V

    .line 6896
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    .line 6897
    invoke-virtual {p0}, Landroid/app/Activity;->performCreateCommon()V

    .line 6898
    return-void
.end method

.method final performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 6901
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 6902
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 6903
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    .line 6904
    invoke-virtual {p0}, Landroid/app/Activity;->performCreateCommon()V

    .line 6905
    return-void
.end method

.method final performCreateCommon()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6865
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 6867
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchActivityCreated()V

    .line 6868
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 6869
    return-void
.end method

.method final performDestroy()V
    .locals 3

    .prologue
    .line 7094
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    .line 7095
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->destroy()V

    .line 7096
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchDestroy()V

    .line 7098
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    if-eqz v0, :cond_0

    .line 7099
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    sget-object v1, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONDESTROY:Landroid/app/im/InjectionConstants$DispatchParentCall;

    iget-object v2, p0, Landroid/app/Activity;->myName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/im/InjectionManager;->dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7102
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->onDestroy()V

    .line 7103
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderDestroy()V

    .line 7104
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_1

    .line 7105
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v0}, Landroid/app/VoiceInteractor;->detachActivity()V

    .line 7107
    :cond_1
    return-void
.end method

.method final performPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7025
    iput-boolean v3, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 7026
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchPause()V

    .line 7028
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    if-eqz v0, :cond_0

    .line 7029
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    sget-object v1, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONPAUSE:Landroid/app/im/InjectionConstants$DispatchParentCall;

    iget-object v2, p0, Landroid/app/Activity;->myName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/im/InjectionManager;->dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7032
    :cond_0
    iput-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    .line 7033
    invoke-virtual {p0}, Landroid/app/Activity;->onPause()V

    .line 7034
    iput-boolean v3, p0, Landroid/app/Activity;->mResumed:Z

    .line 7035
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 7037
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7041
    :cond_1
    iput-boolean v3, p0, Landroid/app/Activity;->mResumed:Z

    .line 7042
    return-void
.end method

.method final performRestart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 6933
    iget-object v3, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v3, Landroid/app/ActivityThread;->mLastIntendedActivityToken:Landroid/os/IBinder;

    .line 6935
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 6937
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    if-eqz v3, :cond_7

    .line 6938
    iput-boolean v6, p0, Landroid/app/Activity;->mStopped:Z

    .line 6939
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 6940
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 6943
    :cond_0
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v4

    .line 6944
    :try_start_0
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6945
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 6946
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 6947
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    # getter for: Landroid/app/Activity$ManagedCursor;->mReleased:Z
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->access$500(Landroid/app/Activity$ManagedCursor;)Z

    move-result v3

    if-nez v3, :cond_1

    # getter for: Landroid/app/Activity$ManagedCursor;->mUpdated:Z
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->access$600(Landroid/app/Activity$ManagedCursor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6948
    :cond_1
    # getter for: Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->access$200(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6949
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xe

    if-lt v3, v5, :cond_2

    .line 6951
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trying to requery an already closed cursor  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->access$200(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6960
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 6956
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    # setter for: Landroid/app/Activity$ManagedCursor;->mReleased:Z
    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->access$502(Landroid/app/Activity$ManagedCursor;Z)Z

    .line 6957
    const/4 v3, 0x0

    # setter for: Landroid/app/Activity$ManagedCursor;->mUpdated:Z
    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->access$602(Landroid/app/Activity$ManagedCursor;Z)Z

    .line 6945
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6960
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6962
    iput-boolean v6, p0, Landroid/app/Activity;->mCalled:Z

    .line 6963
    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 6964
    iget-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_5

    .line 6965
    new-instance v3, Landroid/util/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onRestart()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6970
    :cond_5
    iget-object v3, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    if-eqz v3, :cond_6

    .line 6971
    iget-object v3, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    sget-object v4, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONRESTART:Landroid/app/im/InjectionConstants$DispatchParentCall;

    iget-object v5, p0, Landroid/app/Activity;->myName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p0}, Landroid/app/im/InjectionManager;->dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6974
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->performStart()V

    .line 6976
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_7
    return-void
.end method

.method final performRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1109
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1110
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 1112
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    sget-object v1, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONRESTOREINSTANCESTATE:Landroid/app/im/InjectionConstants$DispatchParentCall;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/app/im/InjectionManager;->dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/Object;Landroid/os/Bundle;Z)V

    .line 1116
    :cond_0
    return-void
.end method

.method final performRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1129
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1131
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    sget-object v1, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONRESTOREINSTANCESTATE:Landroid/app/im/InjectionConstants$DispatchParentCall;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/app/im/InjectionManager;->dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/Object;Landroid/os/Bundle;Z)V

    .line 1135
    :cond_0
    if-eqz p1, :cond_1

    .line 1136
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 1138
    :cond_1
    return-void
.end method

.method final performResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6979
    invoke-virtual {p0}, Landroid/app/Activity;->performRestart()V

    .line 6981
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 6983
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 6985
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 6987
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 6988
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_0

    .line 6989
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6995
    :cond_0
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    if-nez v0, :cond_1

    .line 6996
    const-string v0, "Activity"

    const-string v1, "An activity without a UI must call finish() before onResume() completes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6997
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_1

    .line 6999
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call finish() prior to onResume() completing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7006
    :cond_1
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 7009
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    if-eqz v0, :cond_2

    .line 7010
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    sget-object v1, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONRESUME:Landroid/app/im/InjectionConstants$DispatchParentCall;

    iget-object v2, p0, Landroid/app/Activity;->myName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/im/InjectionManager;->dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7013
    :cond_2
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchResume()V

    .line 7014
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 7016
    invoke-virtual {p0}, Landroid/app/Activity;->onPostResume()V

    .line 7017
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_3

    .line 7018
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPostResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7022
    :cond_3
    return-void
.end method

.method final performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1470
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    sget-object v1, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONSAVEINSTANCESTATE:Landroid/app/im/InjectionConstants$DispatchParentCall;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/app/im/InjectionManager;->dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/Object;Landroid/os/Bundle;Z)V

    .line 1474
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1475
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 1476
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->saveState(Landroid/os/Bundle;)V

    .line 1477
    invoke-direct {p0, p1}, Landroid/app/Activity;->storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 1479
    return-void
.end method

.method final performSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1492
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    if-eqz v0, :cond_0

    .line 1493
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    sget-object v1, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONSAVEINSTANCESTATE:Landroid/app/im/InjectionConstants$DispatchParentCall;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/app/im/InjectionManager;->dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/Object;Landroid/os/Bundle;Z)V

    .line 1496
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1497
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 1498
    invoke-direct {p0, p1}, Landroid/app/Activity;->storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 1501
    return-void
.end method

.method final performStart()V
    .locals 3

    .prologue
    .line 6909
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread;->mLastIntendedActivityToken:Landroid/os/IBinder;

    .line 6911
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 6912
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 6913
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 6914
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 6915
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 6916
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_0

    .line 6917
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6922
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    if-eqz v0, :cond_1

    .line 6923
    iget-object v0, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    sget-object v1, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONSTART:Landroid/app/im/InjectionConstants$DispatchParentCall;

    iget-object v2, p0, Landroid/app/Activity;->myName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/im/InjectionManager;->dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6926
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchStart()V

    .line 6927
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->reportLoaderStart()V

    .line 6928
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    .line 6929
    return-void
.end method

.method final performStop()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7050
    iput-boolean v6, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 7051
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-boolean v4, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {v3, v4}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    .line 7053
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    if-nez v3, :cond_6

    .line 7054
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v3, :cond_0

    .line 7055
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->closeAllPanels()V

    .line 7058
    :cond_0
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 7059
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v7}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 7062
    :cond_1
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->dispatchStop()V

    .line 7065
    iget-object v3, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    if-eqz v3, :cond_2

    .line 7066
    iget-object v3, p0, Landroid/app/Activity;->mInjectionManager:Landroid/app/im/InjectionManager;

    sget-object v4, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONSTOP:Landroid/app/im/InjectionConstants$DispatchParentCall;

    iget-object v5, p0, Landroid/app/Activity;->myName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p0}, Landroid/app/im/InjectionManager;->dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7069
    :cond_2
    iput-boolean v6, p0, Landroid/app/Activity;->mCalled:Z

    .line 7070
    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 7071
    iget-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_3

    .line 7072
    new-instance v3, Landroid/util/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onStop()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7077
    :cond_3
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v4

    .line 7078
    :try_start_0
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7079
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 7080
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 7081
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    # getter for: Landroid/app/Activity$ManagedCursor;->mReleased:Z
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->access$500(Landroid/app/Activity$ManagedCursor;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 7082
    # getter for: Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->access$200(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->deactivate()V

    .line 7083
    const/4 v3, 0x1

    # setter for: Landroid/app/Activity$ManagedCursor;->mReleased:Z
    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->access$502(Landroid/app/Activity$ManagedCursor;Z)Z

    .line 7079
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7086
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7088
    iput-boolean v7, p0, Landroid/app/Activity;->mStopped:Z

    .line 7090
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_6
    iput-boolean v6, p0, Landroid/app/Activity;->mResumed:Z

    .line 7091
    return-void

    .line 7086
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method final performUserLeaving()V
    .locals 0

    .prologue
    .line 7045
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 7046
    invoke-virtual {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 7047
    return-void
.end method

.method public postponeEnterTransition()V
    .locals 1

    .prologue
    .line 6764
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->postponeEnterTransition()V

    .line 6765
    return-void
.end method

.method public preventTabsEmbeddedOnActionBar()V
    .locals 2

    .prologue
    .line 7400
    sget-boolean v0, Landroid/app/Activity;->mIsAmericano:Z

    if-nez v0, :cond_0

    .line 7401
    const-string v0, "Activity"

    const-string v1, "You can only use this API in maintain release project."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7405
    :goto_0
    return-void

    .line 7404
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mPreventEmbeddedTabs:Z

    goto :goto_0
.end method

.method public recreate()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 5228
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 5229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only be called on top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5231
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 5232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5234
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v10

    move-object v3, v2

    move v5, v4

    move-object v6, v2

    move-object v7, v2

    move v8, v4

    invoke-virtual/range {v0 .. v10}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;ZLcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 5237
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3557
    const-string v0, "Activity"

    const-string/jumbo v1, "registerForContextMenu with mFeatureContextMenuListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    iget-object v0, p0, Landroid/app/Activity;->mFeatureContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3565
    return-void
.end method

.method public releaseInstance()Z
    .locals 2

    .prologue
    .line 5393
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->releaseActivityInstance(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5397
    :goto_0
    return v0

    .line 5394
    :catch_0
    move-exception v0

    .line 5397
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final removeDialog(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3849
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 3850
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 3851
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-eqz v0, :cond_0

    .line 3852
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3853
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3856
    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_0
    return-void
.end method

.method public reportFullyDrawn()V
    .locals 2

    .prologue
    .line 1887
    iget-boolean v0, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    if-eqz v0, :cond_0

    .line 1888
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 1890
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->reportActivityFullyDrawn(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1894
    :cond_0
    :goto_0
    return-void

    .line 1891
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 4160
    iget-boolean v1, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    if-eqz v1, :cond_0

    .line 4161
    const-string v1, "Activity"

    const-string v2, "Can reqeust only one set of permissions at a time"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4163
    new-array v1, v3, [Ljava/lang/String;

    new-array v2, v3, [I

    invoke-virtual {p0, p2, v1, v2}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 4169
    :goto_0
    return-void

    .line 4166
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4167
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "@android:requestPermissions:"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p2, v2}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4168
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    goto :goto_0
.end method

.method public requestVisibleBehind(Z)Z
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x0

    .line 6383
    iget-boolean v1, p0, Landroid/app/Activity;->mResumed:Z

    if-nez v1, :cond_0

    .line 6385
    const/4 p1, 0x0

    .line 6388
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v3, p1}, Landroid/app/IActivityManager;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleBehind:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6393
    :goto_1
    iget-boolean v1, p0, Landroid/app/Activity;->mVisibleBehind:Z

    return v1

    :cond_1
    move v1, v2

    .line 6388
    goto :goto_0

    .line 6390
    :catch_0
    move-exception v0

    .line 6391
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v2, p0, Landroid/app/Activity;->mVisibleBehind:Z

    goto :goto_1
.end method

.method public final requestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 3993
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;
    .locals 6

    .prologue
    .line 2092
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 2093
    .local v0, "activity":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v1

    .line 2094
    .local v1, "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v5}, Landroid/app/FragmentController;->retainNonConfig()Ljava/util/List;

    move-result-object v2

    .line 2095
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v5}, Landroid/app/FragmentController;->retainLoaderNonConfig()Landroid/util/ArrayMap;

    move-result-object v3

    .line 2096
    .local v3, "loaders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/LoaderManager;>;"
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-nez v5, :cond_1

    .line 2098
    const/4 v4, 0x0

    .line 2110
    :cond_0
    :goto_0
    return-object v4

    .line 2101
    :cond_1
    new-instance v4, Landroid/app/Activity$NonConfigurationInstances;

    invoke-direct {v4}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    .line 2102
    .local v4, "nci":Landroid/app/Activity$NonConfigurationInstances;
    iput-object v0, v4, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 2103
    iput-object v1, v4, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    .line 2104
    iput-object v2, v4, Landroid/app/Activity$NonConfigurationInstances;->fragments:Ljava/util/List;

    .line 2105
    iput-object v3, v4, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    .line 2106
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v5, :cond_0

    .line 2107
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v5}, Landroid/app/VoiceInteractor;->retainInstance()V

    .line 2108
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v5, v4, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    goto :goto_0
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 6032
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 6033
    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6037
    :goto_0
    return-void

    .line 6035
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public setActionBar(Landroid/widget/Toolbar;)V
    .locals 3
    .param p1, "toolbar"    # Landroid/widget/Toolbar;

    .prologue
    .line 2341
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/app/WindowDecorActionBar;

    if-eqz v1, :cond_0

    .line 2342
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set android:windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2347
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 2349
    new-instance v0, Lcom/android/internal/app/ToolbarActionBar;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/internal/app/ToolbarActionBar;-><init>(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 2350
    .local v0, "tbab":Lcom/android/internal/app/ToolbarActionBar;
    iput-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 2351
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Lcom/android/internal/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 2352
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->invalidateOptionsMenu()Z

    .line 2353
    return-void
.end method

.method public setActionBarTabSize(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 7423
    sget-boolean v0, Landroid/app/Activity;->mIsAmericano:Z

    if-nez v0, :cond_0

    .line 7424
    const-string v0, "Activity"

    const-string v1, "You can only use this API in maintain release project."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7428
    :goto_0
    return-void

    .line 7427
    :cond_0
    float-to-int v0, p1

    iput v0, p0, Landroid/app/Activity;->mStackedHeight:I

    goto :goto_0
.end method

.method public setBufferCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 2437
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBufferCount(I)V

    .line 2438
    return-void
.end method

.method public setContentTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .prologue
    .line 2473
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTransitionManager(Landroid/transition/TransitionManager;)V

    .line 2474
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 2387
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 2388
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2389
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2407
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 2408
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2409
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2423
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2424
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2425
    return-void
.end method

.method public setCustomImage(Ljava/io/FileDescriptor;I)Z
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "rotation"    # I

    .prologue
    const/4 v1, 0x0

    .line 7710
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    :goto_0
    invoke-interface {v3, v4, v2, p2}, Landroid/app/IActivityManager;->setCustomImage(Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 7716
    :goto_1
    return v1

    .line 7710
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 7711
    :catch_0
    move-exception v0

    .line 7712
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Activity"

    const-string v3, "CustomStartingWindow failed to set custom image"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 7714
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 7715
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Activity"

    const-string v3, "CustomStartingWindow failed to make ParcelFileDescriptor"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public final setDefaultKeyMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 2576
    iput p1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 2580
    packed-switch p1, :pswitch_data_0

    .line 2592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2583
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 2594
    :goto_0
    return-void

    .line 2588
    :pswitch_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 2589
    iget-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 2580
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 6726
    if-nez p1, :cond_0

    .line 6727
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 6729
    :cond_0
    iput-object p1, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    .line 6730
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 6742
    if-nez p1, :cond_0

    .line 6743
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 6745
    :cond_0
    iput-object p1, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 6746
    return-void
.end method

.method public setExpandRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;

    .prologue
    .line 7659
    sget-boolean v0, Landroid/app/Activity;->DEBUG_DUALSCREEN:Z

    if-eqz v0, :cond_0

    .line 7660
    const-string v0, "Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExpandRequestListener() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7662
    :cond_0
    iput-object p1, p0, Landroid/app/Activity;->mExpandRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;

    .line 7663
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4017
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 4018
    return-void
.end method

.method public final setFeatureDrawableAlpha(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 4025
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 4026
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 4001
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 4002
    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 4009
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 4010
    return-void
.end method

.method public setFinishOnTouchOutside(Z)V
    .locals 1
    .param p1, "finish"    # Z

    .prologue
    .line 2493
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 2494
    return-void
.end method

.method public setImmersive(Z)V
    .locals 2
    .param p1, "i"    # Z

    .prologue
    .line 6487
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->setImmersive(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6491
    :goto_0
    return-void

    .line 6488
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 918
    iput-object p1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 919
    return-void
.end method

.method public final setMediaController(Landroid/media/session/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 6010
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setMediaController(Landroid/media/session/MediaController;)V

    .line 6011
    return-void
.end method

.method public setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 5562
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 5563
    const-string/jumbo v1, "multiwindow_facade"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 5564
    .local v0, "service":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    if-eqz v0, :cond_0

    .line 5565
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5570
    .end local v0    # "service":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    :cond_0
    :goto_0
    return-void

    .line 5568
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0
.end method

.method final setParent(Landroid/app/Activity;)V
    .locals 0
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    .line 6779
    iput-object p1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 6780
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "isPersistent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2293
    return-void
.end method

.method public final setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 5938
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    add-int/lit8 v2, p1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5939
    return-void
.end method

.method public final setProgressBarIndeterminate(Z)V
    .locals 3
    .param p1, "indeterminate"    # Z

    .prologue
    .line 5922
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    const/4 v0, -0x3

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5925
    return-void

    .line 5922
    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public final setProgressBarIndeterminateVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 5908
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5910
    return-void

    .line 5908
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public final setProgressBarVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 5895
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5897
    return-void

    .line 5895
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setRequestedOrientation(I)V
    .locals 2
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 5506
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 5508
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 5512
    iput p1, p0, Landroid/app/Activity;->mPreferredOrientation:I

    .line 5513
    iget-object v0, p0, Landroid/app/Activity;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(IZ)V

    .line 5514
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAppRequestOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5522
    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 5523
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->arrangeScaleStackBound()V

    .line 5530
    :cond_0
    :goto_1
    return-void

    .line 5528
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 5517
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final setResult(I)V
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    .line 4999
    monitor-enter p0

    .line 5000
    :try_start_0
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 5001
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 5002
    monitor-exit p0

    .line 5003
    return-void

    .line 5002
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setResult(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 5028
    monitor-enter p0

    .line 5029
    :try_start_0
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 5030
    iput-object p2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 5031
    monitor-exit p0

    .line 5032
    return-void

    .line 5031
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScreenChangeListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;

    .prologue
    .line 7630
    sget-boolean v0, Landroid/app/Activity;->DEBUG_DUALSCREEN:Z

    if-eqz v0, :cond_0

    .line 7631
    const-string v0, "Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenChangeListener() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7633
    :cond_0
    iput-object p1, p0, Landroid/app/Activity;->mScreenChangeListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;

    .line 7634
    return-void
.end method

.method public final setSecondaryProgress(I)V
    .locals 3
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 5955
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    add-int/lit16 v2, p1, 0x4e20

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5957
    return-void
.end method

.method public setShrinkRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;

    .prologue
    .line 7667
    sget-boolean v0, Landroid/app/Activity;->DEBUG_DUALSCREEN:Z

    if-eqz v0, :cond_0

    .line 7668
    const-string v0, "Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setShrinkRequestListener() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7670
    :cond_0
    iput-object p1, p0, Landroid/app/Activity;->mShrinkRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;

    .line 7671
    return-void
.end method

.method public setSubContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 7540
    iget-object v1, p0, Landroid/app/Activity;->mSubWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    .line 7541
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 7542
    iget-object v1, p0, Landroid/app/Activity;->mSubWindow:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->setContentView(I)V

    .line 7544
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 7545
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 7546
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 7548
    iget-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/app/Activity;->mSubWindowAdded:Z

    if-nez v1, :cond_0

    .line 7549
    invoke-direct {p0}, Landroid/app/Activity;->addSubWindow()V

    .line 7560
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 7552
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mSubDecor:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/app/Activity;->mSubWindowAdded:Z

    if-eqz v1, :cond_0

    .line 7553
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mSubDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 7554
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Activity;->mSubWindowAdded:Z

    .line 7555
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mSubDecor:Landroid/view/View;

    goto :goto_0
.end method

.method public setSubContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7565
    iget-object v1, p0, Landroid/app/Activity;->mSubWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    .line 7566
    if-eqz p1, :cond_1

    .line 7567
    iget-object v1, p0, Landroid/app/Activity;->mSubWindow:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 7569
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 7570
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 7571
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 7573
    iget-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/app/Activity;->mSubWindowAdded:Z

    if-nez v1, :cond_0

    .line 7574
    invoke-direct {p0}, Landroid/app/Activity;->addSubWindow()V

    .line 7585
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 7577
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mSubDecor:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/app/Activity;->mSubWindowAdded:Z

    if-eqz v1, :cond_0

    .line 7578
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mSubDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 7579
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Activity;->mSubWindowAdded:Z

    .line 7580
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mSubDecor:Landroid/view/View;

    goto :goto_0
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 7
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 5857
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 5858
    invoke-static {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconSizeInner(Landroid/content/Context;)I

    move-result v1

    .line 5859
    .local v1, "size":I
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v1, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5860
    .local v0, "icon":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v6

    invoke-direct {v3, v5, v0, v6}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 5863
    .local v3, "td":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getTextPrimaryColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager$TaskDescription;->setTextPrimaryColor(I)V

    .line 5867
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    .end local v1    # "size":I
    :goto_0
    const-string v5, "com.sec.android.app.camera"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5868
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5869
    .local v4, "token":Landroid/os/IBinder;
    move-object v2, v3

    .line 5870
    .local v2, "taskDesc":Landroid/app/ActivityManager$TaskDescription;
    new-instance v5, Landroid/app/Activity$1;

    invoke-direct {v5, p0, v2}, Landroid/app/Activity$1;-><init>(Landroid/app/Activity;Landroid/app/ActivityManager$TaskDescription;)V

    invoke-virtual {v5}, Landroid/app/Activity$1;->start()V

    .line 5884
    .end local v2    # "taskDesc":Landroid/app/ActivityManager$TaskDescription;
    .end local v4    # "token":Landroid/os/IBinder;
    :goto_1
    return-void

    .line 5865
    .end local v3    # "td":Landroid/app/ActivityManager$TaskDescription;
    :cond_0
    move-object v3, p1

    .restart local v3    # "td":Landroid/app/ActivityManager$TaskDescription;
    goto :goto_0

    .line 5880
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v5, v6, v3}, Landroid/app/IActivityManager;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5881
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 5797
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 5798
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 5782
    iput-object p1, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 5783
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 5785
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 5786
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 5788
    :cond_0
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5812
    iput p1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 5813
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 5814
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x4

    .line 5140
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eq v0, p1, :cond_0

    .line 5141
    iput-boolean p1, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 5142
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v0, :cond_0

    .line 5143
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->makeVisible()V

    .line 5156
    :cond_0
    :goto_0
    return-void

    .line 5145
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5148
    iget-object v0, p0, Landroid/app/Activity;->mSubDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 5149
    iget-object v0, p0, Landroid/app/Activity;->mSubDecor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setVolumeControlStream(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 5976
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 5977
    return-void
.end method

.method public setWindowMode(IZ)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "allInTask"    # Z

    .prologue
    .line 5618
    new-instance v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 5619
    .local v3, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->convertToMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    .line 5621
    const/4 v0, 0x0

    .line 5623
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5629
    :goto_0
    if-eqz v0, :cond_0

    .line 5630
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v1

    .line 5631
    .local v1, "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5632
    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 5633
    invoke-virtual {v3, p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->parseStyleOptions(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 5637
    .end local v1    # "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_0
    iget-object v4, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v4, :cond_2

    .line 5638
    const-string/jumbo v4, "multiwindow_facade"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 5639
    .local v2, "service":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    if-eqz v2, :cond_1

    .line 5640
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5645
    .end local v2    # "service":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    :cond_1
    :goto_1
    return-void

    .line 5643
    :cond_2
    iget-object v4, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_1

    .line 5626
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 4214
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 6595
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 6596
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 6597
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 6598
    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 6600
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 6601
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 6609
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v4

    .line 6604
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    goto :goto_0

    .line 6606
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 6607
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 6608
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 6609
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public showAssist(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1774
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1777
    :goto_0
    return v0

    .line 1775
    :catch_0
    move-exception v0

    .line 1777
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final showDialog(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3731
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 3732
    return-void
.end method

.method public final showDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3767
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 3768
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 3770
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 3771
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_2

    .line 3772
    new-instance v0, Landroid/app/Activity$ManagedDialog;

    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    invoke-direct {v0, v2}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$1;)V

    .line 3773
    .restart local v0    # "md":Landroid/app/Activity$ManagedDialog;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 3774
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_1

    .line 3775
    const/4 v1, 0x0

    .line 3783
    :goto_0
    return v1

    .line 3777
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3780
    :cond_2
    iput-object p2, v0, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 3781
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1, v1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 3782
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 3783
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public showLockTaskEscapeMessage()V
    .locals 2

    .prologue
    .line 7225
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7228
    :goto_0
    return-void

    .line 7226
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 6503
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 6517
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 4584
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4585
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4611
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4613
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4535
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4536
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, -0x1

    .line 4562
    if-eqz p2, :cond_0

    .line 4563
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4569
    :goto_0
    return-void

    .line 4567
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "ignoreTargetSecurity"    # Z
    .param p4, "userId"    # I

    .prologue
    const/4 v6, -0x1

    .line 4410
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4411
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4413
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v0 .. v9}, Landroid/app/Instrumentation;->execStartActivityAsCaller(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;ZI)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v10

    .line 4417
    .local v10, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v10, :cond_1

    .line 4418
    iget-object v3, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v7

    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4422
    :cond_1
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4423
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v6, -0x1

    .line 4378
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4379
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4381
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v9

    .line 4385
    .local v9, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v9, :cond_1

    .line 4386
    iget-object v3, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v7

    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4390
    :cond_1
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4391
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 4371
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4372
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 4230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4231
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4272
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 4273
    .local v9, "callerPackageName":Ljava/lang/String;
    const-string v0, "com.sec.android.app.launcher"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.android.app.easylauncher"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4274
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mLauncherBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    .line 4275
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_BOOST"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/app/Activity;->mLauncherBooster:Landroid/os/DVFSHelper;

    .line 4277
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4278
    iget-object v0, p0, Landroid/app/Activity;->mLauncherBooster:Landroid/os/DVFSHelper;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/os/DVFSHelper;->onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 4282
    :cond_2
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_5

    .line 4283
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    .line 4287
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_3

    .line 4288
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4292
    :cond_3
    if-ltz p2, :cond_4

    .line 4300
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 4303
    :cond_4
    invoke-direct {p0, p3}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4314
    .end local v8    # "ar":Landroid/app/Instrumentation$ActivityResult;
    :goto_0
    return-void

    .line 4306
    :cond_5
    if-eqz p3, :cond_6

    .line 4307
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 4311
    :cond_6
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 10
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4911
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v9

    .line 4912
    .local v9, "referrer":Landroid/net/Uri;
    if-eqz v9, :cond_0

    .line 4913
    const-string v0, "android.intent.extra.REFERRER"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4915
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    .line 4919
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_1

    .line 4920
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move-object v2, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4924
    :cond_1
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4925
    return-void
.end method

.method public startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 4343
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4344
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4346
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v9

    .line 4349
    .local v9, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v9, :cond_1

    .line 4350
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4353
    :cond_1
    if-ltz p2, :cond_2

    .line 4361
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 4364
    :cond_2
    invoke-direct {p0, p3}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4365
    return-void
.end method

.method public startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 4335
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4336
    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 4826
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4827
    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4850
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    .line 4854
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_0

    .line 4855
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4859
    :cond_0
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4860
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 4877
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4878
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4902
    iget-object v0, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4903
    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 4685
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4720
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_3

    .line 4721
    const/4 v12, 0x1

    .line 4723
    .local v12, "result":I
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v11

    .line 4724
    .local v11, "referrer":Landroid/net/Uri;
    if-eqz v11, :cond_0

    .line 4725
    const-string v0, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4727
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 4728
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 4729
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p1

    move v7, p2

    move-object/from16 v10, p3

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 4738
    .end local v11    # "referrer":Landroid/net/Uri;
    :goto_0
    invoke-static {v12, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 4740
    if-ltz p2, :cond_1

    .line 4748
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 4750
    :cond_1
    const/4 v0, 0x1

    if-eq v12, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 4753
    .end local v12    # "result":I
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "startActivityIfNeeded can only be called from a top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4734
    .restart local v12    # "result":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 7
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4631
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 4633
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 4658
    if-eqz p6, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 4659
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 4667
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 4664
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 8
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4443
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 4445
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4475
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p0

    move-object/from16 v7, p7

    .line 4476
    invoke-direct/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/app/Activity;Landroid/os/Bundle;)V

    .line 4487
    :goto_0
    return-void

    .line 4478
    :cond_0
    if-eqz p7, :cond_1

    .line 4479
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_0

    .line 4484
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 9
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4943
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 4945
    return-void
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4957
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p1

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/app/Activity;Landroid/os/Bundle;)V

    .line 4959
    return-void
.end method

.method public startLockTask()V
    .locals 2

    .prologue
    .line 7189
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->startLockTaskMode(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7192
    :goto_0
    return-void

    .line 7190
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2250
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2251
    :try_start_0
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/Activity$ManagedCursor;

    invoke-direct {v2, p1}, Landroid/app/Activity$ManagedCursor;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2252
    monitor-exit v1

    .line 2253
    return-void

    .line 2252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4772
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4795
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 4797
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 4798
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 4799
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4804
    :goto_0
    return v0

    .line 4801
    :catch_0
    move-exception v0

    .line 4804
    const/4 v0, 0x0

    goto :goto_0

    .line 4807
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "startNextMatchingActivity can only be called from a top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startPostponedEnterTransition()V
    .locals 1

    .prologue
    .line 6773
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->startPostponedEnterTransition()V

    .line 6774
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    .line 3950
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 3951
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 3953
    return-void
.end method

.method public stopLockTask()V
    .locals 1

    .prologue
    .line 7213
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7216
    :goto_0
    return-void

    .line 7214
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopManagingCursor(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2274
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2275
    :try_start_0
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2276
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2277
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 2278
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    # getter for: Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->access$200(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 2279
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2283
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_0
    monitor-exit v4

    .line 2284
    return-void

    .line 2276
    .restart local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2283
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .prologue
    .line 3978
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 3979
    return-void
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 3966
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 3967
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/SearchManager;->triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 3968
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3575
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3576
    return-void
.end method

.method public updateMultiWindowSetting(Ljava/lang/StringBuilder;Z)V
    .locals 5
    .param p1, "key"    # Ljava/lang/StringBuilder;
    .param p2, "enable"    # Z

    .prologue
    .line 5574
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 5575
    const-string/jumbo v3, "multiwindow_facade"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 5576
    .local v2, "service":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 5577
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MW/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5578
    .local v1, "reason":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 5579
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5584
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "reason":Ljava/lang/String;
    .end local v2    # "service":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    :cond_0
    :goto_0
    return-void

    .line 5582
    :cond_1
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v3, p1, p2}, Landroid/app/Activity;->updateMultiWindowSetting(Ljava/lang/StringBuilder;Z)V

    goto :goto_0
.end method
