.class public Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;
.super Landroid/os/Handler;
.source "CameraSettingsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NotificationHandler"
.end annotation


# instance fields
.field private final mSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/setting/CameraSettingsImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;)V
    .locals 1
    .param p1, "settings"    # Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    .prologue
    .line 4688
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4689
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;->mSettings:Ljava/lang/ref/WeakReference;

    .line 4690
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4694
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;->mSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    .line 4695
    .local v0, "settings":Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    if-nez v0, :cond_1

    .line 4701
    :cond_0
    :goto_0
    return-void

    .line 4698
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 4699
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;II)V

    goto :goto_0
.end method
