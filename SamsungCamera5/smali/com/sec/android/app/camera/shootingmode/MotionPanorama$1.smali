.class Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;
.super Landroid/os/Handler;
.source "MotionPanorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/MotionPanorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 254
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 299
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 257
    :pswitch_1
    :try_start_0
    const-string v1, "MotionPanoramaApp"

    const-string v2, "Inactivity timer is expired. finish."

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->cancelPanoramaCapture()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$000(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->reset()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$100(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$200(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "MotionPanoramaApp"

    const-string v2, "MSG arrived after the onDestro. Ignore exception"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :pswitch_2
    const-string v1, "MotionPanoramaApp"

    const-string v2, "MESSAGE_PANORAMA_WARNING_LOW"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->removeMessages(I)V

    .line 268
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->removeMessages(I)V

    .line 269
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$300(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p0, v3, v8, v9}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 275
    :pswitch_3
    const-string v1, "MotionPanoramaApp"

    const-string v2, "MESSAGE_PANORAMA_WARNING_HIGH"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->removeMessages(I)V

    .line 277
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->removeMessages(I)V

    .line 278
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$300(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$200(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1, v6, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 280
    invoke-virtual {p0, v4, v8, v9}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 284
    :pswitch_4
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->removeMessages(I)V

    .line 285
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideGuideText()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$400(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    goto :goto_0

    .line 288
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$200(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    iget-object v1, v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    iget-object v1, v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showPreviewGroup()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$500(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    .line 293
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    const/4 v2, 0x1

    # setter for: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsDrawLivePreview:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$602(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;Z)Z

    goto/16 :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
