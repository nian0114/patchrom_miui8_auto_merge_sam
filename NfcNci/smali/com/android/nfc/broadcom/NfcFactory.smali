.class public Lcom/android/nfc/broadcom/NfcFactory;
.super Lcom/broadcom/nfc/INfcFactory$Stub;
.source "NfcFactory.java"


# static fields
.field static final DBG:Z = true

.field public static final SERVICE_NAME:Ljava/lang/String; = "com.broadcom.nfc.Factory"

.field static final TAG:Ljava/lang/String; = "NfcFacServ"

.field static mConfig:Lcom/android/nfc/broadcom/NativeNfcBrcmConfig;

.field static mDta:Lcom/android/nfc/broadcom/NativeNfcAdapterDta;


# instance fields
.field mNfcService:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 2
    .param p1, "nfcService"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/broadcom/nfc/INfcFactory$Stub;-><init>()V

    .line 40
    const-string v0, "NfcFacServ"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iput-object p1, p0, Lcom/android/nfc/broadcom/NfcFactory;->mNfcService:Lcom/android/nfc/NfcService;

    .line 42
    new-instance v0, Lcom/android/nfc/broadcom/NativeNfcBrcmConfig;

    iget-object v1, p0, Lcom/android/nfc/broadcom/NfcFactory;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v1}, Lcom/android/nfc/broadcom/NativeNfcBrcmConfig;-><init>(Lcom/android/nfc/NfcService;)V

    sput-object v0, Lcom/android/nfc/broadcom/NfcFactory;->mConfig:Lcom/android/nfc/broadcom/NativeNfcBrcmConfig;

    .line 43
    new-instance v0, Lcom/android/nfc/broadcom/NativeNfcAdapterDta;

    iget-object v1, p0, Lcom/android/nfc/broadcom/NfcFactory;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v1}, Lcom/android/nfc/broadcom/NativeNfcAdapterDta;-><init>(Lcom/android/nfc/NfcService;)V

    sput-object v0, Lcom/android/nfc/broadcom/NfcFactory;->mDta:Lcom/android/nfc/broadcom/NativeNfcAdapterDta;

    .line 44
    return-void
.end method


# virtual methods
.method public declared-synchronized getConfigInterface()Lcom/broadcom/nfc/INfcAdapterBrcmConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    const-string v0, "NfcFacServ"

    const-string v1, "getConfigInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v0, Lcom/android/nfc/broadcom/NfcFactory;->mConfig:Lcom/android/nfc/broadcom/NativeNfcBrcmConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDtaInterface()Lcom/broadcom/nfc/INfcAdapterDta;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    const-string v0, "NfcFacServ"

    const-string v1, "getDtaInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v0, Lcom/android/nfc/broadcom/NfcFactory;->mDta:Lcom/android/nfc/broadcom/NativeNfcAdapterDta;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
