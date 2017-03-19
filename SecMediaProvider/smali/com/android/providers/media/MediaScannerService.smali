.class public Lcom/android/providers/media/MediaScannerService;
.super Landroid/app/Service;
.source "MediaScannerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MediaScannerService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaScannerService"

.field public static final VOLUME_EXTERNAL:I = 0x2

.field public static final VOLUME_EXTERNAL_PRIVATE:I = 0x4

.field public static final VOLUME_EXTERNAL_SD:I = 0x3

.field public static final VOLUME_INTERNAL:I = 0x1

.field public static final VOLUME_NONE:I

.field private static stateForExtSdCardTermination:Z

.field private static stateForPrivateTermination:Z

.field private static syncTerminateStatus:Ljava/lang/Object;


# instance fields
.field private final mBinder:Landroid/media/IMediaScannerService$Stub;

.field private mExternalStoragePaths:[Ljava/lang/String;

.field private volatile mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-boolean v0, Lcom/android/providers/media/MediaScannerService;->stateForExtSdCardTermination:Z

    .line 59
    sput-boolean v0, Lcom/android/providers/media/MediaScannerService;->stateForPrivateTermination:Z

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaScannerService;->syncTerminateStatus:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 368
    new-instance v0, Lcom/android/providers/media/MediaScannerService$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaScannerService$1;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mBinder:Landroid/media/IMediaScannerService$Stub;

    .line 390
    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/media/MediaScannerService;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/MediaScannerService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerService;->getExternalStorageSdPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/MediaScannerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/media/MediaScannerService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/MediaScannerService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mExternalStoragePaths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/media/MediaScannerService;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaScannerService;->scan([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createMediaScanner()Landroid/media/MediaScanner;
    .locals 7

    .prologue
    .line 79
    new-instance v4, Landroid/media/MediaScanner;

    invoke-direct {v4, p0}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 80
    .local v4, "scanner":Landroid/media/MediaScanner;
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v2, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 81
    .local v2, "locale":Ljava/util/Locale;
    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "country":Ljava/lang/String;
    const/4 v3, 0x0

    .line 85
    .local v3, "localeString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 94
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "language":Ljava/lang/String;
    .end local v3    # "localeString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 89
    .restart local v0    # "country":Ljava/lang/String;
    .restart local v1    # "language":Ljava/lang/String;
    .restart local v3    # "localeString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v1}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getExternalStorageSdPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    const-string v4, "storage"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "storageManager":Landroid/os/storage/StorageManager;
    check-cast v1, Landroid/os/storage/StorageManager;

    .line 202
    .restart local v1    # "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 203
    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-eqz v2, :cond_1

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 205
    aget-object v3, v2, v0

    .line 206
    .local v3, "volume":Landroid/os/storage/StorageVolume;
    const-string v4, "sd"

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 213
    .end local v0    # "i":I
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v4

    .line 204
    .restart local v0    # "i":I
    .restart local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "i":I
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    const-string v4, "MediaScannerService"

    const-string v5, "The storageVolumes is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private openDatabase(Ljava/lang/String;)V
    .locals 4
    .param p1, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 70
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 71
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://media/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaScannerService"

    const-string v3, "failed to open media database"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scan([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "externalStorageSdPath"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "file://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v21, p1, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 100
    .local v17, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 101
    const/4 v4, 0x0

    .line 104
    .local v4, "cleanBuffer":Z
    :try_start_0
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v19, "values":Landroid/content/ContentValues;
    const/4 v12, 0x0

    .line 106
    .local v12, "scanVolumeName":Ljava/lang/String;
    const-string v20, "external"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 107
    move-object/from16 v12, p2

    .line 108
    const-string p2, "external"

    .line 110
    :cond_0
    const-string v20, "volume"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 112
    .local v11, "scanUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 113
    .local v7, "isSdcardmounted":Z
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.MEDIA_SCANNER_STARTED"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/providers/media/MediaScannerService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    :try_start_1
    const-string v20, "external"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 117
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaScannerService;->openDatabase(Ljava/lang/String;)V

    .line 119
    :cond_1
    sget-object v21, Lcom/android/providers/media/MediaScannerService;->syncTerminateStatus:Ljava/lang/Object;

    monitor-enter v21
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    const/16 v20, 0x0

    :try_start_2
    sput-boolean v20, Lcom/android/providers/media/MediaScannerService;->stateForExtSdCardTermination:Z

    .line 121
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/providers/media/MediaScannerService;->stateForPrivateTermination:Z

    .line 122
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->createMediaScanner()Landroid/media/MediaScanner;

    move-result-object v13

    .line 124
    .local v13, "scanner":Landroid/media/MediaScanner;
    const-string v20, "storage"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/providers/media/MediaScannerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/storage/StorageManager;

    .line 125
    .local v16, "storageManager":Landroid/os/storage/StorageManager;
    if-eqz p3, :cond_2

    .line 126
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "mounted"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 128
    :cond_2
    const-string v20, "external"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 129
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 130
    .local v18, "value":Landroid/content/ContentValues;
    if-eqz v7, :cond_3

    .line 131
    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore;->getChangePathSdcardUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 132
    .local v3, "changePathSdcardUri":Landroid/net/Uri;
    const-string v20, "_data"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 135
    .end local v3    # "changePathSdcardUri":Landroid/net/Uri;
    :cond_3
    const-string v20, "external_sd"

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 136
    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore;->getRestoreSdcardUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 137
    .local v10, "restoreSdcardUri":Landroid/net/Uri;
    const-string v20, "_data"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 144
    .end local v10    # "restoreSdcardUri":Landroid/net/Uri;
    :cond_4
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore;->getPlaylistsSaveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 145
    .local v8, "playlistSaveUri":Landroid/net/Uri;
    if-nez v7, :cond_5

    .line 146
    const-string v20, "_data"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 149
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/providers/media/MediaProvider;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 150
    const-string v20, "_data"

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getBaseContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/providers/media/MediaProvider;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 155
    .end local v8    # "playlistSaveUri":Landroid/net/Uri;
    .end local v18    # "value":Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/media/MediaScanner;->scanDirectories([Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v20, "external"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    if-eqz v7, :cond_7

    .line 158
    const/4 v14, 0x0

    .line 159
    .local v14, "status_stateForExtSdCardTermination":Z
    sget-object v21, Lcom/android/providers/media/MediaScannerService;->syncTerminateStatus:Ljava/lang/Object;

    monitor-enter v21
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 160
    :try_start_4
    sget-boolean v14, Lcom/android/providers/media/MediaScannerService;->stateForExtSdCardTermination:Z

    .line 161
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 162
    if-nez v14, :cond_a

    .line 163
    :try_start_5
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 164
    .restart local v18    # "value":Landroid/content/ContentValues;
    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore;->getPlaylistsSyncUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 165
    .local v9, "playlistSyncUri":Landroid/net/Uri;
    const-string v20, "_data"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 167
    const/4 v4, 0x1

    .line 171
    .end local v9    # "playlistSyncUri":Landroid/net/Uri;
    .end local v14    # "status_stateForExtSdCardTermination":Z
    .end local v18    # "value":Landroid/content/ContentValues;
    :cond_7
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/providers/media/MediaProvider;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 172
    const/4 v15, 0x0

    .line 173
    .local v15, "status_stateForPrivateTermination":Z
    sget-object v21, Lcom/android/providers/media/MediaScannerService;->syncTerminateStatus:Ljava/lang/Object;

    monitor-enter v21
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 174
    :try_start_6
    sget-boolean v15, Lcom/android/providers/media/MediaScannerService;->stateForPrivateTermination:Z

    .line 175
    monitor-exit v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 176
    if-nez v15, :cond_b

    .line 177
    :try_start_7
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 178
    .restart local v18    # "value":Landroid/content/ContentValues;
    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore;->getPlaylistsSyncUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 179
    .restart local v9    # "playlistSyncUri":Landroid/net/Uri;
    const-string v20, "_data"

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getBaseContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/providers/media/MediaProvider;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 181
    const/4 v4, 0x1

    .line 189
    .end local v9    # "playlistSyncUri":Landroid/net/Uri;
    .end local v13    # "scanner":Landroid/media/MediaScanner;
    .end local v15    # "status_stateForPrivateTermination":Z
    .end local v16    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v18    # "value":Landroid/content/ContentValues;
    :cond_8
    :goto_2
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 192
    new-instance v6, Landroid/content/Intent;

    const-string v20, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 193
    .local v6, "intent":Landroid/content/Intent;
    const-string v20, "CleanBuffer"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/providers/media/MediaScannerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 197
    return-void

    .line 122
    .end local v6    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v20

    :try_start_9
    monitor-exit v21
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v20
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 185
    :catch_0
    move-exception v5

    .line 186
    .local v5, "e":Ljava/lang/Exception;
    :try_start_b
    const-string v20, "MediaScannerService"

    const-string v21, "exception in MediaScanner.scan()"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    .line 192
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "isSdcardmounted":Z
    .end local v11    # "scanUri":Landroid/net/Uri;
    .end local v12    # "scanVolumeName":Ljava/lang/String;
    .end local v19    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v20

    new-instance v6, Landroid/content/Intent;

    const-string v21, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 193
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v21, "CleanBuffer"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/providers/media/MediaScannerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 196
    throw v20

    .line 139
    .end local v6    # "intent":Landroid/content/Intent;
    .restart local v7    # "isSdcardmounted":Z
    .restart local v11    # "scanUri":Landroid/net/Uri;
    .restart local v12    # "scanVolumeName":Ljava/lang/String;
    .restart local v13    # "scanner":Landroid/media/MediaScanner;
    .restart local v16    # "storageManager":Landroid/os/storage/StorageManager;
    .restart local v18    # "value":Landroid/content/ContentValues;
    .restart local v19    # "values":Landroid/content/ContentValues;
    :cond_9
    :try_start_c
    const-string v20, "external_private"

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 140
    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore;->getRestoreSdcardUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 141
    .restart local v10    # "restoreSdcardUri":Landroid/net/Uri;
    const-string v20, "_data"

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getBaseContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/providers/media/MediaProvider;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_0

    .line 161
    .end local v10    # "restoreSdcardUri":Landroid/net/Uri;
    .end local v18    # "value":Landroid/content/ContentValues;
    .restart local v14    # "status_stateForExtSdCardTermination":Z
    :catchall_2
    move-exception v20

    :try_start_d
    monitor-exit v21
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v20

    .line 169
    :cond_a
    const-string v20, "MediaScannerService"

    const-string v21, "restorePlaylistConfiguration(SD card) is skipped"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_1

    .line 175
    .end local v14    # "status_stateForExtSdCardTermination":Z
    .restart local v15    # "status_stateForPrivateTermination":Z
    :catchall_3
    move-exception v20

    :try_start_f
    monitor-exit v21
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v20

    .line 183
    :cond_b
    const-string v20, "MediaScannerService"

    const-string v21, "restorePlaylistConfiguration(Private) is skipped"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_2
.end method

.method private scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 340
    const-string v5, "external"

    .line 341
    .local v5, "volumeName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 342
    .local v0, "canonicalPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "externalStoragePath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "lagacyStoragePath":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/providers/media/MediaScannerService;->openDatabase(Ljava/lang/String;)V

    .line 345
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerService;->createMediaScanner()Landroid/media/MediaScanner;

    move-result-object v4

    .line 348
    .local v4, "scanner":Landroid/media/MediaScanner;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 350
    const-string v6, "MediaScannerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current path starts with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " It will be changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-virtual {v4, v0, v5, p2}, Landroid/media/MediaScanner;->scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 358
    :goto_0
    return-object v6

    .line 354
    :cond_0
    invoke-virtual {v4, v0, v5, p2}, Landroid/media/MediaScanner;->scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 356
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "MediaScannerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in scanFile()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static setTerminatedStatusForExtSdCard()V
    .locals 2

    .prologue
    .line 217
    sget-object v1, Lcom/android/providers/media/MediaScannerService;->syncTerminateStatus:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/providers/media/MediaScannerService;->stateForExtSdCardTermination:Z

    .line 219
    monitor-exit v1

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setTerminatedStatusForPrivate()V
    .locals 2

    .prologue
    .line 223
    sget-object v1, Lcom/android/providers/media/MediaScannerService;->syncTerminateStatus:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/providers/media/MediaScannerService;->stateForPrivateTermination:Z

    .line 225
    monitor-exit v1

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mBinder:Landroid/media/IMediaScannerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 231
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/providers/media/MediaScannerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 232
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "MediaScannerService"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/media/MediaScannerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 233
    const-string v3, "storage"

    invoke-virtual {p0, v3}, Lcom/android/providers/media/MediaScannerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 234
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/media/MediaScannerService;->mExternalStoragePaths:[Ljava/lang/String;

    .line 239
    new-instance v2, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "MediaScannerService"

    invoke-direct {v2, v3, p0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 240
    .local v2, "thr":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 241
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 314
    :goto_0
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mServiceLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 315
    monitor-enter p0

    .line 317
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 323
    return-void

    .line 318
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x3

    .line 246
    :goto_0
    iget-object v6, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    if-nez v6, :cond_0

    .line 247
    monitor-enter p0

    .line 249
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 255
    :cond_0
    if-nez p1, :cond_1

    .line 256
    const-string v5, "MediaScannerService"

    const-string v6, "Intent is null in onStartCommand: "

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    :goto_2
    return v4

    .line 262
    :cond_1
    iget-object v6, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    invoke-virtual {v6}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 263
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 264
    .local v0, "arguments":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 265
    .local v2, "volume":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 266
    const-string v6, "volume"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    :cond_2
    const/4 v3, 0x0

    .line 268
    .local v3, "volumeInMsg":I
    if-eqz v2, :cond_4

    .line 270
    const-string v6, "external"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 271
    iget-object v6, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    invoke-virtual {v6, v4}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 272
    const-string v4, "MediaScannerService"

    const-string v6, "We receive a same request for scanning the external storage. It will be ignored."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 273
    goto :goto_2

    .line 275
    :cond_3
    const/4 v3, 0x2

    .line 300
    :cond_4
    :goto_3
    iput v3, v1, Landroid/os/Message;->what:I

    .line 301
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 302
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 303
    iget-object v4, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    invoke-virtual {v4, v1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    move v4, v5

    .line 307
    goto :goto_2

    .line 277
    :cond_5
    const-string v4, "internal"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 278
    iget-object v4, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 279
    const-string v4, "MediaScannerService"

    const-string v6, "We receive a same request for scanning the internal storage. It will be ignored."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 280
    goto :goto_2

    .line 282
    :cond_6
    const/4 v3, 0x1

    goto :goto_3

    .line 284
    :cond_7
    const-string v4, "external_sd"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 285
    iget-object v4, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    invoke-virtual {v4, v5}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 286
    const-string v4, "MediaScannerService"

    const-string v6, "We receive a same request for scanning the external sd storage. It will be ignored."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 287
    goto :goto_2

    .line 289
    :cond_8
    const/4 v3, 0x3

    goto :goto_3

    .line 291
    :cond_9
    const-string v4, "external_private"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 292
    iget-object v4, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 293
    const-string v4, "MediaScannerService"

    const-string v6, "We receive a same request for scanning the private storage. It will be ignored."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 294
    goto/16 :goto_2

    .line 296
    :cond_a
    const/4 v3, 0x4

    goto :goto_3

    .line 250
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "volume":Ljava/lang/String;
    .end local v3    # "volumeInMsg":I
    :catch_0
    move-exception v6

    goto/16 :goto_1
.end method

.method public run()V
    .locals 2

    .prologue
    .line 329
    const/16 v0, 0xb

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 331
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 333
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mServiceLooper:Landroid/os/Looper;

    .line 334
    new-instance v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;-><init>(Lcom/android/providers/media/MediaScannerService;Lcom/android/providers/media/MediaScannerService$1;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    .line 336
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 337
    return-void
.end method
