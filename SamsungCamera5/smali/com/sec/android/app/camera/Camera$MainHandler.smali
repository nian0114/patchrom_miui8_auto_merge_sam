.class Lcom/sec/android/app/camera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/Camera;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 1
    .param p1, "activity"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 8761
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 8762
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 8763
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 8767
    const-string v1, "Camera5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage :: msg.what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8768
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    .line 8769
    .local v0, "activity":Lcom/sec/android/app/camera/Camera;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8770
    :cond_0
    const-string v1, "Camera5"

    const-string v2, "handleMessage :: activity is not running, return."

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 8777
    :goto_0
    return-void

    .line 8773
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 8774
    # invokes: Lcom/sec/android/app/camera/Camera;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/Camera;->access$4800(Lcom/sec/android/app/camera/Camera;Landroid/os/Message;)V

    .line 8775
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 8776
    const-string v1, "Camera5"

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

    goto :goto_0
.end method
