.class Lcom/sec/android/app/camera/Camera$CallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    .prologue
    .line 9002
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    .line 9003
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 9004
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 0
    .param p2, "subscriptionID"    # I

    .prologue
    .line 9006
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    .line 9007
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    .line 9008
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x30

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 9012
    const-string v0, "Camera5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9014
    packed-switch p1, :pswitch_data_0

    .line 9056
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CallState;->isOtherVTCallOngoing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9057
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9058
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 9059
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 9071
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mStartAttachActivityOnResume:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$5300(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsPausing:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9072
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->startAttachActivity()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$5600(Lcom/sec/android/app/camera/Camera;)V

    .line 9073
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mStartAttachActivityOnResume:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/Camera;->access$5302(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 9077
    :cond_1
    :goto_1
    return-void

    .line 9016
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CallState;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9018
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->isPopupCallSupported()Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$5200(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9019
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0801a7

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 9023
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9024
    const-string v0, "from_app"

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3600(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CallState;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9025
    const-string v0, "Camera5"

    const-string v1, "set flag to launch cropImage after phone call.."

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9026
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mStartAttachActivityOnResume:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Camera;->access$5302(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 9031
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CallState;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9032
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShutterAction()V

    .line 9035
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 9036
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->setBaseMenuRecordButtonDim(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Camera;->access$5400(Lcom/sec/android/app/camera/Camera;Z)V

    .line 9039
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.CALL_STATE_RINGING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 9042
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsCalling:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$5100(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9045
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mIsCalling:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Camera;->access$5102(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 9046
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->finishTimerCount()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$5500(Lcom/sec/android/app/camera/Camera;)V

    .line 9048
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 9049
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCallStatus(IZ)V

    .line 9050
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->setBaseMenuRecordButtonDim(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Camera;->access$5400(Lcom/sec/android/app/camera/Camera;Z)V

    .line 9053
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.CALL_STATE_OFFHOOK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 9061
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CallState;->isCalling(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9062
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 9063
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, v4, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCallStatus(IZ)V

    .line 9064
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->setBaseMenuRecordButtonDim(Z)V
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/Camera;->access$5400(Lcom/sec/android/app/camera/Camera;Z)V

    .line 9066
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mIsCalling:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/Camera;->access$5102(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 9068
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.CALL_STATE_IDLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 9014
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
