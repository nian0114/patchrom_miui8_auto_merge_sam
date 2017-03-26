.class public Lcom/android/nfc/handover/BluetoothPeripheralHandover;
.super Ljava/lang/Object;
.source "BluetoothPeripheralHandover.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;
    }
.end annotation


# static fields
.field static final ACTION_ALLOW_CONNECT:Ljava/lang/String; = "com.android.nfc.handover.action.ALLOW_CONNECT"

.field static final ACTION_CONNECT:I = 0x2

.field static final ACTION_DENY_CONNECT:Ljava/lang/String; = "com.android.nfc.handover.action.DENY_CONNECT"

.field static final ACTION_DISCONNECT:I = 0x1

.field static final ACTION_INIT:I = 0x0

.field static final CONNECT_BT:Ljava/lang/String; = "static handover BT"

.field static final CONNECT_FAIL:Ljava/lang/String; = "BT static handover fail"

.field static final DBG:Z = true

.field static final MSG_NEXT_STEP:I = 0x2

.field static final MSG_TIMEOUT:I = 0x1

.field static final RESULT_CONNECTED:I = 0x1

.field static final RESULT_DISCONNECTED:I = 0x2

.field static final RESULT_PENDING:I = 0x0

.field static final STATE_BONDING:I = 0x4

.field static final STATE_COMPLETE:I = 0x7

.field static final STATE_CONNECTING:I = 0x5

.field static final STATE_DISCONNECTING:I = 0x6

.field static final STATE_INIT:I = 0x0

.field static final STATE_INIT_COMPLETE:I = 0x2

.field static final STATE_WAITING_FOR_BOND_CONFIRMATION:I = 0x3

.field static final STATE_WAITING_FOR_PROXIES:I = 0x1

.field static final TAG:Ljava/lang/String; = "BluetoothPeripheralHandover"

.field static final TIMEOUT_MS:I = 0x4e20


# instance fields
.field isHIDdevice:Z

.field mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field mA2dpResult:I

.field mAction:I

.field final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field final mBtClass:I

.field final mCallback:Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

.field final mContext:Landroid/content/Context;

.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mHandler:Landroid/os/Handler;

.field mHeadset:Landroid/bluetooth/BluetoothHeadset;

.field mHfpResult:I

.field mHidResult:I

.field mInput:Landroid/bluetooth/BluetoothInputDevice;

.field final mLock:Ljava/lang/Object;

.field final mName:Ljava/lang/String;

.field final mProvisioning:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mState:I

.field final mTransport:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;IILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "cod"    # I
    .param p5, "transport"    # I
    .param p6, "callback"    # Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    .line 114
    iput-boolean v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->isHIDdevice:Z

    .line 668
    new-instance v1, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;-><init>(Lcom/android/nfc/handover/BluetoothPeripheralHandover;)V

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    .line 685
    new-instance v1, Lcom/android/nfc/handover/BluetoothPeripheralHandover$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover$2;-><init>(Lcom/android/nfc/handover/BluetoothPeripheralHandover;)V

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    invoke-static {}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->checkMainThread()V

    .line 128
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 130
    iput-object p3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    .line 131
    iput p5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    .line 132
    iput p4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBtClass:I

    .line 134
    iput-object p6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mCallback:Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    .line 135
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 137
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mProvisioning:Z

    .line 141
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 142
    return-void

    :cond_0
    move v1, v2

    .line 138
    goto :goto_0
.end method

.method static checkMainThread()V
    .locals 2

    .prologue
    .line 693
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 694
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "must be called on main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_0
    return-void
.end method


