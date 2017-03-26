.class public Lcom/android/nfc/dhimpl/NativeNfcManager;
.super Lcom/android/nfc/DeviceHostImplement;
.source "NativeNfcManager.java"


# static fields
.field static final DEFAULT_LLCP_MIU:I = 0x7bc

.field static final DEFAULT_LLCP_RWSIZE:I = 0x2

.field static final DRIVER_NAME:Ljava/lang/String; = "android-nci"

.field public static final INTERNAL_TARGET_DESELECTED_ACTION:Ljava/lang/String; = "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

.field static final PREF:Ljava/lang/String; = "NciDeviceHost"

.field private static final TAG:Ljava/lang/String; = "NativeNfcManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

.field private mNative:J

.field private mSeListener:Lcom/android/nfc/DeviceHost$SecureElementListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "nfc_nci_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/nfc/DeviceHostImplement;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .line 63
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->initializeNativeStructure()Z

    .line 64
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method private native doCreateLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;
.end method

.method private native doCreateLlcpServiceSocket(ILjava/lang/String;III)Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;
.end method

.method private native doCreateLlcpSocket(IIII)Lcom/android/nfc/dhimpl/NativeLlcpSocket;
.end method

.method private native doDeinitialize()Z
.end method

.method private native doDisableScreenOffSuspend()V
.end method

.method private native doDownload()Z
.end method

.method private native doDump()Ljava/lang/String;
.end method

.method private native doEnableDiscovery(IZZZZZ)V
.end method

.method private native doEnableScreenOffSuspend()V
.end method

.method private native doGetTimeout(I)I
.end method

.method private native doInitialize()Z
.end method

.method private native doResetTimeouts()V
.end method

.method private native doSetP2pInitiatorModes(I)V
.end method

.method private native doSetP2pTargetModes(I)V
.end method

.method private native doSetTimeout(II)Z
.end method

.method private notifyAidRoutingTableFull()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mSeListener:Lcom/android/nfc/DeviceHost$SecureElementListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$SecureElementListener;->onAidRoutingTableFull()V

    .line 517
    return-void
.end method

