.class public Lcom/android/server/DrmEventService;
.super Landroid/app/Service;
.source "DrmEventService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DrmEventService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final DRM_TIME_PATH:Ljava/lang/String; = "/data/drm/beforeTime.ini"

.field private static final TAG:Ljava/lang/String; = "DrmEventService"

.field private static final TIME_CLOCK_UPDATE:I = 0x6

.field static isLogEnabled:Z


# instance fields
.field private isRegisteredBootTime:Z

.field mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mIs24HourFormat:Z

.field private mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field mTvOutReceiver:Landroid/content/BroadcastReceiver;

.field nitZReceiver:Landroid/content/BroadcastReceiver;

.field nitzFilter:Landroid/content/IntentFilter;

.field private timeFormat:Ljava/lang/String;

.field userUpdatedTimeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    iput-object v0, p0, Lcom/android/server/DrmEventService;->nitzFilter:Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    iput-boolean v1, p0, Lcom/android/server/DrmEventService;->mIs24HourFormat:Z

    new-instance v0, Lcom/android/server/DrmEventService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$1;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, Lcom/android/server/DrmEventService;->mTvOutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/DrmEventService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$2;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, Lcom/android/server/DrmEventService;->nitZReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/DrmEventService$3;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$3;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, Lcom/android/server/DrmEventService;->userUpdatedTimeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DrmEventService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DrmEventService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/DrmEventService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DrmEventService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->registerReceiever()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DrmEventService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DrmEventService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/DrmEventService;->userUpdateHandler(Landroid/content/Intent;)V

    return-void
.end method

