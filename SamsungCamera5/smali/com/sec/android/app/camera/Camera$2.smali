.class Lcom/sec/android/app/camera/Camera$2;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {p2}, Lcom/sec/android/gallery3d/service/IQuickViewService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/gallery3d/service/IQuickViewService;

    move-result-object v1

    # setter for: Lcom/sec/android/app/camera/Camera;->mQuickViewService:Lcom/sec/android/gallery3d/service/IQuickViewService;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$002(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/gallery3d/service/IQuickViewService;)Lcom/sec/android/gallery3d/service/IQuickViewService;

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/camera/Camera;->mQuickViewServiceConnected:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$102(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 513
    const-string v0, "Camera5"

    const-string v1, "QuickViewService - onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mQuickViewServiceConnected:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$102(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mQuickViewService:Lcom/sec/android/gallery3d/service/IQuickViewService;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$002(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/gallery3d/service/IQuickViewService;)Lcom/sec/android/gallery3d/service/IQuickViewService;

    .line 520
    const-string v0, "Camera5"

    const-string v1, "QuickViewService - onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void
.end method
