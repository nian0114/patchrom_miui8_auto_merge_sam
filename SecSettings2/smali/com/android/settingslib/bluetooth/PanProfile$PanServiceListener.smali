.class final Lcom/android/settings_exlib/bluetooth/PanProfile$PanServiceListener;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/bluetooth/PanProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/bluetooth/PanProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings_exlib/bluetooth/PanProfile;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PanProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_exlib/bluetooth/PanProfile;Lcom/android/settings_exlib/bluetooth/PanProfile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_exlib/bluetooth/PanProfile;
    .param p2, "x1"    # Lcom/android/settings_exlib/bluetooth/PanProfile$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/settings_exlib/bluetooth/PanProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 7
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 72
    # getter for: Lcom/android/settings_exlib/bluetooth/PanProfile;->V:Z
    invoke-static {}, Lcom/android/settings_exlib/bluetooth/PanProfile;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "PanProfile"

    const-string v5, "Bluetooth service connected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-object v4, p0, Lcom/android/settings_exlib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PanProfile;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Lcom/android/settings_exlib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    invoke-static {v4, p2}, Lcom/android/settings_exlib/bluetooth/PanProfile;->access$102(Lcom/android/settings_exlib/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 76
    iget-object v4, p0, Lcom/android/settings_exlib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PanProfile;

    # getter for: Lcom/android/settings_exlib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    invoke-static {v4}, Lcom/android/settings_exlib/bluetooth/PanProfile;->access$100(Lcom/android/settings_exlib/bluetooth/PanProfile;)Landroid/bluetooth/BluetoothPan;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 78
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 79
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/settings_exlib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PanProfile;

    # getter for: Lcom/android/settings_exlib/bluetooth/PanProfile;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v4}, Lcom/android/settings_exlib/bluetooth/PanProfile;->access$200(Lcom/android/settings_exlib/bluetooth/PanProfile;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    .line 81
    .local v3, "mCachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    if-nez v3, :cond_1

    .line 82
    const-string v4, "PanProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PanProfile found new device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v4, p0, Lcom/android/settings_exlib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PanProfile;

    # getter for: Lcom/android/settings_exlib/bluetooth/PanProfile;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v4}, Lcom/android/settings_exlib/bluetooth/PanProfile;->access$200(Lcom/android/settings_exlib/bluetooth/PanProfile;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PanProfile;

    # getter for: Lcom/android/settings_exlib/bluetooth/PanProfile;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v5}, Lcom/android/settings_exlib/bluetooth/PanProfile;->access$300(Lcom/android/settings_exlib/bluetooth/PanProfile;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_exlib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PanProfile;

    # getter for: Lcom/android/settings_exlib/bluetooth/PanProfile;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v6}, Lcom/android/settings_exlib/bluetooth/PanProfile;->access$400(Lcom/android/settings_exlib/bluetooth/PanProfile;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    .line 85
    :cond_1
    if-eqz v3, :cond_2

    .line 86
    const-string v4, "PanProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update cached device : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v4, p0, Lcom/android/settings_exlib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PanProfile;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;I)V

    .line 89
    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 91
    :cond_2
    const-string v4, "PanProfile"

    const-string v5, "Bluetooth device is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mCachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    :cond_3
    iget-object v4, p0, Lcom/android/settings_exlib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PanProfile;

    const/4 v5, 0x1

    # setter for: Lcom/android/settings_exlib/bluetooth/PanProfile;->mIsProfileReady:Z
    invoke-static {v4, v5}, Lcom/android/settings_exlib/bluetooth/PanProfile;->access$502(Lcom/android/settings_exlib/bluetooth/PanProfile;Z)Z

    .line 97
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 100
    # getter for: Lcom/android/settings_exlib/bluetooth/PanProfile;->V:Z
    invoke-static {}, Lcom/android/settings_exlib/bluetooth/PanProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PanProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PanProfile;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_exlib/bluetooth/PanProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settings_exlib/bluetooth/PanProfile;->access$502(Lcom/android/settings_exlib/bluetooth/PanProfile;Z)Z

    .line 102
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PanProfile;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_exlib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Lcom/android/settings_exlib/bluetooth/PanProfile;->access$102(Lcom/android/settings_exlib/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 103
    return-void
.end method
