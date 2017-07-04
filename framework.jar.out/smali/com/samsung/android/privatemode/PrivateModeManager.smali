.class public Lcom/samsung/android/privatemode/PrivateModeManager;
.super Ljava/lang/Object;
.source "PrivateModeManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final ACTION_PRIVATE_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

.field public static final ACTION_PRIVATE_MODE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_ON"

.field public static final CANCELLED:I = 0x3

.field private static final DEBUG:Z

.field public static final ERROR_INTERNAL:I = 0x15

.field private static final ERROR_MSG_SERVICE_NOT_FOUND:Ljava/lang/String; = "PrivateMode Service is not running!"

.field public static final MOUNTED:I = 0x1

.field public static final PREPARED:I = 0x0

.field private static final PRIVATE_PATH:Ljava/lang/String; = "/storage/Private"

.field public static final PROPERTY_KEY_PRIVATE_MODE:Ljava/lang/String; = "sys.samsung.personalpage.mode"

.field private static final TAG:Ljava/lang/String; = "PPS_PrivateModeManager"

.field public static final UNMOUNTED:I = 0x2

.field private static levelPrivatemode:I

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mIsServiceBind:Z

.field private static mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

.field private static mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

.field private static sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;


# instance fields
.field private mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/privatemode/PrivateModeManager;->DEBUG:Z

    sput-object v2, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    sput-object v2, Lcom/samsung/android/privatemode/PrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;

    sput-object v2, Lcom/samsung/android/privatemode/PrivateModeManager;->mContext:Landroid/content/Context;

    sput-boolean v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    sput-object v2, Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/privatemode/PrivateModeManager;->levelPrivatemode:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    sput-object p1, Lcom/samsung/android/privatemode/PrivateModeManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/privatemode/PrivateModeManager;->bindPrivateModeManager()V

    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/privatemode/IPrivateModeClient;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    return p0
.end method

.method static synthetic access$202(Lcom/samsung/android/privatemode/IPrivateModeManager;)Lcom/samsung/android/privatemode/IPrivateModeManager;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/privatemode/IPrivateModeManager;

    .prologue
    sput-object p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    return-object p0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/privatemode/PrivateModeManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/privatemode/PrivateModeManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Exception;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized bindPrivateModeManager()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-nez v1, :cond_0

    const-string v1, "PPS_PrivateModeManager"

    const-string v2, "bindPrivateModeManager called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/privatemode/PrivateModeManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/privatemode/PrivateModeManager$2;-><init>(Lcom/samsung/android/privatemode/PrivateModeManager;)V

    iput-object v1, p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.personalpage.service"

    const-string v3, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PPS_PrivateModeManager"

    const-string v2, "bindService: OK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/IPrivateModeClient;)Lcom/samsung/android/privatemode/PrivateModeManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Lcom/samsung/android/privatemode/IPrivateModeClient;

    .prologue
    const/4 v0, 0x0

    const-class v1, Lcom/samsung/android/privatemode/PrivateModeManager;

    monitor-enter v1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :try_start_0
    const-string v2, "PPS_PrivateModeManager"

    const-string v3, "getInstance: context or client is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.secretmode_service"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "PPS_PrivateModeManager"

    const-string v3, "getInstance: Not support Private Mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    sput-object p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;

    if-nez v0, :cond_4

    new-instance v0, Lcom/samsung/android/privatemode/PrivateModeManager;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v2}, Lcom/samsung/android/privatemode/PrivateModeManager;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;

    :cond_3
    :goto_1
    const-string v0, "PPS_PrivateModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/privatemode/PrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/privatemode/PrivateModeManager$1;

    invoke-direct {v2}, Lcom/samsung/android/privatemode/PrivateModeManager$1;-><init>()V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/samsung/android/privatemode/PrivateModeManager;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v2}, Lcom/samsung/android/privatemode/PrivateModeManager;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/PrivateModeListener;)Lcom/samsung/android/privatemode/PrivateModeManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/samsung/android/privatemode/PrivateModeListener;

    .prologue
    const-class v1, Lcom/samsung/android/privatemode/PrivateModeManager;

    monitor-enter v1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :try_start_0
    const-string v0, "PPS_PrivateModeManager"

    const-string v2, "getInstance: context or listener is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/privatemode/PrivateModeListener;->getClient()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/privatemode/PrivateModeManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/IPrivateModeClient;)Lcom/samsung/android/privatemode/PrivateModeManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "/storage/Private"

    return-object v0
.end method

