.class Lcom/sec/android/app/camera/engine/CommonEngine$1;
.super Landroid/os/Handler;
.source "CommonEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 352
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 428
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 355
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    goto :goto_0

    .line 358
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f08010a

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStorage(I)V

    goto :goto_0

    .line 364
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 366
    const-string v0, "CommonEngine"

    const-string v1, "SurfaceView is invisible"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 373
    :pswitch_4
    const-string v0, "CommonEngine"

    const-string v1, "Timeout - WAIT_ONE_SHOT_PREVIEW_CALLBACK"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 380
    :pswitch_5
    const-string v0, "CommonEngine"

    const-string v1, "Timeout - WAIT_NOTIFY_PREVIEW_STARTED"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->cancelPreviewAnimation()V

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto/16 :goto_0

    .line 387
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIsDualEffectCompleted:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$402(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    goto/16 :goto_0

    .line 390
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isPrepareRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    const-string v0, "CommonEngine"

    const-string v1, "isPrepareRecording.. send orientaion info in 1sec and return"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSendOrientationInfoThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$500(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSendOrientationInfoThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$500(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSendOrientationInfoThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$500(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/engine/CommonEngine$1$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/CommonEngine$1$1;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSendOrientationInfoThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$502(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSendOrientationInfoThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$500(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "sendOrientationInfoThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSendOrientationInfoThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$500(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 408
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 412
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->searchLastImageContentUri()V

    goto/16 :goto_0

    .line 415
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isTouchAEProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->touchAECompleted()V
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$800(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    goto/16 :goto_0

    .line 420
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIsTouchAeTimerExpired:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$902(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    goto/16 :goto_0

    .line 423
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureSoundId:I
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1000(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(I)V

    goto/16 :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method
