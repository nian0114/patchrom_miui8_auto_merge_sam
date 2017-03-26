.class public Lcom/android/nfc/beam/BeamManager;
.super Ljava/lang/Object;
.source "BeamManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/BeamManager$1;,
        Lcom/android/nfc/beam/BeamManager$Singleton;
    }
.end annotation


# static fields
.field private static final ACTION_WHITELIST_DEVICE:Ljava/lang/String; = "android.btopp.intent.action.WHITELIST_DEVICE"

.field private static final DBG:Z = true

.field public static final MSG_BEAM_COMPLETE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BeamManager"


# instance fields
.field private mBeamInProgress:Z

.field private final mCallback:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNfcService:Lcom/android/nfc/NfcService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    .line 61
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mNfcService:Lcom/android/nfc/NfcService;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/beam/BeamManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/beam/BeamManager$1;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/nfc/beam/BeamManager;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/nfc/beam/BeamManager$Singleton;->INSTANCE:Lcom/android/nfc/beam/BeamManager;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 142
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_2

    .line 143
    iget-object v3, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 144
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 146
    const-string v4, "BeamManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msg.what is MSG_BEAM_COMPLETE. so mBeamInProgress is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 151
    .local v0, "success":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/nfc/beam/BeamManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 161
    .end local v0    # "success":Z
    :cond_0
    :goto_1
    return v1

    .line 148
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    move v0, v2

    .line 150
    goto :goto_0

    .line 157
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 158
    :try_start_2
    const-string v1, "BeamManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg.what is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " so mBeamInProgress is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    monitor-exit v3

    move v1, v2

    .line 161
    goto :goto_1

    .line 159
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public isBeamInProgress()Z
    .locals 4

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    const-string v0, "BeamManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBeamInProgress() is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    monitor-exit v1

    return v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBeamInProgress()V
    .locals 4

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 81
    const-string v0, "BeamManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBeamInProgress. So mBeamInProgress is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    monitor-exit v1

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startBeamReceive(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    .prologue
    const/4 v2, 0x1

    .line 90
    const-string v3, "BeamManager"

    const-string v4, "startBeamReceive"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v3, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 93
    :try_start_0
    iget-boolean v4, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    if-eqz v4, :cond_0

    .line 94
    const/4 v2, 0x0

    monitor-exit v3

    .line 111
    :goto_0
    return v2

    .line 96
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 98
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v3, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v4, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/nfc/beam/BeamTransferRecord;->forBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v1

    .line 104
    .local v1, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/nfc/beam/BeamReceiveService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, "receiveIntent":Landroid/content/Intent;
    const-string v3, "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 107
    const-string v3, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    new-instance v4, Landroid/os/Messenger;

    iget-object v5, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    iget-object v3, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1, v3}, Lcom/android/nfc/beam/BeamManager;->whitelistOppDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 110
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0

    .line 98
    .end local v0    # "receiveIntent":Landroid/content/Intent;
    .end local v1    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public startBeamSend(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "outgoingHandoverData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .param p3, "uris"    # [Landroid/net/Uri;
    .param p4, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v2, 0x1

    .line 118
    const-string v3, "BeamManager"

    const-string v4, "startBeamSend"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v3, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 121
    :try_start_0
    iget-boolean v4, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    if-eqz v4, :cond_0

    .line 122
    const/4 v2, 0x0

    monitor-exit v3

    .line 137
    :goto_0
    return v2

    .line 124
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 126
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v3, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v4, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    invoke-static {v3, v4, p3}, Lcom/android/nfc/beam/BeamTransferRecord;->forBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v1

    .line 131
    .local v1, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/nfc/beam/BeamSendService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, "sendIntent":Landroid/content/Intent;
    sget-object v3, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 134
    const-string v3, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    new-instance v4, Landroid/os/Messenger;

    iget-object v5, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p1, v0, p4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0

    .line 126
    .end local v0    # "sendIntent":Landroid/content/Intent;
    .end local v1    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method whitelistOppDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 165
    const-string v1, "BeamManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Whitelisting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for BT OPP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 168
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 169
    return-void
.end method
