.class public Landroid/dirEncryption/DirEncryptionWrapper;
.super Ljava/lang/Object;
.source "DirEncryptionWrapper.java"


# static fields
.field private static final CRYPT_PREFERENCES_FILE:Ljava/lang/String; = "DirEncryption.Pref"

.field private static final LOCAL_LOGD:Z

.field private static final LOCAL_LOGE:Z

.field private static final TAG:Ljava/lang/String; = "DirEncryptWrapper"

.field private static mExternalSDvolFsUuid:Ljava/lang/String;

.field private static mExternalSDvolId:Ljava/lang/String;

.field private static mExternalSDvolState:Ljava/lang/String;

.field private static mSavedUserId:I

.field private static mUserDiff:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/dirEncryption/DirEncryptionWrapper;->LOCAL_LOGE:Z

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/dirEncryption/DirEncryptionWrapper;->LOCAL_LOGD:Z

    sput-boolean v3, Landroid/dirEncryption/DirEncryptionWrapper;->mUserDiff:Z

    sput v3, Landroid/dirEncryption/DirEncryptionWrapper;->mSavedUserId:I

    sput-object v2, Landroid/dirEncryption/DirEncryptionWrapper;->mExternalSDvolId:Ljava/lang/String;

    sput-object v2, Landroid/dirEncryption/DirEncryptionWrapper;->mExternalSDvolFsUuid:Ljava/lang/String;

    sput-object v2, Landroid/dirEncryption/DirEncryptionWrapper;->mExternalSDvolState:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IMountService;

    iput-object p1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->haveEncPrefs()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EncPrefs found"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->logD(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "EncPrefs not found"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 1
    .param p1, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .prologue
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .local v2, "storageManager":Landroid/os/storage/StorageManager;
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/storage/StorageManager;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_1
    return-object v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Exception:: unable to get Storage Service"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionWrapper;->logE(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    goto :goto_1
.end method

