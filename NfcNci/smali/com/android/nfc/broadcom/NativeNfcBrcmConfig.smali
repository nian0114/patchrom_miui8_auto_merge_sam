.class public Lcom/android/nfc/broadcom/NativeNfcBrcmConfig;
.super Lcom/broadcom/nfc/INfcAdapterBrcmConfig$Stub;
.source "NativeNfcBrcmConfig.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field mService:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 2
    .param p1, "s"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/broadcom/nfc/INfcAdapterBrcmConfig$Stub;-><init>()V

    .line 26
    const-string v0, "BrcmCfgServ"

    iput-object v0, p0, Lcom/android/nfc/broadcom/NativeNfcBrcmConfig;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/broadcom/NativeNfcBrcmConfig;->mService:Lcom/android/nfc/NfcService;

    .line 31
    iput-object p1, p0, Lcom/android/nfc/broadcom/NativeNfcBrcmConfig;->mService:Lcom/android/nfc/NfcService;

    .line 32
    const-string v0, "BrcmCfgServ"

    const-string v1, "NativeNfcBrcmConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method


# virtual methods
.method public native doGetConfig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native doGetFirmwareConfig(I)[B
.end method

.method native doSetConfig(Ljava/lang/String;)Z
.end method

.method native doSetFirmwareConfig(I[B)Z
.end method

.method public declared-synchronized getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "configItem"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    const-string v0, "BrcmCfgServ"

    const-string v1, "NfcAdapterBrcmExtrasService; getConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0, p2}, Lcom/android/nfc/broadcom/NativeNfcBrcmConfig;->doGetConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFirmwareConfig(Ljava/lang/String;I)[B
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "paramId"    # I

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    const-string v0, "BrcmCfgServ"

    const-string v1, "NfcAdapterBrcmExtrasService; getFirmwareConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0, p2}, Lcom/android/nfc/broadcom/NativeNfcBrcmConfig;->doGetFirmwareConfig(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "xmlConfig"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    const-string v0, "BrcmCfgServ"

    const-string v1, "NfcAdapterBrcmExtrasService; setConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0, p2}, Lcom/android/nfc/broadcom/NativeNfcBrcmConfig;->doSetConfig(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFirmwareConfig(Ljava/lang/String;I[B)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "paramId"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    const-string v0, "BrcmCfgServ"

    const-string v1, "NfcAdapterBrcmExtrasService; setFirmwareConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0, p2, p3}, Lcom/android/nfc/broadcom/NativeNfcBrcmConfig;->doSetFirmwareConfig(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
