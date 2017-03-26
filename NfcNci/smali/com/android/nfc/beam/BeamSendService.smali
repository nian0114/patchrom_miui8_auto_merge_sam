.class public Lcom/android/nfc/beam/BeamSendService;
.super Landroid/app/Service;
.source "BeamSendService.java"

# interfaces
.implements Lcom/android/nfc/beam/BeamTransferManager$Callback;


# static fields
.field private static DBG:Z = false

.field public static final EXTRA_BEAM_COMPLETE_CALLBACK:Ljava/lang/String; = "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

.field public static EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private isRestart:Z

.field private mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnabledByNfc:Z

.field private final mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

.field private mCompleteCallback:Landroid/os/Messenger;

.field private mStartId:I

.field private mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "BeamSendService"

    sput-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    .line 45
    const-string v0, "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

    sput-object v0, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamSendService;->isRestart:Z

    .line 59
    new-instance v0, Lcom/android/nfc/beam/BeamSendService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/beam/BeamSendService$1;-><init>(Lcom/android/nfc/beam/BeamSendService;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/beam/BeamSendService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/beam/BeamSendService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/nfc/beam/BeamSendService;->handleBluetoothStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private handleBluetoothStateChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 183
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 185
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    iget v1, v1, Lcom/android/nfc/beam/BeamTransferManager;->mDataLinkType:I

    sget v2, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v1, v2, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v1}, Lcom/android/nfc/beam/BeamTransferManager;->start()V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 191
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    goto :goto_0
.end method

.method private invokeCompleteCallback(Z)V
    .locals 5
    .param p1, "success"    # Z

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v3, p0, Lcom/android/nfc/beam/BeamSendService;->mCompleteCallback:Landroid/os/Messenger;

    if-eqz v3, :cond_1

    .line 198
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 199
    .local v1, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 200
    iget-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mCompleteCallback:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v3, "failed to invoke Beam complete callback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method createBeamTransferManager(Lcom/android/nfc/beam/BeamTransferRecord;)Z
    .locals 3
    .param p1, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;

    .prologue
    const/4 v0, 0x0

    .line 168
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-eqz v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    iget v1, p1, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    sget v2, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v1, v2, :cond_0

    .line 177
    new-instance v1, Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v1, p0, p0, p1, v0}, Lcom/android/nfc/beam/BeamTransferManager;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Z)V

    iput-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    .line 178
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateNotification()V

    .line 179
    const/4 v0, 0x1

    goto :goto_0
.end method

.method doTransfer(Lcom/android/nfc/beam/BeamTransferRecord;)Z
    .locals 6
    .param p1, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/BeamSendService;->createBeamTransferManager(Lcom/android/nfc/beam/BeamTransferRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    new-instance v2, Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v3, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v2, p0, v3}, Lcom/android/nfc/beam/BeamStatusReceiver;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager;)V

    iput-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    .line 143
    iget-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v3, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {v3}, Lcom/android/nfc/beam/BeamStatusReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    const-string v4, "android.permission.NFC_HANDOVER_STATUS"

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/nfc/beam/BeamSendService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 146
    iget v2, p1, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    sget v3, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v2, v3, :cond_0

    .line 147
    iget-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->start()V

    :cond_0
    :goto_0
    move v0, v1

    .line 164
    :cond_1
    :goto_1
    return v0

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v2

    if-nez v2, :cond_3

    .line 152
    sget-object v1, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v2, "Error enabling Bluetooth."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    goto :goto_1

    .line 156
    :cond_3
    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    .line 157
    sget-boolean v0, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queueing out transfer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 78
    sget-boolean v1, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/beam/BeamSendService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 90
    sget-boolean v0, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamSendService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamSendService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamSendService;->isRestart:Z

    if-eqz v0, :cond_2

    .line 98
    sget-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v1, "kill the BeamSendService again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 102
    :cond_2
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 106
    iput p3, p0, Lcom/android/nfc/beam/BeamSendService;->mStartId:I

    .line 109
    sget-boolean v1, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartCommand. startId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    if-eqz p1, :cond_1

    sget-object v1, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/beam/BeamTransferRecord;

    .local v0, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    if-nez v0, :cond_3

    .line 114
    .end local v0    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_1
    sget-boolean v1, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v4, "No transfer record provided. Stopping."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_2
    iput-boolean v2, p0, Lcom/android/nfc/beam/BeamSendService;->isRestart:Z

    .line 117
    new-instance v1, Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v1, p0, p0, v6}, Lcom/android/nfc/beam/BeamTransferManager;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Z)V

    iput-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    .line 118
    new-instance v1, Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/beam/BeamStatusReceiver;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager;)V

    iput-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    .line 119
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {v2}, Lcom/android/nfc/beam/BeamStatusReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    const-string v4, "android.permission.NFC_HANDOVER_STATUS"

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/nfc/beam/BeamSendService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v1}, Lcom/android/nfc/beam/BeamTransferManager;->cancel()V

    move v1, v3

    .line 135
    :goto_0
    return v1

    .line 127
    .restart local v0    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_3
    const-string v1, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mCompleteCallback:Landroid/os/Messenger;

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamSendService;->doTransfer(Lcom/android/nfc/beam/BeamTransferRecord;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 130
    sget-boolean v1, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v3, "Starting outgoing Beam transfer"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v1, v2

    .line 131
    goto :goto_0

    .line 133
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/nfc/beam/BeamSendService;->invokeCompleteCallback(Z)V

    .line 134
    invoke-virtual {p0, p3}, Lcom/android/nfc/beam/BeamSendService;->stopSelf(I)V

    move v1, v3

    .line 135
    goto :goto_0
.end method

.method public onTransferComplete(Lcom/android/nfc/beam/BeamTransferManager;Z)V
    .locals 7
    .param p1, "transfer"    # Lcom/android/nfc/beam/BeamTransferManager;
    .param p2, "success"    # Z

    .prologue
    .line 210
    if-nez p2, :cond_0

    .line 211
    sget-boolean v4, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transfer failed, final state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    iget-boolean v4, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    if-eqz v4, :cond_4

    .line 216
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    .line 218
    iget-object v4, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 219
    .local v1, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v3, 0x0

    .line 220
    .local v3, "isConnected":Z
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 221
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v4

    const/16 v5, 0x200

    if-ne v4, v5, :cond_2

    .line 224
    sget-object v4, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connected device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is PHONE!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :cond_2
    sget-object v4, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is connected !!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isConnected":Z
    :goto_1
    return-void

    .line 233
    .restart local v1    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "isConnected":Z
    :cond_3
    if-nez v3, :cond_4

    .line 234
    iget-object v4, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 239
    .end local v1    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isConnected":Z
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/nfc/beam/BeamSendService;->invokeCompleteCallback(Z)V

    .line 240
    iget v4, p0, Lcom/android/nfc/beam/BeamSendService;->mStartId:I

    invoke-virtual {p0, v4}, Lcom/android/nfc/beam/BeamSendService;->stopSelf(I)V

    goto :goto_1
.end method
