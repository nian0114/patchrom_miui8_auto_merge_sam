.class public Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;
.super Ljava/lang/Object;
.source "CocktailPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$1;,
        Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final DEBUG_LAYOUT:Z = true

.field private static final MSG_EDGE_SCREEN_WAKEUP:I = 0x1

.field private static final MSG_UPDATE_GRIP_STATE:I = 0x2

.field static final TAG:Ljava/lang/String; = "CocktailPhoneWindowManager"

.field static final mTmpCocktailDiffFrame:Landroid/graphics/Rect;

.field static final mTmpCocktailFrame:Landroid/graphics/Rect;

.field static final mTmpSubWindowFrame:Landroid/graphics/Rect;


# instance fields
.field private mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCocktailBarDirection:I

.field private mCocktailCurrentSize:I

.field private mCocktailDeltaBottom:I

.field private mCocktailDeltaLeft:I

.field private mCocktailDeltaRight:I

.field private mCocktailShiftSize:I

.field private mCocktailSize:I

.field mContext:Landroid/content/Context;

.field private mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mEdgeScreenWakeupReason:I

.field private mFocusedFloatingSubWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mHandler:Landroid/os/Handler;

.field private mHideBackgroundWindow:Z

.field private mInitCocktailBar:Z

.field private mOverscanScreenHeight:I

.field private mOverscanScreenLeft:I

.field private mOverscanScreenTop:I

.field private mOverscanScreenWidth:I

.field mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mPolicyWindowType:I

.field private mPolicyWindowVisiblity:Z

.field mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

.field private final mServiceAquireLock:Ljava/lang/Object;

.field mStatusBarHeight:I

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mWakeupKeyCode:I

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    iput-boolean v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    const/16 v0, 0x42e

    iput v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mWakeupKeyCode:I

    iput v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mStatusBarHeight:I

    iput-boolean v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mInitCocktailBar:Z

    iput-boolean v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mHideBackgroundWindow:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mEdgeScreenWakeupReason:I

    return-void
.end method

.method private checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "bCheckedNonOpaqueWindow"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x62

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_0

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v2, :cond_0

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v2, v4, :cond_2

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mDisplayHeight:I

    invoke-virtual {p0, v3, v4}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->getNonDecorDisplayWidth(II)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mDisplayHeight:I

    invoke-virtual {p0, v3, v4}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->getNonDecorDisplayHeight(II)I

    move-result v3

    if-ne v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_0

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v2, v5, :cond_4

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v5, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private getPolicyWindowType()I
    .locals 10

    .prologue
    const/high16 v9, 0x20000000

    const/4 v5, 0x5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .local v3, "policyLp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    .local v2, "isStatusBarExpand":Z
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d0

    if-ne v7, v8, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    .local v4, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->getPanelExpandState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v4    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "appPolicyLp":Landroid/view/WindowManager$LayoutParams;
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/2addr v7, v9

    if-eqz v7, :cond_3

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/2addr v7, v9

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v3, v8}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    const/4 v5, 0x2

    .end local v0    # "appPolicyLp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "isStatusBarExpand":Z
    .end local v3    # "policyLp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    :goto_1
    :sswitch_0
    return v5

    .restart local v2    # "isStatusBarExpand":Z
    .restart local v3    # "policyLp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v7, "CocktailPhoneWindowManager"

    const-string v8, "RemoteException when call the getPanelExpandState"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v7, :sswitch_data_0

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v5, v6, :cond_4

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-le v5, v7, :cond_7

    :cond_4
    const/4 v5, 0x6

    goto :goto_1

    :sswitch_1
    const/16 v5, 0x8

    goto :goto_1

    :sswitch_2
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_2

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v6, 0x10000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    const/4 v5, 0x7

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    const/4 v5, 0x3

    goto :goto_1

    :cond_6
    iget v5, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    goto :goto_1

    :sswitch_3
    const/4 v5, 0x4

    goto :goto_1

    :cond_7
    move v5, v6

    goto :goto_1

    .end local v2    # "isStatusBarExpand":Z
    .end local v3    # "policyLp":Landroid/view/WindowManager$LayoutParams;
    :cond_8
    iget v5, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_2
        0x7d4 -> :sswitch_0
        0x7db -> :sswitch_3
        0x7dc -> :sswitch_3
        0x8ad -> :sswitch_1
        0x8e8 -> :sswitch_3
    .end sparse-switch
.end method

.method private isTransientShowing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    return v0
.end method


