.class public final Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;


# instance fields
.field private final mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

.field private final mContext:Landroid/content/Context;

.field private final mEventManager:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

.field private mForegroundActivity:Landroid/content/Context;

.field private final mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method private constructor <init>(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V
    .locals 4
    .param p1, "adapter"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "LocalBluetoothManager"

    const-string v1, "LocalBluetoothManager :: constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iput-object p2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    .line 73
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 75
    new-instance v0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, p2, p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;)V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    .line 76
    new-instance v0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;-><init>(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    .line 77
    new-instance v0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    .line 79
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onInitCallback"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    .prologue
    .line 51
    const-class v3, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_1

    .line 52
    const-string v2, "LocalBluetoothManager"

    const-string v4, "LocalBluetoothManager :: sInstance == null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    .line 54
    .local v0, "adapter":Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    if-nez v0, :cond_0

    .line 55
    const-string v2, "LocalBluetoothManager"

    const-string v4, "LocalBluetoothManager :: adapter == null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    const/4 v2, 0x0

    .line 67
    .end local v0    # "adapter":Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    :goto_0
    monitor-exit v3

    return-object v2

    .line 59
    .restart local v0    # "adapter":Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 60
    .local v1, "appContext":Landroid/content/Context;
    new-instance v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-direct {v2, v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;-><init>(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V

    sput-object v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    .line 61
    if-eqz p1, :cond_1

    .line 62
    const-string v2, "LocalBluetoothManager"

    const-string v4, "LocalBluetoothManager :: onInitCallback != null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-interface {p1, v1, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;->onBluetoothManagerInitialized(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;)V

    .line 67
    .end local v0    # "adapter":Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .end local v1    # "appContext":Landroid/content/Context;
    :cond_1
    sget-object v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public getBluetoothAdapter()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method public getCachedDeviceManager()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method public getEventManager()Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    return-object v0
.end method

.method public getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method public isForegroundActivity()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setForegroundActivity(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 99
    :try_start_0
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to non-null context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
