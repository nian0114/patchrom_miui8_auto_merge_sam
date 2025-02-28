.class Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerHandler;
.super Landroid/os/Handler;
.source "TemperatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/TemperatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemperatureManagerHandler"
.end annotation


# instance fields
.field private final mTemperatureManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/TemperatureManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/TemperatureManager;)V
    .locals 1
    .param p1, "temperatureManager"    # Lcom/sec/android/app/camera/TemperatureManager;

    .prologue
    .line 367
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 368
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerHandler;->mTemperatureManager:Ljava/lang/ref/WeakReference;

    .line 369
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 373
    iget-object v1, p0, Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerHandler;->mTemperatureManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/TemperatureManager;

    .line 374
    .local v0, "temperatureManager":Lcom/sec/android/app/camera/TemperatureManager;
    # invokes: Lcom/sec/android/app/camera/TemperatureManager;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/TemperatureManager;->access$200(Lcom/sec/android/app/camera/TemperatureManager;Landroid/os/Message;)V

    .line 375
    const-string v1, "TemperatureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage done :: msg.what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void
.end method
