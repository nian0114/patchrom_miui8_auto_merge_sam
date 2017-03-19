.class public final Lcom/android/providers/media/ContentApp;
.super Ljava/lang/Object;
.source "ContentApp.java"


# static fields
.field private static final ACTION_CHECK_SIOP_LEVEL:Ljava/lang/String; = "android.intent.action.CHECK_SIOP_LEVEL"

.field private static final ACTION_SSRM_GAME_START:Ljava/lang/String; = "com.sec.android.intent.action.SSRM_GAME_START"

.field protected static final FACE_THUMBNAILS_SIZE:I = 0x190

.field private static final GAME_START_BROADCAST:Ljava/lang/String; = "game_start"

.field protected static final MAX_GROUPING_FACE_COUNT:I = 0x12c

.field protected static final RECOMMEND_FACE_SIMILITUDE_CRITICAL:I = 0x157c

.field protected static final RECOMMEND_GROUP_SIMILITUDE_CRITICAL:I = 0x157c

.field private static final SIOP_LEVEL_BROADCAST:Ljava/lang/String; = "siop_level_broadcast"

.field private static final TAG:Ljava/lang/String; = "ContentApp"

.field protected static volatile mFaceCacheMgr:I

.field protected static mFaceDir:Ljava/lang/String;

.field private static mFaceScanner:Lcom/android/providers/media/FaceScanner;

.field protected static volatile mRestartScanner:Z

.field public static mStopScan:Z

.field protected static volatile mUseArcsoftFR:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mSyncThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput v0, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    .line 38
    sput-boolean v0, Lcom/android/providers/media/ContentApp;->mRestartScanner:Z

    .line 39
    sput-boolean v0, Lcom/android/providers/media/ContentApp;->mUseArcsoftFR:Z

    .line 41
    sput-boolean v0, Lcom/android/providers/media/ContentApp;->mStopScan:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v6, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    .line 31
    iput-object v6, p0, Lcom/android/providers/media/ContentApp;->mSyncThread:Ljava/lang/Thread;

    .line 47
    const-string v6, "ContentApp"

    const-string v7, "ContentApp()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object p1, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/.face"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/providers/media/ContentApp;->mFaceDir:Ljava/lang/String;

    .line 52
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CHECK_SIOP_LEVEL"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 53
    .local v2, "siopLevelFilter":Landroid/content/IntentFilter;
    new-instance v3, Lcom/android/providers/media/ContentApp$1;

    invoke-direct {v3, p0}, Lcom/android/providers/media/ContentApp$1;-><init>(Lcom/android/providers/media/ContentApp;)V

    .line 66
    .local v3, "siopLevelReceiver":Landroid/content/BroadcastReceiver;
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "com.sec.android.intent.action.SSRM_GAME_START"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    .local v4, "ssrmGameStartFilter":Landroid/content/IntentFilter;
    new-instance v5, Lcom/android/providers/media/ContentApp$2;

    invoke-direct {v5, p0}, Lcom/android/providers/media/ContentApp$2;-><init>(Lcom/android/providers/media/ContentApp;)V

    .line 82
    .local v5, "ssrmGameStartReceiver":Landroid/content/BroadcastReceiver;
    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "iMediaMountedFilter":Landroid/content/IntentFilter;
    const-string v6, "file"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 87
    new-instance v1, Lcom/android/providers/media/ContentApp$3;

    invoke-direct {v1, p0}, Lcom/android/providers/media/ContentApp$3;-><init>(Lcom/android/providers/media/ContentApp;)V

    .line 93
    .local v1, "mediaMountedReceiver":Landroid/content/BroadcastReceiver;
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    invoke-direct {p0}, Lcom/android/providers/media/ContentApp;->createCacheIfMediaMounted()V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/media/ContentApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/media/ContentApp;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/providers/media/ContentApp;->createCacheIfMediaMounted()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/providers/media/FaceScanner;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/providers/media/ContentApp;->mFaceScanner:Lcom/android/providers/media/FaceScanner;

    return-object v0
.end method

.method private create()V
    .locals 4

    .prologue
    .line 126
    sget-boolean v2, Lcom/android/providers/media/ContentApp;->mUseArcsoftFR:Z

    if-eqz v2, :cond_2

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/face"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "folderKey":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 131
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v2, Lcom/android/providers/media/ContentApp;->mFaceDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 134
    :cond_1
    sget-object v2, Lcom/android/providers/media/ContentApp;->mFaceDir:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/providers/media/NativeApi;->createFaceCacheMgr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    .line 137
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "folderKey":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private createCacheIfMediaMounted()V
    .locals 3

    .prologue
    .line 98
    const-string v0, "ContentApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create cache if media mounted.. media : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget v0, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/android/providers/media/ContentApp;->setFaceCache()V

    .line 101
    invoke-direct {p0}, Lcom/android/providers/media/ContentApp;->create()V

    .line 103
    :cond_0
    return-void
.end method

.method protected static setFaceCache()V
    .locals 3

    .prologue
    .line 113
    :try_start_0
    const-string v2, "facerecognition"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 114
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/providers/media/ContentApp;->mUseArcsoftFR:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    sget-boolean v2, Lcom/android/providers/media/ContentApp;->mUseArcsoftFR:Z

    if-eqz v2, :cond_0

    .line 119
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/providers/media/ContentApp;->mFaceDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    move-result v2

    if-nez v2, :cond_0

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 123
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/providers/media/ContentApp;->mUseArcsoftFR:Z

    goto :goto_0
