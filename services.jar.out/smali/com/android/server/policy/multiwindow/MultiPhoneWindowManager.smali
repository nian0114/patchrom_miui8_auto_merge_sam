.class public Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final DEBUG_ALWAYS_ON:Z = false

.field private static final MULTIWINDOW_SETTING_OFF:I = 0x0

.field private static final MULTIWINDOW_SETTING_ON:I = 0x1

.field static final SAFE_DEBUG:Z

.field static final TAG:Ljava/lang/String; = "MultiPhoneWindowManager"


# instance fields
.field private mConsumeBackKeyUp:Z

.field mContext:Landroid/content/Context;

.field private mEnableMultiWindowUISetting:I

.field private mFirstMultiWindowSettingOn:Z

.field private mFirstRecentKeyClick:Z

.field private mFloatingPadding:Landroid/graphics/Rect;

.field private mFloatingPaddingTemp:Landroid/graphics/Rect;

.field private mForceHideCascade:Z

.field private mForceHideCenterBar:Z

.field private mForceHidePenWindowController:Z

.field private mForceHidePenWindowControllerStackId:I

.field private mForceHideStatusBar:Z

.field private mGrantPermissionStackId:I

.field mHandler:Landroid/os/Handler;

.field private mIsMultiWindowTrayOpen:Z

.field private mIsRecentUI:Z

.field private mIsTrayBarUI:Z

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field final mLock:Ljava/lang/Object;

.field private mLongPressedMinimizeIcon:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMinimizeSize:I

.field private mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowUIIntent:Landroid/content/Intent;

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

.field private mScaleWindowResizableSize:I

.field mSettingsObserver:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

.field private final mStatusBarController:Lcom/android/server/policy/BarController;

.field mStatusBarHeight:I

.field private mStatusBarTransient:Z

.field public mSystemBooted:Z

.field public mSystemReady:Z