# virtual methods
.method complete(Z)V
    .locals 6
    .param p1, "connected"    # Z

    .prologue
    const/4 v4, 0x1

    .line 612
    const-string v1, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "complete(). connected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 616
    :try_start_0
    const-string v1, "BluetoothPeripheralHandover"

    const-string v2, "unregisterReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 622
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 623
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 624
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 627
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1

    .line 628
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 631
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v1, :cond_2

    .line 632
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v1, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 635
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 636
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 637
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    .line 638
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mCallback:Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    invoke-interface {v1, p1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;->onBluetoothPeripheralHandoverComplete(Z)V

    .line 642
    :goto_0
    return-void

    .line 638
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v1, "BluetoothPeripheralHandover"

    const-string v2, "catch IllegalArgumentException and ignore it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 622
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 623
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 624
    :try_start_4
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_3

    .line 625
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 627
    :cond_3
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_4

    .line 628
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 631
    :cond_4
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v1, :cond_5

    .line 632
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v1, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 635
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 636
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 637
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    .line 638
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 639
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mCallback:Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    invoke-interface {v1, p1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;->onBluetoothPeripheralHandoverComplete(Z)V

    goto :goto_0

    .line 638
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 622
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 623
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 624
    :try_start_6
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v3, :cond_6

    .line 625
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 627
    :cond_6
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_7

    .line 628
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 631
    :cond_7
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v3, :cond_8

    .line 632
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 635
    :cond_8
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 636
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 637
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    .line 638
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 639
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mCallback:Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    invoke-interface {v2, p1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;->onBluetoothPeripheralHandoverComplete(Z)V

    throw v1

    .line 638
    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method

.method getProfileProxys()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 330
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, p0, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v0

    .line 335
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, p0, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 344
    goto :goto_0
.end method

.method handleIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/high16 v7, -0x80000000

    const/4 v6, 0x2

    .line 520
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 523
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    const-string v4, "com.android.nfc.handover.action.ALLOW_CONNECT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 527
    const-string v4, "BluetoothPeripheralHandover"

    const-string v5, "receive ACTION_ALLOW_CONNECT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    goto :goto_0

    .line 530
    :cond_2
    const-string v4, "com.android.nfc.handover.action.DENY_CONNECT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 532
    const-string v4, "BluetoothPeripheralHandover"

    const-string v5, "receive ACTION_DENY_CONNECT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {p0, v9}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_0

    .line 535
    :cond_3
    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 537
    const-string v4, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 539
    .local v1, "bond":I
    const/16 v4, 0xc

    if-ne v1, v4, :cond_4

    .line 541
    const-string v4, "BluetoothPeripheralHandover"

    const-string v5, "BluetoothDevice.EXTRA_BOND_STATE is BONDED and wait ACTION_UUID"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    :cond_4
    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    .line 546
    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v5, 0x7f070018

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 549
    const-string v4, "BT static handover fail"

    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->insertBigDataStaticHandover(Ljava/lang/String;)V

    .line 551
    const-string v4, "BluetoothPeripheralHandover"

    const-string v5, "BluetoothDevice.EXTRA_BOND_STATE is NONE so go to complete(false)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {p0, v9}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_0

    .line 556
    .end local v1    # "bond":I
    :cond_5
    const-string v4, "android.bluetooth.device.action.UUID"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    .line 557
    const-string v4, "BluetoothPeripheralHandover"

    const-string v5, "BluetoothDevice.ACTION_UUID receive. so go to nextStepConnect()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    goto/16 :goto_0

    .line 560
    :cond_6
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-eq v4, v10, :cond_7

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_9

    .line 562
    :cond_7
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 563
    .local v3, "state":I
    if-ne v3, v6, :cond_8

    .line 564
    iput v8, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 566
    const-string v4, "BluetoothPeripheralHandover"

    const-string v5, "BluetoothHeadset.ACTION_CONNECTION_STATE_CHANGED is STATE_CONNECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_0

    .line 569
    :cond_8
    if-nez v3, :cond_0

    .line 570
    iput v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 572
    const-string v4, "BluetoothPeripheralHandover"

    const-string v5, "BluetoothHeadset.ACTION_CONNECTION_STATE_CHANGED is STATE_DISCONNECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_0

    .line 576
    .end local v3    # "state":I
    :cond_9
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-eq v4, v10, :cond_a

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_c

    .line 578
    :cond_a
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 579
    .restart local v3    # "state":I
    if-ne v3, v6, :cond_b

    .line 580
    iput v8, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 582
    const-string v4, "BluetoothPeripheralHandover"

    const-string v5, "BluetoothA2dp.ACTION_CONNECTION_STATE_CHANGED is STATE_CONNECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_0

    .line 585
    :cond_b
    if-nez v3, :cond_0

    .line 586
    iput v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 588
    const-string v4, "BluetoothPeripheralHandover"

    const-string v5, "BluetoothA2dp.ACTION_CONNECTION_STATE_CHANGED is STATE_DISCONNECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_0

    .line 592
    .end local v3    # "state":I
    :cond_c
    const-string v4, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-eq v4, v10, :cond_d

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 594
    :cond_d
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 595
    .restart local v3    # "state":I
    if-ne v3, v6, :cond_e

    .line 596
    iput v8, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 598
    const-string v4, "BluetoothPeripheralHandover"

    const-string v5, "BluetoothInputDevice.ACTION_CONNECTION_STATE_CHANGED is STATE_CONNECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_0

    .line 601
    :cond_e
    if-nez v3, :cond_0

    .line 602
    iput v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 604
    const-string v4, "BluetoothPeripheralHandover"

    const-string v5, "BluetoothInputDevice.ACTION_CONNECTION_STATE_CHANGED is STATE_DISCONNECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_0
.end method

.method public hasStarted()Z
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method insertBigDataStaticHandover(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 740
    const-string v2, "BluetoothPeripheralHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BIGDATA] insertBigDataStaticHandover : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v1, 0x0

    .line 742
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 745
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "EV_TYP"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :goto_0
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    const-string v3, "SHOF"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/nfc/NfcService;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    return-void

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "BluetoothPeripheralHandover"

    const-string v3, "exception peripheral"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method nextStep()V
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepInit()V

    .line 194
    :goto_0
    return-void

    .line 189
    :cond_0
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepDisconnect()V

    goto :goto_0
.end method

.method nextStepConnect()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 348
    const-string v1, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nextStepConnect() : state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 352
    :pswitch_0
    const-string v1, "BluetoothPeripheralHandover"

    const-string v2, "nextStepConnect() : STATE_INIT_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    if-eq v1, v8, :cond_1

    .line 356
    const-string v1, "BluetoothPeripheralHandover"

    const-string v2, "need BOND at STATE_INIT_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->requestPairConfirmation()V

    .line 359
    iput v7, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    goto :goto_0

    .line 363
    :cond_1
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-ne v1, v4, :cond_2

    .line 364
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 366
    const-string v1, "BluetoothPeripheralHandover"

    const-string v2, "remove BOND at STATE_INIT_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 369
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->requestPairConfirmation()V

    .line 370
    iput v7, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    goto :goto_0

    .line 377
    :cond_2
    :pswitch_1
    const-string v1, "BluetoothPeripheralHandover"

    const-string v2, "nextStepConnect() : STATE_WAITING_FOR_BOND_CONFIRMATION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    if-eq v1, v8, :cond_3

    .line 380
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->startBonding()V

    goto :goto_0

    .line 386
    :cond_3
    :pswitch_2
    const-string v1, "BluetoothPeripheralHandover"

    const-string v2, "nextStepConnect() : STATE_BONDING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 391
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_4

    .line 392
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 393
    const-string v1, "BluetoothPeripheralHandover"

    const-string v2, "Check HSP devices"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_4
    :goto_1
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 420
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 422
    :try_start_0
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-eq v1, v4, :cond_5

    iget-boolean v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->isHIDdevice:Z

    if-eqz v1, :cond_d

    .line 424
    :cond_5
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eq v1, v4, :cond_a

    .line 426
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 428
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBtClass:I

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->setBluetoothClass(I)Z

    .line 430
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothInputDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v4, 0x7f070012

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 432
    monitor-exit v2

    goto/16 :goto_0

    .line 461
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 395
    :cond_6
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 396
    const-string v1, "BluetoothPeripheralHandover"

    const-string v2, "Check Handsfree devices"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 398
    :cond_7
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 399
    const-string v1, "BluetoothPeripheralHandover"

    const-string v2, "Check AudioSink devices"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 402
    :cond_8
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 403
    iput-boolean v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->isHIDdevice:Z

    .line 404
    const-string v1, "BluetoothPeripheralHandover"

    const-string v2, "Check HID devices"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 409
    :cond_9
    const-string v1, "BluetoothPeripheralHandover"

    const-string v2, "Not headset/audio/HID devices"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 434
    :cond_a
    const/4 v1, 0x1

    :try_start_1
    iput v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 461
    :cond_b
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    .end local v0    # "uuids":[Landroid/os/ParcelUuid;
    :pswitch_3
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-eq v1, v4, :cond_c

    iget-boolean v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->isHIDdevice:Z

    if-eqz v1, :cond_12

    .line 467
    :cond_c
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    if-eqz v1, :cond_0

    .line 469
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    if-ne v1, v5, :cond_11

    .line 470
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v2, 0x7f070013

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 473
    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 437
    .restart local v0    # "uuids":[Landroid/os/ParcelUuid;
    :cond_d
    :try_start_2
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eq v1, v4, :cond_f

    .line 439
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 441
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBtClass:I

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->setBluetoothClass(I)Z

    .line 443
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 447
    :goto_2
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eq v1, v4, :cond_10

    .line 448
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 450
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBtClass:I

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->setBluetoothClass(I)Z

    .line 452
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 456
    :goto_3
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-nez v1, :cond_b

    .line 457
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v4, 0x7f070012

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 458
    monitor-exit v2

    goto/16 :goto_0

    .line 445
    :cond_f
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    goto :goto_2

    .line 454
    :cond_10
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 476
    .end local v0    # "uuids":[Landroid/os/ParcelUuid;
    :cond_11
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v2, 0x7f070014

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 477
    const-string v1, "BT static handover fail"

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->insertBigDataStaticHandover(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0, v6}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 481
    :cond_12
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-eqz v1, :cond_0

    .line 485
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eq v1, v5, :cond_13

    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-ne v1, v5, :cond_14

    .line 487
    :cond_13
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v2, 0x7f070013

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 494
    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 497
    :cond_14
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v2, 0x7f070014

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 499
    const-string v1, "BT static handover fail"

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->insertBigDataStaticHandover(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0, v6}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method nextStepDisconnect()V
    .locals 7

    .prologue
    const v6, 0x7f070016

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 249
    const-string v0, "BluetoothPeripheralHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextStepDisconnect() : state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    sparse-switch v0, :sswitch_data_0

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 252
    :sswitch_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 253
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 260
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothInputDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v3, 0x7f070015

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 263
    monitor-exit v1

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 265
    :cond_1
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 270
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 273
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 277
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 280
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 284
    :goto_2
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-nez v0, :cond_5

    .line 285
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v3, 0x7f070015

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 287
    monitor-exit v1

    goto/16 :goto_0

    .line 275
    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    goto :goto_1

    .line 282
    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    goto :goto_2

    .line 292
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :sswitch_1
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    if-ne v0, v4, :cond_6

    .line 299
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 309
    :cond_6
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-eqz v0, :cond_0

    .line 313
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-ne v0, v4, :cond_7

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-ne v0, v4, :cond_7

    .line 314
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 316
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 250
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method nextStepInit()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 200
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_2

    .line 203
    :cond_1
    iput v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 204
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getProfileProxys()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const-string v0, "BT static handover fail"

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->insertBigDataStaticHandover(Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_0

    .line 212
    :cond_2
    :pswitch_1
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 214
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    :cond_3
    const-string v0, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DISCONNECT addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    .line 242
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto :goto_0

    .line 235
    :cond_4
    :try_start_1
    const-string v0, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_CONNECT addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    .line 237
    const-string v0, "static handover BT"

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->insertBigDataStaticHandover(Ljava/lang/String;)V

    goto :goto_1

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 700
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 701
    packed-switch p1, :pswitch_data_0

    .line 730
    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_0
    :goto_0
    :pswitch_0
    :try_start_0
    monitor-exit v1

    .line 731
    return-void

    .line 703
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_1
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 705
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v0, :cond_0

    .line 706
    const-string v0, "BluetoothPeripheralHandover"

    const-string v2, "BluetoothProfile.HEADSET onServiceConnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 730
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 712
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_2
    :try_start_1
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 714
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v0, :cond_0

    .line 715
    const-string v0, "BluetoothPeripheralHandover"

    const-string v2, "BluetoothProfile.A2DP onServiceConnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 721
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_3
    check-cast p2, Landroid/bluetooth/BluetoothInputDevice;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    .line 723
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    .line 724
    const-string v0, "BluetoothPeripheralHandover"

    const-string v2, "BluetoothProfile.INPUT_DEVICE onServiceConnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 0
    .param p1, "profile"    # I

    .prologue
    .line 736
    return-void
.end method

.method requestPairConfirmation()V
    .locals 3

    .prologue
    .line 661
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/handover/ConfirmConnectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 662
    .local v0, "dialogIntent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 663
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 665
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 666
    return-void
.end method

.method public start()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-static {}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->checkMainThread()V

    .line 154
    iget v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mProvisioning:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    :cond_0
    move v1, v2

    .line 180
    :goto_0
    return v1

    .line 159
    :cond_1
    const-string v3, "BluetoothPeripheralHandover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start : state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v3, "android.bluetooth.device.action.UUID"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v3, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v3, "com.android.nfc.handover.action.ALLOW_CONNECT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v3, "com.android.nfc.handover.action.DENY_CONNECT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x4e20

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 176
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    .line 178
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto :goto_0
.end method

.method startBonding()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 508
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v2, 0x7f070017

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v1, 0x7f070018

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 514
    const-string v0, "BT static handover fail"

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->insertBigDataStaticHandover(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    .line 517
    :cond_0
    return-void
.end method

.method startTheMusic()V
    .locals 5

    .prologue
    const/16 v4, 0x7e

    const/4 v3, 0x0

    .line 649
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 650
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    if-eqz v0, :cond_0

    .line 651
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 652
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 653
    new-instance v1, Landroid/view/KeyEvent;

    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    const/4 v2, 0x1

    invoke-direct {v1, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 654
    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 658
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :goto_0
    return-void

    .line 656
    :cond_0
    const-string v2, "BluetoothPeripheralHandover"

    const-string v3, "Unable to send media key event"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method toast(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 646
    return-void
.end method
