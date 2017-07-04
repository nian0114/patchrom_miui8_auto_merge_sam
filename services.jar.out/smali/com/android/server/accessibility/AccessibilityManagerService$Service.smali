.class Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Service"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;
    }
.end annotation


# instance fields
.field mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field mComponentName:Landroid/content/ComponentName;

.field public mEventDispatchHandler:Landroid/os/Handler;

.field mEventTypes:I

.field mFeedbackType:I

.field mFetchFlags:I

.field mId:I

.field mIntent:Landroid/content/Intent;

.field public mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

.field mIsAutomation:Z

.field mIsDefault:Z

.field final mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

.field mNotificationTimeout:J

.field final mOverlayWindowToken:Landroid/os/IBinder;

.field mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field mRequestEnhancedWebAccessibility:Z

.field mRequestFilterKeyEvents:Z

.field mRequestTouchExplorationMode:Z

.field final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field mRetrieveInteractiveWindows:Z

.field mService:Landroid/os/IBinder;

.field mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field final mUserId:I

.field mWasConnectedAndDied:Z

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 6
    .param p2, "userId"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    const/4 v5, 0x0

    .line 3721
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>()V

    .line 3660
    iput v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    .line 3672
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    .line 3696
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mOverlayWindowToken:Landroid/os/IBinder;

    .line 3699
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    .line 3702
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    .line 3708
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventDispatchHandler:Landroid/os/Handler;

    .line 3717
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    .line 3722
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    .line 3723
    invoke-virtual {p4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3724
    # operator++ for: Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3708()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    .line 3725
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    .line 3726
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 3727
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3800()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    .line 3728
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v0, :cond_0

    .line 3729
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    .line 3730
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.client_label"

    const v2, 0x1040441

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3732
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.client_intent"

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3735
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 3736
    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p1, "x1"    # I

    .prologue
    .line 3655
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyAccessibilityEventInternal(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p1, "x1"    # I

    .prologue
    .line 3655
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyGestureInternal(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/KeyEvent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p1, "x1"    # Landroid/view/KeyEvent;
    .param p2, "x2"    # I

    .prologue
    .line 3655
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyKeyEventInternal(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    .line 3655
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyClearAccessibilityCacheInternal()V

    return-void
.end method

.method private expandNotifications()V
    .locals 5

    .prologue
    .line 4584
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4586
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "statusbar"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 4588
    .local v0, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expandNotificationsPanel()V

    .line 4590
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4591
    return-void
.end method

.method private expandQuickSettings()V
    .locals 5

    .prologue
    .line 4594
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4596
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "statusbar"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 4598
    .local v0, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expandSettingsPanel()V

    .line 4600
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4601
    return-void
.end method

.method private getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .locals 2
    .param p1, "windowId"    # I

    .prologue
    .line 4625
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 4626
    .local v0, "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    if-nez v0, :cond_0

    .line 4627
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 4629
    .restart local v0    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :cond_0
    if-eqz v0, :cond_1

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->access$4600(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4630
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->access$4600(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    .line 4635
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyAccessibilityEventInternal(I)V
    .locals 6
    .param p1, "eventType"    # I

    .prologue
    .line 4459
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4460
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 4464
    .local v1, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-nez v1, :cond_0

    .line 4465
    monitor-exit v4

    .line 4508
    :goto_0
    return-void

    .line 4468
    :cond_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 4485
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-nez v0, :cond_1

    .line 4486
    monitor-exit v4

    goto :goto_0

    .line 4496
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4489
    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v1    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4490
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4491
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setConnectionId(I)V

    .line 4495
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V

    .line 4496
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4499
    :try_start_2
    invoke-interface {v1, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4506
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 4493
    :cond_2
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 4503
    :catch_0
    move-exception v2

    .line 4504
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string v3, "AccessibilityManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error during sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4506
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    throw v3
.end method

.method private notifyClearAccessibilityCacheInternal()V
    .locals 4

    .prologue
    .line 4546
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4547
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 4548
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4549
    if-eqz v0, :cond_0

    .line 4551
    :try_start_1
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->clearAccessibilityCache()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4557
    :cond_0
    :goto_0
    return-void

    .line 4548
    .end local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 4552
    .restart local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catch_0
    move-exception v1

    .line 4553
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManagerService"

    const-string v3, "Error during requesting accessibility info cache to be cleared."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyGestureInternal(I)V
    .locals 5
    .param p1, "gestureId"    # I

    .prologue
    .line 4527
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4528
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 4529
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4530
    if-eqz v0, :cond_0

    .line 4532
    :try_start_1
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onGesture(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4538
    :cond_0
    :goto_0
    return-void

    .line 4529
    .end local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 4533
    .restart local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catch_0
    move-exception v1

    .line 4534
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during sending gesture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyKeyEventInternal(Landroid/view/KeyEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 4541
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->notifyKeyEvent(Landroid/view/KeyEvent;I)V

    .line 4542
    return-void
.end method

.method private openRecents()V
    .locals 6

    .prologue
    .line 4604
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4606
    .local v2, "token":J
    const-string/jumbo v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 4609
    .local v1, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4614
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4615
    return-void

    .line 4610
    :catch_0
    move-exception v0

    .line 4611
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "AccessibilityManagerService"

    const-string v5, "Error toggling recent apps."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resolveAccessibilityWindowIdForFindFocusLocked(II)I
    .locals 1
    .param p1, "windowId"    # I
    .param p2, "focusType"    # I

    .prologue
    .line 4646
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    .line 4647
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    iget p1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 4656
    .end local p1    # "windowId":I
    :cond_0
    :goto_0
    return p1

    .line 4649
    .restart local p1    # "windowId":I
    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 4650
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 4651
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    iget p1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    goto :goto_0

    .line 4652
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 4653
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    iget p1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    goto :goto_0
.end method

.method private resolveAccessibilityWindowIdLocked(I)I
    .locals 1
    .param p1, "accessibilityWindowId"    # I

    .prologue
    .line 4639
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 4640
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getActiveWindowId()I

    move-result p1

    .line 4642
    .end local p1    # "accessibilityWindowId":I
    :cond_0
    return p1
.end method

.method private sendDownAndUpKeyEvents(I)V
    .locals 19
    .param p1, "keyCode"    # I

    .prologue
    .line 4560
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 4563
    .local v16, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 4564
    .local v2, "downTime":J
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/16 v13, 0x101

    const/4 v14, 0x0

    move-wide v4, v2

    move/from16 v7, p1

    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v15

    .line 4567
    .local v15, "down":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v15, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 4569
    invoke-virtual {v15}, Landroid/view/KeyEvent;->recycle()V

    .line 4572
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4573
    .local v4, "upTime":J
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/16 v13, 0x101

    const/4 v14, 0x0

    move/from16 v7, p1

    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v18

    .line 4576
    .local v18, "up":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 4578
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    .line 4580
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4581
    return-void
.end method

.method private showGlobalActions()V
    .locals 1

    .prologue
    .line 4618
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/WindowManagerInternal;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->showGlobalActions()V

    .line 4619
    return-void
.end method


# virtual methods
.method public bindLocked()Z
    .locals 6

    .prologue
    .line 3779
    const-string v1, "AccessibilityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " bindLocked().mComponentName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 3781
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v1, :cond_1

    .line 3782
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const v3, 0x2000001

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, p0, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3786
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3802
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 3789
    :cond_1
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3790
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationServiceClient:Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    .line 3791
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v1

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 3800
    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1002(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    goto :goto_0
.end method

.method public binderDied()V
    .locals 4

    .prologue
    .line 4397
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4402
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isConnectedLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4403
    monitor-exit v2

    .line 4422
    :goto_0
    return-void

    .line 4405
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mWasConnectedAndDied:Z

    .line 4406
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->flush()V

    .line 4407
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 4409
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v1, p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3900(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 4410
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resetLocked()V

    .line 4411
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-eqz v1, :cond_1

    .line 4414
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4415
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4416
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->destroyUiAutomationService()V

    .line 4417
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4418
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 4421
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canReceiveEventsLocked()Z
    .locals 1

    .prologue
    .line 3829
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRetrieveInteractiveWindowsLocked()Z
    .locals 1

    .prologue
    .line 3845
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRetrieveInteractiveWindows:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4331
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "dump"

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 4332
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4333
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service[label="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", componantname="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", feedbackType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    invoke-static {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", capabilities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eventTypes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", notificationTimeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4342
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4343
    monitor-exit v1

    .line 4344
    return-void

    .line 4343
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z
    .locals 18
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4078
    const/4 v2, 0x0

    .line 4079
    .local v2, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v5

    .line 4080
    .local v5, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4084
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    const/4 v6, -0x2

    invoke-virtual {v3, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v16

    .line 4087
    .local v16, "resolvedUserId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    move/from16 v0, v16

    if-eq v0, v3, :cond_1

    .line 4088
    const/4 v3, 0x0

    monitor-exit v4

    .line 4126
    :cond_0
    :goto_0
    return v3

    .line 4090
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v17

    .line 4091
    .local v17, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v13

    .line 4093
    .local v13, "permissionGranted":Z
    if-nez v13, :cond_2

    .line 4094
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_0

    .line 4106
    .end local v13    # "permissionGranted":Z
    .end local v16    # "resolvedUserId":I
    .end local v17    # "resolvedWindowId":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4096
    .restart local v13    # "permissionGranted":Z
    .restart local v16    # "resolvedUserId":I
    .restart local v17    # "resolvedWindowId":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    .line 4097
    if-nez v2, :cond_3

    .line 4098
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_0

    .line 4101
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4103
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V

    .line 4104
    const/4 v5, 0x0

    .line 4106
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4107
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 4108
    .local v9, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4109
    .local v14, "identityToken":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v17

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
    invoke-static {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v12

    .line 4111
    .local v12, "spec":Landroid/view/MagnificationSpec;
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    or-int v8, v3, p6

    move-wide/from16 v3, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v10, p7

    invoke-interface/range {v2 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4114
    const/4 v3, 0x1

    .line 4120
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4122
    if-eqz v5, :cond_0

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4123
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V

    goto :goto_0

    .line 4115
    :catch_0
    move-exception v3

    .line 4120
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4122
    if-eqz v5, :cond_5

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4123
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V

    .line 4126
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 4120
    :catchall_1
    move-exception v3

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4122
    if-eqz v5, :cond_6

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4123
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V

    :cond_6
    throw v3
.end method

.method public findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 19
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4021
    const/4 v3, 0x0

    .line 4022
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v7

    .line 4023
    .local v7, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4027
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    const/4 v6, -0x2

    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v15

    .line 4030
    .local v15, "resolvedUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v4

    if-eq v15, v4, :cond_1

    .line 4031
    const/4 v4, 0x0

    monitor-exit v5

    .line 4069
    :cond_0
    :goto_0
    return v4

    .line 4033
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v18

    .line 4034
    .local v18, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v2

    .line 4036
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_2

    .line 4037
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_0

    .line 4049
    .end local v2    # "permissionGranted":Z
    .end local v15    # "resolvedUserId":I
    .end local v18    # "resolvedWindowId":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4039
    .restart local v2    # "permissionGranted":Z
    .restart local v15    # "resolvedUserId":I
    .restart local v18    # "resolvedWindowId":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v3

    .line 4040
    if-nez v3, :cond_3

    .line 4041
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_0

    .line 4044
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4046
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 4047
    const/4 v7, 0x0

    .line 4049
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4050
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 4051
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 4052
    .local v16, "identityToken":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v18

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
    invoke-static {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v14

    .line 4054
    .local v14, "spec":Landroid/view/MagnificationSpec;
    :try_start_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    invoke-interface/range {v3 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4057
    const/4 v4, 0x1

    .line 4063
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4065
    if-eqz v7, :cond_0

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4066
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    goto :goto_0

    .line 4058
    :catch_0
    move-exception v4

    .line 4063
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4065
    if-eqz v7, :cond_5

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4066
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 4069
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 4063
    :catchall_1
    move-exception v4

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4065
    if-eqz v7, :cond_6

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4066
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    :cond_6
    throw v4
.end method

.method public findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 19
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "viewIdResName"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3964
    const/4 v3, 0x0

    .line 3965
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v7

    .line 3966
    .local v7, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3970
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    const/4 v6, -0x2

    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v15

    .line 3973
    .local v15, "resolvedUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v4

    if-eq v15, v4, :cond_1

    .line 3974
    const/4 v4, 0x0

    monitor-exit v5

    .line 4012
    :cond_0
    :goto_0
    return v4

    .line 3976
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v18

    .line 3977
    .local v18, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v2

    .line 3979
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_2

    .line 3980
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_0

    .line 3992
    .end local v2    # "permissionGranted":Z
    .end local v15    # "resolvedUserId":I
    .end local v18    # "resolvedWindowId":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3982
    .restart local v2    # "permissionGranted":Z
    .restart local v15    # "resolvedUserId":I
    .restart local v18    # "resolvedWindowId":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v3

    .line 3983
    if-nez v3, :cond_3

    .line 3984
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_0

    .line 3987
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3989
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 3990
    const/4 v7, 0x0

    .line 3992
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3993
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 3994
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3995
    .local v16, "identityToken":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v18

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
    invoke-static {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v14

    .line 3997
    .local v14, "spec":Landroid/view/MagnificationSpec;
    :try_start_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    invoke-interface/range {v3 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4000
    const/4 v4, 0x1

    .line 4006
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4008
    if-eqz v7, :cond_0

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4009
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    goto :goto_0

    .line 4001
    :catch_0
    move-exception v4

    .line 4006
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4008
    if-eqz v7, :cond_5

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4009
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 4012
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 4006
    :catchall_1
    move-exception v4

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4008
    if-eqz v7, :cond_6

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4009
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    :cond_6
    throw v4
.end method

.method public findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 21
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "focusType"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4135
    const/4 v5, 0x0

    .line 4136
    .local v5, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v9

    .line 4137
    .local v9, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 4141
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    const/4 v8, -0x2

    invoke-virtual {v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v17

    .line 4144
    .local v17, "resolvedUserId":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v6

    move/from16 v0, v17

    if-eq v0, v6, :cond_1

    .line 4145
    const/4 v6, 0x0

    monitor-exit v7

    .line 4184
    :cond_0
    :goto_0
    return v6

    .line 4147
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdForFindFocusLocked(II)I

    move-result v20

    .line 4149
    .local v20, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v4

    .line 4151
    .local v4, "permissionGranted":Z
    if-nez v4, :cond_2

    .line 4152
    const/4 v6, 0x0

    monitor-exit v7

    goto :goto_0

    .line 4164
    .end local v4    # "permissionGranted":Z
    .end local v17    # "resolvedUserId":I
    .end local v20    # "resolvedWindowId":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 4154
    .restart local v4    # "permissionGranted":Z
    .restart local v17    # "resolvedUserId":I
    .restart local v20    # "resolvedWindowId":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v5

    .line 4155
    if-nez v5, :cond_3

    .line 4156
    const/4 v6, 0x0

    monitor-exit v7

    goto :goto_0

    .line 4159
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 4161
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    .line 4162
    const/4 v9, 0x0

    .line 4164
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4165
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 4166
    .local v13, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 4167
    .local v18, "identityToken":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v20

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
    invoke-static {v6, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v16

    .line 4169
    .local v16, "spec":Landroid/view/MagnificationSpec;
    :try_start_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-wide/from16 v14, p7

    invoke-interface/range {v5 .. v16}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4172
    const/4 v6, 0x1

    .line 4178
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4180
    if-eqz v9, :cond_0

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4181
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    goto :goto_0

    .line 4173
    :catch_0
    move-exception v6

    .line 4178
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4180
    if-eqz v9, :cond_5

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4181
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    .line 4184
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 4178
    :catchall_1
    move-exception v6

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4180
    if-eqz v9, :cond_6

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4181
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    :cond_6
    throw v6
.end method

.method public focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 19
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "direction"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4193
    const/4 v3, 0x0

    .line 4194
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v7

    .line 4195
    .local v7, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4199
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    const/4 v6, -0x2

    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v15

    .line 4202
    .local v15, "resolvedUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v4

    if-eq v15, v4, :cond_1

    .line 4203
    const/4 v4, 0x0

    monitor-exit v5

    .line 4241
    :cond_0
    :goto_0
    return v4

    .line 4205
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v18

    .line 4206
    .local v18, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v2

    .line 4208
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_2

    .line 4209
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_0

    .line 4221
    .end local v2    # "permissionGranted":Z
    .end local v15    # "resolvedUserId":I
    .end local v18    # "resolvedWindowId":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4211
    .restart local v2    # "permissionGranted":Z
    .restart local v15    # "resolvedUserId":I
    .restart local v18    # "resolvedWindowId":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v3

    .line 4212
    if-nez v3, :cond_3

    .line 4213
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_0

    .line 4216
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4218
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 4219
    const/4 v7, 0x0

    .line 4221
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4222
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 4223
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 4224
    .local v16, "identityToken":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v18

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
    invoke-static {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v14

    .line 4226
    .local v14, "spec":Landroid/view/MagnificationSpec;
    :try_start_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    invoke-interface/range {v3 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4229
    const/4 v4, 0x1

    .line 4235
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4237
    if-eqz v7, :cond_0

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4238
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    goto :goto_0

    .line 4230
    :catch_0
    move-exception v4

    .line 4235
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4237
    if-eqz v7, :cond_5

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4238
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 4241
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 4235
    :catchall_1
    move-exception v4

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4237
    if-eqz v7, :cond_6

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4238
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    :cond_6
    throw v4
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 2

    .prologue
    .line 3839
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3840
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    monitor-exit v1

    return-object v0

    .line 3841
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 7
    .param p1, "windowId"    # I

    .prologue
    const/4 v3, 0x0

    .line 3932
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->ensureWindowsAvailableTimed()V
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4200(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 3933
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3937
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    const/4 v6, -0x2

    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 3940
    .local v1, "resolvedUserId":I
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v4

    if-eq v1, v4, :cond_0

    .line 3941
    monitor-exit v5

    .line 3954
    :goto_0
    return-object v3

    .line 3943
    :cond_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    .line 3945
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_1

    .line 3946
    monitor-exit v5

    goto :goto_0

    .line 3955
    .end local v0    # "permissionGranted":Z
    .end local v1    # "resolvedUserId":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3948
    .restart local v0    # "permissionGranted":Z
    .restart local v1    # "resolvedUserId":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findWindowById(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-static {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    .line 3949
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v2, :cond_2

    .line 3950
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    .line 3951
    .local v3, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 3952
    monitor-exit v5

    goto :goto_0

    .line 3954
    .end local v3    # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getWindows()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3898
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->ensureWindowsAvailableTimed()V
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4200(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 3899
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 3903
    :try_start_0
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v7

    const/4 v9, -0x2

    invoke-virtual {v7, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 3906
    .local v2, "resolvedUserId":I
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v7

    if-eq v2, v7, :cond_0

    .line 3907
    monitor-exit v8

    .line 3926
    :goto_0
    return-object v6

    .line 3909
    :cond_0
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v1

    .line 3911
    .local v1, "permissionGranted":Z
    if-nez v1, :cond_1

    .line 3912
    monitor-exit v8

    goto :goto_0

    .line 3927
    .end local v1    # "permissionGranted":Z
    .end local v2    # "resolvedUserId":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 3914
    .restart local v1    # "permissionGranted":Z
    .restart local v2    # "resolvedUserId":I
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v7, :cond_2

    .line 3915
    monitor-exit v8

    goto :goto_0

    .line 3917
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3918
    .local v6, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 3919
    .local v5, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_3

    .line 3920
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3921
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    .line 3923
    .local v4, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-virtual {v4, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 3924
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3919
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3926
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v4    # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isConnectedLocked()Z
    .locals 1

    .prologue
    .line 4393
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public linkToOwnDeathLocked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4373
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4374
    return-void
.end method

.method public notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4430
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 4431
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 4435
    .local v0, "eventType":I
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 4436
    .local v2, "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    .line 4437
    .local v3, "oldEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4439
    move v4, v0

    .line 4440
    .local v4, "what":I
    if-eqz v3, :cond_0

    .line 4441
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4442
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 4445
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4446
    .local v1, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventDispatchHandler:Landroid/os/Handler;

    iget-wide v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    invoke-virtual {v5, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4447
    monitor-exit v6

    .line 4448
    return-void

    .line 4447
    .end local v0    # "eventType":I
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "oldEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v4    # "what":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public notifyClearAccessibilityNodeInfoCache()V
    .locals 2

    .prologue
    .line 4521
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->sendEmptyMessage(I)Z

    .line 4523
    return-void
.end method

.method public notifyGesture(I)V
    .locals 3
    .param p1, "gestureId"    # I

    .prologue
    .line 4511
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4513
    return-void
.end method

.method public notifyKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 4516
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4518
    return-void
.end method

.method public onAdded()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4352
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->linkToOwnDeathLocked()V

    .line 4353
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4355
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/WindowManagerInternal;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mOverlayWindowToken:Landroid/os/IBinder;

    const/16 v4, 0x7f0

    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4358
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4360
    return-void

    .line 4358
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onRemoved()V
    .locals 5

    .prologue
    .line 4363
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4365
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/WindowManagerInternal;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mOverlayWindowToken:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4367
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4369
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unlinkToOwnDeathLocked()V

    .line 4370
    return-void

    .line 4367
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 3874
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3875
    :try_start_0
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    .line 3876
    invoke-static {p2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 3877
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 3878
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->addServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v2, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 3879
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mWasConnectedAndDied:Z

    if-eqz v2, :cond_1

    .line 3880
    :cond_0
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3881
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mWasConnectedAndDied:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3883
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mOverlayWindowToken:Landroid/os/IBinder;

    invoke-interface {v2, p0, v4, v5}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V

    .line 3884
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3893
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 3894
    return-void

    .line 3885
    :catch_0
    move-exception v0

    .line 3886
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while setting connection for service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3888
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V

    goto :goto_0

    .line 3893
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3891
    .restart local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 4349
    return-void
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 18
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "action"    # I
    .param p5, "arguments"    # Landroid/os/Bundle;
    .param p6, "interactionId"    # I
    .param p7, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p8, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4250
    const/4 v3, 0x0

    .line 4251
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4255
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    const/4 v6, -0x2

    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v16

    .line 4258
    .local v16, "resolvedUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v4

    move/from16 v0, v16

    if-eq v0, v4, :cond_0

    .line 4259
    const/4 v4, 0x0

    monitor-exit v5

    .line 4285
    :goto_0
    return v4

    .line 4261
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v17

    .line 4262
    .local v17, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v2

    .line 4264
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_1

    .line 4265
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_0

    .line 4272
    .end local v2    # "permissionGranted":Z
    .end local v16    # "resolvedUserId":I
    .end local v17    # "resolvedWindowId":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4267
    .restart local v2    # "permissionGranted":Z
    .restart local v16    # "resolvedUserId":I
    .restart local v17    # "resolvedWindowId":I
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v3

    .line 4268
    if-nez v3, :cond_2

    .line 4269
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_0

    .line 4272
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4273
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 4274
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4276
    .local v14, "identityToken":J
    :try_start_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v12, p8

    invoke-interface/range {v3 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4283
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4285
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 4278
    :catch_0
    move-exception v4

    .line 4283
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public performGlobalAction(I)Z
    .locals 8
    .param p1, "action"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4290
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4294
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 4297
    .local v2, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v6

    if-eq v2, v6, :cond_0

    .line 4298
    monitor-exit v5

    .line 4325
    :goto_0
    return v3

    .line 4300
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4301
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4303
    .local v0, "identity":J
    packed-switch p1, :pswitch_data_0

    .line 4325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 4300
    .end local v0    # "identity":J
    .end local v2    # "resolvedUserId":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 4305
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedUserId":I
    :pswitch_0
    const/4 v3, 0x4

    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->sendDownAndUpKeyEvents(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    goto :goto_0

    .line 4308
    :pswitch_1
    const/4 v3, 0x3

    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->sendDownAndUpKeyEvents(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    goto :goto_0

    .line 4311
    :pswitch_2
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->openRecents()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    goto :goto_0

    .line 4314
    :pswitch_3
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->expandNotifications()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    goto :goto_0

    .line 4317
    :pswitch_4
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->expandQuickSettings()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    goto :goto_0

    .line 4320
    :pswitch_5
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->showGlobalActions()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 4325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public resetLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4384
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4388
    :goto_0
    iput-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    .line 4389
    iput-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 4390
    return-void

    .line 4385
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3739
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    .line 3740
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    .line 3741
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 3742
    .local v0, "packageNames":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3743
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3745
    :cond_0
    iget-wide v4, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    .line 3746
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    .line 3748
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_2

    .line 3750
    :cond_1
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 3751
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    .line 3757
    :cond_2
    :goto_1
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 3758
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    .line 3763
    :goto_2
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    .line 3765
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestEnhancedWebAccessibility:Z

    .line 3767
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestFilterKeyEvents:Z

    .line 3769
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_9

    :goto_6
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRetrieveInteractiveWindows:Z

    .line 3771
    return-void

    :cond_3
    move v1, v3

    .line 3746
    goto :goto_0

    .line 3753
    :cond_4
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    goto :goto_1

    .line 3760
    :cond_5
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    goto :goto_2

    :cond_6
    move v1, v3

    .line 3763
    goto :goto_3

    :cond_7
    move v1, v3

    .line 3765
    goto :goto_4

    :cond_8
    move v1, v3

    .line 3767
    goto :goto_5

    :cond_9
    move v2, v3

    .line 3769
    goto :goto_6
.end method

.method public setOnKeyEventResult(ZI)V
    .locals 1
    .param p1, "handled"    # Z
    .param p2, "sequence"    # I

    .prologue
    .line 3834
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->setOnKeyEventResult(ZI)V

    .line 3835
    return-void
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 3851
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3853
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3857
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 3858
    .local v2, "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v2, :cond_0

    .line 3859
    invoke-virtual {v2, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->updateDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 3860
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 3864
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 3865
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 3866
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3868
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3870
    return-void

    .line 3862
    .end local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    goto :goto_0

    .line 3866
    .end local v2    # "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3868
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public unbindLocked()Z
    .locals 4

    .prologue
    .line 3812
    const-string v1, "AccessibilityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " unbindLocked().mService : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 3814
    const/4 v1, 0x0

    .line 3825
    :goto_0
    return v1

    .line 3816
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 3817
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->flush()V

    .line 3818
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v1, :cond_1

    .line 3819
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3823
    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v1, p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3900(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 3824
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resetLocked()V

    .line 3825
    const/4 v1, 0x1

    goto :goto_0

    .line 3821
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->destroyUiAutomationService()V

    goto :goto_1
.end method

.method public unlinkToOwnDeathLocked()V
    .locals 2

    .prologue
    .line 4377
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4378
    return-void
.end method