.method private static isKnoxMode(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .local v2, "knoxVersion":I
    :try_start_0
    const-string v3, "isKnoxMode"

    invoke-static {p0, v3}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "2.0"

    const-string v4, "version"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "true"

    const-string v4, "isKnoxMode"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-lez v2, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const-string v3, "PPS_PrivateModeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not call android.os.PersonaManager."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchMethodError;
    const-string v3, "PPS_PrivateModeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not call getKnoxInfoForApp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isM2PActivating()Z
    .locals 3

    .prologue
    const-string v1, "sys.samsung.personalpage.mode"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isPrivateMode()Z
    .locals 3

    .prologue
    const-string v1, "sys.samsung.personalpage.mode"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isPrivateStorageMounted(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .local v1, "isMouted":Z
    if-nez p0, :cond_1

    const-string v5, "PPS_PrivateModeManager"

    const-string v6, "isPrivateStorageMounted: context is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v5, "storage"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .local v2, "mStorageMgr":Landroid/os/storage/StorageManager;
    sget-boolean v5, Lcom/samsung/android/privatemode/PrivateModeManager;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "PPS_PrivateModeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPrivateStorageMounted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/privatemode/PrivateModeManager;->isKnoxMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0"

    const-string v6, "sys.samsung.personalpage.mode"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v2, :cond_3

    :try_start_0
    const-string v4, "/storage/Private"

    invoke-virtual {v2, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "status":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    .end local v3    # "status":Ljava/lang/String;
    :cond_3
    :goto_1
    move v4, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isReady(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    sget v4, Lcom/samsung/android/privatemode/PrivateModeManager;->levelPrivatemode:I

    if-gez v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.secretmode_service"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/samsung/android/privatemode/PrivateModeManager;->levelPrivatemode:I

    const-string v4, "PPS_PrivateModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReady: getSystemFeatureLevel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/privatemode/PrivateModeManager;->levelPrivatemode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v4, "PPS_PrivateModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReady: levelPrivatemode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/privatemode/PrivateModeManager;->levelPrivatemode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "device_policy"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .local v1, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v3, "PPS_PrivateModeManager"

    const-string v4, "isReady: AFW_CL"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2

    :cond_2
    sget v4, Lcom/samsung/android/privatemode/PrivateModeManager;->levelPrivatemode:I

    if-le v4, v3, :cond_1

    invoke-static {p0}, Lcom/samsung/android/privatemode/PrivateModeManager;->isKnoxMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v3, "PPS_PrivateModeManager"

    const-string v4, "isReady: private mode does not support in KNOX mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "PPS_PrivateModeManager"

    const-string v4, "isReady: private mode does not support in Emergency(UltraPowerSaving, Emergency) mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "personal_mode_lock_type"

    invoke-static {v4, v5, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .local v0, "lockType":I
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-eqz v4, :cond_5

    const-string v3, "PPS_PrivateModeManager"

    const-string v4, "Current User is not Owner User(guest mode)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v3, "PPS_PrivateModeManager"

    const-string v4, "isReady: AFW_BYOD"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_0
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/samsung/android/privatemode/PrivateModeManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v1, "PPS_PrivateModeManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "PPS_PrivateModeManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private unBindPrivateModeManager()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "PPS_PrivateModeManager"

    const-string v2, "unBindPrivateModeManager called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    const-string v1, "PPS_PrivateModeManager"

    const-string v2, "unbindService called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "unBindPrivateModeManager"

    invoke-direct {p0, v1, v0, v3}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    const-string v1, "PPS_PrivateModeManager"

    const-string v2, "====== binderDied ====="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "PPS_PrivateModeManager"

    const-string v2, "binderDied, onStateChange : ERROR_INTERNAL "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/privatemode/IPrivateModeClient;->onStateChange(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public registerClient(Lcom/samsung/android/privatemode/IPrivateModeClient;)Landroid/os/IBinder;
    .locals 5
    .param p1, "client"    # Lcom/samsung/android/privatemode/IPrivateModeClient;

    .prologue
    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-nez v3, :cond_0

    const-string v3, "registerClient"

    const-string v4, "PrivateMode Service is not running!"

    invoke-direct {p0, v3, v2, v4}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateMode()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "registerClient"

    const-string v4, "Private Mode ON!!"

    invoke-direct {p0, v3, v2, v4}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "info":Landroid/os/Bundle;
    const-string v3, "package_name"

    sget-object v4, Lcom/samsung/android/privatemode/PrivateModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    invoke-interface {v3, p1, v1}, Lcom/samsung/android/privatemode/IPrivateModeManager;->registerClient(Lcom/samsung/android/privatemode/IPrivateModeClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v1    # "info":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "registerClient"

    invoke-direct {p0, v3, v0, v2}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerClient(Lcom/samsung/android/privatemode/PrivateModeListener;)Landroid/os/IBinder;
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/privatemode/PrivateModeListener;

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "registerClient"

    const-string v2, "listener is null"

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/privatemode/PrivateModeListener;->getClient()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/privatemode/PrivateModeManager;->registerClient(Lcom/samsung/android/privatemode/IPrivateModeClient;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public unregisterClient(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-nez v3, :cond_0

    const-string v3, "unregisterClient"

    const-string v4, "PrivateMode Service is not running!"

    invoke-direct {p0, v3, v5, v4}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    .local v1, "retVal":Z
    :try_start_0
    sget-object v3, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    invoke-interface {v3, p1}, Lcom/samsung/android/privatemode/IPrivateModeManager;->unregisterClient(Landroid/os/IBinder;)Z

    move-result v1

    sget-object v3, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    invoke-interface {v3}, Lcom/samsung/android/privatemode/IPrivateModeManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    invoke-direct {p0}, Lcom/samsung/android/privatemode/PrivateModeManager;->unBindPrivateModeManager()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "unregisterClient"

    invoke-direct {p0, v3, v0, v5}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    sput-boolean v3, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    const/4 v3, 0x0

    sput-object v3, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public unregisterClient(Landroid/os/IBinder;Z)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isSuccess"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-nez v3, :cond_0

    const-string v3, "unregisterClient"

    const-string v4, "PrivateMode Service is not running!"

    invoke-direct {p0, v3, v5, v4}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    .local v1, "retVal":Z
    :try_start_0
    sget-object v3, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/privatemode/IPrivateModeManager;->unRegisterClient(Landroid/os/IBinder;Z)Z

    move-result v1

    sget-object v3, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    invoke-interface {v3}, Lcom/samsung/android/privatemode/IPrivateModeManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    invoke-direct {p0}, Lcom/samsung/android/privatemode/PrivateModeManager;->unBindPrivateModeManager()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "unregisterClient"

    invoke-direct {p0, v3, v0, v5}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    sput-boolean v3, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    const/4 v3, 0x0

    sput-object v3, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
