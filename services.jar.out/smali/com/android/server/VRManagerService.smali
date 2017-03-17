.class public Lcom/android/server/VRManagerService;
.super Lcom/android/internal/app/IVRManagerService$Stub;
.source "VRManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VRManagerService$VRRecord;,
        Lcom/android/server/VRManagerService$DeviceEventHandler;
    }
.end annotation


# static fields
.field public static final ACTION_HMT_CONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_CONNECTED"

.field public static final ACTION_HMT_DISCONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_DISCONNECTED"

.field public static final ACTION_HMT_MOUNT:Ljava/lang/String; = "com.samsung.intent.action.HMT_MOUNT"

.field public static final ACTION_HMT_SENSOR_BOOTING_WITHOUT_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITHOUT_TA"

.field public static final ACTION_HMT_SENSOR_BOOTING_WITH_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITH_TA"

.field public static final ACTION_HMT_SENSOR_CONNECTED_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_CONNECTED_TA"

.field public static final ACTION_HMT_UNMOUNT:Ljava/lang/String; = "com.samsung.intent.action.HMT_UNMOUNT"

.field private static final EPEN_INPUT_ENABLED_PATH:Ljava/lang/String; = "/sys/class/sec/sec_epen/input/enabled"

.field private static final MESSAGE_DEVICE_EVENT:I = 0x1

.field private static final MESSAGE_UNBIND_VR_SERVICE:I = 0x0

.field private static final SCHED_RESET_ON_FORK:I = 0x40000000

.field private static final TAG:Ljava/lang/String; = "VRManagerService"

.field private static final TOUCHKEY_INPUT_ENABLED_PATH:Ljava/lang/String; = "/sys/class/sec/sec_touchkey/input/enabled"

.field private static final TSP_INPUT_ENABLED_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/input/enabled"

.field private static final VR_UNDOCK_TIMEOUT:I = 0xea60


# instance fields
.field private mAfControl:Landroid/sec/performance/AffinityControl;

.field private mContext:Landroid/content/Context;

.field private mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

.field private mDeviceEventLooper:Landroid/os/Looper;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerLock:Ljava/lang/Object;

.field private mLock:Ljava/lang/Object;

.field private mVRRecord:Lcom/android/server/VRManagerService$VRRecord;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/internal/app/IVRManagerService$Stub;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mHandlerLock:Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    .line 70
    new-instance v0, Lcom/android/server/VRManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/VRManagerService$1;-><init>(Lcom/android/server/VRManagerService;)V

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    .line 109
    const-string v0, "VRManagerService"

    const-string v1, "---- VRManagerService Constructor ----"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-object p1, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VRManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VRManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->stopVR()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/VRManagerService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VRManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VRManagerService;->handleDeviceEventChanged(III)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/VRManagerService;)Lcom/android/server/VRManagerService$VRRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/VRManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelInit()V
    .locals 3

    .prologue
    .line 969
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 970
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    if-eqz v0, :cond_0

    .line 971
    const-string v0, "VRManagerService"

    const-string v2, "cancelInit() mDeviceEventHandler"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/VRManagerService$DeviceEventHandler;->removeMessages(I)V

    .line 973
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    .line 978
    :goto_0
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mDeviceEventLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 979
    const-string v0, "VRManagerService"

    const-string v2, "cancelInit() mDeviceEventLooper"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mDeviceEventLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 981
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mDeviceEventLooper:Landroid/os/Looper;

    .line 985
    :goto_1
    monitor-exit v1

    .line 986
    return-void

    .line 975
    :cond_0
    const-string v0, "VRManagerService"

    const-string/jumbo v2, "mDeviceEventHandler=null ignored."

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 985
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 983
    :cond_1
    :try_start_1
    const-string v0, "VRManagerService"

    const-string/jumbo v2, "mDeviceEventLooper=null ignored."

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 245
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 246
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_0
    return-void
.end method

