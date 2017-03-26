.class public Lcom/android/nfc/beam/BeamReceiveService;
.super Landroid/app/Service;
.source "BeamReceiveService.java"

# interfaces
.implements Lcom/android/nfc/beam/BeamTransferManager$Callback;


# static fields
.field private static DBG:Z = false

.field public static final EXTRA_BEAM_COMPLETE_CALLBACK:Ljava/lang/String; = "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

.field public static final EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String; = "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

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
    .line 29
    const-string v0, "BeamReceiveService"

    sput-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->isRestart:Z

    .line 46
    new-instance v0, Lcom/android/nfc/beam/BeamReceiveService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/beam/BeamReceiveService$1;-><init>(Lcom/android/nfc/beam/BeamReceiveService;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/android/nfc/beam/BeamReceiveService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/beam/BeamReceiveService;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    return p1
.end method

.method private invokeCompleteCallback(Z)V
    .locals 5
    .param p1, "success"    # Z

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v3, p0, Lcom/android/nfc/beam/BeamReceiveService;->mCompleteCallback:Landroid/os/Messenger;

    if-eqz v3, :cond_1

    .line 169
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 170
    .local v1, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 171
    iget-object v2, p0, Lcom/android/nfc/beam/BeamReceiveService;->mCompleteCallback:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v3, "failed to invoke Beam complete callback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 105
    sget-boolean v1, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/beam/BeamReceiveService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 116
    sget-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 119
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamReceiveService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamReceiveService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->isRestart:Z

    if-eqz v0, :cond_2

    .line 125
    sget-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v1, "kill the BeamReceiveService again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 129
    :cond_2
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 66
    iput p3, p0, Lcom/android/nfc/beam/BeamReceiveService;->mStartId:I

    .line 69
    sget-boolean v1, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

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

    .line 72
    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/beam/BeamTransferRecord;

    .local v0, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    if-nez v0, :cond_3

    .line 74
    .end local v0    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_1
    sget-boolean v1, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v4, "No transfer record provided. Stopping."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_2
    iput-boolean v2, p0, Lcom/android/nfc/beam/BeamReceiveService;->isRestart:Z

    .line 77
    new-instance v1, Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v1, p0, p0, v2}, Lcom/android/nfc/beam/BeamTransferManager;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Z)V

    iput-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    .line 78
    new-instance v1, Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v2, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/beam/BeamStatusReceiver;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager;)V

    iput-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    .line 79
    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v2, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {v2}, Lcom/android/nfc/beam/BeamStatusReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    const-string v4, "android.permission.NFC_HANDOVER_STATUS"

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/nfc/beam/BeamReceiveService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v1}, Lcom/android/nfc/beam/BeamTransferManager;->cancel()V

    move v1, v3

    .line 95
    :goto_0
    return v1

    .line 87
    .restart local v0    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_3
    const-string v1, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mCompleteCallback:Landroid/os/Messenger;

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamReceiveService;->prepareToReceive(Lcom/android/nfc/beam/BeamTransferRecord;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 90
    sget-boolean v1, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v3, "Ready for incoming Beam transfer"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v1, v2

    .line 91
    goto :goto_0

    .line 93
    :cond_5
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/nfc/beam/BeamReceiveService;->invokeCompleteCallback(Z)V

    .line 94
    invoke-virtual {p0, p3}, Lcom/android/nfc/beam/BeamReceiveService;->stopSelf(I)V

    move v1, v3

    .line 95
    goto :goto_0
.end method

.method public onTransferComplete(Lcom/android/nfc/beam/BeamTransferManager;Z)V
    .locals 7
    .param p1, "transfer"    # Lcom/android/nfc/beam/BeamTransferManager;
    .param p2, "success"    # Z

    .prologue
    .line 181
    if-nez p2, :cond_0

    .line 182
    sget-boolean v4, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

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

    .line 186
    :cond_0
    iget-boolean v4, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    if-eqz v4, :cond_4

    .line 187
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    .line 189
    iget-object v4, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 190
    .local v1, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v3, 0x0

    .line 191
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

    .line 192
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v4

    const/16 v5, 0x200

    if-ne v4, v5, :cond_2

    .line 195
    sget-object v4, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

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

    .line 199
    :cond_2
    sget-object v4, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

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

    .line 212
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isConnected":Z
    :goto_1
    return-void

    .line 204
    .restart local v1    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "isConnected":Z
    :cond_3
    if-nez v3, :cond_4

    .line 205
    iget-object v4, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 210
    .end local v1    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isConnected":Z
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/nfc/beam/BeamReceiveService;->invokeCompleteCallback(Z)V

    .line 211
    iget v4, p0, Lcom/android/nfc/beam/BeamReceiveService;->mStartId:I

    invoke-virtual {p0, v4}, Lcom/android/nfc/beam/BeamReceiveService;->stopSelf(I)V

    goto :goto_1
.end method

.method prepareToReceive(Lcom/android/nfc/beam/BeamTransferRecord;)Z
    .locals 5
    .param p1, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 132
    iget-object v2, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-eqz v2, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    iget v2, p1, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    sget v3, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v2, v3, :cond_0

    .line 141
    iget-object v2, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 142
    iget-object v2, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v2

    if-nez v2, :cond_2

    .line 143
    sget-object v1, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v2, "Error enabling Bluetooth."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_2
    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    .line 147
    sget-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

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

    .line 151
    :cond_3
    new-instance v0, Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/android/nfc/beam/BeamTransferManager;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Z)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    .line 154
    new-instance v0, Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v2, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v0, p0, v2}, Lcom/android/nfc/beam/BeamStatusReceiver;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    .line 155
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v2, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {v2}, Lcom/android/nfc/beam/BeamStatusReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    const-string v3, "android.permission.NFC_HANDOVER_STATUS"

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/nfc/beam/BeamReceiveService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 159
    sget-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v2, "mTransferManager.start()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->start()V

    .line 162
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateNotification()V

    move v0, v1

    .line 163
    goto :goto_0
.end method
