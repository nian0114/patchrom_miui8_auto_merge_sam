.class Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;
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
    .line 153
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x16

    const/4 v9, 0x4

    const/16 v8, 0x7e6

    const/4 v7, 0x0

    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "action":Ljava/lang/String;
    const-string v4, "CameraBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v4, "com.samsung.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    const-string v4, "easymode"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 162
    .local v1, "easyCamera":Z
    const-string v4, "easymode_from"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 164
    .local v3, "sender":Ljava/lang/String;
    const-string v4, "settings"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v4

    if-nez v4, :cond_1

    .line 166
    const-string v4, "CameraBroadcastReceiver"

    const-string v5, "as easy camera changed, previous camera finish"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v8}, Lcom/sec/android/app/camera/Camera;->finishActivity(I)V

    .line 168
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 229
    .end local v1    # "easyCamera":Z
    .end local v3    # "sender":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 169
    .restart local v1    # "easyCamera":Z
    .restart local v3    # "sender":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    const-string v4, "CameraBroadcastReceiver"

    const-string v5, "as basic mode changed, previous camera finish"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v8}, Lcom/sec/android/app/camera/Camera;->finishActivity(I)V

    .line 172
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    .line 175
    .end local v1    # "easyCamera":Z
    .end local v3    # "sender":Ljava/lang/String;
    :cond_2
    const-string v4, "com.samsung.launcher.action.EASY_MODE_CHANGE_CAMERA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 176
    const-string v4, "isEasyModeEnable"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 177
    .local v2, "enable":Z
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v4

    if-nez v4, :cond_3

    .line 178
    const-string v4, "CameraBroadcastReceiver"

    const-string v5, "as easy camera camera enabled, previous camera finish"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v8}, Lcom/sec/android/app/camera/Camera;->finishActivity(I)V

    .line 180
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    .line 181
    :cond_3
    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    const-string v4, "CameraBroadcastReceiver"

    const-string v5, "as easy camera camera disabled, previous camera finish"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v8}, Lcom/sec/android/app/camera/Camera;->finishActivity(I)V

    .line 184
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    .line 186
    .end local v2    # "enable":Z
    :cond_4
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 187
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->onScreenOff()V

    goto/16 :goto_0

    .line 188
    :cond_5
    const-string v4, "GalleryOnLockscreen"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 189
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 190
    const-string v4, "CameraBroadcastReceiver"

    const-string v5, "do not invisible surfaceView because activity is resumed"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 194
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 195
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 196
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 199
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 200
    const-string v4, "CameraBroadcastReceiver"

    const-string v5, "mGalleryOnLockscreenReceiver : invisible surfaceView when transparent gallery completed image loading."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getPreviewSurface()Landroid/view/SurfaceView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 202
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->resetOriginalViewFinderSize()V

    .line 205
    :cond_8
    sget-boolean v4, Lcom/sec/android/app/camera/feature/Feature;->NEED_GRAPHIC_CONFIG_SET:Z

    if-eqz v4, :cond_0

    .line 206
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->changeGraphicConfig()V

    goto/16 :goto_0

    .line 208
    :cond_9
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 209
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/util/StorageUtils;->setStorageVolume(Landroid/content/Context;)V

    .line 210
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderRecording()Z

    move-result v4

    if-nez v4, :cond_a

    .line 212
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isStorageMounted()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->checkStorage(Z)V

    goto/16 :goto_0

    .line 214
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v10, v7}, Lcom/sec/android/app/camera/Camera;->setButtonDim(II)V

    goto/16 :goto_0

    .line 217
    :cond_b
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 219
    new-instance v4, Landroid/content/Intent;

    const-string v5, "camera.action.MEDIA_UNMOUNTED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 221
    :cond_d
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->resetStorageMedia()V

    .line 223
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v10, v7}, Lcom/sec/android/app/camera/Camera;->setButtonDim(II)V

    .line 224
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraDialog;->resetChangeStorageSettingDialogEnabled(Landroid/content/Context;)V

    .line 225
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v5, 0x194

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->dismissCameraDialog(I)V

    goto/16 :goto_0
.end method