.method private getService()Lcom/android/internal/app/IVRManagerService;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 252
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :try_start_1
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v1}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IVRManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->stopVR()V

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-nez v1, :cond_1

    .line 259
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->startVR()V

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-nez v1, :cond_2

    .line 263
    monitor-exit v2

    .line 271
    :goto_0
    return-object v0

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    invoke-virtual {v1}, Lcom/android/server/VRManagerService$VRRecord;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 269
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private handleDeviceEventChanged(III)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 901
    const-string/jumbo v2, "handleDeviceEventChanged"

    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(IILjava/lang/String;)V

    .line 902
    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDeviceEventChanged event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 905
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 906
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->notifyDeviceEventChanged(I)V

    .line 913
    :goto_0
    return-void

    .line 908
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VRManagerService;->handleDeviceEventChangedForFactory(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 910
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 911
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private handleDeviceEventChangedForFactory(I)V
    .locals 6
    .param p1, "event"    # I

    .prologue
    const/high16 v5, 0x20000000

    const/high16 v4, 0x40000000    # 2.0f

    .line 916
    const-string v1, "VRManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDeviceEventChangedForFactory  event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 918
    .local v0, "intent":Landroid/content/Intent;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 919
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 920
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 921
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 946
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 947
    return-void

    .line 922
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    .line 923
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 924
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 925
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 926
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 927
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 929
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/16 v2, 0x6a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 930
    :cond_3
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    .line 931
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 932
    const-string v1, "com.samsung.intent.action.HMT_MOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 933
    :cond_4
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    .line 934
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 935
    const-string v1, "com.samsung.intent.action.HMT_UNMOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 936
    :cond_5
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_6

    .line 937
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 938
    const-string v1, "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITHOUT_TA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 939
    :cond_6
    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_7

    .line 940
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 941
    const-string v1, "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITH_TA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 942
    :cond_7
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_0

    .line 943
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 944
    const-string v1, "com.samsung.intent.action.HMT_SENSOR_CONNECTED_TA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private isSystemEPenEnabled()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 857
    const-string/jumbo v3, "isSystemEPenEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 859
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 860
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 863
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 860
    goto :goto_0

    .line 862
    :cond_1
    const-string v1, "VRManagerService"

    const-string/jumbo v3, "isSystemEPenEnabled() Unable to find /sys/class/sec/sec_epen/input/enabled file"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    .line 863
    goto :goto_0

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 867
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 868
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isSystemTouchKeyEnabled()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 828
    const-string/jumbo v3, "isSystemTouchKeyEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 830
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_touchkey/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 831
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_touchkey/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 834
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 831
    goto :goto_0

    .line 833
    :cond_1
    const-string v1, "VRManagerService"

    const-string/jumbo v3, "isSystemTouchKeyEnabled() Unable to find /sys/class/sec/sec_touchkey/input/enabled file"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    .line 834
    goto :goto_0

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 838
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 839
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isSystemTouchSceenPanelEnabled()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 799
    const-string/jumbo v3, "isSystemTouchSceenPanelEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 801
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 802
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 805
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 802
    goto :goto_0

    .line 804
    :cond_1
    const-string v1, "VRManagerService"

    const-string/jumbo v3, "isSystemTouchSceenPanelEnabled() Unable to find /sys/class/sec/tsp/input/enabled file"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    .line 805
    goto :goto_0

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 809
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 810
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private requestInit()V
    .locals 4

    .prologue
    .line 950
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 952
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    if-nez v1, :cond_0

    .line 953
    const-string v1, "VRManagerService"

    const-string/jumbo v3, "requestInit()"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HMT VR DeviceEvent Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 956
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 958
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/VRManagerService;->mDeviceEventLooper:Landroid/os/Looper;

    .line 959
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mDeviceEventLooper:Landroid/os/Looper;

    if-eqz v1, :cond_1

    .line 960
    new-instance v1, Lcom/android/server/VRManagerService$DeviceEventHandler;

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mDeviceEventLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v3}, Lcom/android/server/VRManagerService$DeviceEventHandler;-><init>(Lcom/android/server/VRManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    .line 965
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 966
    return-void

    .line 962
    .restart local v0    # "thread":Landroid/os/HandlerThread;
    :cond_1
    const-string v1, "VRManagerService"

    const-string/jumbo v3, "mSensorLooper is null! ignored!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 965
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scheduleThreadFIFO(Ljava/lang/String;III)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "prio"    # I

    .prologue
    .line 321
    const-string/jumbo v2, "scheduleThreadFIFO"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 323
    const/4 v1, 0x0

    .line 325
    .local v1, "result":Z
    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- elevateProcessThread \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' requestPriority(pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", prio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v2, 0x3

    :try_start_0
    invoke-static {p3, v2}, Landroid/os/Process;->setThreadGroup(II)V

    .line 329
    const v2, 0x40000001    # 2.0000002f

    invoke-static {p3, v2, p4}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    const/4 v1, 0x1

    .line 335
    :goto_0
    return v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "VRManagerService"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scheduleThreadOTHER(Ljava/lang/String;III)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "prio"    # I

    .prologue
    .line 339
    const-string/jumbo v2, "scheduleThreadOTHER"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 341
    const/4 v1, 0x0

    .line 343
    .local v1, "result":Z
    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- demoteProcessThread \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' requestPriority(pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", prio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v2, 0x3

    :try_start_0
    invoke-static {p3, v2}, Landroid/os/Process;->setThreadGroup(II)V

    .line 347
    const/4 v2, 0x0

    invoke-static {p3, v2, p4}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    const/4 v1, 0x1

    .line 353
    :goto_0
    return v1

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "VRManagerService"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSystemEPenEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 844
    const-string/jumbo v1, "setSystemEPenEnabled"

    invoke-virtual {p0, v1}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 846
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/sec_epen/input/enabled"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 847
    const-string v2, "/sys/class/sec/sec_epen/input/enabled"

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :goto_1
    return-void

    .line 847
    :cond_0
    const-string v1, "0"

    goto :goto_0

    .line 849
    :cond_1
    const-string v1, "VRManagerService"

    const-string/jumbo v2, "setSystemEPenEnabled() Unable to find /sys/class/sec/sec_epen/input/enabled file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setSystemMouseControlType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 989
    const-string/jumbo v1, "setSystemMouseControlType"

    invoke-virtual {p0, v1}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 990
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    .line 991
    .local v0, "inputManagerInternal":Landroid/hardware/input/InputManagerInternal;
    if-eqz v0, :cond_0

    .line 992
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerInternal;->setMouseControlType(I)V

    .line 994
    :cond_0
    return-void
.end method

.method private setSystemShowMouseEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 873
    const-string/jumbo v1, "setSystemShowMouseEnabled"

    invoke-virtual {p0, v1}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 874
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    .line 875
    .local v0, "inputManagerInternal":Landroid/hardware/input/InputManagerInternal;
    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerInternal;->setMouseCursorVisibility(Z)V

    .line 878
    :cond_0
    return-void
.end method

.method private setSystemTouchKeyEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 815
    const-string/jumbo v1, "setSystemTouchKeyEnabled"

    invoke-virtual {p0, v1}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 817
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/sec_touchkey/input/enabled"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 818
    const-string v2, "/sys/class/sec/sec_touchkey/input/enabled"

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    :goto_1
    return-void

    .line 818
    :cond_0
    const-string v1, "0"

    goto :goto_0

    .line 820
    :cond_1
    const-string v1, "VRManagerService"

    const-string/jumbo v2, "setSystemTouchKeyEnabled() Unable to find /sys/class/sec/sec_touchkey/input/enabled file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 822
    :catch_0
    move-exception v0

    .line 823
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setSystemTouchSceenPanelEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 785
    const-string/jumbo v1, "setSystemTouchSceenPanelEnabled"

    invoke-virtual {p0, v1}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 788
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/tsp/input/enabled"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 789
    const-string v2, "/sys/class/sec/tsp/input/enabled"

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :goto_1
    return-void

    .line 789
    :cond_0
    const-string v1, "0"

    goto :goto_0

    .line 791
    :cond_1
    const-string v1, "VRManagerService"

    const-string/jumbo v2, "setSystemTouchSceenPanelEnabled() Unable to find /sys/class/sec/tsp/input/enabled file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startVR()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 118
    const-string v6, "VRManagerService"

    const-string/jumbo v7, "startVR()"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v6, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/VRManagerService;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 122
    new-instance v5, Lcom/android/server/VRManagerService$VRRecord;

    invoke-direct {v5, p0, v9}, Lcom/android/server/VRManagerService$VRRecord;-><init>(Lcom/android/server/VRManagerService;Lcom/android/server/VRManagerService$1;)V

    .line 124
    .local v5, "vrRecord":Lcom/android/server/VRManagerService$VRRecord;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 127
    .local v2, "ident":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android"

    const-string v8, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 128
    .local v4, "result":I
    if-nez v4, :cond_0

    .line 129
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "com.samsung.android.hmt.vrsvc"

    const-string v7, "com.samsung.android.hmt.vrsvc.system.VRSystemService"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    iget-object v6, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v5, v7, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    iget-boolean v6, v5, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z

    if-nez v6, :cond_1

    .line 141
    const-string v6, "VRManagerService"

    const-string/jumbo v7, "startVR() Unable to bind VRSystemService"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iput-object v9, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    .line 158
    :goto_1
    return-void

    .line 134
    :cond_0
    :try_start_1
    const-string v6, "VRManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startVR() check signatures failed. result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    .end local v4    # "result":I
    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 144
    .restart local v4    # "result":I
    :cond_1
    const-string v6, "VRManagerService"

    const-string/jumbo v7, "startVR() Take iVRManagerService... start"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iput-object v5, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    .line 146
    iget-object v6, v5, Lcom/android/server/VRManagerService$VRRecord;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/IVRManagerService;

    # setter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v5, v6}, Lcom/android/server/VRManagerService$VRRecord;->access$402(Lcom/android/server/VRManagerService$VRRecord;Lcom/android/internal/app/IVRManagerService;)Lcom/android/internal/app/IVRManagerService;

    .line 147
    const-string v6, "VRManagerService"

    const-string/jumbo v7, "startVR() Take iVRManagerService... ok!"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :try_start_2
    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v5}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/app/IVRManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v6, "VRManagerService"

    const-string v7, "The VRConnection died unexpectedly."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->stopVR()V

    goto :goto_1
