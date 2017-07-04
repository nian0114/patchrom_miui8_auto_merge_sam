.class public Lcom/sec/android/app/camera/util/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# static fields
.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final LOW_STORAGE_THRESHOLD:J = 0x6400000L

.field public static final NO_STORAGE_ERROR:I = -0x1

.field protected static final TAG:Ljava/lang/String; = "StorageUtils"

.field protected static mSDStorageVolume:Landroid/os/storage/StorageVolume;

.field protected static mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableStorage(I)J
    .locals 8
    .param p0, "storage"    # I

    .prologue
    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, "storageDirectory":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 42
    :try_start_0
    sget-object v3, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 46
    :goto_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    mul-long/2addr v4, v6

    const-wide/32 v6, 0x6400000

    sub-long/2addr v4, v6

    .line 53
    .end local v1    # "stat":Landroid/os/StatFs;
    :goto_1
    return-wide v4

    .line 44
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 52
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v3, "StorageUtils"

    const-string v4, "cannot stat the filesystem then we don\'t know how many free bytes exist"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-wide/16 v4, -0x2

    goto :goto_1
.end method

.method public static getExternalSDStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxSizeOfImage(II)J
    .locals 10
    .param p0, "resolution"    # I
    .param p1, "quality"    # I

    .prologue
    const-wide/16 v8, 0x50

    const-wide/16 v6, 0x1194

    const-wide/16 v4, 0x400

    .line 69
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 70
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v6

    mul-long/2addr v0, v4

    .line 76
    :goto_0
    return-wide v0

    .line 71
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 72
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v6

    const-wide/16 v2, 0x78

    mul-long/2addr v0, v2

    div-long/2addr v0, v8

    mul-long/2addr v0, v4

    goto :goto_0

    .line 73
    :cond_1
    if-nez p1, :cond_2

    .line 74
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v6

    const-wide/16 v2, 0x96

    mul-long/2addr v0, v2

    div-long/2addr v0, v8

    mul-long/2addr v0, v4

    goto :goto_0

    .line 75
    :cond_2
    const-string v0, "StorageUtils"

    const-string v1, "Resolution or Quality setting maybe wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-wide/32 v0, 0x100000

    goto :goto_0
.end method

.method public static getRemainCount(III)I
    .locals 8
    .param p0, "storage"    # I
    .param p1, "resolution"    # I
    .param p2, "quality"    # I

    .prologue
    const/4 v4, -0x1

    .line 80
    invoke-static {p0}, Lcom/sec/android/app/camera/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v2

    .line 82
    .local v2, "lAvailableStorage":J
    const-wide/16 v6, -0x2

    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, "nRemainCount":I
    :try_start_0
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/StorageUtils;->getMaxSizeOfImage(II)J

    move-result-wide v6

    div-long v4, v2, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v4

    .line 91
    .end local v1    # "nRemainCount":I
    :goto_0
    return v1

    .line 87
    .restart local v1    # "nRemainCount":I
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    move v1, v4

    .line 88
    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "nRemainCount":I
    :cond_0
    move v1, v4

    .line 91
    goto :goto_0
.end method

.method public static getRemainTime(II)I
    .locals 8
    .param p0, "storage"    # I
    .param p1, "bitrate"    # I

    .prologue
    const/4 v4, -0x1

    .line 95
    invoke-static {p0}, Lcom/sec/android/app/camera/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v2

    .line 97
    .local v2, "lAvailableStorage":J
    const-wide/16 v6, -0x2

    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, "nRemainTime":I
    :try_start_0
    div-int/lit8 v5, p1, 0x8

    int-to-long v6, v5

    div-long v4, v2, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v4

    .line 106
    .end local v1    # "nRemainTime":I
    :goto_0
    return v1

    .line 102
    .restart local v1    # "nRemainTime":I
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    move v1, v4

    .line 103
    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "nRemainTime":I
    :cond_0
    move v1, v4

    .line 106
    goto :goto_0
.end method

.method public static getTotalStorage(I)J
    .locals 8
    .param p0, "storage"    # I

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, "storageDirectory":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 113
    :try_start_0
    sget-object v3, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 118
    :goto_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    mul-long/2addr v4, v6

    const-wide/32 v6, 0x6400000

    sub-long/2addr v4, v6

    .line 125
    .end local v1    # "stat":Landroid/os/StatFs;
    :goto_1
    return-wide v4

    .line 115
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 124
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v3, "StorageUtils"

    const-string v4, "cannot stat the filesystem then we don\'t know how many free bytes exist"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-wide/16 v4, -0x2

    goto :goto_1
.end method

.method public static isStorageMounted()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 130
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-nez v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    sget-object v1, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_2

    .line 134
    const-string v1, "StorageUtils"

    const-string v2, "return mStorageManger is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_2
    sget-object v1, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 139
    :cond_3
    const-string v1, "StorageUtils"

    const-string v2, "return mSDStorageVolume.getPath() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_4
    sget-object v1, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v2, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v2, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setStorageVolume(Landroid/content/Context;)V
    .locals 5
    .param p0, "cameraContext"    # Landroid/content/Context;

    .prologue
    .line 149
    const-string v3, "storage"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    sput-object v3, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 150
    sget-object v3, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v3, :cond_1

    .line 151
    sget-object v3, Lcom/sec/android/app/camera/util/StorageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 152
    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v2

    .line 153
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 154
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    aget-object v3, v2, v0

    sput-object v3, Lcom/sec/android/app/camera/util/StorageUtils;->mSDStorageVolume:Landroid/os/storage/StorageVolume;

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :cond_1
    const-string v3, "StorageUtils"

    const-string v4, "cannot create mStorageManger"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_2
    return-void
.end method
