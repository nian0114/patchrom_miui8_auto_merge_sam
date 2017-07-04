.class Lcom/android/server/policy/PhoneWindowManager$11;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 2761
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDebug()V
    .locals 0

    .prologue
    .line 2806
    return-void
.end method

.method public onDown()V
    .locals 1

    .prologue
    .line 2809
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->onTouchStart()V

    .line 2810
    return-void
.end method

.method public onFling(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_0

    .line 2799
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 2802
    :cond_0
    return-void
.end method

.method public onSwipeCocktail(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2842
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 2844
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mCocktailPhoneWindowManager:Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3500(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/cocktail/CocktailPhoneWindowManager;->requestTransientCocktailBar()V

    .line 2847
    :cond_1
    return-void
.end method

.method public onSwipeFromBottom()V
    .locals 2

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_0

    .line 2783
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$3100(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2786
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mCocktail180RotationEnabled:I
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3200(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mCurrentDisplayRotation:I
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3300(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2787
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2789
    :cond_1
    return-void
.end method

.method public onSwipeFromRight()V
    .locals 2

    .prologue
    .line 2792
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-nez v0, :cond_0

    .line 2793
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$3100(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2795
    :cond_0
    return-void
.end method

.method public onSwipeFromTop()V
    .locals 2

    .prologue
    .line 2764
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 2767
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2900(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->getLongPressedMinimizeIcon()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2779
    :cond_0
    :goto_0
    return-void

    .line 2774
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mForceHideStatusBarForCocktail:Z
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3000(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2775
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$3100(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0
.end method

.method public onSwipeFromTop(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2851
    return-void
.end method

.method public onSwipeLeftCenterLeft()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2819
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mEasyOneHandEnabled:I
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$3400(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v1

    if-lez v1, :cond_0

    .line 2820
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x38

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2821
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2822
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2825
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onSwipeRightCenterRight()V
    .locals 4

    .prologue
    .line 2829
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mEasyOneHandEnabled:I
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$3400(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v1

    if-lez v1, :cond_0

    .line 2830
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x38

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2831
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2832
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2835
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onUpOrCancel()V
    .locals 1

    .prologue
    .line 2813
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->onTouchEnd()V

    .line 2814
    return-void
.end method
