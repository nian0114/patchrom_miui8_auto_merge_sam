.class public Lcom/android/providers/media/MtpService;
.super Landroid/app/Service;
.source "MtpService.java"


# static fields
.field private static final LOGD:Z = false

.field private static final PTP_DIRECTORIES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MtpService"


# instance fields
.field private final mBinder:Lcom/android/providers/media/IMtpService$Stub;

.field private mDatabase:Landroid/mtp/MtpDatabase;

.field private mMtpDisabled:Z

.field private mPtpMode:Z

.field private mServer:Landroid/mtp/MtpServer;

.field private final mStorageEventListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private mUnlocked:Z

.field private final mVolumeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private mVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MtpService;->PTP_DIRECTORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    new-instance v0, Lcom/android/providers/media/MtpService$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$1;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mVolumeMap:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    .line 182
    new-instance v0, Lcom/android/providers/media/MtpService$2;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$2;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/MtpService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/media/MtpService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/media/MtpService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/providers/media/MtpService;->volumeMountedLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/MtpService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mVolumeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/media/MtpService;Landroid/os/storage/StorageVolume;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/media/MtpService;
    .param p1, "x1"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/providers/media/MtpService;->removeStorageLocked(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/MtpService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    return-object v0
.end method

.method private addStorageDevicesLocked()V
    .locals 6

    .prologue
    .line 48
    iget-boolean v5, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-eqz v5, :cond_1

    .line 50
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    invoke-static {v5}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 51
    .local v2, "primary":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 53
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "state":Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    invoke-direct {p0, v5}, Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/os/storage/StorageVolume;)V

    .line 63
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "primary":Landroid/os/storage/StorageVolume;
    .end local v3    # "state":Ljava/lang/String;
    :cond_0
    return-void

    .line 59
    :cond_1
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageVolume;

    .line 60
    .local v4, "volume":Landroid/os/storage/StorageVolume;
    invoke-direct {p0, v4}, Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/os/storage/StorageVolume;)V

    goto :goto_0
.end method

.method private addStorageLocked(Landroid/os/storage/StorageVolume;)V
    .locals 4
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 223
    new-instance v0, Landroid/mtp/MtpStorage;

    invoke-virtual {p0}, Lcom/android/providers/media/MtpService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/mtp/MtpStorage;-><init>(Landroid/os/storage/StorageVolume;Landroid/content/Context;)V

    .line 224
    .local v0, "storage":Landroid/mtp/MtpStorage;
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {v0}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v1

    if-nez v1, :cond_1

    .line 227
    const-string v1, "MtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring volume with invalid MTP storage ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    const-string v1, "MtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding MTP storage 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    if-eqz v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpDatabase;->addStorage(Landroid/mtp/MtpStorage;)V

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpServer;->addStorage(Landroid/mtp/MtpStorage;)V

    goto :goto_0
.end method

.method private manageServiceLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 157
    .local v0, "isCurrentUser":Z
    :goto_0
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 158
    const-string v2, "MtpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting MTP server in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-eqz v1, :cond_3

    const-string v1, "PTP mode"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v1, Landroid/mtp/MtpServer;

    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    iget-boolean v3, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    invoke-direct {v1, v2, v3}, Landroid/mtp/MtpServer;-><init>(Landroid/mtp/MtpDatabase;Z)V

    iput-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    .line 160
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v1, v2}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    .line 161
    iget-boolean v1, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    if-nez v1, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/android/providers/media/MtpService;->addStorageDevicesLocked()V

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v1}, Landroid/mtp/MtpServer;->start()V

    .line 172
    :cond_1
    :goto_2
    return-void

    .line 156
    .end local v0    # "isCurrentUser":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    .restart local v0    # "isCurrentUser":Z
    :cond_3
    const-string v1, "MTP mode"

    goto :goto_1

    .line 165
    :cond_4
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 166
    const-string v1, "MtpService"

    const-string v2, "no longer current user; shutting down MTP server"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iput-object v3, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    .line 170
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v1, v3}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    goto :goto_2
.end method

.method private removeStorageLocked(Landroid/os/storage/StorageVolume;)V
    .locals 4
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorage;

    .line 244
    .local v0, "storage":Landroid/mtp/MtpStorage;
    if-nez v0, :cond_1

    .line 245
    const-string v1, "MtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing MtpStorage for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    const-string v1, "MtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing MTP storage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpDatabase;->removeStorage(Landroid/mtp/MtpStorage;)V

    .line 254
    :cond_2
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpServer;->removeStorage(Landroid/mtp/MtpStorage;)V

    goto :goto_0
.end method

.method private updateDisabledStateLocked()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 145
    .local v0, "isCurrentUser":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/providers/media/MtpService;->mUnlocked:Z

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    .line 150
    return-void

    .end local v0    # "isCurrentUser":Z
    :cond_2
    move v0, v2

    .line 144
    goto :goto_0
.end method

.method private volumeMountedLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v1, v2, v0

    .line 209
    .local v1, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 210
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-boolean v2, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    if-nez v2, :cond_1

    .line 213
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-nez v2, :cond_1

    .line 214
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/os/storage/StorageVolume;)V

    .line 220
    .end local v1    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    return-void

    .line 207
    .restart local v1    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 95
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 96
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    monitor-enter v5

    .line 97
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/media/MtpService;->updateDisabledStateLocked()V

    .line 98
    iget-object v4, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v4, v6}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 99
    iget-object v4, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 100
    .local v3, "volumes":[Landroid/os/storage/StorageVolume;
    iput-object v3, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 102
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "state":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    invoke-direct {p0, v1}, Lcom/android/providers/media/MtpService;->volumeMountedLocked(Ljava/lang/String;)V

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "state":Ljava/lang/String;
    :cond_1
    monitor-exit v5

    .line 109
    return-void

    .line 108
    .end local v0    # "i":I
    .end local v3    # "volumes":[Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 177
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    .line 180
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x0

    .line 113
    const-string v6, "unlocked"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/providers/media/MtpService;->mUnlocked:Z

    .line 115
    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    monitor-enter v6

    .line 116
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/media/MtpService;->updateDisabledStateLocked()V

    .line 117
    if-nez p1, :cond_0

    :goto_0
    iput-boolean v5, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    .line 119
    const/4 v4, 0x0

    .line 120
    .local v4, "subdirs":[Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-eqz v5, :cond_1

    .line 121
    sget-object v5, Lcom/android/providers/media/MtpService;->PTP_DIRECTORIES:[Ljava/lang/String;

    array-length v0, v5

    .line 122
    .local v0, "count":I
    new-array v4, v0, [Ljava/lang/String;

    .line 123
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 124
    sget-object v5, Lcom/android/providers/media/MtpService;->PTP_DIRECTORIES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 127
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    .end local v0    # "count":I
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v4    # "subdirs":[Ljava/lang/String;
    :cond_0
    const-string v5, "ptp"

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_0

    .line 131
    .restart local v4    # "subdirs":[Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    invoke-static {v5}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 132
    .local v3, "primary":Landroid/os/storage/StorageVolume;
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    if-eqz v5, :cond_2

    .line 133
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    .line 135
    :cond_2
    new-instance v5, Landroid/mtp/MtpDatabase;

    const-string v7, "external"

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, p0, v7, v8, v4}, Landroid/mtp/MtpDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 137
    invoke-direct {p0}, Lcom/android/providers/media/MtpService;->manageServiceLocked()V

    .line 138
    monitor-exit v6

    .line 140
    const/4 v5, 0x3

    return v5

    .line 138
    .end local v3    # "primary":Landroid/os/storage/StorageVolume;
    .end local v4    # "subdirs":[Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
