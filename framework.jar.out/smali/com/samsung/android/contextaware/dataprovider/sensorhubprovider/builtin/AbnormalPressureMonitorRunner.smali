.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalPressureMonitorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "AbnormalPressureMonitorRunner.java"


# static fields
.field private static final LOG_FILE:Ljava/lang/String; = "/data/log/CAE/phone_state.txt"

.field private static final LOG_FILE_DIR:Ljava/lang/String; = "/data/log/CAE"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method

.method private getDate(J)Ljava/lang/String;
    .locals 3
    .param p1, "time"    # J

    .prologue
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private recordAbnormalPressure()V
    .locals 10

    .prologue
    new-instance v4, Ljava/io/File;

    const-string v6, "/data/log/CAE"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "folder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v6, "/data/log/CAE/phone_state.txt"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "file":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "fOutStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v2, v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "fOutStream":Ljava/io/FileOutputStream;
    .local v2, "fOutStream":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_1

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalPressureMonitorRunner;->getDate(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - ABNORMAL PRESSURE DETECTED\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "out":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v5    # "out":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .end local v2    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fOutStream":Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    return-void

    .end local v1    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fOutStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .end local v2    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fOutStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_3
    throw v6

    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fOutStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fOutStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fOutStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fOutStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fOutStream":Ljava/io/FileOutputStream;
    :cond_4
    move-object v1, v2

    .end local v2    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fOutStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ABNORMAL_PRESSURE_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "xaxis"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "yaxis"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "zaxis"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "barometer"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalPressureMonitorRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    const/16 v0, 0x31

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    return-object p0
.end method

.method public parse([BI)I
    .locals 12
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/high16 v11, 0x447a0000    # 1000.0f

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    move v1, p2

    .local v1, "tmpNext":I
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalPressureMonitorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .local v0, "names":[Ljava/lang/String;
    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x10

    if-gez v3, :cond_0

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v7

    const/4 v5, 0x4

    new-array v5, v5, [B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v2, "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v8

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v9

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v8

    const/4 v5, 0x4

    new-array v5, v5, [B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v8

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v9

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v9

    const/4 v5, 0x4

    new-array v5, v5, [B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v8

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v9

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v10

    const/4 v5, 0x4

    new-array v5, v5, [B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v8

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v9

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move v3, v1

    goto/16 :goto_0
.end method
