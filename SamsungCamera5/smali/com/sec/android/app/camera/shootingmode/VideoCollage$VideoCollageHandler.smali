.class Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;
.super Landroid/os/Handler;
.source "VideoCollage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/VideoCollage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoCollageHandler"
.end annotation


# instance fields
.field private final mVideoCollage:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/VideoCollage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 1
    .param p1, "videoCollage"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 3460
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3461
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->mVideoCollage:Ljava/lang/ref/WeakReference;

    .line 3462
    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    .prologue
    .line 3457
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 3495
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->mVideoCollage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 3496
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3466
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->mVideoCollage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .line 3467
    .local v0, "videoCollage":Lcom/sec/android/app/camera/shootingmode/VideoCollage;
    if-nez v0, :cond_0

    .line 3492
    :goto_0
    return-void

    .line 3471
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3479
    :pswitch_0
    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->launchEditor()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$4000(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    .line 3480
    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->reset()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$4100(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    goto :goto_0

    .line 3473
    :pswitch_1
    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateProgress()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$3800(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    goto :goto_0

    .line 3476
    :pswitch_2
    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecIndicatorIcon()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$3900(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    goto :goto_0

    .line 3483
    :pswitch_3
    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitchingAnimationRunning()Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$4200(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3484
    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->sendShowUIMessageDelayed()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$4300(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    goto :goto_0

    .line 3486
    :cond_1
    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showView()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$4400(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    goto :goto_0

    .line 3471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