.field private mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Landroid/view/WindowManagerInternal;


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
    sput-boolean v0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v2, 0x4000000

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mLock:Ljava/lang/Object;

    iput v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mStatusBarHeight:I

    new-instance v0, Lcom/android/server/policy/BarController;

    const-string v1, "StatusBar"

    const/high16 v3, 0x10000000

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/BarController;

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsTrayBarUI:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iput v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMinimizeSize:I

    iput v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mScaleWindowResizableSize:I

    iput-object v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFirstRecentKeyClick:Z

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    iput v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideCenterBar:Z

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideStatusBar:Z

    iput-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    iput v8, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerStackId:I

    iput v8, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mGrantPermissionStackId:I

    iput-object v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mLongPressedMinimizeIcon:Landroid/view/WindowManagerPolicy$WindowState;

    new-instance v0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$1;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .prologue
    iget v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method private applyMultiWindowScaleFrame(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "pf"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;

    move-result-object v2

    .local v2, "rect":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    add-int v0, v4, v5

    .local v0, "height":I
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int v3, v4, v5

    .local v3, "width":I
    iget-object v4, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    .local v1, "orientation":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v4

    if-ne v4, v6, :cond_0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v4

    if-nez v4, :cond_2

    if-ne v1, v6, :cond_2

    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    const/high16 v5, 0x400000

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void

    :cond_2
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "windowName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "parts":[Ljava/lang/String;
    array-length v7, v5

    const/4 v9, 0x2

    if-ge v7, v9, :cond_1

    move-object v1, v8

    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v1

    .restart local v5    # "parts":[Ljava/lang/String;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, "i":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const/4 v9, 0x0

    aget-object v9, v5, v9

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .local v4, "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    .local v1, "appName":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_0

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appName":Ljava/lang/CharSequence;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "MultiPhoneWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationName is error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v8

    goto :goto_0
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isIsolatedSplitUsed()Z
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerPolicy$WindowState;

    .local v1, "win":Landroid/view/WindowManagerPolicy$WindowState;
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v1    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isUserSetupComplete()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private keyguardIsShowingTq()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method private keyguardOn()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

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


# virtual methods
.method public applyPostLayoutPolicyForRecenUI(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x82f

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideStatusBar:Z

    :cond_0
    return-void
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/high16 v5, 0x4000000

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .local v1, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v2, :cond_0

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-nez v3, :cond_8

    move v0, v2

    .local v0, "isMultiWindowTarget":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    :cond_1
    if-eqz v0, :cond_3

    const/high16 v3, 0x200000

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideCenterBar:Z

    :cond_3
    :goto_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mLongPressedMinimizeIcon:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_4

    iput-object p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mLongPressedMinimizeIcon:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_4
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_5

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dc

    if-eq v3, v4, :cond_5

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x8e8

    if-ne v3, v4, :cond_6

    :cond_5
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_6

    iput-boolean v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTargetAppTokenStackId()I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerStackId:I

    :cond_6
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_7

    iput-boolean v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    :cond_7
    return-void

    .end local v0    # "isMultiWindowTarget":Z
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .restart local v0    # "isMultiWindowTarget":Z
    :cond_9
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v2, :cond_b

    invoke-virtual {v1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iput-boolean v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideCenterBar:Z

    :cond_a
    iget-object v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method public beginPostLayoutPolicyLw()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    iput-boolean v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideCenterBar:Z

    iput-boolean v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideStatusBar:Z

    iput-boolean v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    iput-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mLongPressedMinimizeIcon:Landroid/view/WindowManagerPolicy$WindowState;

    iput v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerStackId:I

    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mGrantPermissionStackId:I

    return-void
.end method

.method public checkAddPermission(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/16 v0, 0x8d4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public closeMultiWindowTrayBar(Z)Z
    .locals 4
    .param p1, "forceClose"    # Z

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "MultiPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeMultiWindowTrayBar() failed -> mMultiWindowTrayBar ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mMultiWindowEditMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$4;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    return-void
.end method

.method public finishPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 10
    .param p1, "topFullscreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v7}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;Landroid/util/MutableBoolean;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v9, v9, v9}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v9, v9, v9}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .local v2, "showCenterBar":Z
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    if-ne v7, v9, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-direct {p0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->isIsolatedSplitUsed()Z

    move-result v7

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideCenterBar:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_3

    iget v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-ne v7, v9, :cond_3

    :cond_2
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v4

    .local v4, "topFullAppZone":I
    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_9

    move v3, v6

    .local v3, "topAppZone":I
    :goto_1
    if-ne v4, v3, :cond_a

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v2, 0x0

    .end local v3    # "topAppZone":I
    .end local v4    # "topFullAppZone":I
    :cond_3
    :goto_2
    if-eqz v2, :cond_c

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_b

    iget v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-ne v7, v9, :cond_b

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$3;

    invoke-direct {v8, p0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$3;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_5

    iput-boolean v6, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    :cond_5
    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_6

    iput-boolean v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    :cond_6
    iget-object v6, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManagerPolicy$WindowState;

    .local v5, "win":Landroid/view/WindowManagerPolicy$WindowState;
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_7

    iput-boolean v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    goto :goto_4

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "showCenterBar":Z
    .end local v5    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_8
    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v9}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    goto/16 :goto_0

    .restart local v2    # "showCenterBar":Z
    .restart local v4    # "topFullAppZone":I
    :cond_9
    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    goto :goto_1

    .restart local v3    # "topAppZone":I
    :cond_a
    if-eqz v3, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    .end local v3    # "topAppZone":I
    .end local v4    # "topFullAppZone":I
    :cond_b
    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v6, v6, v9}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(ZZZ)Z

    goto :goto_3

    :cond_c
    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v6, v9, v9}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    goto :goto_3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_d
    iget-object v6, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v6}, Landroid/view/WindowManagerInternal;->getFocusedAppToken()Landroid/os/IBinder;

    move-result-object v0

    .local v0, "focusedApp":Landroid/os/IBinder;
    if-eqz v0, :cond_e

    iget-object v6, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v6, v0}, Landroid/view/WindowManagerInternal;->isGrantPermissionAppToken(Landroid/os/IBinder;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v6, v0}, Landroid/view/WindowManagerInternal;->isCascade(Landroid/os/IBinder;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v6, v0}, Landroid/view/WindowManagerInternal;->getStackId(Landroid/os/IBinder;)I

    move-result v6

    iput v6, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mGrantPermissionStackId:I

    iput-boolean v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    :cond_e
    :goto_5
    return-void

    :cond_f
    iput-boolean v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    goto :goto_5
.end method

.method public forceHideCenterBar(Z)V
    .locals 0
    .param p1, "forceHide"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideCenterBar:Z

    return-void
.end method

.method public getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTopFullWindowInSameTask()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v1

    .local v1, "mainWin":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v1, :cond_1

    move-object v4, v1

    .local v4, "targetWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .local v0, "fl":I
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v3

    .local v3, "sysUiFl":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .local v2, "multiWindowFl":I
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_2

    .end local v0    # "fl":I
    .end local v1    # "mainWin":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v2    # "multiWindowFl":I
    .end local v3    # "sysUiFl":I
    .end local v4    # "targetWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    :goto_1
    return v5

    .restart local v1    # "mainWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    move-object v4, p1

    goto :goto_0

    .restart local v0    # "fl":I
    .restart local v2    # "multiWindowFl":I
    .restart local v3    # "sysUiFl":I
    .restart local v4    # "targetWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_2
    and-int/lit16 v6, v0, 0x400

    if-nez v6, :cond_3

    const/high16 v6, 0x4000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_4

    :cond_3
    and-int/lit16 v6, v3, 0x100

    if-eqz v6, :cond_0

    and-int/lit16 v6, v0, 0x400

    if-nez v6, :cond_0

    :cond_4
    iget v5, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mStatusBarHeight:I

    goto :goto_1
.end method

.method public getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGlobalSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;ILandroid/view/WindowManagerPolicy$WindowState;)I
    .locals 5
    .param p1, "statusBar"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "lastSystemUiFlags"    # I
    .param p3, "topFullScreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    iget-object v4, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v2, 0x4

    .local v2, "visibility":I
    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .local v1, "topIsFullscreen":Z
    if-eqz p3, :cond_2

    :try_start_0
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1

    :cond_0
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_4

    :cond_1
    const/4 v1, 0x1

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v3}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x0

    .end local v1    # "topIsFullscreen":Z
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->notifySystemUiVisibility(I)V

    monitor-exit v4

    return v2

    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "topIsFullscreen":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "topIsFullscreen":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getLongPressedMinimizeIcon()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mLongPressedMinimizeIcon:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method public getMinimizeSize()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMinimizeSize:I

    return v0
