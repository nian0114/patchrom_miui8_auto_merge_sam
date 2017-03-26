.class Lcom/sec/android/app/camera/shootingmode/Dual$1;
.super Landroid/content/BroadcastReceiver;
.source "Dual.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Dual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Dual;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Dual;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Dual;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 231
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "action":Ljava/lang/String;
    const-string v1, "Dual"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 264
    :cond_1
    :goto_1
    return-void

    .line 234
    :sswitch_0
    const-string v3, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string v3, "camera.action.LOW_BATTERY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "camera.action.PREVIEW_TIMEOUT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "camera.action.SHUTDOWN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "camera.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "camera.action.OVERHEAT_TEMPERATURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "camera.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    .line 236
    :pswitch_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CallState;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Dual;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_1

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Dual;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->cancelRecording()V

    goto :goto_1

    .line 245
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Dual;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_1

    .line 246
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Dual;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->cancelRecording()V

    goto :goto_1

    .line 251
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Dual;

    iget-object v1, v1, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Dual;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_1

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Dual;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->cancelRecording()V

    goto/16 :goto_1

    .line 257
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Dual;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v3, :cond_1

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Dual;

    iget-object v1, v1, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v3, 0x7f0801aa

    invoke-static {v1, v3, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 234
    :sswitch_data_0
    .sparse-switch
        -0x3cedee6d -> :sswitch_1
        -0x37e00a46 -> :sswitch_6
        -0x32528438 -> :sswitch_5
        -0x322c7c4f -> :sswitch_0
        -0x215f7beb -> :sswitch_4
        0x4c504db -> :sswitch_2
        0x210cbe45 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
