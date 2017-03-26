.class Lcom/android/nfc/broadcom/NativeNfcAdapterDta;
.super Lcom/broadcom/nfc/INfcAdapterDta$Stub;
.source "NativeNfcAdapterDta.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field mService:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 2
    .param p1, "s"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/broadcom/nfc/INfcAdapterDta$Stub;-><init>()V

    .line 26
    const-string v0, "BrcmDtaSrv"

    iput-object v0, p0, Lcom/android/nfc/broadcom/NativeNfcAdapterDta;->TAG:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/android/nfc/broadcom/NativeNfcAdapterDta;->mService:Lcom/android/nfc/NfcService;

    .line 32
    const-string v0, "BrcmDtaSrv"

    const-string v1, "NativeNfcAdapterDta"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method


# virtual methods
.method public declared-synchronized config(II)Z
    .locals 3
    .param p1, "configItem"    # I
    .param p2, "configData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    const-string v0, "BrcmDtaSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config, item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/broadcom/NativeNfcAdapterDta;->doConfigDta(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    const-string v0, "BrcmDtaSrv"

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/android/nfc/broadcom/NativeNfcAdapterDta;->doDisableDta()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native doConfigDta(II)Z
.end method

.method native doDisableDta()Z
.end method

.method native doEnableDta(Z)Z
.end method

.method native doStartDta(I[B)Z
.end method

.method native doStopDta()Z
.end method

.method public declared-synchronized enable(Z)Z
    .locals 2
    .param p1, "autoStart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    const-string v0, "BrcmDtaSrv"

    const-string v1, "enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/nfc/broadcom/NativeNfcAdapterDta;->doEnableDta(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(I[B)Z
    .locals 2
    .param p1, "patternNumber"    # I
    .param p2, "tlv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    const-string v0, "BrcmDtaSrv"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/broadcom/NativeNfcAdapterDta;->doStartDta(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    const-string v0, "BrcmDtaSrv"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/android/nfc/broadcom/NativeNfcAdapterDta;->doStopDta()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