.method private getBeforeTime()J
    .locals 10

    .prologue
    const-wide/16 v0, 0x0

    .local v0, "beforeTime":J
    const/4 v2, 0x0

    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/data/drm/beforeTime.ini"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_1
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_0

    const-string v7, "DrmEventService"

    const-string v8, "FileReading Start"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v5, ""

    .local v5, "nextLine":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .local v6, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .end local v5    # "nextLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/NumberFormatException;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_2
    return-wide v0

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "nextLine":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_4
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_3

    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "beforeTIme is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_4

    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "beforeTIme in Long is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    if-eqz v3, :cond_6

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v5    # "nextLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_2
    move-exception v4

    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-wide/16 v0, -0x64

    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v7

    goto :goto_2

    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v2, :cond_1

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_2

    :catch_5
    move-exception v7

    goto :goto_2

    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v2, :cond_5

    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_5
    :goto_6
    throw v7

    .local v4, "e":Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v7

    goto :goto_2

    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_7
    move-exception v8

    goto :goto_6

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v4

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_9
    move-exception v4

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    :catch_a
    move-exception v4

    goto/16 :goto_1

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "nextLine":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private declared-synchronized handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I
    .locals 6
    .param p1, "operation"    # I
    .param p2, "drmInfo"    # Landroid/drm/DrmInfo;
    .param p3, "drmInfoRequest"    # Landroid/drm/DrmInfoRequest;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_0

    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDbOperation case "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, -0x1

    .local v1, "ret":I
    packed-switch p1, :pswitch_data_0

    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_1

    const-string v3, "DrmEventService"

    const-string v4, "Not a valid operation requested in handleDbOperation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :pswitch_0
    const/4 v2, 0x0

    .local v2, "status":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "result_info":Landroid/drm/DrmInfo;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_2

    const-string v3, "DrmEventService"

    const-string v4, "handleDbOperation acquireDrmInfo "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, p3}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "status"

    invoke-virtual {v0, v3}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_3

    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireDrmInfo status is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const-string v3, "DrmEventService"

    const-string v4, " no response from SecureClock "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "result_info":Landroid/drm/DrmInfo;
    .end local v1    # "ret":I
    .end local v2    # "status":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0    # "result_info":Landroid/drm/DrmInfo;
    .restart local v1    # "ret":I
    .restart local v2    # "status":Ljava/lang/String;
    :cond_5
    :try_start_2
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_1

    const-string v3, "DrmEventService"

    const-string v4, "Failed to Install the rights received. No DRM manager instance"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized registerReceiever()V
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_0

    const-string v3, "DrmEventService"

    const-string v4, "Registering for both NITZ and Timeset"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .local v2, "userTimeFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/DrmEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DrmEventService;->userUpdatedTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "nitzFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/DrmEventService;->mIs24HourFormat:Z

    iget-boolean v3, p0, Lcom/android/server/DrmEventService;->mIs24HourFormat:Z

    if-eqz v3, :cond_3

    const-string v3, "24"

    iput-object v3, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    :goto_0
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_1

    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time Format is: :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/DrmEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DrmEventService;->nitZReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, "tvOutFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/DrmEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DrmEventService;->mTvOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_2

    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerReceiever, All registration over, isRegisteredBootTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    .end local v1    # "tvOutFilter":Landroid/content/IntentFilter;
    :cond_3
    :try_start_1
    const-string v3, "12"

    iput-object v3, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "nitzFilter":Landroid/content/IntentFilter;
    .end local v2    # "userTimeFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private userUpdateHandler(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/DrmEventService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_12_24"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "nowTimeFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/DrmEventService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "autoEnable":I
    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_0

    const-string v4, "DrmEventService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "DrmEventService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeFormat before setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "DrmEventService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nowTimeFormat before setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .local v1, "now":Ljava/util/Date;
    iget-object v4, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, "24"

    iput-object v4, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    :cond_1
    if-nez v2, :cond_2

    const-string v2, "24"

    :cond_2
    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_3

    const-string v4, "DrmEventService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeFormat after setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "DrmEventService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nowTimeFormat after setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_4

    const-string v4, "DrmEventService"

    const-string v5, "userUpdatedTimeReceiver time format is not changed check if it is NITZ Update"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-nez v0, :cond_7

    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_5

    const-string v4, "DrmEventService"

    const-string v5, "This is a not NITZ update.Time format is also not changed.Update delta"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/DrmEventService;->handleUserUpdatedTimeUpdation(Landroid/content/Intent;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .local v3, "telephonymanager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_9

    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_8

    const-string v4, "DrmEventService"

    const-string v5, "Auto time update is on but sim is not in ready state hence no NITZ update will follow"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/DrmEventService;->handleUserUpdatedTimeUpdation(Landroid/content/Intent;)V

    goto :goto_0

    :cond_9
    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_6

    const-string v4, "DrmEventService"

    const-string v5, "This is a NITZ update.So no need to update delta"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3    # "telephonymanager":Landroid/telephony/TelephonyManager;
    :cond_a
    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_b

    const-string v4, "DrmEventService"

    const-string v5, "userUpdatedTimeReceiver format is changed no need to udpate Delta"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iput-object v2, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public handleNitztimeUpdation(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, 0x0

    .local v4, "nitzTime":J
    if-eqz p1, :cond_2

    const-string v6, "DrmEventService"

    const-string v7, "handleNitztimeUpdation"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "c":Ljava/util/Calendar;
    const-string v6, "GMT"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :try_start_0
    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_0

    const-string v6, "DrmEventService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "date is :: year"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "month"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "day"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "hour"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "minute"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "second"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v6, 0x23

    const-string v7, "video/vnd.ms-playready.media.pyv"

    invoke-direct {v2, v6, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .local v2, "mPRDrmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string v6, "year"

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "month"

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "day"

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "hour"

    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "minute"

    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "second"

    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_1

    const-string v6, "DrmEventService"

    const-string v7, "calling handleDbOperation : TIME_CLOCK_UPDATE "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v2, v8}, Lcom/android/server/DrmEventService;->handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v3

    .local v3, "ret":I
    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_2

    const-string v6, "DrmEventService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleDbOperation : TIME_CLOCK_UPDATE  secure clock for PR  ret is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "mPRDrmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v3    # "ret":I
    :cond_2
    :goto_0
    return-void

    .restart local v0    # "c":Ljava/util/Calendar;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public handleUserUpdatedTimeUpdation(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const-wide/16 v2, 0x0

    .local v2, "beforeTime":J
    const-wide/16 v0, 0x0

    .local v0, "afterTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .local v5, "now":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    invoke-direct {p0}, Lcom/android/server/DrmEventService;->getBeforeTime()J

    move-result-wide v2

    const-wide/16 v8, -0x64

    cmp-long v7, v2, v8

    if-nez v7, :cond_1

    const-string v7, "DrmEventService"

    const-string v8, "handleUserUpdatedTimeUpdation beforeTime -100"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_2

    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleUserUpdatedTimeUpdation beforeTime :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "and afterTime :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v4, Landroid/drm/DrmInfoRequest;

    const/16 v7, 0x24

    const-string v8, "video/vnd.ms-playready.media.pyv"

    invoke-direct {v4, v7, v8}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .local v4, "mPRDrmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string v7, "before"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "after"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_3

    const-string v7, "DrmEventService"

    const-string v8, "calling handleDbOperation : TIME_CLOCK_UPDATE "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v7, 0x6

    invoke-direct {p0, v7, v12, v4, v12}, Lcom/android/server/DrmEventService;->handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v6

    .local v6, "ret":I
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_0

    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleDbOperation : TIME_CLOCK_UPDATE Updating of secure clock ret  for PR is  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrmEventService"

    const-string v1, "DrmEventService : onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    sget-boolean v1, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "DrmEventService"

    const-string v2, "DrmEventService : onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v1, :cond_1

    new-instance v1, Landroid/drm/DrmManagerClient;

    invoke-direct {v1, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmEventService"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .local v0, "thread":Landroid/os/HandlerThread;
    sget-boolean v1, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v1, :cond_2

    const-string v1, "DrmEventService"

    const-string v2, "DrmEventService : onCreate before thread.start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DrmEventService;->mServiceLooper:Landroid/os/Looper;

    new-instance v1, Lcom/android/server/DrmEventService$ServiceHandler;

    iget-object v2, p0, Lcom/android/server/DrmEventService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DrmEventService$ServiceHandler;-><init>(Lcom/android/server/DrmEventService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/DrmEventService;->mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrmEventService"

    const-string v1, "DrmEventService : onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/DrmEventService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrmEventService"

    const-string v1, "DrmEventService : OnLowMemory....Save the Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    sget-boolean v1, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "DrmEventService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart intent.getAction() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isRegisteredBootTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v1, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v1, :cond_1

    const-string v1, "DrmEventService"

    const-string v2, "DrmEventService : onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/DrmEventService;->mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/server/DrmEventService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/DrmEventService;->mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DrmEventService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    sget-boolean v1, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v1, :cond_2

    const-string v1, "DrmEventService"

    const-string v2, "DrmEventService : Service is started.Check if registration is required"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v1, :cond_3

    const-string v1, "DrmEventService"

    const-string v2, "DrmEventService : This is not BootTime.So register now."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->registerReceiever()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    sget-boolean v1, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v1, :cond_4

    const-string v1, "DrmEventService"

    const-string v2, "DrmEventService : Registration is already done in BootComplete.Leave it"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
