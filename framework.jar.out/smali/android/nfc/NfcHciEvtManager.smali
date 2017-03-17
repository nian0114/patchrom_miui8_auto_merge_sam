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
    invoke-direct {p0}, Landroid/nfc/INfcHciEventCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/NfcHciEvtManager;->mCallback:Landroid/nfc/NfcAdapter$HciEvtCallback;

    iput-object p1, p0, Landroid/nfc/NfcHciEvtManager;->mAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method


# virtual methods
.method public onHciEvtTrasactionDetected(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/nfc/NfcHciEvtManager;->mCallback:Landroid/nfc/NfcAdapter$HciEvtCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/nfc/NfcHciEvtManager;->mCallback:Landroid/nfc/NfcAdapter$HciEvtCallback;

    invoke-interface {v0, p1}, Landroid/nfc/NfcAdapter$HciEvtCallback;->hciEvtTransaction(Landroid/content/Intent;)V

    :cond_0
    monitor-exit p0

    return-void

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
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p0}, Landroid/nfc/INfcAdapter;->setHciEventCallback(Landroid/nfc/INfcHciEventCallback;)V

    iput-object p1, p0, Landroid/nfc/NfcHciEvtManager;->mCallback:Landroid/nfc/NfcAdapter$HciEvtCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
