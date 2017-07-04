.class final Lcom/android/server/wm/WindowManagerService$LocalService;
.super Landroid/view/WindowManagerInternal;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .prologue
    .line 20502
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/view/WindowManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "x1"    # Lcom/android/server/wm/WindowManagerService$1;

    .prologue
    .line 20502
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$LocalService;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method


# virtual methods
.method public addWindowToken(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "type"    # I

    .prologue
    .line 20731
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->addWindowToken(Landroid/os/IBinder;I)V

    .line 20732
    return-void
.end method

.method public getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 20536
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 20537
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 20538
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_0

    .line 20539
    monitor-exit v3

    move-object v0, v2

    .line 20558
    :goto_0
    return-object v0

    .line 20541
    :cond_0
    const/4 v0, 0x0

    .line 20549
    .local v0, "spec":Landroid/view/MagnificationSpec;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v4, :cond_1

    .line 20550
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 20553
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget v4, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    .line 20554
    monitor-exit v3

    move-object v0, v2

    goto :goto_0

    .line 20556
    :cond_3
    if-nez v0, :cond_4

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 20557
    :goto_1
    iget v2, v0, Landroid/view/MagnificationSpec;->scale:F

    iget v4, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v4

    iput v2, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 20558
    monitor-exit v3

    goto :goto_0

    .line 20559
    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    .end local v1    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 20556
    .restart local v0    # "spec":Landroid/view/MagnificationSpec;
    .restart local v1    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_4
    :try_start_1
    invoke-static {v0}, Landroid/view/MagnificationSpec;->obtain(Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public getFocusedAppToken()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 20800
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 20801
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v0}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 20802
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFocusedWindowToken()Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 20622
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 20623
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$3200(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 20624
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 20625
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    monitor-exit v2

    .line 20627
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 20628
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic getInputMethodTarget()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    .line 20502
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$LocalService;->getInputMethodTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodTarget()Lcom/android/server/wm/WindowState;
    .locals 1

    .prologue
    .line 20768
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public getStackId(Landroid/os/IBinder;)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20789
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 20790
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 20791
    .local v0, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    move v3, v1

    :goto_0
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v5, :cond_1

    :goto_1
    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_2

    .line 20792
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    monitor-exit v4

    .line 20795
    :goto_2
    return v1

    :cond_0
    move v3, v2

    .line 20791
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 20794
    :cond_2
    monitor-exit v4

    .line 20795
    const/4 v1, -0x1

    goto :goto_2

    .line 20794
    .end local v0    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 20643
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 20644
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 20645
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 20646
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 20650
    :goto_0
    monitor-exit v2

    .line 20651
    return-void

    .line 20648
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 20650
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCascade(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 20781
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 20782
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 20783
    .local v0, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 20784
    .end local v0    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isGrantPermissionAppToken(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 20773
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 20774
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 20775
    .local v0, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mIsGrantPermissionApp:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 20776
    .end local v0    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 20633
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public registerAppTransitionListener(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/WindowManagerInternal$AppTransitionListener;

    .prologue
    .line 20754
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 20755
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V

    .line 20756
    monitor-exit v1

    .line 20757
    return-void

    .line 20756
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeWindowToken(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "removeWindows"    # Z

    .prologue
    .line 20736
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 20737
    if-eqz p2, :cond_1

    .line 20738
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 20740
    .local v0, "wtoken":Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    .line 20741
    const-string v1, "WindowManager"

    const-string v3, "Tried to remove window which has appWindowToken"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20742
    monitor-exit v2

    .line 20750
    .end local v0    # "wtoken":Lcom/android/server/wm/WindowToken;
    :goto_0
    return-void

    .line 20744
    .restart local v0    # "wtoken":Lcom/android/server/wm/WindowToken;
    :cond_0
    if-eqz v0, :cond_1

    .line 20745
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->removeAllWindows()V

    .line 20748
    .end local v0    # "wtoken":Lcom/android/server/wm/WindowToken;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->removeWindowToken(Landroid/os/IBinder;)V

    .line 20749
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestTraversalFromDisplayManager()V
    .locals 1

    .prologue
    .line 20507
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 20508
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .prologue
    .line 20617
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 20618
    return-void
.end method

.method public setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;I)V
    .locals 5
    .param p1, "callbacks"    # Landroid/view/WindowManagerInternal$MagnificationCallbacks;
    .param p2, "displayId"    # I

    .prologue
    .line 20564
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 20578
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-nez v0, :cond_0

    .line 20579
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Lcom/android/server/wm/AccessibilityController;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/wm/AccessibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 20582
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController;->setMagnificationCallbacksLocked(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    .line 20583
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacksLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20584
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 20587
    :cond_1
    monitor-exit v1

    .line 20588
    return-void

    .line 20587
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMagnificationSpec(Landroid/view/MagnificationSpec;I)V
    .locals 3
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .param p2, "displayId"    # I

    .prologue
    .line 20512
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 20522
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_1

    .line 20523
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 20528
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20529
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 20530
    invoke-virtual {p1}, Landroid/view/MagnificationSpec;->recycle()V

    .line 20532
    :cond_0
    return-void

    .line 20525
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Magnification callbacks not set!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20528
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setScreenRotationAnimation(II)V
    .locals 9
    .param p1, "displayId"    # I
    .param p2, "layerStack"    # I

    .prologue
    .line 20815
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v1

    .line 20816
    .local v1, "animation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20817
    iget v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mLayerStack:I

    if-eq v2, p2, :cond_1

    .line 20818
    iput p2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mLayerStack:I

    .line 20819
    iget v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRotations:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {v2, p2}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v3, v2, :cond_0

    .line 20820
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 20821
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRotations:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-virtual {v2, p2}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-wide/16 v4, 0x2710

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v6

    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v8, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationInTransaction(ILandroid/view/SurfaceSession;JFII)Z

    .line 20826
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 20828
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mIsInputMethodDisplayUsed:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$3300(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20829
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    .line 20832
    :cond_2
    return-void
.end method

.method public setTouchExplorationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 20809
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->setTouchExplorationEnabled(Z)V

    .line 20810
    return-void
.end method

.method public setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;I)V
    .locals 4
    .param p1, "callback"    # Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;
    .param p2, "displayId"    # I

    .prologue
    .line 20604
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-nez v0, :cond_0

    .line 20605
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/AccessibilityController;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/AccessibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 20608
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController;->setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    .line 20609
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacksLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20610
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 20613
    :cond_1
    return-void
.end method

.method public showGlobalActions()V
    .locals 1

    .prologue
    .line 20638
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->showGlobalActions()V

    .line 20639
    return-void
.end method

.method public showStatusBarByNotification()V
    .locals 1

    .prologue
    .line 20761
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->showStatusBarByNotification()V

    .line 20762
    return-void
.end method

.method public waitForAllWindowsDrawn(Ljava/lang/Runnable;JI)V
    .locals 16
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J
    .param p4, "displayId"    # I

    .prologue
    .line 20655
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 20656
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 20660
    const/4 v9, 0x2

    move/from16 v0, p4

    if-ne v0, v9, :cond_4

    .line 20661
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v8

    .line 20666
    .local v8, "windows":Lcom/android/server/wm/WindowList;
    :goto_0
    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .local v7, "winNdx":I
    :goto_1
    if-ltz v7, :cond_7

    .line 20667
    invoke-virtual {v8, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 20668
    .local v6, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v11, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v9, v11}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    .line 20670
    .local v3, "isForceHiding":Z
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7d0

    if-ne v9, v11, :cond_0

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 20671
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/server/wm/WindowStateAnimator;->mAnimationSkipRequested:Z

    .line 20676
    :cond_0
    const/4 v4, 0x0

    .line 20677
    .local v4, "waitForWindowDrawn":Z
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x8ac

    if-ne v9, v11, :cond_1

    .line 20678
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v2

    .line 20679
    .local v2, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktaiBarWakeUpState()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 20680
    const/4 v4, 0x1

    .line 20686
    .end local v2    # "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :cond_1
    const/4 v5, 0x0

    .line 20687
    .local v5, "waitForWindowRedrawnFromCoverUI":Z
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->getCoverStateSwitch()Z

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_2

    .line 20689
    const/4 v5, 0x1

    .line 20690
    sget-boolean v9, Lcom/android/server/wm/WindowManagerService;->DEBUG_SCREEN_ON:Z

    if-eqz v9, :cond_2

    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Wait to relayouting from CoverUI : win="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20694
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    .line 20666
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 20663
    .end local v3    # "isForceHiding":Z
    .end local v4    # "waitForWindowDrawn":Z
    .end local v5    # "waitForWindowRedrawnFromCoverUI":Z
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    .end local v7    # "winNdx":I
    .end local v8    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v8

    .restart local v8    # "windows":Lcom/android/server/wm/WindowList;
    goto/16 :goto_0

    .line 20702
    .restart local v3    # "isForceHiding":Z
    .restart local v4    # "waitForWindowDrawn":Z
    .restart local v5    # "waitForWindowRedrawnFromCoverUI":Z
    .restart local v6    # "win":Lcom/android/server/wm/WindowState;
    .restart local v7    # "winNdx":I
    :cond_5
    sget-boolean v9, Lcom/android/server/wm/WindowManagerService;->DEBUG_SCREEN_ON:Z

    if-eqz v9, :cond_6

    .line 20703
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "waitForAllWindowsDrawn()> adding win="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20706
    :cond_6
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v11, 0x1

    iput v11, v9, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 20708
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 20709
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20712
    if-eqz v3, :cond_3

    .line 20717
    .end local v3    # "isForceHiding":Z
    .end local v4    # "waitForWindowDrawn":Z
    .end local v5    # "waitForWindowRedrawnFromCoverUI":Z
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 20719
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v11, 0x18

    invoke-virtual {v9, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 20720
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 20721
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 20726
    :goto_2
    monitor-exit v10

    .line 20727
    return-void

    .line 20723
    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v11, 0x18

    move-wide/from16 v0, p2

    invoke-virtual {v9, v11, v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 20724
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    goto :goto_2

    .line 20726
    .end local v7    # "winNdx":I
    .end local v8    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method
