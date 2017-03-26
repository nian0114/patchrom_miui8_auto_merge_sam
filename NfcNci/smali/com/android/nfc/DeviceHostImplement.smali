.class public Lcom/android/nfc/DeviceHostImplement;
.super Ljava/lang/Object;
.source "DeviceHostImplement.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost;


# static fields
.field private static final DEFALUT_ARRAY:[I

.field private static final DEFALUT_BOOLEAN:Z = true

.field private static final DEFALUT_INT:I = -0x3e7

.field private static final DEFALUT_STRING:Ljava/lang/String; = "String"

.field static final DEFAULT_BYTEARRARY:[B

.field static final DEFAULT_BYTEARRARY_MULTI:[[B


# instance fields
.field private FAKE_OBJECT:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/android/nfc/DeviceHostImplement;->DEFALUT_ARRAY:[I

    .line 38
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lcom/android/nfc/DeviceHostImplement;->DEFAULT_BYTEARRARY:[B

    .line 40
    filled-new-array {v1, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    sput-object v0, Lcom/android/nfc/DeviceHostImplement;->DEFAULT_BYTEARRARY_MULTI:[[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/DeviceHostImplement;->FAKE_OBJECT:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public GetDefaultSE()I
    .locals 1

    .prologue
    .line 129
    const/16 v0, -0x3e7

    return v0
.end method

.method public SLSI_GCFReaderModeTest(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public SLSI_mPOSConfigforTest(I)Z
    .locals 1
    .param p1, "nTestMode"    # I

    .prologue
    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method public SLSI_mPOSDedicatedMode(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method public SLSI_mPOSGetInfo(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public SLSI_mPOSSelectUiccHost(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method public SWPSelfTest(I)I
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 139
    const/16 v0, -0x3e7

    return v0
.end method

.method public SetFilterTag(I)Z
    .locals 1
    .param p1, "Enable"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public SetScreenState(Z)Z
    .locals 1
    .param p1, "Enable"    # Z

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public StartLedCover()[B
    .locals 1

    .prologue
    .line 292
    sget-object v0, Lcom/android/nfc/DeviceHostImplement;->DEFAULT_BYTEARRARY:[B

    return-object v0
.end method

.method public StopLedCover()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public TransceiveLedCover([B)[B
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 289
    sget-object v0, Lcom/android/nfc/DeviceHostImplement;->DEFAULT_BYTEARRARY:[B

    return-object v0
.end method

.method public canMakeReadOnly(I)Z
    .locals 1
    .param p1, "technology"    # I

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public checkFirmware()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public checkFirmware(Z)Z
    .locals 1
    .param p1, "dummy"    # Z

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public clearAidTable()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public clearRouting()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public clearRoutingEntry(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public commitRouting()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .locals 1
    .param p1, "nSap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .locals 1
    .param p1, "nSap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "miu"    # I
    .param p4, "rw"    # I
    .param p5, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .locals 1
    .param p1, "sap"    # I
    .param p2, "miu"    # I
    .param p3, "rw"    # I
    .param p4, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public deinitialize()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public disableDiscovery()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public disableRoutingToHost()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public disableScreenOffSuspend()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public doAbort()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public doActivateLlcp()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public doCheckLlcp()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public doConfigureDesfireRoute(I)V
    .locals 0
    .param p1, "eeId"    # I

    .prologue
    .line 70
    return-void
.end method

.method public doDeselectSecureElement(I)V
    .locals 0
    .param p1, "seID"    # I

    .prologue
    .line 167
    return-void
.end method

.method public doEnablep2p(Z)V
    .locals 0
    .param p1, "p2pFlag"    # Z

    .prologue
    .line 179
    return-void
.end method

.method public doGetSeSupportedTech()I
    .locals 1

    .prologue
    .line 277
    const/16 v0, -0x3e7

    return v0
.end method

.method public doGetSecureElementList()[I
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/nfc/DeviceHostImplement;->DEFALUT_ARRAY:[I

    return-object v0
.end method

.method public doGetSecureElementTechList()I
    .locals 1

    .prologue
    .line 145
    const/16 v0, -0x3e7

    return v0
.end method

.method public doPrbsOff()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public doPrbsOn(II)V
    .locals 0
    .param p1, "tech"    # I
    .param p2, "rate"    # I

    .prologue
    .line 133
    return-void
.end method

.method public doSelectSecureElement(I)V
    .locals 0
    .param p1, "seID"    # I

    .prologue
    .line 164
    return-void
.end method

.method public doSetListenTechMask(I)V
    .locals 0
    .param p1, "tech_mask"    # I

    .prologue
    .line 151
    return-void
.end method

.method public doSetSEPowerOffState(IZ)V
    .locals 0
    .param p1, "seID"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 155
    return-void
.end method

.method public doSetScreenOrPowerState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 176
    return-void
.end method

.method public doSetSecureElementListenTechMask(I)V
    .locals 0
    .param p1, "tech_mask"    # I

    .prologue
    .line 148
    return-void
.end method

.method public doTestSwp()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    const-string v0, "String"

    return-object v0
.end method

.method public enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
    .locals 0
    .param p1, "params"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p2, "restart"    # Z

    .prologue
    .line 62
    return-void
.end method

.method public enableRoutingToHost()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public enableScreenOffSuspend()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public getAidTableSize()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x96

    return v0
.end method

.method public getChipVer()I
    .locals 1

    .prologue
    .line 170
    const/16 v0, -0x3e7

    return v0
.end method

.method public getDefaultLlcpMiu()I
    .locals 1

    .prologue
    .line 242
    const/16 v0, -0x3e7

    return v0
.end method

.method public getDefaultLlcpRwSize()I
    .locals 1

    .prologue
    .line 245
    const/16 v0, -0x3e7

    return v0
.end method

.method public getEseHandleFromGenericId(I)S
    .locals 1
    .param p1, "eseId"    # I

    .prologue
    .line 191
    const/4 v0, -0x1

    return v0
.end method

.method public getExtendedLengthApdusSupported()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public getFWVersion()I
    .locals 1

    .prologue
    .line 142
    const/16 v0, -0x3e7

    return v0
.end method

.method public getGenericEseId(S)I
    .locals 1
    .param p1, "handle"    # S

    .prologue
    .line 188
    const/16 v0, -0x3e7

    return v0
.end method

.method public getMaxTransceiveLength(I)I
    .locals 1
    .param p1, "technology"    # I

    .prologue
    .line 230
    const/16 v0, -0x3e7

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "String"

    return-object v0
.end method

.method public getRemainingAidTableSize()I
    .locals 1

    .prologue
    .line 126
    const/16 v0, -0x3e7

    return v0
.end method

.method public getRoutingTableFreeSpace()I
    .locals 1

    .prologue
    .line 257
    const/16 v0, -0x3e7

    return v0
.end method

.method public getTimeout(I)I
    .locals 1
    .param p1, "technology"    # I

    .prologue
    .line 221
    const/16 v0, -0x3e7

    return v0
.end method

.method public getWipeApdus()[[B
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/nfc/DeviceHostImplement;->DEFAULT_BYTEARRARY_MULTI:[[B

    return-object v0
.end method

.method public initialize()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public onPpseRouted(I)Z
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public reRouteAid([BIZZ)Z
    .locals 1
    .param p1, "aid"    # [B
    .param p2, "route"    # I
    .param p3, "isStopDiscovery"    # Z
    .param p4, "isStartDiscovery"    # Z

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public removeHceOffHostAidRoute([B)V
    .locals 0
    .param p1, "aid"    # [B

    .prologue
    .line 102
    return-void
.end method

.method public resetTimeouts()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public routeAid([BII)Z
    .locals 1
    .param p1, "aid"    # [B
    .param p2, "routej"    # I
    .param p3, "powerState"    # I

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public routeAid([BIIZ)Z
    .locals 1
    .param p1, "aid"    # [B
    .param p2, "routej"    # I
    .param p3, "powerState"    # I
    .param p4, "isprefix"    # Z

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public sendRawFrame([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public setColdBootFlag(Z)V
    .locals 0
    .param p1, "isColdBoot"    # Z

    .prologue
    .line 260
    return-void
.end method

.method public setDefaultAidRoute(I)Z
    .locals 1
    .param p1, "defaultAidRoute"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultProtoRoute(III)V
    .locals 0
    .param p1, "seID"    # I
    .param p2, "proto_switchon"    # I
    .param p3, "proto_switchoff"    # I

    .prologue
    .line 161
    return-void
.end method

.method public setDefaultRoute(III)Z
    .locals 1
    .param p1, "switch_on"    # I
    .param p2, "switch_off"    # I
    .param p3, "battery_off"    # I

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultRouteDestinations(II)V
    .locals 0
    .param p1, "defaultIsoDepRoute"    # I
    .param p2, "defaultOffHostRoute"    # I

    .prologue
    .line 90
    return-void
.end method

.method public setDefaultTechRoute(III)V
    .locals 0
    .param p1, "seID"    # I
    .param p2, "tech_switchon"    # I
    .param p3, "tech_switchoff"    # I

    .prologue
    .line 158
    return-void
.end method

.method public setHceOffHostAidRoute([BZZZIZZZ)V
    .locals 0
    .param p1, "aid"    # [B
    .param p2, "screenOn"    # Z
    .param p3, "screenOff"    # Z
    .param p4, "screenLock"    # Z
    .param p5, "route"    # I
    .param p6, "switchOn"    # Z
    .param p7, "switchOff"    # Z
    .param p8, "batteryOff"    # Z

    .prologue
    .line 99
    return-void
.end method

.method public setP2pInitiatorModes(I)V
    .locals 0
    .param p1, "modes"    # I

    .prologue
    .line 233
    return-void
.end method

.method public setP2pTargetModes(I)V
    .locals 0
    .param p1, "modes"    # I

    .prologue
    .line 236
    return-void
.end method

.method public setPowerMode(I)Z
    .locals 1
    .param p1, "powerState"    # I

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public setRoutingEntry(IIII)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # I
    .param p3, "route"    # I
    .param p4, "power"    # I

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public setSeListener(Lcom/android/nfc/DeviceHost$SecureElementListener;)V
    .locals 0
    .param p1, "seListener"    # Lcom/android/nfc/DeviceHost$SecureElementListener;

    .prologue
    .line 44
    return-void
.end method

.method public setStaticRouteByProto(IZZZIZZZ)V
    .locals 0
    .param p1, "protocol"    # I
    .param p2, "screenOn"    # Z
    .param p3, "screenOff"    # Z
    .param p4, "screenLock"    # Z
    .param p5, "route"    # I
    .param p6, "switchOn"    # Z
    .param p7, "switchOff"    # Z
    .param p8, "batteryOff"    # Z

    .prologue
    .line 96
    return-void
.end method

.method public setStaticRouteByTech(IZZZIZZZ)V
    .locals 0
    .param p1, "technology"    # I
    .param p2, "screenOn"    # Z
    .param p3, "screenOff"    # Z
    .param p4, "screenLock"    # Z
    .param p5, "route"    # I
    .param p6, "switchOn"    # Z
    .param p7, "switchOff"    # Z
    .param p8, "batteryOff"    # Z

    .prologue
    .line 93
    return-void
.end method

.method public setTimeout(II)Z
    .locals 1
    .param p1, "technology"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public startCoverAuth()[B
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/android/nfc/DeviceHostImplement;->DEFAULT_BYTEARRARY:[B

    return-object v0
.end method

.method public startPRBSTest(II)V
    .locals 0
    .param p1, "tech"    # I
    .param p2, "bitrate"    # I

    .prologue
    .line 73
    return-void
.end method

.method public stopCoverAuth()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public stopPRBSTest()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public swpTest()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, -0x3e7

    return v0
.end method

.method public transceiveAuthData([B)[B
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 273
    sget-object v0, Lcom/android/nfc/DeviceHostImplement;->DEFAULT_BYTEARRARY:[B

    return-object v0
.end method

.method public unrouteAid([B)Z
    .locals 1
    .param p1, "aid"    # [B

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method