# virtual methods
.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "opaqueWin"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v4

    if-le v3, v4, :cond_0

    const/4 v1, 0x1

    .local v1, "policyWindow":Z
    iget v3, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v3, :sswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, p3, v5}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object p1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .end local v1    # "policyWindow":Z
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_1

    iget v3, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v3, v5, :cond_1

    iget v3, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p3, v3}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object p1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_1
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->getCoverStateSwitch()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->hasSubWindow()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getCoverMode()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3, v5}, Lcom/android/server/policy/PhoneWindowManager;->setForceHideStatusBar(Z)V

    iput-boolean v5, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mHideBackgroundWindow:Z

    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_3

    iget v3, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x62

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v4

    if-ne v3, v4, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "contentRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3, v0}, Lcom/android/server/policy/PhoneWindowManager;->getContentRectLw(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    .local v2, "stackBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_3

    sget-object v3, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget-object v4, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_3

    iput-object p1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mFocusedFloatingSubWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .end local v0    # "contentRect":Landroid/graphics/Rect;
    .end local v2    # "stackBounds":Landroid/graphics/Rect;
    :cond_3
    return-void

    .restart local v1    # "policyWindow":Z
    :sswitch_0
    const/4 v1, 0x0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7d6 -> :sswitch_0
        0x89c -> :sswitch_0
        0x8ae -> :sswitch_0
        0x8b6 -> :sswitch_0
        0x8ca -> :sswitch_0
        0x8cf -> :sswitch_0
        0x8d4 -> :sswitch_0
        0x8d5 -> :sswitch_0
    .end sparse-switch
.end method

.method public beginLayoutLw(IIIIIII)V
    .locals 17
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "displayRotation"    # I
    .param p4, "overscanScreenLeft"    # I
    .param p5, "overscanScreenTop"    # I
    .param p6, "overscanScreenWidth"    # I
    .param p7, "overscanScreenHeight"    # I

    .prologue
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mDisplayWidth:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mDisplayHeight:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenWidth:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenHeight:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarDirection:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaLeft:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaRight:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaBottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->setForceHideStatusBar(Z)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    sub-int v16, v2, v3

    .local v16, "diff":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    sub-int v11, v2, v3

    .local v11, "appDiff":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mWakeupKeyCode:I

    const/16 v3, 0x42f

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p3, 0x2

    rem-int/lit8 p3, v2, 0x4

    :cond_0
    packed-switch p3, :pswitch_data_0

    const/4 v12, 0x0

    .local v12, "cocktailBottom":I
    move v15, v12

    .local v15, "cocktailTop":I
    move v13, v12

    .local v13, "cocktailLeft":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    .local v14, "cocktailRight":I
    sget-object v2, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v11, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    sget-object v2, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaRight:I

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v13, v14, v15, v12}, Lcom/android/server/policy/PhoneWindowManager;->updateCocktailLayout(IIII)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    sget-object v9, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const-string v2, "CocktailPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTmpCocktailBar frame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v2}, Landroid/view/WindowManagerInternal;->getInputMethodTarget()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    return-void

    .end local v12    # "cocktailBottom":I
    .end local v13    # "cocktailLeft":I
    .end local v14    # "cocktailRight":I
    .end local v15    # "cocktailTop":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->setForceHideStatusBar(Z)V

    :cond_4
    const/4 v12, 0x0

    .restart local v12    # "cocktailBottom":I
    move v14, v12

    .restart local v14    # "cocktailRight":I
    move v13, v12

    .restart local v13    # "cocktailLeft":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    .restart local v15    # "cocktailTop":I
    sget-object v2, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    sget-object v2, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1

    :cond_5
    sget-object v2, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move/from16 v0, v16

    neg-int v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .end local v12    # "cocktailBottom":I
    .end local v13    # "cocktailLeft":I
    .end local v14    # "cocktailRight":I
    .end local v15    # "cocktailTop":I
    :pswitch_1
    const/4 v12, 0x0

    .restart local v12    # "cocktailBottom":I
    move v15, v12

    .restart local v15    # "cocktailTop":I
    move v14, v12

    .restart local v14    # "cocktailRight":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    .restart local v13    # "cocktailLeft":I
    sget-object v2, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v11, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    sget-object v2, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaLeft:I

    goto/16 :goto_1

    :cond_6
    sget-object v2, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    move/from16 v0, v16

    neg-int v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .end local v12    # "cocktailBottom":I
    .end local v13    # "cocktailLeft":I
    .end local v14    # "cocktailRight":I
    .end local v15    # "cocktailTop":I
    :pswitch_2
    const/4 v15, 0x0

    .restart local v15    # "cocktailTop":I
    move v14, v15

    .restart local v14    # "cocktailRight":I
    move v13, v15

    .restart local v13    # "cocktailLeft":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    .restart local v12    # "cocktailBottom":I
    sget-object v2, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v11}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int v4, p2, v4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_4
    sget-object v2, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int v4, p2, v4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaBottom:I

    goto/16 :goto_1

    :cond_7
    sget-object v2, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    sub-int v4, p2, v4

    add-int v5, p2, v16

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    :cond_8
    sget-object v2, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    add-int v5, p1, v16

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mHideBackgroundWindow:Z

    iput-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mFocusedFloatingSubWindow:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "--- Cocktail Policy ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCocktailBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCocktailBarBackground="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPolicyWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPolicyAppWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPolicyWindowType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPolicyWindowVisiblity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .local v0, "changes":I
    iget-object v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->getPolicyWindowType()I

    move-result v1

    .local v1, "currentWindowType":I
    iget v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    if-eq v2, v1, :cond_2

    iput v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    iget-object v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateCocktailBarStateFromSystem(I)V

    iget v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iget v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iput v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    :cond_1
    :goto_0
    const-string v3, "CocktailPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishPostLayoutPolicyLw - mPolicyWindowType : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  mPolicyWindowState : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_3

    const-string v2, "CocktailPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishPostLayoutPolicyLw(): mHideBackgroundWindow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mHideBackgroundWindow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mHideBackgroundWindow:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x1

    .end local v1    # "currentWindowType":I
    :cond_3
    :goto_2
    return v0

    .restart local v1    # "currentWindowType":I
    :cond_4
    iget v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iget v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    if-eq v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iput v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    const/4 v0, 0x1

    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    iget v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    iput v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const-string v2, "NULL"

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v5}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getCocktailBarFrame(Landroid/view/WindowManagerPolicy$WindowState;Z)Landroid/graphics/Rect;
    .locals 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "policy"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .local v1, "diff":I
    if-nez p2, :cond_0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasSubWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iget v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    sub-int v1, v2, v3

    :cond_0
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "cocktailFrame":Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarDirection:I

    packed-switch v2, :pswitch_data_0

    iget v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v4, v4, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-object v0

    .end local v0    # "cocktailFrame":Landroid/graphics/Rect;
    :cond_1
    iget v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    iget v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    sub-int v1, v2, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iget v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    sub-int v1, v2, v3

    goto :goto_0

    .restart local v0    # "cocktailFrame":Landroid/graphics/Rect;
    :pswitch_0
    iget v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :pswitch_2
    iget v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v4, v4, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getNonDecorAlphaScreenDisplayHeight(II)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    if-le p1, p2, :cond_0

    iget v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int/2addr p2, v0

    :cond_0
    return p2
