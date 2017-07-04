.class public final Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ErrorCallback"
.end annotation


# static fields
.field private static final CAMERA_ERROR_ESD:I = 0x7d1

.field private static final CAMERA_ERROR_MSG_CAMERA_DISCONNECTED:I = 0x2

.field private static final CAMERA_ERROR_MSG_NO_ERROR:I = 0x0

.field private static final CAMERA_ERROR_WRONG_FW:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    .prologue
    .line 9707
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 5
    .param p1, "error"    # I
    .param p2, "camera"    # Lcom/sec/android/seccamera/SecCamera;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x6

    .line 9715
    sget-boolean v0, Lcom/sec/android/app/camera/util/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 9716
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorCallback.onError ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9721
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/engine/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AbstractCeState;->getId()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 9724
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->closeCamera()V

    .line 9783
    :cond_0
    :goto_1
    return-void

    .line 9718
    :cond_1
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorCallback.onError ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9728
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9731
    sparse-switch p1, :sswitch_data_0

    .line 9780
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, -0x5

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto :goto_1

    .line 9733
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9734
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->removeRequest(I)V

    .line 9735
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleCaptureEventListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4200(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9736
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleCaptureEventListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4200(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;->onSingleCaptureRequestCancelled()V

    goto :goto_1

    .line 9741
    :sswitch_1
    const-string v0, "CommonEngine"

    const-string v1, "onError : CAMERA_ERROR_WRONG_FW"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 9744
    :sswitch_2
    const-string v0, "CommonEngine"

    const-string v1, "CAMERA_ERROR_PREVIEWFRAME_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 9745
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, -0xb

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto :goto_1

    .line 9748
    :sswitch_3
    const-string v0, "CommonEngine"

    const-string v1, "CAMERA_ERROR_ESD"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 9749
    const-string v0, "CommonEngine"

    const-string v1, "!!!Camera retry!!! - start!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 9750
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9751
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mStopRecordingByESD:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5202(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 9752
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopVideoRecordingForced()V

    .line 9755
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->clearRequest()V
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5300(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 9756
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->quitSafely(Z)V

    .line 9757
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->startRequestHandlerThread()V

    .line 9758
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleStopEngine()V

    .line 9759
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleStartEngine()V

    .line 9760
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleInitializeSecCameraListener()V

    .line 9761
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleSetAllParameters()V

    .line 9762
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleSetShootingMode()V

    .line 9763
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mStopRecordingByESD:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5200(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9764
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleSwitchToCameraPreview()V

    .line 9769
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mStopRecordingByESD:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5202(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 9770
    const-string v0, "CommonEngine"

    const-string v1, "!!!Camera retry!!! before return"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 9766
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleStartPreview()V

    .line 9767
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleActivateShootingMode()V

    goto :goto_2

    .line 9773
    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, -0x8

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto/16 :goto_1

    .line 9776
    :sswitch_5
    const-string v0, "CommonEngine"

    const-string v1, "CAMERA_ERROR_MSG_CAMERA_DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 9777
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, -0xe

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto/16 :goto_1

    .line 9731
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_5
        0x64 -> :sswitch_4
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x7d1 -> :sswitch_3
    .end sparse-switch
.end method
