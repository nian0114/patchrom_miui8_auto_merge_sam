.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;
.source "BarometerSensorRunner.java"


# instance fields
.field private mBarometerData:[I

.field private mBarometerInitData:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;-><init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_BAROMETER_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Barometer"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v1, v6, [B

    .local v1, "packet":[B
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getInterval()I

    move-result v2

    invoke-static {v2, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .local v0, "data":[B
    aput-byte v6, v1, v3

    aget-byte v2, v0, v3

    aput-byte v2, v1, v4

    aget-byte v2, v0, v4

    aput-byte v2, v1, v5

    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
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
    .locals 10
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v6, -0x1

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .local v5, "tmpPacket":[B
    move v3, p2

    .local v3, "tmpNext":I
    array-length v7, v5

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_0

    move v4, v6

    :goto_0
    return v4

    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v2, v5, v3

    .local v2, "sensorCount":I
    if-gtz v2, :cond_1

    mul-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v7, v5, v4

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v8, v5, v3

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    :cond_1
    move v3, v4

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    new-array v7, v2, [I

    iput-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    const/4 v0, 0x0

    .local v0, "i":I
    move v4, v3

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :goto_1
    if-ge v0, v2, :cond_4

    array-length v7, v5

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_2

    move v3, v4

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    move v4, v6

    goto :goto_0

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :cond_2
    if-gtz v0, :cond_3

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    iget v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v9, v5, v4

    add-int/2addr v8, v9

    aput v8, v7, v0

    :goto_2
    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    aget v7, v7, v0

    iput v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    add-int/lit8 v9, v0, -0x1

    aget v8, v8, v9

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v9, v5, v4

    add-int/2addr v8, v9

    aput v8, v7, v0

    goto :goto_2

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .local v1, "names":[Ljava/lang/String;
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v1, v7

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->notifyObserver()V

    move v3, v4

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    goto :goto_0
.end method
