.class public Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
.super Landroid/app/enterprise/IBluetoothPolicy$Stub;
.source "BluetoothPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;,
        Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;,
        Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPolicyService"


# instance fields
.field private isCacheUpdated:Z

.field mBluetoothManagerAdapter:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

.field private mCacheIsBluetoothLogEnabled:Z

.field private mContext:Landroid/content/Context;

.field mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mLogQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestart:Z

.field private mThread:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 117
    invoke-direct {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;-><init>()V

    .line 106
    iput-boolean v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mCacheIsBluetoothLogEnabled:Z

    .line 107
    iput-boolean v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    .line 108
    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    .line 109
    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mThread:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    .line 138
    new-instance v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    .line 119
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 120
    iput-boolean v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    .line 127
    new-instance v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mThread:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;

    .line 128
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mThread:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;->start()V

    .line 131
    new-instance v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    const-string v3, "BLUETOOTH_PROFILE_BWLIST"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    .line 133
    new-instance v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    const-string v3, "BLUETOOTH_DEVICE_BWLIST"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 134
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mBluetoothManagerAdapter:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    .line 135
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->initProfileMap()V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->disableDesktopConnectivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method private applyDevicePolicy()V
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyBlackList(Ljava/util/List;)V

    .line 1533
    return-void
.end method

.method private delayedBTOff()V
    .locals 1

    .prologue
    .line 308
    new-instance v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;->start()V

    .line 331
    return-void
.end method

.method private disableDesktopConnectivity()V
    .locals 8

    .prologue
    .line 870
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 871
    .local v4, "token":J
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 873
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 875
    .local v1, "btSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 876
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 877
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 878
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v6

    const/16 v7, 0x100

    if-ne v6, v7, :cond_0

    .line 881
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mBluetoothManagerAdapter:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->removeBond(Ljava/lang/String;)Z

    goto :goto_0

    .line 884
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 885
    return-void
.end method

.method private enforceBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BLUETOOTH"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BLUETOOTH"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 949
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBluetoothLogEnabled("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const/4 v6, -0x1

    .line 951
    .local v6, "uid":I
    if-nez p2, :cond_0

    .line 952
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 953
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 955
    :cond_0
    new-array v0, v11, [Ljava/lang/String;

    .line 956
    .local v0, "columns":[Ljava/lang/String;
    const-string v7, "bluetoothLogEnabled"

    aput-object v7, v0, v10

    .line 957
    const/4 v5, 0x0

    .line 959
    .local v5, "ret":Z
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBluetoothLogEnabled - uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    if-lez v6, :cond_3

    .line 961
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    invoke-virtual {v7, v8, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 964
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 965
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ne v7, v11, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 966
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 967
    const/4 v5, 0x1

    .line 970
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 990
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBluetoothLogEnabled - ret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    return v5

    .line 973
    :cond_3
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    invoke-virtual {v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 975
    .local v3, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_2

    .line 976
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBluetoothLogEnabled - cvList: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const/4 v2, 0x0

    .line 978
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 980
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 981
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 982
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBluetoothLogEnabled - cv: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const-string v7, "bluetoothLogEnabled"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 984
    const/4 v5, 0x1

    .line 985
    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private initProfileMap()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 1563
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001108-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1575
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001112-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1577
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000111E-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1578
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000111F-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1580
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110E-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1582
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110C-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1586
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000112f-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1587
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001130-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1589
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110A-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1591
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110B-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1593
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110D-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1596
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001103-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1597
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001106-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1598
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001101-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1599
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000112D-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1600
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001122-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1602
    return-void
.end method

.method private isProfileEnabled(II)Z
    .locals 8
    .param p1, "adminUid"    # I
    .param p2, "profile"    # I

    .prologue
    .line 625
    const/4 v2, 0x1

    .line 629
    .local v2, "lEnabled":Z
    if-gtz p2, :cond_1

    .line 630
    :try_start_0
    new-instance v5, Ljava/security/InvalidParameterException;

    invoke-direct {v5}, Ljava/security/InvalidParameterException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Ljava/security/InvalidParameterException;
    const-string v5, "BluetoothPolicyService"

    const-string/jumbo v6, "isProfileEnabled() failed: INVALID PARAMETER INPUT"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .end local v0    # "e":Ljava/security/InvalidParameterException;
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabledBySecureMode(II)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 633
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "BLUETOOTH"

    const-string/jumbo v7, "profileSettings"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 635
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 636
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 637
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_2

    .line 638
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    and-int/2addr v5, p2

    if-eq p2, v5, :cond_2

    .line 639
    const/4 v2, 0x0

    .line 640
    goto :goto_0

    .line 647
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Ljava/lang/Integer;
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v0

    .line 648
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "BluetoothPolicyService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 652
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isProfileEnabledBySecureMode(II)Z
    .locals 6
    .param p1, "adminUid"    # I
    .param p2, "profile"    # I

    .prologue
    .line 656
    const/4 v3, 0x1

    .line 657
    .local v3, "ret":Z
    const-string v5, "bluetooth_secure_mode_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;

    .line 660
    .local v0, "bsmp":Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 661
    .local v2, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->isSecureModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v4, v3

    .line 689
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_0
    return v4

    .line 665
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getSecureModeConfiguration(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/BluetoothSecureModeConfig;

    move-result-object v1

    .line 667
    .local v1, "currentConfig":Landroid/app/enterprise/BluetoothSecureModeConfig;
    if-eqz v1, :cond_2

    .line 668
    sparse-switch p2, :sswitch_data_0

    :cond_2
    :goto_1
    move v4, v3

    .line 689
    .restart local v4    # "ret":I
    goto :goto_0

    .line 670
    .end local v4    # "ret":I
    :sswitch_0
    iget-boolean v3, v1, Landroid/app/enterprise/BluetoothSecureModeConfig;->hfpEnable:Z

    .line 671
    goto :goto_1

    .line 673
    :sswitch_1
    iget-boolean v3, v1, Landroid/app/enterprise/BluetoothSecureModeConfig;->pbapEnable:Z

    .line 674
    goto :goto_1

    .line 676
    :sswitch_2
    iget-boolean v3, v1, Landroid/app/enterprise/BluetoothSecureModeConfig;->a2dpEnable:Z

    .line 677
    goto :goto_1

    .line 679
    :sswitch_3
    iget-boolean v3, v1, Landroid/app/enterprise/BluetoothSecureModeConfig;->ftpEnable:Z

    .line 680
    goto :goto_1

    .line 682
    :sswitch_4
    iget-boolean v3, v1, Landroid/app/enterprise/BluetoothSecureModeConfig;->sapEnable:Z

    .line 683
    goto :goto_1

    .line 668
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x40 -> :sswitch_3
        0x100 -> :sswitch_4
    .end sparse-switch
.end method

.method private restartBluetooth()V
    .locals 2

    .prologue
    .line 1536
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1537
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1539
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    .line 1540
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 1542
    :cond_0
    return-void
.end method

.method private showProfileBlockedToast(I)V
    .locals 1
    .param p1, "profile"    # I

    .prologue
    .line 693
    const/4 v0, -0x1

    .line 695
    .local v0, "msgResId":I
    sparse-switch p1, :sswitch_data_0

    .line 731
    :goto_0
    return-void

    .line 697
    :sswitch_0
    const v0, 0x1040b6d

    .line 730
    :goto_1
    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_0

    .line 700
    :sswitch_1
    const v0, 0x1040b6e

    .line 701
    goto :goto_1

    .line 703
    :sswitch_2
    const v0, 0x1040b6b

    .line 704
    goto :goto_1

    .line 706
    :sswitch_3
    const v0, 0x1040b6c

    .line 707
    goto :goto_1

    .line 709
    :sswitch_4
    const v0, 0x1040b6f

    .line 710
    goto :goto_1

    .line 712
    :sswitch_5
    const v0, 0x1040b70

    .line 713
    goto :goto_1

    .line 715
    :sswitch_6
    const v0, 0x1040b71

    .line 716
    goto :goto_1

    .line 718
    :sswitch_7
    const v0, 0x1040b72

    .line 719
    goto :goto_1

    .line 721
    :sswitch_8
    const v0, 0x1040b73

    .line 722
    goto :goto_1

    .line 724
    :sswitch_9
    const v0, 0x1040b74

    .line 725
    goto :goto_1

    .line 695
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public activateBluetoothDeviceRestriction(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v6, 0x1

    .line 1388
    const-string v7, "BluetoothPolicyService"

    const-string v8, "activateBluetoothDeviceRestriction"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1390
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1391
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 1392
    .local v2, "refresh":Z
    const/4 v3, 0x0

    .line 1393
    .local v3, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1395
    .local v4, "token":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v7

    if-eq p2, v7, :cond_1

    move v2, v6

    .line 1396
    :goto_0
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    const-string/jumbo v9, "devicePolicyEnabled"

    invoke-virtual {v7, v0, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 1398
    if-ne v3, v6, :cond_0

    if-eqz v2, :cond_0

    .line 1399
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v6}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->reload()Z

    .line 1400
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1406
    :cond_0
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1407
    return v3

    .line 1395
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1402
    :catch_0
    move-exception v1

    .line 1403
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public activateBluetoothUUIDRestriction(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v6, 0x1

    .line 1206
    const-string v7, "BluetoothPolicyService"

    const-string v8, "activateBluetoothUUIDRestriction"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const/4 v3, 0x0

    .line 1208
    .local v3, "ret":Z
    const/4 v2, 0x0

    .line 1209
    .local v2, "restartNeeded":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1210
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1211
    .local v0, "adminUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1213
    .local v4, "token":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v7

    if-eq p2, v7, :cond_1

    move v2, v6

    .line 1214
    :goto_0
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    const-string/jumbo v9, "profilePolicyEnabled"

    invoke-virtual {v7, v0, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 1217
    if-ne v3, v6, :cond_0

    if-eqz v2, :cond_0

    .line 1218
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v6}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->reload()Z

    .line 1219
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    :cond_0
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1226
    return v3

    .line 1213
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1221
    :catch_0
    move-exception v1

    .line 1222
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public addBluetoothDevicesToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1230
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string v6, "addDevicesToBlackList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1232
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1233
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1236
    .local v1, "ret":Z
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 1245
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1240
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1241
    .local v4, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->addObjectsToBlackList(ILjava/util/List;)Z

    move-result v1

    .line 1242
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1243
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 1244
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1245
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public addBluetoothDevicesToWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1302
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string v6, "addDevicesToWhiteList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1304
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1305
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1308
    .local v1, "ret":Z
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 1317
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1312
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1313
    .local v4, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->addObjectsToWhiteList(ILjava/util/List;)Z

    move-result v1

    .line 1314
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1315
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 1316
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1317
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public addBluetoothUUIDsToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1064
    .local p2, "profileUUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string v6, "addProfilesToBlackList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1066
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1067
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1070
    .local v1, "ret":Z
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 1078
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1073
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1074
    .local v4, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->addObjectsToBlackList(ILjava/util/List;)Z

    move-result v1

    .line 1075
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1076
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 1077
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1078
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public addBluetoothUUIDsToWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1135
    .local p2, "profileUUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string v6, "addProfilesToWhiteList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1137
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1138
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1141
    .local v1, "ret":Z
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 1150
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1145
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1146
    .local v4, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->addObjectsToWhiteList(ILjava/util/List;)Z

    move-result v1

    .line 1147
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1148
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 1149
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1150
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public allowBluetooth(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 263
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 265
    const/4 v12, 0x1

    .line 266
    .local v12, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 268
    .local v14, "token":J
    if-nez p2, :cond_0

    .line 269
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    .line 270
    .local v9, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 271
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 279
    .end local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "BLUETOOTH"

    const-string v5, "bluetoothEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    .line 281
    if-eqz v12, :cond_1

    .line 282
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "BluetoothPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has changed allow bluetooth to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 288
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v2, "Bluetooth"

    const-string v3, "allowBluetooth"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    invoke-virtual {v11, v2, v3, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 292
    const-string v2, "BluetoothPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GearPolicy allowBluetooth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    .end local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    :goto_2
    return v12

    .line 273
    .restart local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_2
    :try_start_2
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 275
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->delayedBTOff()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 298
    .end local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v10

    .line 299
    .local v10, "e":Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 300
    :try_start_3
    const-string v2, "BluetoothPolicyService"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 302
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 293
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v10

    .line 294
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 302
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public allowCallerIDDisplay(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1624
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1626
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "BLUETOOTH"

    const-string v4, "allowCallerID"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1632
    :goto_0
    return v1

    .line 1629
    :catch_0
    move-exception v0

    .line 1630
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothPolicyService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowOutgoingCalls(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 447
    const-string v3, "BluetoothPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allowOutgoingCalls = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 449
    const/4 v2, 0x0

    .line 450
    .local v2, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 452
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "BLUETOOTH"

    const-string v8, "allowOutgoingCalls"

    invoke-virtual {v3, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 454
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 455
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    .line 458
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v0    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 464
    return v2

    .line 460
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method applyBlackList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1547
    .local p1, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1548
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 1549
    .local v1, "btSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1550
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1551
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 1552
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "*"

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1554
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mBluetoothManagerAdapter:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->removeBond(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1557
    .end local v0    # "ba":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "btSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :catch_0
    move-exception v3

    .line 1558
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "BluetoothPolicyService"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public bluetoothLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 1026
    const/4 v0, 0x0

    .line 1030
    .local v0, "ret":Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1031
    const-string v1, "BluetoothPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "on server bluetoothLoglogConnectionChanged ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 1034
    :cond_0
    return v0
.end method

.method public clearBluetoothDevicesFromBlackList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1268
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearDevicesFromBlackList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1270
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1271
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1272
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1273
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->clearObjectsFromBlackList(I)Z

    move-result v1

    .line 1274
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1275
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 1276
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1277
    return v1
.end method

.method public clearBluetoothDevicesFromWhiteList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1340
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearDevicesFromWhiteList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1342
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1343
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1344
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1345
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->clearObjectsFromWhiteList(I)Z

    move-result v1

    .line 1346
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1347
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 1348
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1349
    return v1
.end method

.method public clearBluetoothUUIDsFromBlackList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1101
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearProfilesFromBlackList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1103
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1104
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1105
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1106
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->clearObjectsFromBlackList(I)Z

    move-result v1

    .line 1107
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1108
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 1109
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1110
    return v1
.end method

.method public clearBluetoothUUIDsFromWhiteList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1173
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearProfilesFromWhiteList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1175
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1176
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1177
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1178
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->clearObjectsFromWhiteList(I)Z

    move-result v1

    .line 1179
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1180
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 1181
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1182
    return v1
.end method

.method public getAllBluetoothDevicesBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1281
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getAllDevicesBlackLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1283
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1284
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getAllObjectsFromBlackListForAllAdmins()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1286
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1287
    return-object v0
.end method

.method public getAllBluetoothDevicesWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1369
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getAllDevicesWhiteLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1371
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1372
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getAllObjectsFromWhiteListForAllAdmins()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1374
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1375
    return-object v0
.end method

.method public getAllBluetoothUUIDsBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1114
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getAllProfilesBlackLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1117
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->getAllObjectsFromBlackListForAllAdmins()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1120
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1121
    return-object v0
.end method

.method public getAllBluetoothUUIDsWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1186
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getAllProfilesWhiteLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1188
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1189
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->getAllObjectsFromWhiteListForAllAdmins()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1191
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1192
    return-object v0
.end method

.method public getAllowBluetoothDataTransfer(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 376
    const-string v4, "BluetoothPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAllowBluetoothDataTransfer - showMsg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v1, 0x1

    .line 378
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "allowDataTransfer"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 380
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 381
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 382
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 383
    move v1, v2

    .line 389
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Z
    :cond_1
    if-eqz p2, :cond_2

    if-nez v1, :cond_2

    .line 390
    const v4, 0x1040b79

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 393
    :cond_2
    return v1
.end method

.method public getBluetoothLog(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 995
    const-string v7, "BluetoothPolicyService"

    const-string/jumbo v8, "getBluetoothLog()"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 997
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/String;

    .line 998
    .local v0, "columns":[Ljava/lang/String;
    const/4 v7, 0x0

    const-string/jumbo v8, "time"

    aput-object v8, v0, v7

    .line 999
    const/4 v7, 0x1

    const-string/jumbo v8, "log"

    aput-object v8, v0, v7

    .line 1000
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    .local v5, "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BluetoothLogTable"

    invoke-virtual {v7, v8, v6, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1003
    .local v2, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v2, :cond_0

    .line 1004
    const-string v7, "BluetoothPolicyService"

    const-string/jumbo v8, "getBluetoothLog - cvList is null"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 1022
    .end local v5    # "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v5

    .line 1007
    .restart local v5    # "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getBluetoothLog() - cvList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const/4 v1, 0x0

    .line 1009
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1011
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1012
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 1013
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "time"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1014
    .local v4, "report":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1015
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1016
    const-string/jumbo v6, "log"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1017
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getBluetoothLog() - report: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1021
    .end local v4    # "report":Ljava/lang/String;
    :cond_2
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getBluetoothLog() - reportList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEffectiveBluetoothDevicesBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1292
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getEffectiveBluetoothDevicesBlackLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1294
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1295
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object v0

    .line 1296
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1297
    return-object v0
.end method

.method public getEffectiveBluetoothDevicesWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1379
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getEffectiveBluetoothDevicesWhiteLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1382
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveWhiteList()Ljava/util/List;

    move-result-object v0

    .line 1383
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1384
    return-object v0
.end method

.method public getEffectiveBluetoothUUIDsBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1125
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getEffectiveBluetoothUUIDsBlackLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1128
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object v0

    .line 1129
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1130
    return-object v0
.end method

.method public getEffectiveBluetoothUUIDsWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1196
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getEffectiveBluetoothUUIDsWhiteLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1199
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->getEffectiveWhiteList()Ljava/util/List;

    move-result-object v0

    .line 1200
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1201
    return-object v0
.end method

.method getProfileFromUUID(Ljava/lang/String;)I
    .locals 5
    .param p1, "profileUUID"    # Ljava/lang/String;

    .prologue
    .line 1437
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1438
    .local v3, "profileItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1439
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1440
    .local v2, "profile":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1441
    .local v0, "UUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1442
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1443
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1446
    .end local v0    # "UUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "profile":Ljava/lang/Integer;
    :goto_1
    return v4

    .line 1441
    .restart local v0    # "UUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v2    # "profile":Ljava/lang/Integer;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1446
    .end local v0    # "UUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "profile":Ljava/lang/Integer;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public isBluetoothDeviceAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1466
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothDeviceAllowed(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBluetoothDeviceAllowed(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1472
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1473
    :cond_0
    const/4 v0, 0x0

    .line 1482
    :cond_1
    :goto_0
    return v0

    .line 1476
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isObjectAllowed(Ljava/lang/String;)Z

    move-result v0

    .line 1478
    .local v0, "ret":Z
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 1479
    const v1, 0x1040b77

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_0
.end method

.method public isBluetoothDeviceRestrictionActive(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1420
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "isBluetoothDeviceRestrictionActive"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1422
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1423
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v0

    .line 1424
    .local v0, "ret":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1425
    return v0
.end method

.method public isBluetoothEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isBluetoothEnabled(Z)Z
    .locals 7
    .param p1, "showMsg"    # Z

    .prologue
    .line 177
    const-string v4, "BluetoothPolicyService"

    const-string/jumbo v5, "isBluetoothEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v1, 0x1

    .line 180
    .local v1, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    const/4 v1, 0x0

    .line 195
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 196
    const v4, 0x1040b6a

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 199
    :cond_1
    return v1

    .line 183
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "bluetoothEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 185
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_0

    .line 186
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 187
    .local v2, "value":Z
    if-nez v2, :cond_3

    .line 188
    move v1, v2

    .line 189
    goto :goto_0
.end method

.method public isBluetoothEnabledWithMsg(Z)Z
    .locals 1
    .param p1, "showMsg"    # Z

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x1

    .line 941
    iget-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    if-nez v0, :cond_0

    .line 942
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mCacheIsBluetoothLogEnabled:Z

    .line 943
    iput-boolean v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    .line 945
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mCacheIsBluetoothLogEnabled:Z

    return v0
.end method

.method public isBluetoothUUIDAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileUUID"    # Ljava/lang/String;

    .prologue
    .line 1429
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "profileUUID"    # Ljava/lang/String;

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isObjectAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBluetoothUUIDAllowedInternal(Ljava/lang/String;)Z
    .locals 3
    .param p1, "profileUUID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1450
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getProfileFromUUID(Ljava/lang/String;)I

    move-result v0

    .line 1452
    .local v0, "profile":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1453
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->showProfileBlockedToast(I)V

    .line 1462
    :cond_0
    :goto_0
    return v1

    .line 1458
    :cond_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1462
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBluetoothUUIDRestrictionActive(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1411
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "isBluetoothUUIDRestrictionActive"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1413
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1414
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v0

    .line 1415
    .local v0, "ret":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1416
    return v0
.end method

.method public isCallerIDDisplayAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1636
    const/4 v2, 0x1

    .line 1638
    .local v2, "ret":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "BLUETOOTH"

    const-string v7, "allowCallerID"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1641
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1642
    .local v3, "value":Z
    if-nez v3, :cond_0

    .line 1643
    move v2, v3

    .line 1650
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Z
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_1
    :goto_0
    return v2

    .line 1647
    :catch_0
    move-exception v0

    .line 1648
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "BluetoothPolicyService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isDesktopConnectivityEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 893
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isDesktopConnectivityEnabled(Z)Z
    .locals 7
    .param p1, "showMsg"    # Z

    .prologue
    .line 896
    const-string v4, "BluetoothPolicyService"

    const-string/jumbo v5, "isDesktopConnectivityEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const/4 v1, 0x1

    .line 898
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string/jumbo v6, "desktopConnectivityEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 901
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 902
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 903
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 904
    move v1, v2

    .line 910
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    .line 911
    const v4, 0x1040b75

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 914
    :cond_2
    return v1
.end method

.method public isDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 812
    const-string v6, "BluetoothPolicyService"

    const-string/jumbo v7, "isDiscoverableEnabled "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const/4 v3, 0x1

    .line 814
    .local v3, "ret":Z
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string/jumbo v8, "discoverableModeEnabled"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 816
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v5, :cond_1

    .line 817
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 818
    .local v4, "value":Z
    if-nez v4, :cond_0

    .line 819
    move v3, v4

    .line 824
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "value":Z
    :cond_1
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isDiscoverableEnabled ret:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string v6, "bluetooth_secure_mode_policy"

    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;

    .line 828
    .local v0, "bsmp":Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->isSecureModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 829
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getSecureModeConfiguration(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/BluetoothSecureModeConfig;

    move-result-object v1

    .line 830
    .local v1, "currentConfig":Landroid/app/enterprise/BluetoothSecureModeConfig;
    if-eqz v1, :cond_2

    .line 831
    iget-boolean v6, v1, Landroid/app/enterprise/BluetoothSecureModeConfig;->scanMode:Z

    if-nez v6, :cond_3

    const/4 v3, 0x1

    .line 835
    .end local v1    # "currentConfig":Landroid/app/enterprise/BluetoothSecureModeConfig;
    :cond_2
    :goto_0
    return v3

    .line 831
    .restart local v1    # "currentConfig":Landroid/app/enterprise/BluetoothSecureModeConfig;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isLimitedDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 549
    const-string v4, "BluetoothPolicyService"

    const-string/jumbo v5, "isLimitedDiscoverableEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const/4 v1, 0x1

    .line 551
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string/jumbo v6, "limitedDiscoverableEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 554
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 555
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 556
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 557
    move v1, v2

    .line 562
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Z
    :cond_1
    const-string v4, "BluetoothPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isLimitedDiscoverableEnabled ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    return v1
.end method

.method public isOutgoingCallsAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isOutgoingCallsAllowed(Z)Z
    .locals 7
    .param p1, "showMsg"    # Z

    .prologue
    .line 478
    const-string v4, "BluetoothPolicyService"

    const-string/jumbo v5, "isPairingEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const/4 v1, 0x1

    .line 480
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "allowOutgoingCalls"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 482
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 483
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 484
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 485
    move v1, v2

    .line 491
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    .line 492
    const v4, 0x1040b78

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 495
    :cond_2
    return v1
.end method

.method public isPairingEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isPairingEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isPairingEnabled(Z)Z
    .locals 7
    .param p1, "showMsg"    # Z

    .prologue
    .line 420
    const-string v4, "BluetoothPolicyService"

    const-string/jumbo v5, "isPairingEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/4 v1, 0x1

    .line 422
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string/jumbo v6, "pairingEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 424
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 425
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 426
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 427
    move v1, v2

    .line 433
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    .line 434
    const v4, 0x1040b76

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 437
    :cond_2
    return v1
.end method

.method public isProfileEnabled(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # I

    .prologue
    .line 620
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 621
    .local v0, "adminUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabled(II)Z

    move-result v1

    return v1
.end method

.method public isProfileEnabledInternal(IZ)Z
    .locals 6
    .param p1, "profile"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 735
    const/4 v3, 0x1

    .line 739
    .local v3, "lEnabled":Z
    if-gtz p1, :cond_2

    .line 740
    :try_start_0
    new-instance v4, Ljava/security/InvalidParameterException;

    invoke-direct {v4}, Ljava/security/InvalidParameterException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 757
    :catch_0
    move-exception v1

    .line 758
    .local v1, "e":Ljava/security/InvalidParameterException;
    const-string v4, "BluetoothPolicyService"

    const-string/jumbo v5, "isProfileEnabledInternal() failed: INVALID PARAMETER INPUT"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    .end local v1    # "e":Ljava/security/InvalidParameterException;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    if-nez v3, :cond_1

    .line 764
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->showProfileBlockedToast(I)V

    :cond_1
    move v4, v3

    .line 766
    :goto_1
    return v4

    .line 743
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v4, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabled(II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 744
    if-eqz p2, :cond_3

    .line 745
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->showProfileBlockedToast(I)V

    .line 747
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 750
    :cond_4
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 751
    .local v0, "UUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 752
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_5

    .line 753
    const/4 v3, 0x0

    .line 754
    goto :goto_0

    .line 751
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 759
    .end local v0    # "UUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :catch_1
    move-exception v1

    .line 760
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1488
    return-void
.end method

.method onAdminRemoved()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    .line 205
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 207
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1490
    const-string v0, "BluetoothPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdminRemoved - uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->reload()Z

    .line 1492
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->reload()Z

    .line 1495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    .line 1497
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1498
    const-string v0, "BluetoothPolicyService"

    const-string/jumbo v1, "onAdminRemoved - Clean log"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "BluetoothLogTable"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->remove(Ljava/lang/String;)Z

    .line 1502
    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1512
    return-void
.end method

.method public removeBluetoothDevicesFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1249
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string/jumbo v6, "removeDevicesFromBlackList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1251
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1252
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1255
    .local v1, "ret":Z
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 1264
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1259
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1260
    .local v4, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->removeObjectsFromBlackList(ILjava/util/List;)Z

    move-result v1

    .line 1261
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1262
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 1263
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1264
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public removeBluetoothDevicesFromWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1321
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string/jumbo v6, "removeDevicesFromWhiteList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1323
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1324
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1327
    .local v1, "ret":Z
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 1336
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1331
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1332
    .local v4, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->removeObjectsFromWhiteList(ILjava/util/List;)Z

    move-result v1

    .line 1333
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1334
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 1335
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1336
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public removeBluetoothUUIDsFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1082
    .local p2, "profileUUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string/jumbo v6, "removeProfilesFromBlackList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1084
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1085
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1088
    .local v1, "ret":Z
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 1097
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1092
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1093
    .local v4, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->removeObjectsFromBlackList(ILjava/util/List;)Z

    move-result v1

    .line 1094
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1095
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 1096
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1097
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public removeBluetoothUUIDsFromWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1154
    .local p2, "profileUUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string/jumbo v6, "removeProfilesFromWhiteList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1156
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1157
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1160
    .local v1, "ret":Z
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 1169
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1164
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1165
    .local v4, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->removeObjectsFromWhiteList(ILjava/util/List;)Z

    move-result v1

    .line 1166
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1167
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 1168
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1169
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public setAllowBluetoothDataTransfer(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 359
    const-string v2, "BluetoothPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAllowBluetoothDataTransfer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 361
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 362
    .local v0, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 363
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "BLUETOOTH"

    const-string v5, "allowDataTransfer"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public setBluetooth(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 219
    const/4 v9, 0x1

    .line 220
    .local v9, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 222
    .local v10, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "BLUETOOTH"

    const-string v3, "bluetoothEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 225
    const-string v0, "BluetoothPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetooth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 227
    .local v7, "ba":Landroid/bluetooth/BluetoothAdapter;
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 239
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 240
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BluetoothPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has changed bluetooth enabled to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :cond_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 252
    .end local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :goto_1
    return v9

    .line 231
    .restart local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 232
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    .end local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v8

    .line 247
    .local v8, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 248
    :try_start_2
    const-string v0, "BluetoothPolicyService"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 234
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_3
    :try_start_3
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->delayedBTOff()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 250
    .end local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 919
    const-string v2, "BluetoothPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBluetoothLogEnabled("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 923
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 924
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "bluetoothLogEnabled"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "BLUETOOTH"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    .line 928
    .local v1, "ret":Z
    if-nez p2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 929
    const-string v2, "BluetoothPolicyService"

    const-string/jumbo v3, "setBluetoothLogEnabled - Clean log"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "BluetoothLogTable"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->remove(Ljava/lang/String;)Z

    .line 931
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 933
    :cond_0
    const-string v2, "BluetoothPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBluetoothLogEnabled - return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    if-eqz v1, :cond_1

    .line 935
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    .line 937
    :cond_1
    return v1
.end method

.method public setDesktopConnectivityState(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 849
    const-string v3, "BluetoothPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setDesktopConnectivityState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 851
    const/4 v2, 0x0

    .line 852
    .local v2, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 854
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "BLUETOOTH"

    const-string/jumbo v8, "desktopConnectivityEnabled"

    invoke-virtual {v3, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 856
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 857
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_0

    .line 858
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->disableDesktopConnectivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    .end local v0    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 865
    return v2

    .line 860
    :catch_0
    move-exception v1

    .line 861
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setDiscoverableState(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 781
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 782
    const/4 v8, 0x0

    .line 783
    .local v8, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 785
    .local v10, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "BLUETOOTH"

    const-string/jumbo v3, "discoverableModeEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 787
    const-string v0, "BluetoothPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDiscoverableState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    if-eqz v8, :cond_0

    .line 789
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BluetoothPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_1

    const-string/jumbo v5, "enabled"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Bluetooth discoverable state."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    :cond_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 803
    :goto_1
    return v8

    .line 789
    :cond_1
    :try_start_1
    const-string/jumbo v5, "disabled"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 796
    :catch_0
    move-exception v7

    .line 797
    .local v7, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 798
    :try_start_2
    const-string v0, "BluetoothPolicyService"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 800
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setLimitedDiscoverableState(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 505
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 506
    const/4 v11, 0x0

    .line 507
    .local v11, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 509
    .local v14, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "BLUETOOTH"

    const-string/jumbo v5, "limitedDiscoverableEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 511
    const-string v2, "BluetoothPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLimitedDiscoverableState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    if-eqz v11, :cond_0

    .line 513
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    .line 514
    .local v9, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isLimitedDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 516
    const/16 v2, 0x17

    invoke-virtual {v9, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 517
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 525
    :goto_0
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "BluetoothPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_3

    const-string/jumbo v7, "enabled"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Bluetooth limited discoverable state."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    .end local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 539
    :goto_2
    return v11

    .line 519
    .restart local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "debug.bt.discoverable_time"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 520
    .local v12, "timeout":I
    const/16 v2, 0x15

    invoke-virtual {v9, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 521
    const-string v2, "BluetoothPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default discoverable_time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    if-ltz v12, :cond_2

    .end local v12    # "timeout":I
    :goto_3
    invoke-virtual {v9, v12}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 532
    .end local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v10

    .line 533
    .local v10, "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    .line 534
    :try_start_2
    const-string v2, "BluetoothPolicyService"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 536
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 522
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    .restart local v12    # "timeout":I
    :cond_2
    const/16 v12, 0x78

    goto :goto_3

    .line 525
    .end local v12    # "timeout":I
    :cond_3
    :try_start_3
    const-string/jumbo v7, "disabled"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 536
    .end local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPairingState(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 403
    const-string v0, "BluetoothPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPairingState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 405
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "BLUETOOTH"

    const-string/jumbo v3, "pairingEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setProfileState(Landroid/app/enterprise/ContextInfo;ZI)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "profile"    # I

    .prologue
    .line 577
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setProfileState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 579
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 580
    .local v0, "callingUid":I
    const/4 v3, 0x0

    .line 581
    .local v3, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 585
    .local v4, "token":J
    if-gtz p3, :cond_0

    .line 586
    :try_start_0
    new-instance v6, Ljava/security/InvalidParameterException;

    invoke-direct {v6}, Ljava/security/InvalidParameterException;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 601
    :catch_0
    move-exception v1

    .line 602
    .local v1, "e":Ljava/security/InvalidParameterException;
    const-string v6, "BluetoothPolicyService"

    const-string/jumbo v7, "setProfileState() failed: INVALID PARAMETER INPUT"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .end local v1    # "e":Ljava/security/InvalidParameterException;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 607
    return v3

    .line 592
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string/jumbo v8, "profileSettings"

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 597
    .local v2, "lValue":I
    :goto_1
    const/4 v6, 0x1

    if-ne v6, p2, :cond_1

    or-int/2addr v2, p3

    .line 598
    :goto_2
    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string/jumbo v8, "profileSettings"

    invoke-virtual {v6, v0, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 600
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V
    :try_end_2
    .catch Ljava/security/InvalidParameterException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 603
    .end local v2    # "lValue":I
    :catch_1
    move-exception v1

    .line 604
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 593
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 594
    .local v1, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const v2, 0xffff

    .restart local v2    # "lValue":I
    goto :goto_1

    .line 597
    .end local v1    # "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :cond_1
    xor-int/lit8 v6, p3, -0x1

    and-int/2addr v2, v6

    goto :goto_2
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->reload()Z

    .line 1506
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->reload()Z

    .line 1507
    return-void
.end method

.method public translateList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/ControlInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1353
    .local p1, "clist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ControlInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1354
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1355
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/ControlInfo;

    .line 1356
    .local v3, "obj":Landroid/app/enterprise/ControlInfo;
    iget-object v4, v3, Landroid/app/enterprise/ControlInfo;->entries:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/app/enterprise/ControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1358
    new-instance v1, Landroid/app/enterprise/BluetoothControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/BluetoothControlInfo;-><init>()V

    .line 1359
    .local v1, "info":Landroid/app/enterprise/BluetoothControlInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Landroid/app/enterprise/BluetoothControlInfo;->entries:Ljava/util/List;

    .line 1360
    iget-object v4, v3, Landroid/app/enterprise/ControlInfo;->adminPackageName:Ljava/lang/String;

    iput-object v4, v1, Landroid/app/enterprise/BluetoothControlInfo;->adminPackageName:Ljava/lang/String;

    .line 1361
    iget-object v4, v1, Landroid/app/enterprise/BluetoothControlInfo;->entries:Ljava/util/List;

    iget-object v5, v3, Landroid/app/enterprise/ControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1362
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1365
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/app/enterprise/BluetoothControlInfo;
    .end local v3    # "obj":Landroid/app/enterprise/ControlInfo;
    :cond_1
    return-object v2
.end method