.end method

.method public getScaleWindowResizableSize()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mScaleWindowResizableSize:I

    return v0
.end method

.method public handleLongPressOnRecent()Z
    .locals 14

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-direct {p0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v5

    .local v5, "isDeviceProvisioned":Z
    new-instance v4, Landroid/util/MutableBoolean;

    invoke-direct {v4, v9}, Landroid/util/MutableBoolean;-><init>(Z)V

    .local v4, "hasDisableTrayFlag":Landroid/util/MutableBoolean;
    iget-object v10, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v10

    invoke-virtual {p0, v10, v4}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;Landroid/util/MutableBoolean;)Z

    move-result v7

    .local v7, "needhideTrayBar":Z
    const/4 v2, 0x0

    .local v2, "extraIsNormal":Z
    iget v10, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v10, :cond_0

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->isUserSetupComplete()Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v7, :cond_4

    iget-boolean v10, v4, Landroid/util/MutableBoolean;->value:Z

    if-nez v10, :cond_4

    :cond_0
    const-string v6, "RecentsMultiWindow couldn\'t execute"

    .local v6, "logStr":Ljava/lang/String;
    sget-boolean v10, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  isDeviceProvisioned : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  TopFullscreenOpaqueWindowState : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v11}, Lcom/android/server/policy/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  needHideTrayBar : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    iget-object v10, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-eqz v10, :cond_2

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .local v3, "handler":Landroid/os/Handler;
    new-instance v10, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$7;

    invoke-direct {v10, p0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$7;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)V

    const-wide/16 v12, 0x0

    invoke-virtual {v3, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v3    # "handler":Landroid/os/Handler;
    :cond_2
    const-string v10, "MultiPhoneWindowManager"

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "extraIsNormal":Z
    .end local v4    # "hasDisableTrayFlag":Landroid/util/MutableBoolean;
    .end local v5    # "isDeviceProvisioned":Z
    .end local v6    # "logStr":Ljava/lang/String;
    .end local v7    # "needhideTrayBar":Z
    :cond_3
    :goto_0
    return v9

    .restart local v2    # "extraIsNormal":Z
    .restart local v4    # "hasDisableTrayFlag":Landroid/util/MutableBoolean;
    .restart local v5    # "isDeviceProvisioned":Z
    .restart local v7    # "needhideTrayBar":Z
    :cond_4
    iget-object v10, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v10

    if-nez v10, :cond_6

    :cond_5
    if-eqz v7, :cond_7

    iget-boolean v10, v4, Landroid/util/MutableBoolean;->value:Z

    if-eqz v10, :cond_7

    :cond_6
    const/4 v8, 0x0

    .local v8, "windowTitle":Ljava/lang/CharSequence;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_1
    move-object v0, v8

    .local v0, "appWindowTitle":Ljava/lang/CharSequence;
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .restart local v3    # "handler":Landroid/os/Handler;
    new-instance v10, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$8;

    invoke-direct {v10, p0, v0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$8;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v10, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v11, "LPNA"

    sget-object v12, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;->NOT_SUPPORT:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;->name()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "appWindowTitle":Ljava/lang/CharSequence;
    .end local v3    # "handler":Landroid/os/Handler;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v8    # "windowTitle":Ljava/lang/CharSequence;
    :cond_7
    iget-object v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v2, 0x1

    :cond_8
    iget-object v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const-string v10, "recentapps"

    invoke-static {v9, v10}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->startMultiWindowRecentsActivity(Z)V

    const/4 v9, 0x1

    goto :goto_0
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .param p4, "spwm"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p5, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iput-object p3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-class v2, Landroid/view/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerInternal;

    iput-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    iput-object p5, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p4, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    iget-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.multiwindow.simplificationui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsTrayBarUI:Z

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.multiwindow.centerbarwindow.CenterBarWindowService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    new-instance v2, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->observe()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mStatusBarHeight:I

    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    const-string v3, "com.sec.android.app.FlashBarService"

    const-string v4, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public interceptKeyBeforeDispatching(ZIZLandroid/view/WindowManagerPolicy$WindowState;)I
    .locals 6
    .param p1, "down"    # Z
    .param p2, "repeatCount"    # I
    .param p3, "canceled"    # Z
    .param p4, "topFullscreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHMTSupportAndConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_4

    iget v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    if-ne p2, v3, :cond_3

    if-nez p3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsTrayBarUI:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0, p4}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->toggleMultiWindowTray(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    const-string v3, "MultiPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MultiWindowTrayBar toggle / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    if-eqz v3, :cond_0

    if-lez p2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    if-eqz v3, :cond_5

    iput-boolean v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    move v1, v2

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.BACK_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v1, v2

    goto :goto_0
.end method

.method public isEnabledTalkback()Z
    .locals 8

    .prologue
    const/16 v1, 0x3a

    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3a

    invoke-direct {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .local v5, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    iget-object v6, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enabled_accessibility_services"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "enabledServicesSetting":Ljava/lang/String;
    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    invoke-virtual {v5, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .local v2, "componentNameString":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .local v3, "enabledService":Landroid/content/ComponentName;
    if-eqz v3, :cond_1

    const-string v6, "com.google.android.marvin.talkback"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    .end local v2    # "componentNameString":Ljava/lang/String;
    .end local v3    # "enabledService":Landroid/content/ComponentName;
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isForceHideCascade()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    return v0
.end method

.method public isForceHideStatusBar()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideStatusBar:Z

    return v0
.end method

.method public isSplitTopApplicationWindow()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatusBarTransient()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    return v0
.end method

.method public needForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 8
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "windowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p4, "attachedWin"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p5, "attachAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p6, "attachedWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v5, v3, :cond_1

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    invoke-virtual {p3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p6, :cond_1

    invoke-virtual {p6, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p5, :cond_2

    iget v5, p5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x898

    if-ne v5, v6, :cond_2

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz p6, :cond_a

    invoke-virtual {p6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_3
    move v0, v3

    .local v0, "isCascade":Z
    :goto_1
    if-eqz v0, :cond_9

    iget-boolean v5, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    if-nez v5, :cond_0

    if-eqz p2, :cond_7

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3ee

    if-eq v5, v6, :cond_4

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3ef

    if-ne v5, v6, :cond_7

    :cond_4
    iget-boolean v5, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerStackId:I

    if-eq v5, v7, :cond_5

    iget v5, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerStackId:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v6

    if-eq v5, v6, :cond_0

    :cond_5
    iget v5, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mGrantPermissionStackId:I

    if-eq v5, v7, :cond_6

    iget v5, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mGrantPermissionStackId:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v6

    if-eq v5, v6, :cond_0

    :cond_6
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTopPenWindowControllerInStack()Landroid/view/IApplicationToken;

    move-result-object v2

    .local v2, "topPenWindowControllerToken":Landroid/view/IApplicationToken;
    if-eqz v2, :cond_7

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    if-eq v2, v5, :cond_7

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isTopPenWindowControllerVisibleInStack()Z

    move-result v5

    if-nez v5, :cond_0

    .end local v2    # "topPenWindowControllerToken":Landroid/view/IApplicationToken;
    :cond_7
    const/high16 v1, 0x80000

    .local v1, "mask":I
    iget-object v5, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz p2, :cond_8

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v1

    if-nez v5, :cond_9

    :cond_8
    if-eqz p5, :cond_0

    iget v5, p5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_0

    .end local v1    # "mask":I
    :cond_9
    move v3, v4

    goto :goto_0

    .end local v0    # "isCascade":Z
    :cond_a
    move v0, v4

    goto :goto_1
.end method

.method public needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;Landroid/util/MutableBoolean;)Z
    .locals 9
    .param p1, "topFullScreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "hasDisableTrayFlag"    # Landroid/util/MutableBoolean;

    .prologue
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    .local v4, "personaManager":Landroid/os/PersonaManager;
    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v7

    if-nez v7, :cond_0

    :cond_2
    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .local v2, "lpApp":Landroid/view/WindowManager$LayoutParams;
    move-object v3, v2

    .local v3, "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_3

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v7, v6, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_5

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_4

    if-eqz p2, :cond_0

    iput-boolean v6, p2, Landroid/util/MutableBoolean;->value:Z

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->hasChild()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz p2, :cond_0

    iput-boolean v6, p2, Landroid/util/MutableBoolean;->value:Z

    goto :goto_0

    .end local v2    # "lpApp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManagerPolicy$WindowState;

    .local v5, "win":Landroid/view/WindowManagerPolicy$WindowState;
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_7

    if-eqz p2, :cond_0

    iput-boolean v6, p2, Landroid/util/MutableBoolean;->value:Z

    goto :goto_0

    :cond_7
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    const/16 v8, 0x1000

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_0

    .end local v5    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_8
    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isEasyModeEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    :cond_9
    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v1, :cond_a

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_a

    if-eqz p2, :cond_0

    iput-boolean v6, p2, Landroid/util/MutableBoolean;->value:Z

    goto/16 :goto_0

    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public notifySystemUiVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$6;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSystemReady(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .locals 0
    .param p1, "keyguardDelegate"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    return-void
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_0
    iput-object p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :pswitch_1
    iput-object p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    const/4 v0, -0x7

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :pswitch_3
    iput-object p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x898
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    iput-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_3

    iput-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method public setInitialDisplaySize()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    const v2, 0x10502b1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_0
    const v1, 0x10502b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMinimizeSize:I

    const v1, 0x10502c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mScaleWindowResizableSize:I

    return-void
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    return-void
.end method

.method public shouldEnableLayoutInsetsBySoftInput(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 5
    .param p1, "focusedWindow"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v2, 0x0

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v3}, Landroid/view/WindowManagerInternal;->getInputMethodTarget()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v0

    .local v0, "inputMethodTarget":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v0, :cond_3

    move-object v1, v0

    .local v1, "targetWindow":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v3

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v4

    if-ne v3, v4, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .end local v1    # "targetWindow":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_3
    move-object v1, p1

    goto :goto_1
.end method

.method startMultiWindowRecentsActivity(Z)V
    .locals 2
    .param p1, "extra"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$9;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopDragDropService()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.intent.action.ACTION_RECENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public toggleMultiWindowTray(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 3
    .param p1, "topFullscreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;Landroid/util/MutableBoolean;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "MultiPhoneWindowManager"

    const-string v2, "MultiWindowTrayBar couldn\'t execute"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public toggleRecentApps()V
    .locals 3

    .prologue
    iget v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFirstRecentKeyClick:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsTrayBarUI:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFirstRecentKeyClick:Z

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "recentIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.multiwindow.recentkey.start"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "recentIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateMultiWindowTrayBar(Z)V
    .locals 2
    .param p1, "forceShow"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$5;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateSettings()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    iget-object v8, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .local v5, "resolver":Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-boolean v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportBezelUI(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    :cond_1
    iget v4, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    .local v4, "prevEnableMultiWindowUISetting":I
    const-string v9, "multi_window_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v5, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    const-string v9, "MultiPhoneWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSetting mEnableMultiWindowUISetting = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mSystemReady:Z

    if-eqz v9, :cond_6

    iget v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-ne v9, v4, :cond_2

    iget-object v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportBezelUI(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_2
    const/4 v2, 0x1

    .local v2, "isUpdateMultiWindowTrayNeeded":Z
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v6

    .local v6, "versionInfo":Landroid/os/Bundle;
    const-string v9, "2.0"

    const-string v10, "version"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .local v3, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v3}, Landroid/os/PersonaManager;->getForegroundUser()I

    move-result v0

    .local v0, "currUser":I
    const/16 v9, 0x64

    if-lt v0, v9, :cond_3

    const/4 v2, 0x0

    .end local v0    # "currUser":I
    .end local v3    # "pm":Landroid/os/PersonaManager;
    :cond_3
    if-eqz v2, :cond_6

    iget-object v9, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "multi_window_tray_shown"

    const/4 v11, 0x1

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v1, :cond_7

    .local v1, "forceShow":Z
    :goto_0
    if-nez v1, :cond_4

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "multi_window_tray_shown"

    const/4 v10, 0x1

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_4
    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;Landroid/util/MutableBoolean;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v1, 0x0

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->updateMultiWindowTrayBar(Z)V

    iget-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mSystemBooted:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$2;

    invoke-direct {v9, p0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$2;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v1    # "forceShow":Z
    .end local v2    # "isUpdateMultiWindowTrayNeeded":Z
    .end local v6    # "versionInfo":Landroid/os/Bundle;
    :cond_6
    monitor-exit v8

    return-void

    .restart local v2    # "isUpdateMultiWindowTrayNeeded":Z
    .restart local v6    # "versionInfo":Landroid/os/Bundle;
    :cond_7
    move v1, v7

    goto :goto_0

    .end local v2    # "isUpdateMultiWindowTrayNeeded":Z
    .end local v4    # "prevEnableMultiWindowUISetting":I
    .end local v6    # "versionInfo":Landroid/os/Bundle;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public windowTypeToLayerLw(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/16 v0, 0x899

    if-ne p1, v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x89a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x89b

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/16 v0, 0x8d4

    if-ne p1, v0, :cond_3

    const/16 v0, 0xb

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method
