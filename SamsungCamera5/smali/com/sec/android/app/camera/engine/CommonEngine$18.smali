.class Lcom/sec/android/app/camera/engine/CommonEngine$18;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;->stopVideoRecordingAsync()V
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
    .line 7015
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0xbb

    const/16 v7, 0x64

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7018
    const-string v3, "Recording Stop Thread"

    invoke-static {v3}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 7020
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecorderRecording:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2700(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 7021
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_0

    .line 7022
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0xa

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onVideoSavingProgress(I)V

    .line 7024
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v3

    if-eqz v3, :cond_1

    .line 7025
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v3

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraParameters;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 7026
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v4

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2900(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 7027
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->enableTorchFlash(Z)V
    invoke-static {v3, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3000(Lcom/sec/android/app/camera/engine/CommonEngine;Z)V

    .line 7029
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_2

    .line 7030
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0x1e

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onVideoSavingProgress(I)V

    .line 7031
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchAudioChannelDirection(I)V

    .line 7034
    :cond_2
    :try_start_0
    const-string v3, "CommonEngine"

    const-string v4, "Stopping video recording..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7035
    const-string v3, "Recording Stop"

    invoke-static {v3}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 7036
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->stop()V

    .line 7037
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 7038
    const-string v3, "CommonEngine"

    const-string v4, "Video recording is stopped"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7058
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 7059
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onVideoStoringPrepared()V

    .line 7061
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mLastContentData:Lcom/sec/android/app/camera/util/ContentData;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/util/ContentData;->getVideoFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-nez v3, :cond_4

    .line 7062
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->renameTempFile()V
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3500(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 7064
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_5

    .line 7065
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0x3c

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onVideoSavingProgress(I)V

    .line 7067
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mLastContentData:Lcom/sec/android/app/camera/util/ContentData;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mVideoFilenameWithPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3200(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/util/ContentData;->setFilePath(Ljava/lang/String;)V

    .line 7068
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecorderRecording:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2702(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 7069
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->releaseMediaRecorder()V
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1700(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 7072
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7073
    const-string v3, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>VIDEO_RECORDED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mLastContentData:Lcom/sec/android/app/camera/util/ContentData;
    invoke-static {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/util/ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " </GATE-M>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7075
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_7

    .line 7076
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0x50

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onVideoSavingProgress(I)V

    .line 7078
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->registerVideo()V
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3600(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 7082
    :cond_8
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_9

    .line 7083
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0x63

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onVideoSavingProgress(I)V

    .line 7085
    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mVideoFilenameWithPath:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3202(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 7087
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_a

    .line 7088
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    .line 7089
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIsDualCamera:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 7090
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Camera_recordingDual"

    invoke-static {v3, v4, v2}, Lcom/sec/android/app/camera/util/Util;->setLcdBrightness(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 7095
    :cond_a
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_b

    .line 7096
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onRecordingStopped()V

    .line 7098
    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 7099
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onRecordingStopped()V

    .line 7101
    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_11

    .line 7102
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    .line 7103
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->changeEngineState(I)V

    .line 7104
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->isFirstRequest(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 7105
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    .line 7107
    :cond_d
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2000(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isUsingCamcorderPreviewOnly()Z

    move-result v3

    if-nez v3, :cond_10

    .line 7108
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntishake()I

    move-result v3

    if-ne v3, v1, :cond_16

    .line 7110
    .local v1, "isNeedToStartRecordingPreviewVI":Z
    :cond_e
    :goto_2
    if-eqz v1, :cond_f

    .line 7111
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->setPreviewAnimation(I)V

    .line 7112
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleSetOneShotPreviewCallback()V

    .line 7114
    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleSwitchToCameraPreview()V

    .line 7115
    if-eqz v1, :cond_10

    .line 7116
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleRequestNotifyPreviewStarted()V

    .line 7120
    .end local v1    # "isNeedToStartRecordingPreviewVI":Z
    :cond_10
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onVideoSavingProgress(I)V

    .line 7121
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v6, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 7122
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v8, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 7124
    :cond_11
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIsRecordingStopping:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3302(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 7125
    const-string v2, "CommonEngine"

    const-string v3, "Stopping video recording is completed!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7126
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 7127
    :goto_3
    return-void

    .line 7039
    :catch_0
    move-exception v0

    .line 7040
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "CommonEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7041
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecorderRecording:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2702(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 7042
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->releaseMediaRecorder()V
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1700(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 7043
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_12

    .line 7044
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onVideoSavingProgress(I)V

    .line 7046
    :cond_12
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->cleanupTempFile()V
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3100(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 7047
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mVideoFilenameWithPath:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3202(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 7048
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->closeVideoFileDescriptor()V

    .line 7050
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_13

    .line 7051
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onRecordingStopped()V

    .line 7052
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v6, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 7053
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v8, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 7055
    :cond_13
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIsRecordingStopping:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3302(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    goto :goto_3

    .line 7079
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_14
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecorderRecording:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2700(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 7080
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecorderRecording:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2702(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    goto/16 :goto_0

    .line 7092
    :cond_15
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$18;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Camera_recording"

    invoke-static {v3, v4, v2}, Lcom/sec/android/app/camera/util/Util;->setLcdBrightness(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_16
    move v1, v2

    .line 7108
    goto/16 :goto_2
.end method
