.class public Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
.super Ljava/lang/Object;
.source "CaTelephonyManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$2;,
        Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;,
        Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;
    }
.end annotation


# static fields
.field private static final CALL_STATE_ACTIVE:B = -0x27t

.field private static final CALL_STATE_IDLE:B = -0x28t

.field private static CALL_STATE_IDLE_1:I

.field private static CALL_STATE_INCOMING_ANSWERED:I

.field private static CALL_STATE_INCOMING_MISSED:I

.field private static CALL_STATE_INCOMING_RINGING:I

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;


# instance fields
.field private mCellLocation:Landroid/telephony/CellLocation;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->CALL_STATE_IDLE_1:I

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->CALL_STATE_INCOMING_RINGING:I

    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->CALL_STATE_INCOMING_ANSWERED:I

    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->CALL_STATE_INCOMING_MISSED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$1002(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
    .param p1, "x1"    # Landroid/telephony/CellLocation;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->sendCellInfoToSensorHub()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->sendCallStatusToSensorHub(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;Landroid/telephony/CellLocation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
    .param p1, "x1"    # Landroid/telephony/CellLocation;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->isCellLocationChanged(Landroid/telephony/CellLocation;)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
    .locals 2

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isCellLocationChanged(Landroid/telephony/CellLocation;)Z
    .locals 12
    .param p1, "cl"    # Landroid/telephony/CellLocation;

    .prologue
    const/4 v10, 0x0

    .local v10, "ret":Z
    iget-object v11, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    instance-of v11, v11, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v11, :cond_2

    instance-of v11, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v11, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v11}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    .local v6, "prevCid":I
    iget-object v11, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v11, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v11}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v7

    .local v7, "prevLac":I
    move-object v11, p1

    check-cast v11, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v11}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .local v1, "curCid":I
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .end local p1    # "cl":Landroid/telephony/CellLocation;
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .local v2, "curLac":I
    if-eq v6, v1, :cond_0

    if-eq v7, v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v10, 0x1

    .end local v1    # "curCid":I
    .end local v2    # "curLac":I
    .end local v6    # "prevCid":I
    .end local v7    # "prevLac":I
    :cond_0
    :goto_0
    return v10

    .restart local p1    # "cl":Landroid/telephony/CellLocation;
    :cond_1
    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    instance-of v11, v11, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v11, :cond_0

    instance-of v11, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v11, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v11}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v5

    .local v5, "prevBid":I
    iget-object v11, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v11, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v11}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v8

    .local v8, "prevNid":I
    iget-object v11, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v11, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v11}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v9

    .local v9, "prevSid":I
    move-object v11, p1

    check-cast v11, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v11}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .local v0, "curBid":I
    move-object v11, p1

    check-cast v11, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v11}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    .local v3, "curNid":I
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .end local p1    # "cl":Landroid/telephony/CellLocation;
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v4

    .local v4, "curSid":I
    if-ne v5, v0, :cond_3

    if-ne v8, v3, :cond_3

    if-eq v9, v4, :cond_0

    :cond_3
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    .end local v0    # "curBid":I
    .end local v3    # "curNid":I
    .end local v4    # "curSid":I
    .end local v5    # "prevBid":I
    .end local v8    # "prevNid":I
    .end local v9    # "prevSid":I
    .restart local p1    # "cl":Landroid/telephony/CellLocation;
    :cond_4
    const/4 v10, 0x1

    goto :goto_0

    :cond_5
    instance-of v11, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v11, :cond_6

    move-object v11, p1

    check-cast v11, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v11}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .restart local v1    # "curCid":I
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .end local p1    # "cl":Landroid/telephony/CellLocation;
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .restart local v2    # "curLac":I
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    .end local v1    # "curCid":I
    .end local v2    # "curLac":I
    .restart local p1    # "cl":Landroid/telephony/CellLocation;
    :cond_6
    instance-of v11, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v11, :cond_0

    move-object v11, p1

    check-cast v11, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v11}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .restart local v0    # "curBid":I
    move-object v11, p1

    check-cast v11, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v11}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    .restart local v3    # "curNid":I
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .end local p1    # "cl":Landroid/telephony/CellLocation;
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v4

    .restart local v4    # "curSid":I
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    const/4 v10, 0x1

    goto :goto_0
