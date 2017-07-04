.class Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;
.super Landroid/os/Handler;
.source "WideSelfie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/WideSelfie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 261
    const-string v1, "WideSelfie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainHandler handleMessage :: msg.what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 265
    :pswitch_0
    :try_start_0
    const-string v1, "WideSelfie"

    const-string v2, "Inactivity timer is expired. finish."

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    .line 267
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/4 v2, 0x0

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)V

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$300(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    .line 272
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$400(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    .line 273
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 274
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$500(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "WideSelfie"

    const-string v2, "MSG arrived after the onDestroy. Ignore exception"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :pswitch_1
    const-string v1, "WideSelfie"

    const-string v2, "MESSAGE_WIDE_SELFIE_WARNING_LOW"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->removeMessages(I)V

    .line 282
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->removeMessages(I)V

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$600(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v6, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 288
    :pswitch_2
    const-string v1, "WideSelfie"

    const-string v2, "MESSAGE_WIDE_SELFIE_WARNING_HIGH"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->removeMessages(I)V

    .line 290
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->removeMessages(I)V

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$600(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1, v7, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 293
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/sec/android/app/camera/haptic/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    .line 294
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v5, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 298
    :pswitch_3
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->removeMessages(I)V

    .line 299
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideGuideText()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    goto/16 :goto_0

    .line 302
    :pswitch_4
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->removeMessages(I)V

    goto/16 :goto_0

    .line 305
    :pswitch_5
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->removeMessages(I)V

    .line 306
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # setter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$802(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z

    goto/16 :goto_0

    .line 309
    :pswitch_6
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->removeMessages(I)V

    .line 310
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setSkipCheckWarning(Z)V
    invoke-static {v1, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)V

    goto/16 :goto_0

    .line 313
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    iget-object v1, v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->removeMessages(I)V

    .line 316
    const-wide/16 v2, 0x32

    invoke-virtual {p0, v8, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$500(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    goto/16 :goto_0

    .line 323
    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPostCaptureProgress(I)V
    invoke-static {v1, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    .line 324
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    goto/16 :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
