.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
.super Ljava/lang/Object;
.source "PowerResetNotiParser.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;
    }
.end annotation


# static fields
.field private static final SLPI_CMD_RESET_STATE:I = 0x0

.field private static final SLPI_CMD_RESTORE_STATE:I = 0x1

.field private static final SLPI_CMD_UNKNOWN_STATE:I = -0x1

.field private static final SLPI_RESET_STATUS:Ljava/lang/String; = "restrict"

.field private static final SLPI_RESET_STATUS_PATH:Ljava/lang/String; = "/sys/class/sensors/ssc_core/operation_mode"

.field private static final SLPI_RESTORE_STATUS:Ljava/lang/String; = "normal"

.field private static final SLPI_UNKNOWN_STATUS:Ljava/lang/String; = "unknown"


# instance fields
.field mContext:Landroid/content/Context;

.field private mLastStatus:Ljava/lang/String;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mLastStatus:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->isSLPISupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    const-string v1, "/sys/class/sensors/ssc_core/operation_mode"

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;->startWatching()V

    const-string v0, "SLPIResetObserver : start"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "SLPIResetObserver : observer is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->isSLPISupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mLastStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mLastStatus:Ljava/lang/String;

    return-object p1
.end method

.method private getFileData(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "file_path"    # Ljava/lang/String;

    .prologue
    const-string v4, ""

    .local v4, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v6, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "file_reader":Ljava/io/FileReader;
    if-nez p1, :cond_0

    const-string v7, "File Path is null!!"

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move-object v5, v4

    .end local v4    # "s":Ljava/lang/String;
    .local v5, "s":Ljava/lang/String;
    :goto_0
    return-object v5

    .end local v5    # "s":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "file_reader":Ljava/io/FileReader;
    .local v3, "file_reader":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileReader;->ready()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v0, 0x0

    .local v0, "data":I
    :goto_1
    invoke-virtual {v3}, Ljava/io/FileReader;->read()I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_1

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .end local v0    # "data":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .end local v3    # "file_reader":Ljava/io/FileReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    :goto_2
    :try_start_2
    const-string v7, "File is not found"

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    move-object v5, v4

    .end local v4    # "s":Ljava/lang/String;
    .restart local v5    # "s":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "file_reader":Ljava/io/FileReader;
    .end local v5    # "s":Ljava/lang/String;
    .restart local v0    # "data":I
    .restart local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v4    # "s":Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    .end local v0    # "data":I
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    .end local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    goto :goto_3

    .end local v2    # "file_reader":Ljava/io/FileReader;
    .restart local v3    # "file_reader":Ljava/io/FileReader;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .end local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    goto :goto_3

    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v7, "File is not found"

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :goto_6
    throw v7

    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file_reader":Ljava/io/FileReader;
    .restart local v3    # "file_reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    goto :goto_5

    .end local v2    # "file_reader":Ljava/io/FileReader;
    .restart local v3    # "file_reader":Ljava/io/FileReader;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_2
.end method

.method private isSLPISupported()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, "res":Z
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/sensors/ssc_core/operation_mode"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public final notifySensorHubResetObserver(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    .local v1, "observer":Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;->updateSensorHubResetStatus(I)V

    goto :goto_0

    .end local v1    # "observer":Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    :cond_1
    return-void
.end method

.method public final parse([BI)I
    .locals 7
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    move v2, p2

    .local v2, "tmpNext":I
    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_0

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "dispContextData":Landroid/os/Bundle;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v1, p1, v2

    .local v1, "sensorHubStatus":I
    const-string v4, "Noti"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x2b

    if-ne v1, v4, :cond_1

    const-string v4, "================= Noti (Power) ================="

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    const-string v4, "Noti Type : SensorHub Reset"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->notifySensorHubResetObserver(I)V

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->isBootComplete()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.contextaware.SENSORHUB_RESET"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    move v2, v3

    .end local v3    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    goto :goto_0
.end method

.method public final registerSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final unregisterSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
