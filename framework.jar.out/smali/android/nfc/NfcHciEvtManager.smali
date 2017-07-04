.class public final Landroid/nfc/NfcHciEvtManager;
.super Landroid/nfc/INfcHciEventCallback$Stub;
.source "NfcHciEvtManager.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field final mAdapter:Landroid/nfc/NfcAdapter;

.field private mCallback:Landroid/nfc/NfcAdapter$HciEvtCallback;


# direct methods
.method public constructor <init>(Landroid/nfc/NfcAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/nfc/NfcAdapter;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/nfc/INfcHciEventCallback$Stub;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/NfcHciEvtManager;->mCallback:Landroid/nfc/NfcAdapter$HciEvtCallback;

    .line 33
    iput-object p1, p0, Landroid/nfc/NfcHciEvtManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 34
    return-void
.end method


# virtual methods
.method public onHciEvtTrasactionDetected(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Landroid/nfc/NfcHciEvtManager;->mCallback:Landroid/nfc/NfcAdapter$HciEvtCallback;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Landroid/nfc/NfcHciEvtManager;->mCallback:Landroid/nfc/NfcAdapter$HciEvtCallback;

    invoke-interface {v0, p1}, Landroid/nfc/NfcAdapter$HciEvtCallback;->hciEvtTransaction(Landroid/content/Intent;)V

    .line 50
    :cond_0
    monitor-exit p0

    .line 51
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnHciEvtCallback(Landroid/nfc/NfcAdapter$HciEvtCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$HciEvtCallback;

    .prologue
    .line 38
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p0}, Landroid/nfc/INfcAdapter;->setHciEventCallback(Landroid/nfc/INfcHciEventCallback;)V

    .line 39
    iput-object p1, p0, Landroid/nfc/NfcHciEvtManager;->mCallback:Landroid/nfc/NfcAdapter$HciEvtCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
