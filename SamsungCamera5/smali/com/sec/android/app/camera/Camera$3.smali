.class Lcom/sec/android/app/camera/Camera$3;
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
    .line 523
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {p2}, Lcom/sec/android/app/apex/service/IApexService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/apex/service/IApexService;

    move-result-object v1

    # setter for: Lcom/sec/android/app/camera/Camera;->mApexService:Lcom/sec/android/app/apex/service/IApexService;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$202(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/apex/service/IApexService;)Lcom/sec/android/app/apex/service/IApexService;

    .line 527
    const-string v0, "Camera5"

    const-string v1, "ApexService - onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$3;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mApexService:Lcom/sec/android/app/apex/service/IApexService;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$202(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/apex/service/IApexService;)Lcom/sec/android/app/apex/service/IApexService;

    .line 533
    const-string v0, "Camera5"

    const-string v1, "ApexService - onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void
.end method