.end method

.method private sendCallStatusToSensorHub(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    new-array v0, v3, [B

    .local v0, "dataPacket":[B
    int-to-byte v1, p1

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v1

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    return-void

    nop

    :array_0
    .array-data 1
        -0x4ct
        0x11t
    .end array-data
.end method

.method private sendCellInfoToSensorHub()V
    .locals 15

    .prologue
    const/16 v12, 0xe

    new-array v2, v12, [B

    .local v2, "dataPacket":[B
    const/4 v8, 0x4

    .local v8, "size":I
    const/4 v10, 0x0

    .local v10, "toSendData":Z
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v11

    .local v11, "utcTime":[I
    const/4 v12, 0x0

    const/4 v13, 0x0

    aget v13, v11, v13

    int-to-byte v13, v13

    aput-byte v13, v2, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    aget v13, v11, v13

    int-to-byte v13, v13

    aput-byte v13, v2, v12

    const/4 v12, 0x2

    const/4 v13, 0x2

    aget v13, v11, v13

    int-to-byte v13, v13

    aput-byte v13, v2, v12

    iget-object v12, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    instance-of v12, v12, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v12, :cond_2

    const/4 v12, 0x3

    const/4 v13, 0x0

    aput-byte v13, v2, v12

    iget-object v12, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v12, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v12}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .local v1, "cid":I
    iget-object v12, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v12, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v12}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    .local v3, "lac":I
    const/4 v4, 0x0

    .local v4, "mcc":I
    const/4 v5, 0x0

    .local v5, "mnc":I
    const/4 v12, 0x4

    invoke-static {v1, v12}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-static {v12, v13, v2, v8, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v12, 0x2

    invoke-static {v3, v12}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    add-int/lit8 v8, v8, 0x4

    const/4 v14, 0x2

    invoke-static {v12, v13, v2, v8, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    add-int/lit8 v8, v8, 0x2

    const/4 v14, 0x2

    invoke-static {v12, v13, v2, v8, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    add-int/lit8 v8, v8, 0x2

    const/4 v14, 0x2

    invoke-static {v12, v13, v2, v8, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v10, 0x1

    .end local v1    # "cid":I
    .end local v3    # "lac":I
    .end local v4    # "mcc":I
    .end local v5    # "mnc":I
    :cond_0
    :goto_0
    const/4 v12, 0x1

    if-ne v10, v12, :cond_1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_0

    invoke-virtual {v12, v2, v13}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    :cond_1
    return-void

    :cond_2
    iget-object v12, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    instance-of v12, v12, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v12, :cond_0

    const/4 v12, 0x3

    const/4 v13, 0x1

    aput-byte v13, v2, v12

    iget-object v12, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v12, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v12}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .local v0, "baseStationId":I
    iget-object v12, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v12, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v12}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v6

    .local v6, "networkId":I
    iget-object v12, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v12, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v12}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v9

    .local v9, "systemId":I
    const/4 v7, 0x0

    .local v7, "padding":I
    const/4 v12, 0x2

    invoke-static {v0, v12}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v12, v13, v2, v8, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v12, 0x2

    invoke-static {v6, v12}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    add-int/lit8 v8, v8, 0x2

    const/4 v14, 0x2

    invoke-static {v12, v13, v2, v8, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v12, 0x2

    invoke-static {v9, v12}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    add-int/lit8 v8, v8, 0x2

    const/4 v14, 0x2

    invoke-static {v12, v13, v2, v8, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-static {v12, v13}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    add-int/lit8 v8, v8, 0x2

    const/4 v14, 0x4

    invoke-static {v12, v13, v2, v8, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v10, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        -0x3ft
        0x11t
    .end array-data
.end method


# virtual methods
.method public final initializeManager(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    if-nez p1, :cond_0

    const-string v0, "Context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    const-string v0, "mTelephonyManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x120

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public final terminateManager()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method
