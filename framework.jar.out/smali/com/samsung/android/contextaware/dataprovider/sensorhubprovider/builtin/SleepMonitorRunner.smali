.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "SleepMonitorRunner.java"


# static fields
.field private static final DEFAULT_SAMPLING_INTERVAL:I = 0x64

.field private static final DEFAULT_SENSIBILITY:I = 0x50


# instance fields
.field private mSamplingInterval:I

.field private mSensibility:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/16 v0, 0x50

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->mSensibility:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->mSamplingInterval:I

    return-void
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
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SLEEP_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SleepStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PIM"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ZCM"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Stage"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Wrist"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Flag"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    new-array v0, v3, [B

    .local v0, "packet":[B
    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->mSensibility:I

    invoke-static {v3, v8}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    .local v2, "sensibility":[B
    aget-byte v3, v2, v4

    aput-byte v3, v0, v4

    aget-byte v3, v2, v5

    aput-byte v3, v0, v5

    aget-byte v3, v2, v6

    aput-byte v3, v0, v6

    aget-byte v3, v2, v7

    aput-byte v3, v0, v7

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->mSamplingInterval:I

    invoke-static {v3, v8}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .local v1, "samplingInterval":[B
    aget-byte v3, v1, v4

    aput-byte v3, v0, v8

    const/4 v3, 0x5

    aget-byte v4, v1, v5

    aput-byte v4, v0, v3

    const/4 v3, 0x6

    aget-byte v4, v1, v6

    aput-byte v4, v0, v3

    const/4 v3, 0x7

    aget-byte v4, v1, v7

    aput-byte v4, v0, v3

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->checkFaultDetectionResult()Z

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
    const/16 v0, 0x25

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

.method public final parse([BI)I
    .locals 14
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    move/from16 v8, p2

    .local v8, "tmpNext":I
    array-length v12, p1

    sub-int/2addr v12, v8

    add-int/lit8 v12, v12, -0x2

    if-gez v12, :cond_0

    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v9, -0x1

    :goto_0
    return v9

    :cond_0
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "tmpNext":I
    .local v9, "tmpNext":I
    aget-byte v12, p1, v8

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v8    # "tmpNext":I
    aget-byte v13, p1, v9

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    add-int v1, v12, v13

    .local v1, "dataSize":I
    if-lez v1, :cond_1

    rem-int/lit8 v12, v1, 0x11

    if-eqz v12, :cond_2

    :cond_1
    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v9, -0x1

    goto :goto_0

    :cond_2
    div-int/lit8 v0, v1, 0x11

    .local v0, "arraySize":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v4

    .local v4, "names":[Ljava/lang/String;
    new-array v7, v0, [I

    .local v7, "status":[I
    new-array v5, v0, [F

    .local v5, "pim":[F
    new-array v11, v0, [I

    .local v11, "zcm":[I
    new-array v6, v0, [I

    .local v6, "stage":[I
    new-array v10, v0, [I

    .local v10, "wrist":[I
    new-array v2, v0, [I

    .local v2, "flag":[I
    const/4 v3, 0x0

    .local v3, "i":I
    move v9, v8

    .end local v8    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    :goto_1
    if-ge v3, v0, :cond_3

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v8    # "tmpNext":I
    aget-byte v12, p1, v9

    aput v12, v7, v3

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v12, p1, v8

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v8    # "tmpNext":I
    aget-byte v13, p1, v9

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    add-int/2addr v12, v13

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v13, p1, v8

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    add-int/2addr v12, v13

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v8    # "tmpNext":I
    aget-byte v13, p1, v9

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    add-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v12, v13

    aput v12, v5, v3

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v12, p1, v8

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v8    # "tmpNext":I
    aget-byte v13, p1, v9

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    add-int/2addr v12, v13

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v13, p1, v8

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    add-int/2addr v12, v13

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v8    # "tmpNext":I
    aget-byte v13, p1, v9

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    add-int/2addr v12, v13

    aput v12, v11, v3

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v12, p1, v8

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v8    # "tmpNext":I
    aget-byte v13, p1, v9

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    add-int/2addr v12, v13

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v13, p1, v8

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    add-int/2addr v12, v13

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v8    # "tmpNext":I
    aget-byte v13, p1, v9

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    add-int/2addr v12, v13

    aput v12, v6, v3

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v12, p1, v8

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v8    # "tmpNext":I
    aget-byte v13, p1, v9

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    add-int/2addr v12, v13

    aput v12, v10, v3

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v12, p1, v8

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v8    # "tmpNext":I
    aget-byte v13, p1, v9

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    add-int/2addr v12, v13

    aput v12, v2, v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "status["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v7, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", pim["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v5, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", zcm["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v11, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", stage["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v6, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", wrist["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v10, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", flag["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v2, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    move v9, v8

    .end local v8    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    goto/16 :goto_1

    :cond_3
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v4, v13

    invoke-virtual {v12, v13, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v4, v13

    invoke-virtual {v12, v13, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v12

    const/4 v13, 0x2

    aget-object v13, v4, v13

    invoke-virtual {v12, v13, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v12

    const/4 v13, 0x3

    aget-object v13, v4, v13

    invoke-virtual {v12, v13, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v12

    const/4 v13, 0x4

    aget-object v13, v4, v13

    invoke-virtual {v12, v13, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v12

    const/4 v13, 0x5

    aget-object v13, v4, v13

    invoke-virtual {v12, v13, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move v8, v9

    .end local v9    # "tmpNext":I
    .restart local v8    # "tmpNext":I
    goto/16 :goto_0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 5
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x0

    const/4 v0, 0x1

    .local v0, "result":Z
    const/16 v3, 0x2a

    if-ne p1, v3, :cond_1

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "sensibility":I
    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->mSensibility:I

    if-gtz v3, :cond_0

    const-string v3, "sensibility must be above 0."

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    move v3, v4

    .end local v2    # "sensibility":I
    :goto_0
    return v3

    .restart local v2    # "sensibility":I
    :cond_0
    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->mSensibility:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sensibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->mSensibility:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .end local v2    # "sensibility":I
    :goto_1
    move v3, v0

    goto :goto_0

    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    const/16 v3, 0x2b

    if-ne p1, v3, :cond_3

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "samplingInterval":I
    if-gtz v1, :cond_2

    const-string v3, "sampling interval must be above 0."

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->mSamplingInterval:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sampling interval = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->mSamplingInterval:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "samplingInterval":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
