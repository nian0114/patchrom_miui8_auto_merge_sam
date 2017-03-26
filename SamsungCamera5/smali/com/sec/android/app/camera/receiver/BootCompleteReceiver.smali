.class public Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompleteReceiver.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$ErrorCallback;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCallbackThread:Landroid/os/HandlerThread;

.field private mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

.field private mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    const-string v0, "CameraBoot"

    iput-object v0, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method private getCurrentSize(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const-string v1, "com.sec.android.app.camera_preferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "pref_camera_rear_resolution_key"

    const/16 v2, 0x40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getSizeRatio(II)I
    .locals 6
    .param p1, "nWidth"    # I
    .param p2, "nHeight"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "nResult":I
    int-to-double v2, p1

    int-to-double v4, p2

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 114
    return v0
.end method

.method private startCameraWhenBooting(Landroid/content/Context;I)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I

    .prologue
    .line 127
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->TAG:Ljava/lang/String;

    const-string v11, "openCamera"

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :try_start_0
    const-string v10, "service.camera.running"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_3

    const/4 v0, 0x1

    .line 130
    .local v0, "camera":Z
    :goto_0
    if-nez v0, :cond_4

    .line 131
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/seccamera/SecCamera;->open(ILandroid/os/Looper;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0    # "camera":Z
    :goto_1
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v10, :cond_2

    .line 140
    :try_start_1
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v10, p0}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 141
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v10}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 146
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->getCurrentSize(Landroid/content/Context;)I

    move-result v1

    .line 147
    .local v1, "currentSize":I
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v7

    .line 148
    .local v7, "pictureWidth":I
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v5

    .line 149
    .local v5, "pictureHeight":I
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pictureWidth = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " pictureHeight = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0, v7, v5}, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->getSizeRatio(II)I

    move-result v6

    .line 152
    .local v6, "pictureRatio":I
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v10, v7, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPictureSize(II)V

    .line 154
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    .line 156
    .local v4, "listSize":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 157
    .local v9, "size":Lcom/sec/android/seccamera/SecCamera$Size;
    iget v10, v9, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->getSizeRatio(II)I

    move-result v8

    .line 158
    .local v8, "previewRatio":I
    if-ne v6, v8, :cond_0

    .line 159
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v12, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 163
    .end local v8    # "previewRatio":I
    .end local v9    # "size":Lcom/sec/android/seccamera/SecCamera$Size;
    :cond_1
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v11, "no-display-mode"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 164
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->TAG:Ljava/lang/String;

    const-string v11, "setParameters"

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v11, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v10, v11}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 166
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->TAG:Ljava/lang/String;

    const-string v11, "startPreview"

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v10}, Lcom/sec/android/seccamera/SecCamera;->startPreview()V

    .line 168
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->TAG:Ljava/lang/String;

    const-string v11, "stopPreview"

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v10}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->TAG:Ljava/lang/String;

    const-string v11, "release"

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v10}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 177
    .end local v1    # "currentSize":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "listSize":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    .end local v5    # "pictureHeight":I
    .end local v6    # "pictureRatio":I
    .end local v7    # "pictureWidth":I
    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->quit()Z

    .line 178
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mCallbackThread:Landroid/os/HandlerThread;

    .line 179
    const/4 v10, 0x1

    return v10

    .line 129
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 133
    .restart local v0    # "camera":Z
    :cond_4
    :try_start_2
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->TAG:Ljava/lang/String;

    const-string v11, "SecCamera aleready opened"

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 135
    .end local v0    # "camera":Z
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->TAG:Ljava/lang/String;

    const-string v11, "Camera open failed"

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 170
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 171
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->TAG:Ljava/lang/String;

    const-string v11, "Camera Exception by interrupt"

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->TAG:Ljava/lang/String;

    const-string v11, "release"

    invoke-static {v10, v11}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v10, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v10}, Lcom/sec/android/seccamera/SecCamera;->release()V

    goto :goto_2

    .line 173
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->TAG:Ljava/lang/String;

    const-string v12, "release"

    invoke-static {v11, v12}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v11, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v11}, Lcom/sec/android/seccamera/SecCamera;->release()V

    throw v10
.end method


# virtual methods
.method public onError(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "camera"    # Lcom/sec/android/seccamera/SecCamera;

    .prologue
    .line 53
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->TAG:Ljava/lang/String;

    const-string v1, "unkown Error"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Start Camera application"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 75
    .local v1, "currentSettingDB":I
    iget-object v2, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current setting db of quicklaunch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch_component"

    const-string v4, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    if-ne v1, v5, :cond_0

    .line 78
    iget-object v2, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->TAG:Ljava/lang/String;

    const-string v3, "update setting db as default value"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    .end local v1    # "currentSettingDB":I
    :cond_0
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_BACKGROUND_OPEN_WHEN_BOOTING:Z

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->TAG:Ljava/lang/String;

    const-string v3, "CAMERA_BACKGROUND_OPEN_WHEN_BOOTTING E"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "Callback Handler"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mCallbackThread:Landroid/os/HandlerThread;

    .line 86
    iget-object v2, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 87
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->startCameraWhenBooting(Landroid/content/Context;I)Z

    .line 88
    iget-object v2, p0, Lcom/sec/android/app/camera/receiver/BootCompleteReceiver;->TAG:Ljava/lang/String;

    const-string v3, "CAMERA_BACKGROUND_OPEN_WHEN_BOOTTING X"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    return-void
.end method