.method private notifyCardEmulationAidSelected([B)V
    .locals 1
    .param p1, "aid"    # [B

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mSeListener:Lcom/android/nfc/DeviceHost$SecureElementListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$SecureElementListener;->onCardEmulationAidSelected4Google([B)V

    .line 537
    return-void
.end method

.method private notifyCeErrorEvents(III)V
    .locals 1
    .param p1, "source"    # I
    .param p2, "err_type"    # I
    .param p3, "err_status"    # I

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p2, p3}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onCardEmulationDiscoveredError(II)V

    .line 574
    return-void
.end method

.method private notifyConnectivityListeners(I)V
    .locals 1
    .param p1, "evtSrc"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mSeListener:Lcom/android/nfc/DeviceHost$SecureElementListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$SecureElementListener;->onConnectivityEvent(I)V

    .line 545
    return-void
.end method

.method private notifyFirmwareDownloadStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onFirmwareDownloadStatusNotify(I)V

    .line 562
    return-void
.end method

.method private notifyHostEmuActivated()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationActivated()V

    .line 505
    return-void
.end method

.method private notifyHostEmuData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationData([B)V

    .line 509
    return-void
.end method

.method private notifyHostEmuDeactivated(I)V
    .locals 1
    .param p1, "deactType"    # I

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationDeactivated(I)V

    .line 513
    return-void
.end method

.method private notifyLlcpLinkActivation(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 464
    return-void
.end method

.method private notifyLlcpLinkDeactivated(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 471
    return-void
.end method

.method private notifyLlcpLinkFirstPacketReceived(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 478
    return-void
.end method

.method private notifyNdefMessageErrorListeners(II)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "protocol"    # I

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteEndpointDiscoveredError(II)V

    .line 578
    return-void
.end method

.method private notifyNdefMessageListeners(Lcom/android/nfc/dhimpl/NativeNfcTag;)V
    .locals 1
    .param p1, "tag"    # Lcom/android/nfc/dhimpl/NativeNfcTag;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    .line 448
    return-void
.end method

.method private notifyNfceeActionNtfListeners(I[BIII)V
    .locals 6
    .param p1, "aid_len"    # I
    .param p2, "aid"    # [B
    .param p3, "route_loc"    # I
    .param p4, "trigger"    # I
    .param p5, "status_code"    # I

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onCardEmulationNfceeActionNtf(I[BIII)V

    .line 582
    return-void
.end method

.method private notifyP2pErrorListeners(II)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "reason"    # I

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onP2pDiscoveredError(II)V

    .line 485
    return-void
.end method

.method private notifyRfFieldActivated()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldActivated()V

    .line 521
    return-void
.end method

.method private notifyRfFieldDeactivated()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldDeactivated()V

    .line 525
    return-void
.end method

.method private notifyRfFieldDetectedSTAG()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->LedCoverRfDetectCallback()V

    .line 566
    return-void
.end method

.method private notifySeApduReceived([B)V
    .locals 1
    .param p1, "apdu"    # [B

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mSeListener:Lcom/android/nfc/DeviceHost$SecureElementListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$SecureElementListener;->onSeApduReceived([B)V

    .line 549
    return-void
.end method

.method private notifySeEmvCardRemoval()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mSeListener:Lcom/android/nfc/DeviceHost$SecureElementListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$SecureElementListener;->onSeEmvCardRemoval()V

    .line 553
    return-void
.end method

.method private notifySeFieldActivated()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldActivated()V

    .line 489
    return-void
.end method

.method private notifySeFieldDeactivated()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldDeactivated()V

    .line 493
    return-void
.end method

.method private notifySeListenActivated()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mSeListener:Lcom/android/nfc/DeviceHost$SecureElementListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$SecureElementListener;->onSeListenActivated()V

    .line 497
    return-void
.end method

.method private notifySeListenDeactivated()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mSeListener:Lcom/android/nfc/DeviceHost$SecureElementListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$SecureElementListener;->onSeListenDeactivated()V

    .line 501
    return-void
.end method

.method private notifySeMifareAccess([B)V
    .locals 1
    .param p1, "block"    # [B

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mSeListener:Lcom/android/nfc/DeviceHost$SecureElementListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$SecureElementListener;->onSeMifareAccess([B)V

    .line 557
    return-void
.end method

.method private notifySeRouted(I)V
    .locals 1
    .param p1, "SeType"    # I

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onCardEmulationSeRouted(I)V

    .line 570
    return-void
.end method

.method private notifyTargetDeselected()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mSeListener:Lcom/android/nfc/DeviceHost$SecureElementListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$SecureElementListener;->onCardEmulationDeselected()V

    .line 456
    return-void
.end method

.method private notifyTransactionListeners([B[BI)V
    .locals 1
    .param p1, "aid"    # [B
    .param p2, "data"    # [B
    .param p3, "evtSrc"    # I

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mSeListener:Lcom/android/nfc/DeviceHost$SecureElementListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/nfc/DeviceHost$SecureElementListener;->onCardEmulationAidSelected([B[BI)V

    .line 541
    return-void
.end method


# virtual methods
.method public native GetDefaultSE()I
.end method

.method public native SWPSelfTest(I)I
.end method

.method public native StartLedCover()[B
.end method

.method public native StopLedCover()Z
.end method

.method public native TransceiveLedCover([B)[B
.end method

.method public canMakeReadOnly(I)Z
    .locals 2
    .param p1, "ndefType"    # I

    .prologue
    const/4 v0, 0x1

    .line 339
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x65

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkFirmware()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDownload()Z

    move-result v0

    .line 77
    .local v0, "ret":Z
    return-void
.end method

.method public clearRoutingEntry(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doClearRoutingEntry(I)Z

    move-result v0

    return v0
.end method

.method public native commitRouting()Z
.end method

.method public createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .locals 5
    .param p1, "nSap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;

    move-result-object v1

    .line 242
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    if-eqz v1, :cond_0

    .line 243
    return-object v1

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v0

    .line 248
    .local v0, "error":I
    const-string v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    packed-switch v0, :pswitch_data_0

    .line 255
    :pswitch_0
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 253
    :pswitch_1
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v0}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 250
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .locals 5
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
    .line 265
    invoke-direct/range {p0 .. p5}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpServiceSocket(ILjava/lang/String;III)Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;

    move-result-object v1

    .line 266
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    if-eqz v1, :cond_0

    .line 267
    return-object v1

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v0

    .line 272
    .local v0, "error":I
    const-string v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    packed-switch v0, :pswitch_data_0

    .line 279
    :pswitch_0
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 277
    :pswitch_1
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v0}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 274
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .locals 5
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
    .line 289
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpSocket(IIII)Lcom/android/nfc/dhimpl/NativeLlcpSocket;

    move-result-object v1

    .line 290
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v1, :cond_0

    .line 291
    return-object v1

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v0

    .line 296
    .local v0, "error":I
    const-string v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    packed-switch v0, :pswitch_data_0

    .line 303
    :pswitch_0
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 301
    :pswitch_1
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v0}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 298
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public deinitialize()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 100
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string v3, "NciDeviceHost"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 101
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "se_wired"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDeinitialize()Z

    move-result v2

    return v2
.end method

.method public native disableDiscovery()V
.end method

.method public disableScreenOffSuspend()Z
    .locals 1

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDisableScreenOffSuspend()V

    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method public native doAbort()V
.end method

.method public native doActivateLlcp()Z
.end method

.method public native doCheckLlcp()Z
.end method

.method public native doClearRoutingEntry(I)Z
.end method

.method public native doDeselectSecureElement(I)V
.end method

.method public native doEnablep2p(Z)V
.end method

.method public native doGetLastError()I
.end method

.method public native doGetSeSupportedTech()I
.end method

.method public native doGetSecureElementList()[I
.end method

.method public native doGetSecureElementTechList()I
.end method

.method public native doPrbsOff()V
.end method

.method public native doPrbsOn(II)V
.end method

.method public native doRouteAid([BIIZ)Z
.end method

.method public native doSelectSecureElement(I)V
.end method

.method public native doSetListenTechMask(I)V
.end method

.method public native doSetRoutingEntry(IIII)Z
.end method

.method public native doSetSEPowerOffState(IZ)V
.end method

.method public native doSetScreenOrPowerState(I)V
.end method

.method public native doSetSecureElementListenTechMask(I)V
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDump()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
    .locals 7
    .param p1, "params"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p2, "restart"    # Z

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->getTechMask()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableLowPowerDiscovery()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableReaderMode()Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableHostRouting()Z

    move-result v4

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableP2p()Z

    move-result v5

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableDiscovery(IZZZZZ)V

    .line 177
    return-void
.end method

.method public enableScreenOffSuspend()Z
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableScreenOffSuspend()V

    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method public native getAidTableSize()I
.end method

.method public native getChipVer()I
.end method

.method public getDefaultLlcpMiu()I
    .locals 1

    .prologue
    .line 395
    const/16 v0, 0x7bc

    return v0
.end method

.method public getDefaultLlcpRwSize()I
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x2

    return v0
.end method

.method public getExtendedLengthApdusSupported()Z
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method public native getFWVersion()I
.end method

.method public getMaxTransceiveLength(I)I
    .locals 1
    .param p1, "technology"    # I

    .prologue
    const/16 v0, 0xfd

    .line 345
    packed-switch p1, :pswitch_data_0

    .line 371
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    .line 358
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->getExtendedLengthApdusSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const v0, 0xfeff

    goto :goto_0

    .line 366
    :cond_0
    const/16 v0, 0x105

    goto :goto_0

    .line 369
    :pswitch_3
    const/16 v0, 0xfc

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "android-nci"

    return-object v0
.end method

.method public native getRemainingAidTableSize()I
.end method

.method public getTimeout(I)I
    .locals 1
    .param p1, "tech"    # I

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetTimeout(I)I

    move-result v0

    return v0
.end method

.method public initialize()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 83
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string v3, "NciDeviceHost"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 84
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "se_wired"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const-wide/16 v2, 0x2ee0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 89
    const-string v2, "se_wired"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doInitialize()Z

    move-result v2

    return v2

    .line 91
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public native initializeNativeStructure()Z
.end method

.method public resetTimeouts()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doResetTimeouts()V

    .line 319
    return-void
.end method

.method public routeAid([BIIZ)Z
    .locals 2
    .param p1, "aid"    # [B
    .param p2, "route"    # I
    .param p3, "powerState"    # I
    .param p4, "isprefix"    # Z

    .prologue
    .line 120
    const/4 v0, 0x1

    .line 122
    .local v0, "status":Z
    if-nez p2, :cond_0

    .line 123
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doRouteAid([BIIZ)Z

    move-result v0

    .line 128
    :goto_0
    return v0

    .line 125
    :cond_0
    or-int/lit16 v1, p3, 0x80

    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doRouteAid([BIIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public native sendRawFrame([B)Z
.end method

.method public native setDefaultProtoRoute(III)V
.end method

.method public native setDefaultTechRoute(III)V
.end method

.method public setP2pInitiatorModes(I)V
    .locals 0
    .param p1, "modes"    # I

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetP2pInitiatorModes(I)V

    .line 380
    return-void
.end method

.method public setP2pTargetModes(I)V
    .locals 0
    .param p1, "modes"    # I

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetP2pTargetModes(I)V

    .line 386
    return-void
.end method

.method public setRoutingEntry(IIII)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # I
    .param p3, "route"    # I
    .param p4, "power"    # I

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetRoutingEntry(IIII)Z

    move-result v0

    return v0
.end method

.method public setSeListener(Lcom/android/nfc/DeviceHost$SecureElementListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/nfc/DeviceHost$SecureElementListener;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mSeListener:Lcom/android/nfc/DeviceHost$SecureElementListener;

    .line 533
    return-void
.end method

.method public setTimeout(II)Z
    .locals 1
    .param p1, "tech"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 327
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetTimeout(II)Z

    move-result v0

    return v0
.end method

.method public native startCoverAuth()[B
.end method

.method public native stopCoverAuth()Z
.end method

.method public native transceiveAuthData([B)[B
.end method

.method public native unrouteAid([B)Z
.end method
