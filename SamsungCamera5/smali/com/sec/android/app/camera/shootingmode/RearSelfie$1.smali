.class Lcom/sec/android/app/camera/shootingmode/RearSelfie$1;
.super Landroid/os/Handler;
.source "RearSelfie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/RearSelfie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/RearSelfie;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/RearSelfie;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RearSelfie;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 121
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 144
    :goto_0
    :pswitch_0
    return-void

    .line 123
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RearSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/RearSelfie;->startSelfShotCapture()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->access$000(Lcom/sec/android/app/camera/shootingmode/RearSelfie;)V

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RearSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/RearSelfie;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getForcedShutterSound()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 127
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RearSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->access$200(Lcom/sec/android/app/camera/shootingmode/RearSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RearSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->access$200(Lcom/sec/android/app/camera/shootingmode/RearSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 130
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 135
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RearSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RearSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/RearSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;->access$200(Lcom/sec/android/app/camera/shootingmode/RearSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 130
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
