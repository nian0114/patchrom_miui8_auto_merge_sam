.class public Lcom/sec/android/app/camera/CameraBroadcastReceiver;
.super Ljava/lang/Object;
.source "CameraBroadcastReceiver.java"


# static fields
.field private static final ACTION_EASY_MODE_CHANGE:Ljava/lang/String; = "com.samsung.launcher.action.EASY_MODE_CHANGE"

.field private static final ACTION_EASY_MODE_CHANGE_CAMERA:Ljava/lang/String; = "com.samsung.launcher.action.EASY_MODE_CHANGE_CAMERA"

.field private static final ACTION_GALLERY_ON_LOCK_SCREEN:Ljava/lang/String; = "GalleryOnLockscreen"

.field private static final ACTION_INCOMINGCALL_DURING_RECORDING:Ljava/lang/String; = "com.samsung.telecom.IncomingCallAnsweredDuringRecord"

.field private static final ACTION_MAKE_CAMERA_FEATURE_XML:Ljava/lang/String; = "com.sec.android.app.camera.MAKE_CAMERA_FEATURE_XML"

.field private static final ACTION_NEW_PICTURE:Ljava/lang/String; = "com.android.camera.NEW_PICTURE"

.field private static final ACTION_POWER_OFF_ANIMATION_START:Ljava/lang/String; = "POWER_OFF_ANIMATION_START"

.field private static final ACTION_SCREEN_MIRRORING_NOT_ALLOWED:Ljava/lang/String; = "android.intent.action.NOT_ALLOWED_SCREEN_MIRRORING"

.field private static final ACTION_SHOOTING_MODES_CHANGED:Ljava/lang/String; = "com.samsung.android.action.SHOOTING_MODES_CHANGED"

.field private static final ACTION_SHOWING_GLOBAL_ACTIONS:Ljava/lang/String; = "com.samsung.action.SHOWING_GLOBAL_ACTIONS"

.field private static final ACTION_SKT_DCMO_SET:Ljava/lang/String; = "com.sktelecom.dmc.intent.action.DCMO_SET"

.field private static final ACTION_TORCH_OFF:Ljava/lang/String; = "android.intent.action.ACTION_ASSISTIVE_OFF_WIDGETUPDATE"

.field private static final ACTION_TORCH_ON:Ljava/lang/String; = "android.intent.action.ACTION_ASSISTIVE_ON_WIDGETUPDATE"

.field private static final ACTION_VIDEO_CAPABILITY:Ljava/lang/String; = "android.intent.action.VIDEOCAPABILITY"

.field private static final DM_CAMERA_OFF:I = 0x0

.field private static final DM_CAMERA_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraBroadcastReceiver"


# instance fields
.field protected mCameraContext:Lcom/sec/android/app/camera/Camera;

.field private mEntireLifetimeReceiver:Landroid/content/BroadcastReceiver;

.field private mForegroundLifetimeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 1
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraBroadcastReceiver$1;-><init>(Lcom/sec/android/app/camera/CameraBroadcastReceiver;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mForegroundLifetimeReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    new-instance v0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;-><init>(Lcom/sec/android/app/camera/CameraBroadcastReceiver;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mEntireLifetimeReceiver:Landroid/content/BroadcastReceiver;

    .line 233
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    .line 234
    return-void
.end method


# virtual methods
.method protected registerEntireLifetimeReceivers()V
    .locals 4

    .prologue
    .line 237
    const-string v2, "CameraBroadcastReceiver"

    const-string v3, "registerEntireLifetimeReceivers"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 241
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "GalleryOnLockscreen"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v2, "com.samsung.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v2, "com.samsung.launcher.action.EASY_MODE_CHANGE_CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mEntireLifetimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 256
    .local v1, "mediaIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mEntireLifetimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 262
    return-void
.end method

.method protected registerForegroundLifetimeReceivers()V
    .locals 4

    .prologue
    .line 265
    const-string v2, "CameraBroadcastReceiver"

    const-string v3, "registerForegroundLifetimeReceivers"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 270
    .local v0, "cameraIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v2, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v2, "android.intent.action.ACTION_ASSISTIVE_OFF_WIDGETUPDATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v2, "android.intent.action.ACTION_ASSISTIVE_ON_WIDGETUPDATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v2, :cond_0

    .line 284
    const-string v2, "com.samsung.android.action.SHOOTING_MODES_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    :cond_0
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v2, "android.intent.action.VIDEOCAPABILITY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string v2, "android.intent.action.NOT_ALLOWED_SCREEN_MIRRORING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v2, "com.sec.android.app.camera.MAKE_CAMERA_FEATURE_XML"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    const-string v2, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isSLocationManagerSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 306
    const-string v2, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    :cond_2
    const-string v2, "com.samsung.telecom.IncomingCallAnsweredDuringRecord"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mForegroundLifetimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 314
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 315
    .local v1, "mediaIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v2, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mForegroundLifetimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 319
    const-string v2, "CameraBroadcastReceiver"

    const-string v3, "registerReceivers done"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void
.end method

.method protected unregisterEntireLifetimeReceivers()V
    .locals 2

    .prologue
    .line 323
    const-string v0, "CameraBroadcastReceiver"

    const-string v1, "unregisterEntireLifetimeReceivers"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mEntireLifetimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 325
    return-void
.end method

.method protected unregisterForegroundLifetimeReceivers()V
    .locals 2

    .prologue
    .line 328
    const-string v0, "CameraBroadcastReceiver"

    const-string v1, "unregisterForegroundLifetimeReceivers"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mForegroundLifetimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 330
    return-void
.end method