.end method


# virtual methods
.method protected SingleRestore(I)V
    .locals 11
    .param p1, "files_id"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 213
    const-string v3, "ContentApp"

    const-string v4, "SingleRestore() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v7, 0x0

    .line 217
    .local v7, "faces_image_id":I
    iget-object v3, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 218
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "select A.image_id from (select * from faces ) A inner join (select * from files where reusable = 1 AND _id =%d) B on A.data = B._data"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v10

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 219
    .local v8, "sql":Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 220
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 222
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 225
    invoke-virtual {p0, v7, p1}, Lcom/android/providers/media/ContentApp;->updateSingleNewImageID(II)Z

    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 229
    :cond_1
    if-eqz v6, :cond_2

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_2
    return-void

    .line 229
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_3

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method protected SingleScan(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 206
    const-string v0, "ContentApp"

    const-string v1, "SingleScan() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object v0, Lcom/android/providers/media/ContentApp;->mFaceScanner:Lcom/android/providers/media/FaceScanner;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/android/providers/media/FaceScanner;

    invoke-direct {v0, p0}, Lcom/android/providers/media/FaceScanner;-><init>(Lcom/android/providers/media/ContentApp;)V

    sput-object v0, Lcom/android/providers/media/ContentApp;->mFaceScanner:Lcom/android/providers/media/FaceScanner;

    .line 209
    :cond_0
    sget-object v0, Lcom/android/providers/media/ContentApp;->mFaceScanner:Lcom/android/providers/media/FaceScanner;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/media/FaceScanner;->scanSingleFile(ILjava/lang/String;)V

    .line 210
    return-void
.end method

.method protected destroy()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "ContentApp"

    const-string v1, "destroy() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/android/providers/media/ContentApp;->stopScan()V

    .line 142
    sget v0, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    if-eqz v0, :cond_0

    .line 143
    sget v0, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    invoke-static {v0}, Lcom/android/providers/media/NativeApi;->destroyFaceCacheMgr(I)V

    .line 144
    const/4 v0, 0x0

    sput v0, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    .line 146
    :cond_0
    return-void
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    :cond_0
    return-void
.end method

.method protected declared-synchronized startScan(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/android/providers/media/ContentApp;->mUseArcsoftFR:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 151
    :cond_1
    :try_start_1
    const-string v1, "ContentApp"

    const-string v2, "startScan() is called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v1, "sys.siop.level"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, "SIOPlevel":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 155
    const-string v1, "ContentApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " level return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 149
    .end local v0    # "SIOPlevel":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 158
    .restart local v0    # "SIOPlevel":I
    :cond_2
    :try_start_2
    const-string v1, "true"

    const-string v2, "dev.ssrm.app.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    sget-object v1, Lcom/android/providers/media/ContentApp;->mFaceScanner:Lcom/android/providers/media/FaceScanner;

    if-nez v1, :cond_3

    .line 164
    new-instance v1, Lcom/android/providers/media/FaceScanner;

    invoke-direct {v1, p0}, Lcom/android/providers/media/FaceScanner;-><init>(Lcom/android/providers/media/ContentApp;)V

    sput-object v1, Lcom/android/providers/media/ContentApp;->mFaceScanner:Lcom/android/providers/media/FaceScanner;

    .line 166
    :cond_3
    iget-object v1, p0, Lcom/android/providers/media/ContentApp;->mSyncThread:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/providers/media/ContentApp;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_5

    .line 167
    :cond_4
    new-instance v1, Lcom/android/providers/media/ContentApp$4;

    const-string v2, "syncThread"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/providers/media/ContentApp$4;-><init>(Lcom/android/providers/media/ContentApp;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/providers/media/ContentApp;->mSyncThread:Ljava/lang/Thread;

    .line 182
    iget-object v1, p0, Lcom/android/providers/media/ContentApp;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 187
    :goto_1
    const-string v1, "ContentApp"

    const-string v2, "startScan() is end."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_5
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/providers/media/ContentApp;->mRestartScanner:Z

    .line 185
    const-string v1, "ContentApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "face_restore mRestartScanner 1 FINISHED_TYPE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected stopScan()V
    .locals 3

    .prologue
    .line 191
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/providers/media/ContentApp;->mRestartScanner:Z

    .line 192
    const-string v1, "ContentApp"

    const-string v2, "stopScan() is called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/android/providers/media/ContentApp;->mSyncThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/media/ContentApp;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/android/providers/media/ContentApp;->mStopScan:Z

    .line 197
    iget-object v1, p0, Lcom/android/providers/media/ContentApp;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateSingleNewImageID(II)Z
    .locals 11
    .param p1, "oldId"    # I
    .param p2, "newId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 235
    iget-object v7, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 236
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 237
    .local v4, "values":Landroid/content/ContentValues;
    if-eq p1, p2, :cond_0

    .line 238
    const-string v7, "ContentApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "face restore - updateNewImageID :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v7, "image_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    :cond_0
    const-string v7, "usable"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    const-string v2, "image_id = ?"

    .line 244
    .local v2, "selection":Ljava/lang/String;
    :try_start_0
    sget-object v7, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v1, v7, v4, v2, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    if-eq p1, p2, :cond_1

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://media/external/face_scanning_progress/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 247
    .local v3, "uri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/providers/media/ContentApp;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.media.FACE_SCANNER_PROGRESS"

    invoke-direct {v8, v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v7, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return v5

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v6

    .line 251
    goto :goto_0
.end method
