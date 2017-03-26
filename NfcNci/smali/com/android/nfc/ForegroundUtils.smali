.class public Lcom/android/nfc/ForegroundUtils;
.super Landroid/app/IProcessObserver$Stub;
.source "ForegroundUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/ForegroundUtils$1;,
        Lcom/android/nfc/ForegroundUtils$Callback;,
        Lcom/android/nfc/ForegroundUtils$Singleton;
    }
.end annotation


# static fields
.field static final DBG:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBackgroundCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/nfc/ForegroundUtils$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private final mForegroundUidPids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/ForegroundUtils;->DBG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 39
    const-string v1, "ForegroundUtils"

    iput-object v1, p0, Lcom/android/nfc/ForegroundUtils;->TAG:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mContext:Landroid/content/Context;

    .line 45
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    .line 49
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    .line 51
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mBackgroundCallbacks:Landroid/util/SparseArray;

    .line 59
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mIActivityManager:Landroid/app/IActivityManager;

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ForegroundUtils"

    const-string v2, "ForegroundUtils: could not get IActivityManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/nfc/ForegroundUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/ForegroundUtils$1;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/nfc/ForegroundUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/nfc/ForegroundUtils;
    .locals 1

    .prologue
    .line 73
    # getter for: Lcom/android/nfc/ForegroundUtils$Singleton;->INSTANCE:Lcom/android/nfc/ForegroundUtils;
    invoke-static {}, Lcom/android/nfc/ForegroundUtils$Singleton;->access$100()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    return-object v0
.end method

.method private handleUidToBackground(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 135
    const/4 v3, 0x0

    .line 136
    .local v3, "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    iget-object v6, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 137
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/ForegroundUtils;->mBackgroundCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 138
    .local v1, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    if-eqz v1, :cond_0

    .line 139
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .end local v3    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    .local v4, "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    :try_start_1
    iget-object v5, p0, Lcom/android/nfc/ForegroundUtils;->mBackgroundCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 143
    .end local v4    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    .restart local v3    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    :cond_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    if-eqz v3, :cond_1

    .line 146
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/ForegroundUtils$Callback;

    .line 147
    .local v0, "callback":Lcom/android/nfc/ForegroundUtils$Callback;
    invoke-interface {v0, p1}, Lcom/android/nfc/ForegroundUtils$Callback;->onUidToBackground(I)V

    goto :goto_0

    .line 143
    .end local v0    # "callback":Lcom/android/nfc/ForegroundUtils$Callback;
    .end local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :goto_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 150
    .restart local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    :cond_1
    return-void

    .line 143
    .end local v3    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    .restart local v4    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    .restart local v3    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    goto :goto_1
.end method

.method private isInForegroundLocked(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getForegroundPacakgeForUid(I)Ljava/lang/String;
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "foregroundAppName":Ljava/lang/String;
    move v2, p1

    .line 223
    .local v2, "foregroundUid":I
    iget-object v4, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 224
    .local v1, "foregroundPids":Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 225
    sget-boolean v4, Lcom/android/nfc/ForegroundUtils;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "ForegroundUtils"

    const-string v5, "No PIDS associated with foreground UID!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 228
    sget-boolean v4, Lcom/android/nfc/ForegroundUtils;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "ForegroundUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/nfc/ForegroundUtils;->getProcessNameForPid(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    sget-boolean v4, Lcom/android/nfc/ForegroundUtils;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "ForegroundUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getForegroundPacakgeNameForUid() is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    :cond_3
    return-object v0
.end method

.method public getForegroundUids()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .local v1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    monitor-exit v3

    .line 127
    return-object v1

    .line 126
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getProcessNameForPid(I)Ljava/lang/String;
    .locals 7
    .param p1, "pID"    # I

    .prologue
    .line 208
    const-string v3, "Unknown"

    .line 209
    .local v3, "processName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/nfc/ForegroundUtils;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 210
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 211
    .local v4, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 212
    .local v1, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    .line 213
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 217
    .end local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return-object v3
.end method

.method public isInForeground(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/ForegroundUtils;->isInForegroundLocked(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isRegisteredBackgroundCallback(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/nfc/ForegroundUtils;->mBackgroundCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 9
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "hasForegroundActivities"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v4, 0x0

    .line 156
    .local v4, "uidToBackground":Z
    iget-object v6, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 157
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {v5, p2, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 159
    .local v0, "foregroundPids":Landroid/util/SparseBooleanArray;
    if-eqz p3, :cond_3

    .line 160
    const/4 v5, 0x1

    invoke-virtual {v0, p1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 164
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 165
    iget-object v5, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 166
    const/4 v4, 0x1

    .line 170
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    if-eqz v4, :cond_0

    .line 172
    invoke-direct {p0, p2}, Lcom/android/nfc/ForegroundUtils;->handleUidToBackground(I)V

    .line 174
    :cond_0
    sget-boolean v5, Lcom/android/nfc/ForegroundUtils;->DBG:Z

    if-eqz v5, :cond_7

    .line 175
    sget-boolean v5, Lcom/android/nfc/ForegroundUtils;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "ForegroundUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Foreground changed, PID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " UID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " foreground: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1
    iget-object v6, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 184
    :try_start_1
    const-string v5, "ForegroundUtils"

    const-string v7, "Foreground UID/PID combinations:"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 186
    iget-object v5, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 187
    .local v1, "foregroundUid":I
    iget-object v5, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "foregroundPids":Landroid/util/SparseBooleanArray;
    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 188
    .restart local v0    # "foregroundPids":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 189
    const-string v5, "ForegroundUtils"

    const-string v7, "No PIDS associated with foreground UID!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 192
    const-string v5, "ForegroundUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " PID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 162
    .end local v1    # "foregroundUid":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_3
    :try_start_2
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto/16 :goto_0

    .line 170
    .end local v0    # "foregroundPids":Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 168
    .restart local v0    # "foregroundPids":Landroid/util/SparseBooleanArray;
    :cond_4
    :try_start_3
    iget-object v5, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 185
    .restart local v1    # "foregroundUid":I
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 195
    .end local v1    # "foregroundUid":I
    .end local v3    # "j":I
    :cond_6
    :try_start_4
    monitor-exit v6

    .line 197
    .end local v2    # "i":I
    :cond_7
    return-void

    .line 195
    .end local v0    # "foregroundPids":Landroid/util/SparseBooleanArray;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method public onProcessDied(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    sget-boolean v0, Lcom/android/nfc/ForegroundUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ForegroundUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process died; UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/nfc/ForegroundUtils;->onForegroundActivitiesChanged(IIZ)V

    .line 242
    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    return-void
.end method

.method public registerUidToBackgroundCallback(Lcom/android/nfc/ForegroundUtils$Callback;I)Z
    .locals 4
    .param p1, "callback"    # Lcom/android/nfc/ForegroundUtils$Callback;
    .param p2, "uid"    # I

    .prologue
    .line 88
    iget-object v2, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 89
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/nfc/ForegroundUtils;->isInForegroundLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    const/4 v1, 0x0

    monitor-exit v2

    .line 97
    :goto_0
    return v1

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mBackgroundCallbacks:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 95
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mBackgroundCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 98
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showForegroundUidPidsName(II)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 201
    iget-object v3, p0, Lcom/android/nfc/ForegroundUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 202
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "myUid":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/nfc/ForegroundUtils;->getProcessNameForPid(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "myPid":Ljava/lang/String;
    sget-boolean v3, Lcom/android/nfc/ForegroundUtils;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "ForegroundUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and UID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    return-void
.end method