.method private haveEncPrefs()Z
    .locals 3

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/"

    const-string v2, "DirEncryption.Pref"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static logD(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionWrapper;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptWrapper"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static logE(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionWrapper;->LOCAL_LOGE:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptWrapper"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 10

    .prologue
    new-instance v4, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v4}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .local v4, "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    new-instance v2, Ljava/io/File;

    const-string v8, "/efs/"

    const-string v9, "DirEncryption.Pref"

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const-string v8, "unable to get enc properties"

    invoke-static {v8}, Landroid/dirEncryption/DirEncryptionWrapper;->logE(Ljava/lang/String;)V

    move-object v5, v4

    .end local v4    # "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .local v5, "policies":Ljava/lang/Object;
    :goto_0
    return-object v5

    .end local v5    # "policies":Ljava/lang/Object;
    .restart local v4    # "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_1
    const/4 v6, 0x0

    .local v6, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "reader":Ljava/io/FileReader;
    .local v7, "reader":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v0, v8, [C

    .local v0, "buf":[C
    invoke-virtual {v7, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .local v3, "len":I
    if-lez v3, :cond_2

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v8}, Landroid/dirEncryption/SDCardEncryptionPolicies;->unflattenFromString(Ljava/lang/String;)Landroid/dirEncryption/SDCardEncryptionPolicies;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v7

    .end local v0    # "buf":[C
    .end local v3    # "len":I
    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :goto_2
    move-object v5, v4

    .restart local v5    # "policies":Ljava/lang/Object;
    goto :goto_0

    .end local v5    # "policies":Ljava/lang/Object;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v0    # "buf":[C
    .restart local v3    # "len":I
    .restart local v7    # "reader":Ljava/io/FileReader;
    :cond_2
    :try_start_3
    const-string v8, "There is no data to read for enc properties."

    invoke-static {v8}, Landroid/dirEncryption/DirEncryptionWrapper;->logE(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .end local v0    # "buf":[C
    .end local v3    # "len":I
    :catch_0
    move-exception v1

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .local v1, "e":Ljava/io/IOException;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :goto_3
    :try_start_4
    const-string v8, "IOException:: unable to get enc properties"

    invoke-static {v8}, Landroid/dirEncryption/DirEncryptionWrapper;->logE(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v0    # "buf":[C
    .restart local v3    # "len":I
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "buf":[C
    .end local v3    # "len":I
    :catchall_0
    move-exception v8

    :goto_4
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_5
    throw v8

    :catch_3
    move-exception v9

    goto :goto_5

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public getActivePasswordQuality()I
    .locals 2

    .prologue
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    return v1
.end method

.method public getCurrentUserID()I
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public getExternalSDvolFsUuid()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/dirEncryption/DirEncryptionWrapper;->mExternalSDvolFsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalSDvolId()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/dirEncryption/DirEncryptionWrapper;->mExternalSDvolId:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalSDvolState()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/dirEncryption/DirEncryptionWrapper;->mExternalSDvolState:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_0

    aget-object v1, v2, v0

    .local v1, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-direct {p0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;->getSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v3

    .local v3, "subsystem":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v5, "sd"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 2

    .prologue
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    return v1
.end method

.method public getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IMountService;

    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    const-string v1, "Can\'t get mount service"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->logD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSavedUserID()I
    .locals 1

    .prologue
    sget v0, Landroid/dirEncryption/DirEncryptionWrapper;->mSavedUserId:I

    return v0
.end method

.method public getUserDiff()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionWrapper;->mUserDiff:Z

    return v0
.end method

.method public getVolumeState()Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    .local v0, "sdPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isExternalSDRemovable()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_0

    aget-object v1, v2, v0

    .local v1, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-direct {p0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;->getSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v3

    .local v3, "subsystem":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v5, "sd"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isSecure()Z
    .locals 2

    .prologue
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    return v1
.end method

.method public mountVolume()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z
    .locals 3
    .param p1, "listner"    # Landroid/os/storage/StorageEventListener;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string v2, "storage"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setExternalSDvolFsUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "volFsUuid"    # Ljava/lang/String;

    .prologue
    sput-object p1, Landroid/dirEncryption/DirEncryptionWrapper;->mExternalSDvolFsUuid:Ljava/lang/String;

    return-void
.end method

.method public setExternalSDvolId(Ljava/lang/String;)V
    .locals 0
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    sput-object p1, Landroid/dirEncryption/DirEncryptionWrapper;->mExternalSDvolId:Ljava/lang/String;

    return-void
.end method

.method public setExternalSDvolState(Ljava/lang/String;)V
    .locals 0
    .param p1, "volState"    # Ljava/lang/String;

    .prologue
    sput-object p1, Landroid/dirEncryption/DirEncryptionWrapper;->mExternalSDvolState:Ljava/lang/String;

    return-void
.end method

.method public setSavedUserID(I)V
    .locals 0
    .param p1, "in"    # I

    .prologue
    sput p1, Landroid/dirEncryption/DirEncryptionWrapper;->mSavedUserId:I

    return-void
.end method

.method public setUserDiff(Z)V
    .locals 0
    .param p1, "in"    # Z

    .prologue
    sput-boolean p1, Landroid/dirEncryption/DirEncryptionWrapper;->mUserDiff:Z

    return-void
.end method

.method public unmountHiddenVolume()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hidden"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto :goto_0
.end method

.method public unmountVolume()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto :goto_0
.end method

.method public unmountVolumeByDiffUser()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSDvolState()Ljava/lang/String;

    move-result-object v0

    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v2, Landroid/dirEncryption/DirEncryptionWrapper;->mUserDiff:Z

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolume()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "HiddenMount"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-boolean v2, Landroid/dirEncryption/DirEncryptionWrapper;->mUserDiff:Z

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountHiddenVolume()Z

    move-result v1

    goto :goto_0

    :cond_1
    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "bad_removal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateSDcardState()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getSavedUserID()I

    move-result v1

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getSavedUserID()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-direct {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .local v0, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v0, :cond_1

    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v0    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .restart local v0    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_1
    const/4 v1, 0x2

    iget v2, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolumeByDiffUser()Z

    .end local v0    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_2
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;->setSavedUserID(I)V

    return-void
.end method
