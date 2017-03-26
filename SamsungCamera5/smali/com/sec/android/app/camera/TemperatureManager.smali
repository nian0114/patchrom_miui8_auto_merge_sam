.class public Lcom/sec/android/app/camera/TemperatureManager;
.super Ljava/lang/Object;
.source "TemperatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerHandler;,
        Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;
    }
.end annotation


# static fields
.field private static final MSG_CAMERA_TEMPERATURE_CHECK:I = 0x0

.field private static final OVER_CURRENT_THRESHOLD:I = 0x0

.field private static final SIOP_SYS_PROP:Ljava/lang/String; = "sys.siop.curlevel"

.field private static final TAG:Ljava/lang/String; = "TemperatureManager"

.field private static mBatteryLvl:I

.field private static mBatteryTemp:I

.field private static mCameraAvailTemp:I

.field private static mCameraLimitTemp:I

.field private static mCameraTemp:I

.field private static mFlashLimitTemp:I

.field private static mFlashTemp:I

.field private static mIsTunning:Z

.field private static mThermistorDuration:I


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mHandler:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerHandler;

.field protected mTemperatureManagerListener:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    sput v1, Lcom/sec/android/app/camera/TemperatureManager;->mCameraTemp:I

    .line 54
    sput v1, Lcom/sec/android/app/camera/TemperatureManager;->mFlashTemp:I

    .line 55
    sput v1, Lcom/sec/android/app/camera/TemperatureManager;->mBatteryTemp:I

    .line 56
    sput v1, Lcom/sec/android/app/camera/TemperatureManager;->mBatteryLvl:I

    .line 58
    sget v0, Lcom/sec/android/app/camera/feature/Feature;->OVERHEAT_LIMITATION_TEMP:I

    sput v0, Lcom/sec/android/app/camera/TemperatureManager;->mCameraLimitTemp:I

    .line 59
    sget v0, Lcom/sec/android/app/camera/feature/Feature;->OVERHEAT_AVAILABLE_TEMP:I

    sput v0, Lcom/sec/android/app/camera/TemperatureManager;->mCameraAvailTemp:I

    .line 60
    sget v0, Lcom/sec/android/app/camera/feature/Feature;->FLASH_OVERHEAT_LIMITATION_TEMP:I

    sput v0, Lcom/sec/android/app/camera/TemperatureManager;->mFlashLimitTemp:I

    .line 61
    const/16 v0, 0x1b58

    sput v0, Lcom/sec/android/app/camera/TemperatureManager;->mThermistorDuration:I

    .line 64
    sput-boolean v1, Lcom/sec/android/app/camera/TemperatureManager;->mIsTunning:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 1
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/TemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;

    .line 67
    new-instance v0, Lcom/sec/android/app/camera/TemperatureManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/TemperatureManager$1;-><init>(Lcom/sec/android/app/camera/TemperatureManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/TemperatureManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    new-instance v0, Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerHandler;-><init>(Lcom/sec/android/app/camera/TemperatureManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/TemperatureManager;->mHandler:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerHandler;

    .line 91
    iput-object p1, p0, Lcom/sec/android/app/camera/TemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/TemperatureManager;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/TemperatureManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/TemperatureManager;->handleSIOPLevelChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/TemperatureManager;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/TemperatureManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/TemperatureManager;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/TemperatureManager;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/TemperatureManager;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/TemperatureManager;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private addIntentFilter()V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/camera/TemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/TemperatureManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    return-void
.end method

.method private checkCameraTemperatureCheck()V
    .locals 3

    .prologue
    .line 168
    const-string v0, "/sys/class/sec/sec-ap-thermistor/temperature"

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/TemperatureManager;->getCameraTemperature(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/TemperatureManager;->mCameraTemp:I

    .line 169
    const-string v0, "TemperatureManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCameraTemperatureCheck : cameraTemp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/TemperatureManager;->mCameraTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget v0, Lcom/sec/android/app/camera/TemperatureManager;->mCameraTemp:I

    sget v1, Lcom/sec/android/app/camera/TemperatureManager;->mCameraLimitTemp:I

    if-lt v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/TemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;->onTemperatureManagerStopCamera()V

    .line 174
    :cond_0
    return-void
.end method

.method private checkFlashTemperatureCheck()V
    .locals 3

    .prologue
    .line 177
    const-string v0, "/sys/class/sec/sec-cf-thermistor/temperature"

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/TemperatureManager;->getCameraTemperature(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/TemperatureManager;->mFlashTemp:I

    .line 178
    const-string v0, "TemperatureManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFlashTemperatureCheck : flashTemp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/TemperatureManager;->mFlashTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget v0, Lcom/sec/android/app/camera/TemperatureManager;->mFlashTemp:I

    sget v1, Lcom/sec/android/app/camera/TemperatureManager;->mFlashLimitTemp:I

    if-lt v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/TemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;->onTemperatureManagerLimitFlash(Z)V

    .line 183
    :cond_0
    return-void
.end method

.method private checkTemperatureFile(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 186
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    const-string v1, "TemperatureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTemperatureFile : file not found, path ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v1, 0x0

    .line 192
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getCameraTemperature(Ljava/lang/String;)I
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 197
    const/4 v3, 0x0

    .line 198
    .local v3, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 199
    .local v5, "fileReader":Ljava/io/FileReader;
    const/16 v9, 0xa

    new-array v4, v9, [C

    .line 201
    .local v4, "fileBuffer":[C
    const/4 v1, 0x1

    .line 204
    .local v1, "currentTemp":I
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/TemperatureManager;->checkTemperatureFile(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v8

    .line 208
    :cond_1
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .restart local v3    # "file":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .local v6, "fileReader":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v6, v4}, Ljava/io/FileReader;->read([C)I

    move-result v0

    .line 213
    .local v0, "count":I
    if-ne v8, v0, :cond_3

    .line 214
    const-string v9, "TemperatureManager"

    const-string v10, "getCameraTemperature : file is empty"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    const/4 v1, 0x1

    .line 226
    :goto_1
    if-eqz v6, :cond_5

    .line 228
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .end local v0    # "count":I
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :cond_2
    :goto_2
    move v8, v1

    .line 235
    goto :goto_0

    .line 217
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v0    # "count":I
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :cond_3
    :try_start_3
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4}, Ljava/lang/String;-><init>([C)V

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 218
    .local v7, "splitString":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    goto :goto_1

    .line 229
    .end local v7    # "splitString":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 230
    .local v2, "exception":Ljava/io/IOException;
    const-string v8, "TemperatureManager"

    const-string v9, "getCameraTemperature : failed to close file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 231
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_2

    .line 220
    .end local v0    # "count":I
    .end local v2    # "exception":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 221
    .local v2, "exception":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    const-string v9, "TemperatureManager"

    const-string v10, "getCameraTemperature : failed to open file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 226
    if-eqz v5, :cond_0

    .line 228
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 229
    :catch_2
    move-exception v2

    .line 230
    .local v2, "exception":Ljava/io/IOException;
    const-string v9, "TemperatureManager"

    const-string v10, "getCameraTemperature : failed to close file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .end local v2    # "exception":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 224
    .restart local v2    # "exception":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v8, "TemperatureManager"

    const-string v9, "getCameraTemperature : failed to read file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 226
    if-eqz v5, :cond_2

    .line 228
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 229
    :catch_4
    move-exception v2

    .line 230
    const-string v8, "TemperatureManager"

    const-string v9, "getCameraTemperature : failed to close file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 226
    .end local v2    # "exception":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v5, :cond_4

    .line 228
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 231
    :cond_4
    :goto_6
    throw v8

    .line 229
    :catch_5
    move-exception v2

    .line 230
    .restart local v2    # "exception":Ljava/io/IOException;
    const-string v9, "TemperatureManager"

    const-string v10, "getCameraTemperature : failed to close file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 226
    .end local v2    # "exception":Ljava/io/IOException;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_5

    .line 223
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .line 220
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v0    # "count":I
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :cond_5
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private getTemperatureFromPreference()V
    .locals 11

    .prologue
    .line 239
    const-string v8, "TemperatureManager"

    const-string v9, "getTemperatureFromPreference"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v8, p0, Lcom/sec/android/app/camera/TemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v8, :cond_1

    .line 242
    const-string v8, "TemperatureManager"

    const-string v9, "mCameraContext is null!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const-string v2, "pref_camera_overheat_limitation_temp"

    .line 248
    .local v2, "KEY_CAMERA_OVERHEAT_LIMITATION_TEMP":Ljava/lang/String;
    const-string v1, "pref_camera_overheat_available_temp"

    .line 249
    .local v1, "KEY_CAMERA_OVERHEAT_AVAILABLE_TEMP":Ljava/lang/String;
    const-string v0, "pref_camera_flash_overheat_limitation_temp"

    .line 250
    .local v0, "KEY_CAMERA_FLASH_OVERHEAT_LIMITATION_TEMP":Ljava/lang/String;
    const-string v3, "pref_camera_polling_time_temp"

    .line 252
    .local v3, "KEY_CAMERA_POLLING_TIME_TEMP":Ljava/lang/String;
    const/4 v4, 0x0

    .line 254
    .local v4, "context":Landroid/content/Context;
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/TemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.sec.android.app.camtemperaturetester"

    const/4 v10, 0x4

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 260
    if-eqz v4, :cond_0

    .line 261
    const-string v8, "cam_temperature_tester_preferences"

    const/4 v9, 0x5

    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 263
    .local v6, "prefs":Landroid/content/SharedPreferences;
    sget v8, Lcom/sec/android/app/camera/feature/Feature;->OVERHEAT_LIMITATION_TEMP:I

    invoke-interface {v6, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/sec/android/app/camera/TemperatureManager;->mCameraLimitTemp:I

    .line 264
    sget v8, Lcom/sec/android/app/camera/feature/Feature;->OVERHEAT_AVAILABLE_TEMP:I

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/sec/android/app/camera/TemperatureManager;->mCameraAvailTemp:I

    .line 265
    sget v8, Lcom/sec/android/app/camera/feature/Feature;->FLASH_OVERHEAT_LIMITATION_TEMP:I

    invoke-interface {v6, v0, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/sec/android/app/camera/TemperatureManager;->mFlashLimitTemp:I

    .line 266
    sget v8, Lcom/sec/android/app/camera/TemperatureManager;->mThermistorDuration:I

    invoke-interface {v6, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/sec/android/app/camera/TemperatureManager;->mThermistorDuration:I

    .line 268
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Camera Limit temp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/sec/android/app/camera/TemperatureManager;->mCameraLimitTemp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nCamera Avail temp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/sec/android/app/camera/TemperatureManager;->mCameraAvailTemp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nFlash Limit temp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/sec/android/app/camera/TemperatureManager;->mFlashLimitTemp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nPolling Time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/sec/android/app/camera/TemperatureManager;->mThermistorDuration:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 270
    .local v7, "text":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/camera/TemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v9, 0x1

    invoke-static {v8, v7, v9}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 255
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    .end local v7    # "text":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 256
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 275
    const-string v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 276
    .local v0, "battScale":I
    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/TemperatureManager;->mBatteryLvl:I

    .line 277
    const-string v1, "temperature"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/TemperatureManager;->mBatteryTemp:I

    .line 279
    const-string v1, "TemperatureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBatteryChanged : Level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/TemperatureManager;->mBatteryLvl:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", battTemp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/TemperatureManager;->mBatteryTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/camera/TemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;->onTemperatureManagerLimitFlash(Z)V

    .line 282
    return-void
.end method

.method private handleCameraTemperatureFirstCheck()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 285
    const-string v1, "/sys/class/sec/sec-ap-thermistor/temperature"

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/TemperatureManager;->getCameraTemperature(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/TemperatureManager;->mCameraTemp:I

    .line 286
    const-string v1, "TemperatureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCameraTemperatureFirstCheck : mCameraTemp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/TemperatureManager;->mCameraTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCameraAvailTemp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/TemperatureManager;->mCameraAvailTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v1, p0, Lcom/sec/android/app/camera/TemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v1, :cond_1

    .line 289
    const-string v1, "TemperatureManager"

    const-string v2, "mCameraContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    sget v1, Lcom/sec/android/app/camera/TemperatureManager;->mCameraTemp:I

    sget v2, Lcom/sec/android/app/camera/TemperatureManager;->mCameraAvailTemp:I

    if-lt v1, v2, :cond_0

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/TemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;->onTemperatureManagerStopCamera()V

    .line 295
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 308
    const-string v0, "TemperatureManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage :: msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 311
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/TemperatureManager;->checkCameraTemperatureCheck()V

    .line 312
    invoke-direct {p0}, Lcom/sec/android/app/camera/TemperatureManager;->checkFlashTemperatureCheck()V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/TemperatureManager;->mHandler:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerHandler;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/TemperatureManager;->mThermistorDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 315
    sget-boolean v0, Lcom/sec/android/app/camera/TemperatureManager;->mIsTunning:Z

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/TemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera temp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/TemperatureManager;->mCameraTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nFlash temp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/TemperatureManager;->mFlashTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private handleSIOPLevelChanged(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 325
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 326
    .local v3, "myExtras":Landroid/os/Bundle;
    const-string v4, "camera_start_disable"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 327
    .local v0, "bLimitCamera":Z
    const-string v4, "flash_led_disable"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 328
    .local v1, "bLimitFlash":Z
    const-string v4, "camera_recording_disable"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 330
    .local v2, "bLimitRecording":Z
    if-eqz v0, :cond_0

    .line 331
    iget-object v4, p0, Lcom/sec/android/app/camera/TemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;

    invoke-interface {v4}, Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;->onTemperatureManagerStopCamera()V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/TemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;

    invoke-interface {v4, v1, v2}, Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;->onTemperatureManagerChanged(ZZ)V

    goto :goto_0
.end method

.method private removeIntentFilter()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/TemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/TemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/TemperatureManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 341
    :cond_0
    return-void
.end method

.method private startTemperatureCheckTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/TemperatureManager;->mHandler:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerHandler;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/TemperatureManager;->mHandler:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerHandler;->removeMessages(I)V

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/TemperatureManager;->mHandler:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerHandler;->sendEmptyMessage(I)Z

    .line 348
    :cond_0
    return-void
.end method

.method private stopTemperatureCheckTimer()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/TemperatureManager;->mHandler:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerHandler;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/TemperatureManager;->mHandler:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerHandler;->removeMessages(I)V

    .line 354
    :cond_0
    return-void
.end method


# virtual methods
.method public getBattLevel()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/sec/android/app/camera/TemperatureManager;->mBatteryLvl:I

    return v0
.end method

.method public getBattTemp()I
    .locals 1

    .prologue
    .line 105
    sget v0, Lcom/sec/android/app/camera/TemperatureManager;->mBatteryTemp:I

    return v0
.end method

.method public isOverHeatedBySIOP()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 109
    const-string v2, "sys.siop.curlevel"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 110
    .local v0, "level":I
    const-string v2, "TemperatureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOverHeatedBySIOP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public registerTemperatureManagerListener(Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sec/android/app/camera/TemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;

    .line 117
    invoke-direct {p0}, Lcom/sec/android/app/camera/TemperatureManager;->addIntentFilter()V

    .line 118
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 124
    const-string v0, "TemperatureManager"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_THERMISTOR_TEMPERATURE:Z

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "/sys/class/sec/sec-ap-thermistor/temperature"

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/TemperatureManager;->checkTemperatureFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/sys/class/sec/sec-cf-thermistor/temperature"

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/TemperatureManager;->checkTemperatureFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/TemperatureManager;->mIsTunning:Z

    if-eqz v0, :cond_2

    .line 131
    invoke-direct {p0}, Lcom/sec/android/app/camera/TemperatureManager;->getTemperatureFromPreference()V

    .line 134
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/TemperatureManager;->handleCameraTemperatureFirstCheck()Z

    move-result v0

    if-nez v0, :cond_3

    .line 135
    const-string v0, "TemperatureManager"

    const-string v1, "start : Overheated case!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/TemperatureManager;->startTemperatureCheckTimer()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "TemperatureManager"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_THERMISTOR_TEMPERATURE:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/camera/TemperatureManager;->stopTemperatureCheckTimer()V

    .line 151
    :cond_0
    return-void
.end method

.method public unregisterTemperatureManagerListener()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/TemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/sec/android/app/camera/TemperatureManager;->removeIntentFilter()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/TemperatureManager;->mTemperatureManagerListener:Lcom/sec/android/app/camera/TemperatureManager$TemperatureManagerListener;

    .line 158
    :cond_0
    return-void
.end method
