.class public interface abstract Lcom/android/nfc/DeviceHost;
.super Ljava/lang/Object;
.source "DeviceHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/DeviceHost$SecureElementListener;,
        Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;,
        Lcom/android/nfc/DeviceHost$LlcpServerSocket;,
        Lcom/android/nfc/DeviceHost$LlcpSocket;,
        Lcom/android/nfc/DeviceHost$NfcDepEndpoint;,
        Lcom/android/nfc/DeviceHost$NfceeEndpoint;,
        Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;,
        Lcom/android/nfc/DeviceHost$TagEndpoint;,
        Lcom/android/nfc/DeviceHost$DeviceHostListener;
    }
.end annotation


# static fields
.field public static final POWER_STATE_OFF:I = 0x1

.field public static final POWER_STATE_SCREEN_OFF:I = 0x2

.field public static final POWER_STATE_SCREEN_ON_LOCKED:I = 0x3

.field public static final POWER_STATE_SCREEN_ON_UNLOCKED:I = 0x4

.field public static final POWER_STATE_UNKNOWN:I


# virtual methods
.method public abstract GetDefaultSE()I
.end method

.method public abstract SLSI_GCFReaderModeTest(Z)Z
.end method

.method public abstract SLSI_mPOSConfigforTest(I)Z
.end method

.method public abstract SLSI_mPOSDedicatedMode(Z)Z
.end method

.method public abstract SLSI_mPOSGetInfo(Z)Z
.end method

.method public abstract SLSI_mPOSSelectUiccHost(Z)Z
.end method

.method public abstract SWPSelfTest(I)I
.end method

.method public abstract SetFilterTag(I)Z
.end method

.method public abstract SetScreenState(Z)Z
.end method

.method public abstract StartLedCover()[B
.end method

.method public abstract StopLedCover()Z
.end method

.method public abstract TransceiveLedCover([B)[B
.end method

.method public abstract canMakeReadOnly(I)Z
.end method

.method public abstract checkFirmware()V
.end method

.method public abstract checkFirmware(Z)Z
.end method

.method public abstract clearAidTable()Z
.end method

.method public abstract clearRouting()V
.end method

.method public abstract clearRoutingEntry(I)Z
.end method

.method public abstract commitRouting()Z
.end method

.method public abstract createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation
.end method

.method public abstract createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation
.end method

.method public abstract createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation
.end method

.method public abstract deinitialize()Z
.end method

.method public abstract disableDiscovery()V
.end method

.method public abstract disableRoutingToHost()V
.end method

.method public abstract disableScreenOffSuspend()Z
.end method

.method public abstract doAbort()V
.end method

.method public abstract doActivateLlcp()Z
.end method

.method public abstract doCheckLlcp()Z
.end method

.method public abstract doConfigureDesfireRoute(I)V
.end method

.method public abstract doDeselectSecureElement(I)V
.end method

.method public abstract doEnablep2p(Z)V
.end method

.method public abstract doGetSeSupportedTech()I
.end method

.method public abstract doGetSecureElementList()[I
.end method

.method public abstract doGetSecureElementTechList()I
.end method

.method public abstract doPrbsOff()V
.end method

.method public abstract doPrbsOn(II)V
.end method

.method public abstract doSelectSecureElement(I)V
.end method

.method public abstract doSetListenTechMask(I)V
.end method

.method public abstract doSetSEPowerOffState(IZ)V
.end method

.method public abstract doSetScreenOrPowerState(I)V
.end method

.method public abstract doSetSecureElementListenTechMask(I)V
.end method

.method public abstract doTestSwp()Z
.end method

.method public abstract dump()Ljava/lang/String;
.end method

.method public abstract enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
.end method

.method public abstract enableRoutingToHost()V
.end method

.method public abstract enableScreenOffSuspend()Z
.end method

.method public abstract getAidTableSize()I
.end method

.method public abstract getChipVer()I
.end method

.method public abstract getDefaultLlcpMiu()I
.end method

.method public abstract getDefaultLlcpRwSize()I
.end method

.method public abstract getEseHandleFromGenericId(I)S
.end method

.method public abstract getExtendedLengthApdusSupported()Z
.end method

.method public abstract getFWVersion()I
.end method

.method public abstract getGenericEseId(S)I
.end method

.method public abstract getMaxTransceiveLength(I)I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRemainingAidTableSize()I
.end method

.method public abstract getRoutingTableFreeSpace()I
.end method

.method public abstract getTimeout(I)I
.end method

.method public abstract getWipeApdus()[[B
.end method

.method public abstract initialize()Z
.end method

.method public abstract onPpseRouted(I)Z
.end method

.method public abstract reRouteAid([BIZZ)Z
.end method

.method public abstract removeHceOffHostAidRoute([B)V
.end method

.method public abstract resetTimeouts()V
.end method

.method public abstract routeAid([BII)Z
.end method

.method public abstract routeAid([BIIZ)Z
.end method

.method public abstract sendRawFrame([B)Z
.end method

.method public abstract setColdBootFlag(Z)V
.end method

.method public abstract setDefaultAidRoute(I)Z
.end method

.method public abstract setDefaultProtoRoute(III)V
.end method

.method public abstract setDefaultRoute(III)Z
.end method

.method public abstract setDefaultRouteDestinations(II)V
.end method

.method public abstract setDefaultTechRoute(III)V
.end method

.method public abstract setHceOffHostAidRoute([BZZZIZZZ)V
.end method

.method public abstract setP2pInitiatorModes(I)V
.end method

.method public abstract setP2pTargetModes(I)V
.end method

.method public abstract setPowerMode(I)Z
.end method

.method public abstract setRoutingEntry(IIII)Z
.end method

.method public abstract setSeListener(Lcom/android/nfc/DeviceHost$SecureElementListener;)V
.end method

.method public abstract setStaticRouteByProto(IZZZIZZZ)V
.end method

.method public abstract setStaticRouteByTech(IZZZIZZZ)V
.end method

.method public abstract setTimeout(II)Z
.end method

.method public abstract startCoverAuth()[B
.end method

.method public abstract startPRBSTest(II)V
.end method

.method public abstract stopCoverAuth()Z
.end method

.method public abstract stopPRBSTest()V
.end method

.method public abstract swpTest()I
.end method

.method public abstract transceiveAuthData([B)[B
.end method

.method public abstract unrouteAid([B)Z
.end method