.end method

.method public getNonDecorAlphaScreenDisplayWidth(II)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    if-ge p1, p2, :cond_0

    iget v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public getNonDecorDisplayHeight(II)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    if-le p1, p2, :cond_0

    iget v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    sub-int/2addr p2, v0

    :cond_0
    return p2
.end method

.method public getNonDecorDisplayWidth(II)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    if-ge p1, p2, :cond_0

    iget v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .param p4, "spwm"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p5, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iput-object p3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-class v0, Landroid/view/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    iput-object p4, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput-object p5, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$MessageHandler;-><init>(Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public initCocktailBarSize()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    iput v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mStatusBarHeight:I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iput v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;II)I
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "result"    # I
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .local v1, "keyCode":I
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    packed-switch v1, :pswitch_data_0

    and-int/lit8 v4, p3, 0x1

    if-nez v4, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->isEdgeScreenWaked()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3, v3, v2}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->requestEdgeScreenWakeup(ZII)V

    if-ne v1, v5, :cond_1

    and-int/lit8 p2, p2, -0x2

    :cond_1
    :goto_1
    return p2

    .end local v0    # "down":Z
    .end local v1    # "keyCode":I
    :cond_2
    move v0, v3

    goto :goto_0

    .restart local v0    # "down":Z
    .restart local v1    # "keyCode":I
    :pswitch_0
    iput v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mWakeupKeyCode:I

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->requestEdgeScreenWakeup(ZII)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x42d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isCocktailRotationAnimationNeeded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isForceHideBySViewCover()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->isEdgeScreenWaked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->willBeHideBlockMain()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getCoverStateSwitch()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isEdgeScreenWaked()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktaiBarWakeUpState()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 25
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p5, "pf"    # Landroid/graphics/Rect;
    .param p6, "df"    # Landroid/graphics/Rect;
    .param p7, "of"    # Landroid/graphics/Rect;
    .param p8, "cf"    # Landroid/graphics/Rect;
    .param p9, "vf"    # Landroid/graphics/Rect;
    .param p10, "dcf"    # Landroid/graphics/Rect;

    .prologue
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p3

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v3, :sswitch_data_0

    if-nez p2, :cond_9

    move-object/from16 v0, p3

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_8

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasSubWindow()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    if-ne v3, v6, :cond_0

    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    move-object/from16 v0, p5

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v11

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v11

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    move-object/from16 v0, p7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v11

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p8

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, p8

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    move-object/from16 v0, p8

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v11

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p9

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, p9

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    move-object/from16 v0, p9

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    move-object/from16 v0, p9

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v11

    move-object/from16 v0, p9

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p10

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, p10

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    move-object/from16 v0, p10

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    move-object/from16 v0, p10

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v11

    move-object/from16 v0, p10

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return v3

    :sswitch_0
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_1
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Rect;->setEmpty()V

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v5, Landroid/graphics/Rect;

    const/16 v3, -0x2710

    const/16 v6, -0x2710

    const/16 v8, 0x2710

    const/16 v9, 0x2710

    invoke-direct {v5, v3, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v5, "tmpFrame":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    sget-object v3, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    invoke-direct {v4, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v4, "parentFrame":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v7, "contentFrame":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v10, "stableFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/PhoneWindowManager;->getContentRectLw(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mStatusBarHeight:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mDisplayHeight:I

    if-eq v3, v6, :cond_2

    sget-object v3, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v6, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v3, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    if-ne v3, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarVisible()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v3, v6

    iput v3, v7, Landroid/graphics/Rect;->top:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getScaleFactor()Landroid/graphics/PointF;

    move-result-object v24

    .local v24, "scaleFactor":Landroid/graphics/PointF;
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    move-object/from16 v0, v24

    iget v6, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .end local v24    # "scaleFactor":Landroid/graphics/PointF;
    :cond_2
    const/4 v11, 0x0

    move-object/from16 v3, p1

    move-object v6, v5

    move-object v8, v5

    move-object/from16 v9, p10

    invoke-interface/range {v3 .. v11}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .end local v4    # "parentFrame":Landroid/graphics/Rect;
    .end local v5    # "tmpFrame":Landroid/graphics/Rect;
    .end local v7    # "contentFrame":Landroid/graphics/Rect;
    .end local v10    # "stableFrame":Landroid/graphics/Rect;
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_3
    sget-object v12, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v13, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v14, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v15, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v16, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v18, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    const/16 v19, 0x0

    move-object/from16 v11, p1

    move-object/from16 v17, p10

    invoke-interface/range {v11 .. v19}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_2

    :sswitch_2
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p10

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :sswitch_3
    const/4 v3, 0x0

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mDisplayWidth:I

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mDisplayHeight:I

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p10

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :sswitch_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mDisplayWidth:I

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mDisplayHeight:I

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p10

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaLeft:I

    move/from16 v22, v0

    .local v22, "deltaLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaRight:I

    move/from16 v23, v0

    .local v23, "deltaRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaBottom:I

    move/from16 v21, v0

    .local v21, "deltaBottom":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->hasSubWindow()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->getCocktailBarFrame(Landroid/view/WindowManagerPolicy$WindowState;Z)Landroid/graphics/Rect;

    move-result-object v20

    .local v20, "cocktailFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaLeft:I

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaLeft:I

    move/from16 v22, v0

    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaRight:I

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaRight:I

    move/from16 v23, v0

    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaBottom:I

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailDeltaBottom:I

    move/from16 v21, v0

    .end local v20    # "cocktailFrame":Landroid/graphics/Rect;
    :cond_4
    :goto_5
    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v3, v22

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int v8, v8, v23

    move-object/from16 v0, p5

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int v9, v9, v21

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v3, v22

    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int v8, v8, v23

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int v9, v9, v21

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v3, v22

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int v8, v8, v23

    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int v9, v9, v21

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p8

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v3, v22

    move-object/from16 v0, p8

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int v8, v8, v23

    move-object/from16 v0, p8

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int v9, v9, v21

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p9

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v3, v22

    move-object/from16 v0, p9

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p9

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int v8, v8, v23

    move-object/from16 v0, p9

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int v9, v9, v21

    move-object/from16 v0, p9

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p3

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v3, v6, :cond_0

    move-object/from16 v0, p10

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v3, v22

    move-object/from16 v0, p10

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p10

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int v8, v8, v23

    move-object/from16 v0, p10

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int v9, v9, v21

    move-object/from16 v0, p10

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .restart local v20    # "cocktailFrame":Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    goto/16 :goto_4

    :cond_7
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    goto/16 :goto_5

    .end local v20    # "cocktailFrame":Landroid/graphics/Rect;
    .end local v21    # "deltaBottom":I
    .end local v22    # "deltaLeft":I
    .end local v23    # "deltaRight":I
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    if-ne v3, v6, :cond_0

    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move-object/from16 v0, p5

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v11

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v11

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    move-object/from16 v0, p7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v11

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p8

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p8

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move-object/from16 v0, p8

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v11

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p9

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p9

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    move-object/from16 v0, p9

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move-object/from16 v0, p9

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v11

    move-object/from16 v0, p9

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p10

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget-object v6, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p10

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sget-object v8, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    move-object/from16 v0, p10

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sget-object v9, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move-object/from16 v0, p10

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v11, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v11

    move-object/from16 v0, p10

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_9
    invoke-interface/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p10

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p10

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p10

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p10

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p8

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p10

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p3

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/4 v3, 0x1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_1
        0x7d0 -> :sswitch_2
        0x7d6 -> :sswitch_4
        0x7db -> :sswitch_5
        0x7dc -> :sswitch_5
        0x7dd -> :sswitch_3
        0x7ed -> :sswitch_3
        0x832 -> :sswitch_3
        0x8ac -> :sswitch_0
        0x8ad -> :sswitch_3
        0x8ae -> :sswitch_3
        0x8b6 -> :sswitch_3
        0x8ca -> :sswitch_3
        0x8cf -> :sswitch_3
        0x8d4 -> :sswitch_3
        0x8e8 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x62 -> :sswitch_6
        0x7d4 -> :sswitch_7
        0x7db -> :sswitch_6
        0x7dc -> :sswitch_6
        0x8e8 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x8ac
        :pswitch_0
    .end packed-switch
.end method

.method public needForceHide(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x62

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mFocusedFloatingSubWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, -0x7

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    :cond_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    const-string v0, "CocktailPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COCKTAIL BAR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iput-object p1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    const-string v0, "CocktailPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COCKTAIL BAR BACKGROUND : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8ac
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    iput-object v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->setWillBeHideBlockMain(Z)V

    iput-object v2, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method public requestEdgeScreenWakeup(ZII)V
    .locals 4
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mEdgeScreenWakeupReason:I

    if-ne v1, p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iput p3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mEdgeScreenWakeupReason:I

    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, p2, p3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public requestTransientCocktailBar()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "CocktailPhoneWindowManager"

    const-string v2, "Not showing transient bar, becuase Factory mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateCocktailBarVisibility(I)V

    goto :goto_0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_c

    iget v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBarDirection:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-eq p2, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-ne p2, v4, :cond_a

    :cond_0
    const v0, 0x10a0025

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-eq p2, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-ne p2, v4, :cond_2

    :cond_1
    const v0, 0x10a0027

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-eq p2, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-ne p2, v3, :cond_c

    :cond_3
    const v0, 0x10a0026

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-eq p2, v2, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-ne p2, v4, :cond_5

    :cond_4
    const v0, 0x10a0023

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-eq p2, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-ne p2, v3, :cond_c

    :cond_6
    const v0, 0x10a0022

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-eq p2, v2, :cond_7

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-ne p2, v4, :cond_8

    :cond_7
    const v0, 0x10a0021

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-eq p2, v1, :cond_9

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-ne p2, v3, :cond_c

    :cond_9
    const v0, 0x10a0020

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-eq p2, v1, :cond_b

    iget-object v0, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-ne p2, v3, :cond_c

    :cond_b
    const v0, 0x10a0024

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateCocktailBarVisibility(Z)Z
    .locals 6
    .param p1, "visibility"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .local v0, "changes":Z
    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    if-eq v3, p1, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iput-boolean p1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    const-string v3, "CocktailPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCocktailBarVisibility : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method public updateGripState(ZI)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "delay"    # I

    .prologue
    const/4 v3, 0x2

    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public windowTypeToLayerLw(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x1b

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x1c

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8ac
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
