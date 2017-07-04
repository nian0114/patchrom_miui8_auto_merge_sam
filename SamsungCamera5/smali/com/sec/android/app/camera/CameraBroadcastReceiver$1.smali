.class Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "action":Ljava/lang/String;
    const-string v6, "CameraBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isPausing()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isDestroying()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 73
    :cond_0
    const-string v6, "CameraBroadcastReceiver"

    const-string v7, "onReceive - returned. camera is inactive"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1
    const-string v6, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 77
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 78
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShutterTimer()V

    .line 81
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-string v5, "camera.action.SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 150
    :cond_4
    :goto_0
    :pswitch_0
    return-void

    .line 82
    :cond_5
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 83
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, p2}, Lcom/sec/android/app/camera/Camera;->handleBatteryChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    :cond_6
    const-string v6, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 85
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->handleBatteryLow()V

    goto :goto_0

    .line 86
    :cond_7
    const-string v6, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 87
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->handleBatteryPowerConnected()V

    goto :goto_0

    .line 88
    :cond_8
    const-string v6, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 89
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->updateRemainCounter()V

    goto :goto_0

    .line 90
    :cond_9
    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 91
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v4

    if-nez v4, :cond_4

    .line 92
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->updateThumbnail()V

    goto :goto_0

    .line 94
    :cond_a
    const-string v6, "android.intent.action.ACTION_ASSISTIVE_ON_WIDGETUPDATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 95
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTorchLightStatus(I)V

    goto :goto_0

    .line 96
    :cond_b
    const-string v6, "android.intent.action.ACTION_ASSISTIVE_OFF_WIDGETUPDATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 97
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTorchLightStatus(I)V

    goto/16 :goto_0

    .line 98
    :cond_c
    const-string v6, "com.samsung.android.action.SHOOTING_MODES_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 99
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->loadShootingModes()V

    goto/16 :goto_0

    .line 100
    :cond_d
    const-string v6, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 101
    const-string v6, "microphone"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 103
    .local v1, "microphone":I
    const-string v6, "state"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_f

    .line 104
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    if-ne v1, v5, :cond_e

    move v4, v5

    :cond_e
    invoke-virtual {v6, v4}, Lcom/sec/android/app/camera/Camera;->setMicrophonePlugged(Z)V

    .line 105
    if-ne v1, v5, :cond_4

    .line 106
    const-string v4, "CameraBroadcastReceiver"

    const-string v5, "Headset with microphone is plugged"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v4, Landroid/content/Intent;

    const-string v5, "camera.action.HEADSET_PLUG"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 110
    :cond_f
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/camera/Camera;->setMicrophonePlugged(Z)V

    goto/16 :goto_0

    .line 112
    .end local v1    # "microphone":I
    :cond_10
    const-string v6, "android.intent.action.VIDEOCAPABILITY"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 113
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v5, -0xc

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->setRecordingErrorCode(I)V

    goto/16 :goto_0

    .line 114
    :cond_11
    const-string v6, "android.intent.action.NOT_ALLOWED_SCREEN_MIRRORING"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 115
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v5, -0xd

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->setRecordingErrorCode(I)V

    goto/16 :goto_0

    .line 116
    :cond_12
    const-string v6, "com.samsung.action.SHOWING_GLOBAL_ACTIONS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 117
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 118
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 120
    :cond_13
    const-string v6, "com.sec.android.app.camera.MAKE_CAMERA_FEATURE_XML"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 121
    new-instance v3, Lcom/sec/android/app/camera/feature/ReflectionFeature;

    invoke-direct {v3}, Lcom/sec/android/app/camera/feature/ReflectionFeature;-><init>()V

    .line 122
    .local v3, "reflectionFeature":Lcom/sec/android/app/camera/feature/ReflectionFeature;
    invoke-virtual {v3}, Lcom/sec/android/app/camera/feature/ReflectionFeature;->makeReflectionFields()V

    .line 123
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/feature/ReflectionFeature;->saveReflectionFields(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    .end local v3    # "reflectionFeature":Lcom/sec/android/app/camera/feature/ReflectionFeature;
    :cond_14
    const-string v6, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const-string v6, "CAMERA_ON"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_15

    .line 125
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 126
    :cond_15
    const-string v6, "android.location.MODE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 127
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "location_mode"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 129
    .local v2, "mode":I
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 139
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->stopReceivingLocationUpdates()V

    goto/16 :goto_0

    .line 132
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGPS()I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 133
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->setLocationRequest()V

    goto/16 :goto_0

    .line 144
    .end local v2    # "mode":I
    :cond_16
    const-string v6, "com.samsung.telecom.IncomingCallAnsweredDuringRecord"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 145
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 146
    iget-object v6, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v6, v6, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v6

    invoke-interface {v6, v5, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCallStatus(IZ)V

    .line 148
    :cond_17
    new-instance v4, Landroid/content/Intent;

    const-string v5, "camera.action.CALL_STATE_OFFHOOK"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
