.class public Lcom/android/server/policy/DisplayWindowPolicy;
.super Ljava/lang/Object;
.source "DisplayWindowPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DualScreenWindowPolicy"


# instance fields
.field final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field final mDisplayId:I

.field mForceClearedSystemUiFlags:I

.field mForceStatusBar:Z

.field mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

.field mKeyguardHidden:Z

.field volatile mKeyguardOccluded:Z

.field mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

.field mLandscapeRotation:I

.field mLastFocusNeedsMenu:Z

.field mLastSystemUiFlags:I

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mPortraitRotation:I

.field mResettingSystemUiFlags:I

.field mSeascapeRotation:I

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mUpsideDownRotation:I

.field mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

.field final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(ILandroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    iput v1, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mResettingSystemUiFlags:I

    iput v1, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mForceClearedSystemUiFlags:I

    iput-boolean v1, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mLastFocusNeedsMenu:Z

    iput-object v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    new-instance v0, Lcom/android/server/policy/DisplayWindowPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DisplayWindowPolicy$1;-><init>(Lcom/android/server/policy/DisplayWindowPolicy;)V

    iput-object v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    iput v1, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mLandscapeRotation:I

    iput v1, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mSeascapeRotation:I

    iput v1, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mPortraitRotation:I

    iput v1, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mUpsideDownRotation:I

    iput p1, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mDisplayId:I

    iput-object p2, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyguardScrim="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mLastSystemUiFlags:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_5

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWinShowWhenLocked="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/DisplayWindowPolicy;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