.end method

.method private stopVR()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-nez v0, :cond_1

    .line 162
    const-string v0, "VRManagerService"

    const-string/jumbo v1, "stopVR() already stopped."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const-string v0, "VRManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopVR() mBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v2, v2, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v2, v2, Lcom/android/server/VRManagerService$VRRecord;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " iVRManagerService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v2}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->cancelInit()V

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v0}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v0}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IVRManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 177
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v0, v1}, Lcom/android/server/VRManagerService$VRRecord;->access$402(Lcom/android/server/VRManagerService$VRRecord;Lcom/android/internal/app/IVRManagerService;)Lcom/android/internal/app/IVRManagerService;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v0, v0, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 184
    iput-object v3, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public GetPowerLevelState()I
    .locals 4

    .prologue
    .line 511
    const-string v3, "GetPowerLevelState"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 512
    const/4 v1, -0x1

    .line 514
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 515
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 516
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->GetPowerLevelState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 522
    :cond_0
    return v1

    .line 518
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 519
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public SetVrClocks(Ljava/lang/String;II)[I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cpu"    # I
    .param p3, "gpu"    # I

    .prologue
    const/4 v4, 0x0

    .line 495
    const-string v3, "SetVrClocks"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 496
    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 500
    .local v1, "result":[I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 501
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 502
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->SetVrClocks(Ljava/lang/String;II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 507
    :cond_0
    return-object v1

    .line 504
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 505
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1018
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1019
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump VRManagerService(system_process) from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    :goto_0
    return-void

    .line 1023
    :cond_0
    const-string v2, "VR MANAGER (dumpsys vr)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1024
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-eqz v2, :cond_2

    .line 1026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1027
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.mBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v3, v3, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1028
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.mConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v3, v3, Lcom/android/server/VRManagerService$VRRecord;->mConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.q.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-object v3, v3, Lcom/android/server/VRManagerService$VRRecord;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1030
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.iVRManagerService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v3}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->mBinder:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/VRManagerService$VRRecord;->access$700(Lcom/android/server/VRManagerService$VRRecord;)Landroid/os/IBinder;

    move-result-object v0

    .line 1033
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 1035
    :try_start_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1036
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1037
    invoke-interface {v0, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1038
    :catch_0
    move-exception v1

    .line 1039
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.mBinder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1042
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v2, "  mVRRecord.mBinder=null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1045
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_2
    const-string v2, "  mVRRecord=null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    .line 1007
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 1008
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 1009
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->enforceCallingPermission(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    :cond_0
    return-void

    .line 1011
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 1012
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public enforceCallingSelfPermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1000
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1001
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1002
    .local v1, "uid":I
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/VRManagerService;->enforceCallingPermission(IILjava/lang/String;)V

    .line 1003
    return-void
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "optionName"    # Ljava/lang/String;

    .prologue
    .line 392
    const-string/jumbo v3, "getOption"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 393
    const/4 v1, 0x0

    .line 395
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 396
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 397
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->getOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 403
    :cond_0
    return-object v1

    .line 399
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 400
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    .line 581
    const-string/jumbo v3, "getSystemOption"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 582
    const/4 v1, 0x0

    .line 585
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 586
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 587
    const-string/jumbo v3, "tsp_enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 588
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->isSystemTouchSceenPanelEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "1"

    .line 601
    :cond_0
    :goto_0
    return-object v1

    .line 588
    :cond_1
    const-string v1, "0"

    goto :goto_0

    .line 589
    :cond_2
    const-string/jumbo v3, "touchkey_enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 590
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->isSystemTouchKeyEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "1"

    :goto_1
    goto :goto_0

    :cond_3
    const-string v1, "0"

    goto :goto_1

    .line 591
    :cond_4
    const-string/jumbo v3, "epen_enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 592
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->isSystemEPenEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v1, "1"

    :goto_2
    goto :goto_0

    :cond_5
    const-string v1, "0"

    goto :goto_2

    .line 594
    :cond_6
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 597
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 598
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVRBright()I
    .locals 4

    .prologue
    .line 645
    const-string/jumbo v3, "getVRBright"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 646
    const/4 v1, 0x0

    .line 649
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 650
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 651
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->getVRBright()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 657
    :cond_0
    return v1

    .line 653
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 654
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVRColorTemperature()I
    .locals 4

    .prologue
    .line 673
    const-string/jumbo v3, "getVRColorTemperature"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 674
    const/4 v1, 0x0

    .line 677
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 678
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 679
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->getVRColorTemperature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 685
    :cond_0
    return v1

    .line 681
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 682
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isConnected()Z
    .locals 4

    .prologue
    .line 275
    const-string/jumbo v3, "isConnected"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 276
    const/4 v1, 0x0

    .line 278
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 279
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 280
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 286
    :cond_0
    return v1

    .line 282
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 283
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isDevelopermode()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 290
    iget-object v3, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vrmode_developer_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 291
    .local v0, "developerMode":I
    const-string v3, "VRManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDevelopermode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    if-ne v0, v1, :cond_0

    .line 295
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isVRComfortableViewEnabled()Z
    .locals 4

    .prologue
    .line 729
    const-string/jumbo v3, "isVRComfortableViewEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 730
    const/4 v1, 0x0

    .line 733
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 734
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 735
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRComfortableViewEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 741
    :cond_0
    return v1

    .line 737
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 738
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRDarkAdaptationEnabled()Z
    .locals 4

    .prologue
    .line 701
    const-string/jumbo v3, "isVRDarkAdaptationEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 702
    const/4 v1, 0x0

    .line 705
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 706
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 707
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRDarkAdaptationEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 713
    :cond_0
    return v1

    .line 709
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 710
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRLowPersistenceEnabled()Z
    .locals 4

    .prologue
    .line 757
    const-string/jumbo v3, "isVRLowPersistenceEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 758
    const/4 v1, 0x0

    .line 761
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 762
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 763
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRLowPersistenceEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 769
    :cond_0
    return v1

    .line 765
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 766
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRMode()Z
    .locals 4

    .prologue
    .line 617
    const-string/jumbo v3, "isVRMode"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 618
    const/4 v1, 0x0

    .line 621
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 622
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 623
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 629
    :cond_0
    return v1

    .line 625
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 626
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public notifyDeviceEventChanged(I)V
    .locals 7
    .param p1, "event"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 882
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 883
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 885
    .local v1, "uid":I
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->requestInit()V

    .line 887
    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyDeviceEventChanged event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/VRManagerService$DeviceEventHandler;->removeMessages(I)V

    .line 890
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v0, v1, v4}, Lcom/android/server/VRManagerService$DeviceEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/VRManagerService$DeviceEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 892
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    .line 893
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_0

    .line 895
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 896
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public relFreq(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 465
    const-string/jumbo v3, "relFreq"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 466
    const/4 v1, 0x0

    .line 468
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 469
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 470
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->relFreq(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 475
    :cond_0
    return v1

    .line 472
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 473
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public releaseCPUMhz(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 425
    const-string/jumbo v2, "releaseCPUMhz"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 427
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 428
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 429
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->releaseCPUMhz(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :cond_0
    return-void

    .line 431
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 432
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public releaseGPUMhz(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 453
    const-string/jumbo v2, "releaseGPUMhz"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 455
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 456
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 457
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->releaseGPUMhz(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_0
    return-void

    .line 459
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 460
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public return2EnableFreqLev()[I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 479
    const-string/jumbo v3, "return2EnableFreqLev"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 480
    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 484
    .local v1, "result":[I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 485
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 486
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->return2EnableFreqLev()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 491
    :cond_0
    return-object v1

    .line 488
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 489
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setAffinity(I[I)I
    .locals 3
    .param p1, "pid"    # I
    .param p2, "cpus"    # [I

    .prologue
    .line 357
    const-string/jumbo v2, "setAffinity"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 360
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 361
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 362
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setAffinity(I[I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :cond_0
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    if-nez v2, :cond_1

    .line 369
    new-instance v2, Landroid/sec/performance/AffinityControl;

    invoke-direct {v2}, Landroid/sec/performance/AffinityControl;-><init>()V

    iput-object v2, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    .line 372
    :cond_1
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    if-eqz v2, :cond_2

    .line 373
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    invoke-virtual {v2, p1, p2}, Landroid/sec/performance/AffinityControl;->SetAffinity(I[I)I

    move-result v2

    .line 375
    :goto_0
    return v2

    .line 364
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 365
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 375
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setCPUClockMhz(Ljava/lang/String;[II)[I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mhz"    # [I
    .param p3, "corenum"    # I

    .prologue
    const/4 v4, 0x0

    .line 407
    const-string/jumbo v3, "setCPUClockMhz"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 408
    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 413
    .local v1, "result":[I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 414
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 415
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->setCPUClockMhz(Ljava/lang/String;[II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 421
    :cond_0
    return-object v1

    .line 417
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 418
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setGPUClockMhz(Ljava/lang/String;I)I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mhz"    # I

    .prologue
    .line 437
    const-string/jumbo v3, "setGPUClockMhz"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 438
    const/4 v1, 0x0

    .line 441
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 442
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 443
    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setGPUClockMhz(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 449
    :cond_0
    return v1

    .line 445
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 446
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "optionName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 379
    const-string/jumbo v2, "setOption"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 381
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 382
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 383
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :cond_0
    return-void

    .line 385
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 386
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 541
    const-string/jumbo v2, "setSystemOption"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 543
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 544
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 545
    const-string/jumbo v2, "tsp_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 546
    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 547
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemTouchSceenPanelEnabled(Z)V

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemTouchSceenPanelEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 576
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 551
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :cond_2
    :try_start_1
    const-string/jumbo v2, "touchkey_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 552
    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 553
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemTouchKeyEnabled(Z)V

    goto :goto_0

    .line 554
    :cond_3
    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemTouchKeyEnabled(Z)V

    goto :goto_0

    .line 557
    :cond_4
    const-string/jumbo v2, "epen_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 558
    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 559
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemEPenEnabled(Z)V

    goto :goto_0

    .line 560
    :cond_5
    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemEPenEnabled(Z)V

    goto :goto_0

    .line 563
    :cond_6
    const-string/jumbo v2, "show_mouse_pointer"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 564
    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 565
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemShowMouseEnabled(Z)V

    goto :goto_0

    .line 566
    :cond_7
    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemShowMouseEnabled(Z)V

    goto :goto_0

    .line 569
    :cond_8
    const-string/jumbo v2, "mouse_control_type"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 570
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemMouseControlType(I)V

    goto/16 :goto_0

    .line 572
    :cond_9
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "prio"    # I

    .prologue
    const/4 v2, 0x0

    .line 300
    const-string/jumbo v3, "setThreadSchedFifo"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 303
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 304
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 305
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IVRManagerService;->setThreadSchedFifo(Ljava/lang/String;III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_0
    if-lez p4, :cond_2

    const/4 v3, 0x4

    if-gt p4, v3, :cond_2

    .line 312
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/VRManagerService;->scheduleThreadFIFO(Ljava/lang/String;III)Z

    move-result v2

    .line 317
    :cond_1
    :goto_0
    return v2

    .line 307
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 308
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 313
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :cond_2
    if-nez p4, :cond_1

    .line 314
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/server/VRManagerService;->scheduleThreadOTHER(Ljava/lang/String;III)Z

    move-result v2

    goto :goto_0
.end method

.method public setVRBright(I)V
    .locals 3
    .param p1, "bright"    # I

    .prologue
    .line 633
    const-string/jumbo v2, "setVRBright"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 635
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 636
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 637
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRBright(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :cond_0
    return-void

    .line 639
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 640
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRColorTemperature(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 661
    const-string/jumbo v2, "setVRColorTemperature"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 663
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 664
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 665
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRColorTemperature(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :cond_0
    return-void

    .line 667
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 668
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRComfortableView(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 717
    const-string/jumbo v2, "setVRComfortableView"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 719
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 720
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 721
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRComfortableView(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :cond_0
    return-void

    .line 723
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 724
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRDarkAdaptation(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 689
    const-string/jumbo v2, "setVRDarkAdaptation"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 691
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 692
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 693
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRDarkAdaptation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :cond_0
    return-void

    .line 695
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 696
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRLowPersistence(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 745
    const-string/jumbo v2, "setVRLowPersistence"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 747
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 748
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 749
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRLowPersistence(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :cond_0
    return-void

    .line 751
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 752
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 605
    const-string/jumbo v2, "setVRMode"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 607
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 608
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 609
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :cond_0
    return-void

    .line 611
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 612
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRPerformanceMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 773
    const-string/jumbo v2, "setVRPerformanceMode"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 775
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 776
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 777
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRPerformanceMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :cond_0
    return-void

    .line 779
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 780
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVideoMode(Ljava/lang/String;FZ)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "dutyCycle"    # F
    .param p3, "monoMode"    # Z

    .prologue
    .line 526
    const-string/jumbo v3, "setVideoMode"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 527
    const/4 v1, 0x0

    .line 529
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 530
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 531
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->setVideoMode(Ljava/lang/String;FZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 537
    :cond_0
    return v1

    .line 533
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 534
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "VRManagerService"

    const-string v1, "---- VRManagerService systemReady ----"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method
