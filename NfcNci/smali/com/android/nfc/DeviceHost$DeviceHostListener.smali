.class public interface abstract Lcom/android/nfc/DeviceHost$DeviceHostListener;
.super Ljava/lang/Object;
.source "DeviceHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/DeviceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceHostListener"
.end annotation


# virtual methods
.method public abstract LedCoverRfDetectCallback()V
.end method

.method public abstract onCardEmulationDiscoveredError(II)V
.end method

.method public abstract onCardEmulationNfceeActionNtf(I[BIII)V
.end method

.method public abstract onCardEmulationSeRouted(I)V
.end method

.method public abstract onFirmwareDownloadStatusNotify(I)V
.end method

.method public abstract onHostCardEmulationActivated()V
.end method

.method public abstract onHostCardEmulationData([B)V
.end method

.method public abstract onHostCardEmulationDeactivated(I)V
.end method

.method public abstract onListenActivated()V
.end method

.method public abstract onListenDeactivated()V
.end method

.method public abstract onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
.end method

.method public abstract onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
.end method

.method public abstract onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
.end method

.method public abstract onMPOSListenErrNotified()V
.end method

.method public abstract onP2pDiscoveredError(II)V
.end method

.method public abstract onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
.end method

.method public abstract onRemoteEndpointDiscoveredError(II)V
.end method

.method public abstract onRemoteFieldActivated()V
.end method

.method public abstract onRemoteFieldDeactivated()V
.end method

.method public abstract onSoftRecovery()V
.end method
