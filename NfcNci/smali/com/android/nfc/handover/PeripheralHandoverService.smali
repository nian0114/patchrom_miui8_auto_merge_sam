.class public Lcom/android/nfc/handover/PeripheralHandoverService;
.super Landroid/app/Service;
.source "PeripheralHandoverService.java"

# interfaces
.implements Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;
    }
.end annotation


# static fields
.field public static final BUNDLE_TRANSFER:Ljava/lang/String; = "transfer"

.field static final DBG:Z = true

.field public static final EXTRA_PERIPHERAL_COD:Ljava/lang/String; = "cod"

.field public static final EXTRA_PERIPHERAL_DEVICE:Ljava/lang/String; = "device"

.field public static final EXTRA_PERIPHERAL_NAME:Ljava/lang/String; = "headsetname"

.field public static final EXTRA_PERIPHERAL_TRANSPORT:Ljava/lang/String; = "transporttype"

.field static final MSG_PAUSE_POLLING:I = 0x0

.field private static final PAUSE_DELAY_MILLIS:I = 0x12c

.field private static final PAUSE_POLLING_TIMEOUT_MS:I = 0x88b8

.field static final TAG:Ljava/lang/String; = "PeripheralHandoverService"

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBluetoothEnabledByNfc:Z

.field mBluetoothHeadsetConnected:Z

.field mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

.field final mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

.field mHandler:Landroid/os/Handler;

.field final mMessenger:Landroid/os/Messenger;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field mSoundPool:Landroid/media/SoundPool;

.field mStartId:I

.field mSuccessSound:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/PeripheralHandoverService;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 88
    new-instance v0, Lcom/android/nfc/handover/PeripheralHandoverService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/PeripheralHandoverService$1;-><init>(Lcom/android/nfc/handover/PeripheralHandoverService;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 100
    new-instance v0, Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;-><init>(Lcom/android/nfc/handover/PeripheralHandoverService;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mMessenger:Landroid/os/Messenger;

    .line 102
    iput-boolean v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 104
    iput v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/PeripheralHandoverService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/PeripheralHandoverService;->handleBluetoothStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private handleBluetoothStateChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 215
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 217
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->start()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->resumePolling()V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 226
    iput-boolean v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 227
    iput-boolean v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    goto :goto_0
.end method


# virtual methods
.method disableBluetoothIfNeeded()V
    .locals 7

    .prologue
    .line 275
    iget-boolean v4, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    if-nez v4, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-boolean v4, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    if-nez v4, :cond_0

    .line 279
    iget-object v4, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 280
    .local v1, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v3, 0x0

    .line 281
    .local v3, "isConnected":Z
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 282
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 283
    const-string v4, "PeripheralHandoverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BT device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is still connected !!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v3, 0x1

    goto :goto_1

    .line 287
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    if-nez v3, :cond_4

    .line 288
    iget-object v4, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 291
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    goto :goto_0
.end method

.method doPeripheralHandover(Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "msgData"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 171
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "PeripheralHandoverService"

    const-string v1, "Ignoring pairing request, existing handover in progress."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 211
    :goto_0
    return v0

    .line 176
    :cond_0
    if-nez p1, :cond_1

    move v0, v8

    .line 177
    goto :goto_0

    .line 180
    :cond_1
    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 181
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v0, "headsetname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "name":Ljava/lang/String;
    const-string v0, "transporttype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 184
    .local v5, "transport":I
    const-string v0, "cod"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 185
    .local v4, "cod":I
    const-string v0, "PeripheralHandoverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doPeripheralHandover() device is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " name is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " transport is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " cod is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    move-object v1, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;IILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 193
    const/4 v0, 0x2

    if-ne v5, v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v10, 0x12c

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->start()Z

    move-result v0

    if-nez v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->resumePolling()V

    :cond_3
    move v0, v7

    .line 211
    goto/16 :goto_0

    .line 204
    :cond_4
    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->enableBluetooth()Z

    move-result v0

    if-nez v0, :cond_3

    .line 205
    const-string v0, "PeripheralHandoverService"

    const-string v1, "Error enabling Bluetooth."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    move v0, v8

    .line 207
    goto/16 :goto_0
.end method

.method enableBluetooth()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 267
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    iput-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 269
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v0

    .line 271
    :cond_0
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBluetoothPeripheralHandoverComplete(Z)V
    .locals 5
    .param p1, "connected"    # Z

    .prologue
    const/4 v4, 0x0

    .line 234
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v1, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    .line 235
    .local v0, "transport":I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 236
    iput-boolean p1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    .line 239
    const-string v1, "PeripheralHandoverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBluetoothHeadsetConnected is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->resumePolling()V

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->disableBluetoothIfNeeded()V

    .line 257
    const-string v1, "PeripheralHandoverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After onBluetoothPeripheralHandoverComplete(), mStartId of stopSelf(mStartId) is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-object v2, Lcom/android/nfc/handover/PeripheralHandoverService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 260
    :try_start_0
    iget v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/PeripheralHandoverService;->stopSelf(I)V

    .line 261
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 262
    monitor-exit v2

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 145
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 148
    const-string v1, "PeripheralHandoverService"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSoundPool:Landroid/media/SoundPool;

    .line 151
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v2, 0x7f040000

    invoke-virtual {v1, p0, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSuccessSound:I

    .line 152
    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/handover/PeripheralHandoverService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 161
    const-string v0, "PeripheralHandoverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy and mStartId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 164
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/PeripheralHandoverService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 168
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 110
    const-string v2, "PeripheralHandoverService"

    const-string v3, "onStartCommand"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v2, Lcom/android/nfc/handover/PeripheralHandoverService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 113
    :try_start_0
    iget v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    if-eqz v3, :cond_0

    .line 116
    const-string v1, "PeripheralHandoverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mStartId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and startId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput p3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 119
    monitor-exit v2

    .line 139
    :goto_0
    return v0

    .line 121
    :cond_0
    iput p3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 122
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    const-string v2, "PeripheralHandoverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current mStartId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-nez p1, :cond_1

    .line 127
    const-string v0, "PeripheralHandoverService"

    const-string v2, "Intent is null, can\'t do peripheral handover."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0, p3}, Lcom/android/nfc/handover/PeripheralHandoverService;->stopSelf(I)V

    move v0, v1

    .line 129
    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/PeripheralHandoverService;->doPeripheralHandover(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    const-string v1, "PeripheralHandoverService"

    const-string v2, "doPeripheralHandover in onStartCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/nfc/handover/PeripheralHandoverService;->stopSelf(I)V

    move v0, v1

    .line 139
    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method
