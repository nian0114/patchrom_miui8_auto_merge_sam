.class public Lcom/android/providers/media/CMHServiceInterface;
.super Ljava/lang/Object;
.source "CMHServiceInterface.java"


# static fields
.field private static final CMH_ACTION_INTENT:Ljava/lang/String; = "com.samsung.cmh.action.CMH_EXECUTE"

.field private static final CMH_DATA_BUNDLE:Ljava/lang/String; = "data"

.field private static final CMH_INTENT_OPERATION:Ljava/lang/String; = "operation"

.field private static final CMH_INTENT_ORIGIN:Ljava/lang/String; = "origin"

.field private static final CMH_PACKAGE:Ljava/lang/String; = "com.samsung.cmh"

.field private static final CMH_PERMISSION:Ljava/lang/String; = "com.samsung.cmh.START"

.field private static final CMH_SERVICE:Ljava/lang/String; = "com.samsung.cmh.service.CMHService"

.field private static final CMH_SYNC_INTENT:Ljava/lang/String; = "com.samsung.cmh.action.CMH_SYNC"

.field private static final CMH_URI:Ljava/lang/String; = "uri"

.field private static final DELETE_OPERATION:I = 0x1

.field private static final FILES:I = 0x2bc

.field private static final FILES_ID:I = 0x2bd

.field private static final ID_BATCH_SIZE:I = 0x65

.field private static final IMAGES_MEDIA:I = 0x1

.field private static final IMAGES_MEDIA_ID:I = 0x2

.field private static final IMAGES_THUMBNAILS:I = 0x3

.field private static final IMAGES_THUMBNAILS_ID:I = 0x4

.field private static final INSERT_OPERATION:I = 0x0

.field private static final RESTORE:Ljava/lang/String; = "restore"

.field private static final SDCARD_ID:Ljava/lang/String; = "sdcard_id"

.field private static final STARTPATH:Ljava/lang/String; = "startpath"

.field private static final STORAGE_ID:Ljava/lang/String; = "storage_id"

.field private static final STORAGE_TYPE:Ljava/lang/String; = "storage_type"

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_OPERATION:I = 0x2

.field private static final VIDEO_MEDIA:I = 0xc8

.field private static final VIDEO_MEDIA_ID:I = 0xc9

.field private static final VIDEO_THUMBNAILS:I = 0xca

.field private static final VIDEO_THUMBNAILS_ID:I = 0xcb

.field private static mCMH:Ljava/lang/Boolean;

.field private static final mScheduledFutureReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final mScheduledThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static final mServiceConnection:Landroid/content/ServiceConnection;

.field private static final mbCMHBinded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 69
    const-class v0, Lcom/android/providers/media/CMHServiceInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/providers/media/CMHServiceInterface;->mbCMHBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/providers/media/CMHServiceInterface;->mScheduledFutureReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 91
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/android/providers/media/CMHServiceInterface;->mScheduledThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 93
    sget-object v0, Lcom/android/providers/media/CMHServiceInterface;->mScheduledThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 96
    new-instance v0, Lcom/android/providers/media/CMHServiceInterface$1;

    invoke-direct {v0}, Lcom/android/providers/media/CMHServiceInterface$1;-><init>()V

    sput-object v0, Lcom/android/providers/media/CMHServiceInterface;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/providers/media/CMHServiceInterface;->mbCMHBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/providers/media/CMHServiceInterface;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private static declared-synchronized bindCMHIfNeeded(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 414
    const-class v2, Lcom/android/providers/media/CMHServiceInterface;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/providers/media/CMHServiceInterface;->mbCMHBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    sget-object v1, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string v3, "binding to CMH"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cmh.action.CMH_EXECUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cmh"

    const-string v3, "com.samsung.cmh.service.CMHService"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    sget-object v1, Lcom/android/providers/media/CMHServiceInterface;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 421
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {p0}, Lcom/android/providers/media/CMHServiceInterface;->scheduleUnbind(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit v2

    return-void

    .line 414
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static deleteImagesCMH(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/providers/media/MediaProvider$DatabaseHelper;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "match"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userWhere"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "dbHelper"    # Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .prologue
    .line 123
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/providers/media/CMHServiceInterface;->isCMHReady(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "external"

    invoke-static/range {p2 .. p2}, Lcom/android/providers/media/CMHServiceInterface;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 125
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const-string v16, "bucket_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 126
    sget-object v15, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string v16, "Album delete case,sending bucket_id to CMH for deletion"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/providers/media/CMHServiceInterface;->getIntentForCMH(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v6

    .line 129
    .local v6, "deleteIntent":Landroid/content/Intent;
    const-string v15, "data"

    invoke-virtual {v6, v15}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 130
    .local v5, "data":Landroid/os/Bundle;
    const-string v15, "uri"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v15, "where"

    move-object/from16 v0, p3

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v15, "whereargs"

    move-object/from16 v0, p4

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 204
    .end local v5    # "data":Landroid/os/Bundle;
    .end local v6    # "deleteIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    if-eqz p3, :cond_4

    const-string v15, "_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "_data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    :cond_2
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    array-length v15, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 140
    sget-object v15, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string v16, "Single delete case"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/providers/media/CMHServiceInterface;->getIntentForCMH(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v6

    .line 143
    .restart local v6    # "deleteIntent":Landroid/content/Intent;
    const-string v15, "data"

    invoke-virtual {v6, v15}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 144
    .restart local v5    # "data":Landroid/os/Bundle;
    const-string v15, "uri"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v15, "_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 147
    const-string v15, "where"

    const-string v16, "media_id = ? AND device_id = 1"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_1
    const-string v15, "whereargs"

    move-object/from16 v0, p4

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v5    # "data":Landroid/os/Bundle;
    .end local v6    # "deleteIntent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 202
    .local v7, "e":Ljava/lang/Exception;
    sget-object v15, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string v16, "[CMH] Exception in deleteImagesCMH"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 149
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "data":Landroid/os/Bundle;
    .restart local v6    # "deleteIntent":Landroid/content/Intent;
    :cond_3
    :try_start_1
    const-string v15, "where"

    move-object/from16 v0, p3

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 156
    .end local v5    # "data":Landroid/os/Bundle;
    .end local v6    # "deleteIntent":Landroid/content/Intent;
    :cond_4
    invoke-static/range {p0 .. p5}, Lcom/android/providers/media/CMHServiceInterface;->getIds(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/providers/media/MediaProvider$DatabaseHelper;)Ljava/util/ArrayList;

    move-result-object v11

    .line 157
    .local v11, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 158
    .local v12, "size":I
    if-lez v12, :cond_0

    .line 159
    sget-object v15, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Deleting for id:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v4, 0x0

    .line 161
    .local v4, "current_size":I
    :goto_2
    if-ge v4, v12, :cond_0

    .line 162
    move v13, v4

    .line 163
    .local v13, "startIdx":I
    add-int/lit8 v15, v4, 0x65

    if-gt v15, v12, :cond_5

    add-int/lit8 v9, v4, 0x65

    .line 166
    .local v9, "endIdx":I
    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v11, v13, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v15

    invoke-direct {v2, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 169
    .local v2, "batchIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .line 170
    .local v14, "where":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v0, v15, [Ljava/lang/String;

    move-object/from16 p4, v0

    .line 171
    const/4 v3, 0x0

    .line 172
    .local v3, "count":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 173
    .local v8, "eachId":I
    if-nez v14, :cond_6

    .line 174
    new-instance v14, Ljava/lang/StringBuilder;

    .end local v14    # "where":Ljava/lang/StringBuilder;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .restart local v14    # "where":Ljava/lang/StringBuilder;
    const-string v15, "uri = ? "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :goto_5
    const-string v15, "external"

    int-to-long v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, p4, v3

    .line 181
    add-int/lit8 v3, v3, 0x1

    .line 182
    goto :goto_4

    .end local v2    # "batchIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "count":I
    .end local v8    # "eachId":I
    .end local v9    # "endIdx":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "where":Ljava/lang/StringBuilder;
    :cond_5
    move v9, v12

    .line 163
    goto :goto_3

    .line 177
    .restart local v2    # "batchIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "count":I
    .restart local v8    # "eachId":I
    .restart local v9    # "endIdx":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v14    # "where":Ljava/lang/StringBuilder;
    :cond_6
    const-string v15, " OR uri = ? "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 183
    .end local v8    # "eachId":I
    :cond_7
    if-eqz v14, :cond_8

    .line 184
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 187
    :cond_8
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/providers/media/CMHServiceInterface;->getIntentForCMH(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v6

    .line 189
    .restart local v6    # "deleteIntent":Landroid/content/Intent;
    const-string v15, "data"

    invoke-virtual {v6, v15}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 190
    .restart local v5    # "data":Landroid/os/Bundle;
    const-string v15, "uri"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v15, "where"

    move-object/from16 v0, p3

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v15, "whereargs"

    move-object/from16 v0, p4

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    add-int/lit8 v4, v4, 0x65

    .line 196
    goto/16 :goto_2
.end method

.method private static getIds(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/providers/media/MediaProvider$DatabaseHelper;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "match"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userWhere"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "dbHelper"    # Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/providers/media/MediaProvider$DatabaseHelper;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v10, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p3, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2bd

    if-ne p1, v0, :cond_2

    .line 212
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_1
    :goto_0
    return-object v10

    .line 217
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 218
    .local v9, "id":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/providers/media/CMHServiceInterface;->isInteger(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    if-nez p3, :cond_6

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 225
    :cond_3
    :goto_1
    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "files"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 229
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_5

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 231
    :cond_4
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 235
    :cond_5
    if-eqz v8, :cond_1

    .line 236
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 222
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 235
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_7

    .line 236
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public static getIntentForCMH(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "operation"    # I

    .prologue
    .line 253
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.cmh.action.CMH_EXECUTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.cmh"

    const-string v4, "com.samsung.cmh.service.CMHService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "operation"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string v3, "origin"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 263
    .local v1, "data":Landroid/os/Bundle;
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 264
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public static getVolumeName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 269
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 270
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static insertImagesCMH(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cmhValues"    # [Landroid/content/ContentValues;

    .prologue
    .line 279
    :try_start_0
    invoke-static {p0}, Lcom/android/providers/media/CMHServiceInterface;->isCMHReady(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "external"

    invoke-static {p1}, Lcom/android/providers/media/CMHServiceInterface;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/providers/media/CMHServiceInterface;->getIntentForCMH(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    .line 282
    .local v2, "insertIntent":Landroid/content/Intent;
    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 284
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v3, "contentvalues"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 286
    sget-object v3, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string v4, "Sending intent to CMH"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "insertIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string v4, "[CMH] Exception in insertImagesCMH"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isCMHEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    sget-object v1, Lcom/android/providers/media/CMHServiceInterface;->mCMH:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "enabled":Z
    const-string v1, "com.samsung.cmh"

    invoke-static {v1, p0}, Lcom/android/providers/media/CMHServiceInterface;->isInstalledApplication(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    const/4 v0, 0x1

    .line 300
    :cond_0
    sget-object v1, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMH Enabled?:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/providers/media/CMHServiceInterface;->mCMH:Ljava/lang/Boolean;

    .line 303
    .end local v0    # "enabled":Z
    :cond_1
    sget-object v1, Lcom/android/providers/media/CMHServiceInterface;->mCMH:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private static isCMHReady(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 406
    :try_start_0
    invoke-static {p0}, Lcom/android/providers/media/CMHServiceInterface;->bindCMHIfNeeded(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/providers/media/CMHServiceInterface;->isFeatureDisabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 410
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isFeatureDisabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 448
    const/4 v0, 0x1

    .line 450
    .local v0, "disabled":Z
    const-string v2, "persist.dcm.feature.disable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 452
    :cond_0
    const/4 v0, 0x0

    .line 455
    :cond_1
    return v0
.end method

.method public static isInstalledApplication(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 310
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 311
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v0, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .local v0, "bCMHAvailable":Z
    :goto_0
    return v0

    .line 312
    .end local v0    # "bCMHAvailable":Z
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "bCMHAvailable":Z
    goto :goto_0
.end method

.method private static isInteger(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 244
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    const/4 v1, 0x1

    .line 247
    :goto_0
    return v1

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static scheduleUnbind(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 425
    sget-object v2, Lcom/android/providers/media/CMHServiceInterface;->mScheduledThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/android/providers/media/CMHServiceInterface$2;

    invoke-direct {v3, p0}, Lcom/android/providers/media/CMHServiceInterface$2;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 441
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    sget-object v2, Lcom/android/providers/media/CMHServiceInterface;->mScheduledFutureReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    .line 442
    .local v1, "oldRef":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 445
    :cond_0
    return-void
.end method

.method public static sendSyncIntent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "restore"    # Z
    .param p2, "storagetype"    # Ljava/lang/String;
    .param p3, "startpath"    # Ljava/lang/String;
    .param p4, "storageid"    # I
    .param p5, "sdcardid"    # I

    .prologue
    .line 460
    invoke-static {p0}, Lcom/android/providers/media/CMHServiceInterface;->isCMHReady(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cmh.action.CMH_SYNC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, "sycnIntent":Landroid/content/Intent;
    const-string v1, "restore"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 463
    const-string v1, "storage_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v1, "startpath"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string v1, "storage_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    const-string v1, "sdcard_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 468
    const-string v1, "com.samsung.cmh.START"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 469
    sget-object v1, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intents:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v0    # "sycnIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static updateImagesCMH(Landroid/content/Context;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/android/providers/media/MediaProvider$DatabaseHelper;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "match"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "userWhere"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;
    .param p6, "dbHelper"    # Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .prologue
    .line 322
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/providers/media/CMHServiceInterface;->isCMHReady(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "external"

    invoke-static/range {p2 .. p2}, Lcom/android/providers/media/CMHServiceInterface;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    if-eqz p4, :cond_3

    const-string v2, "_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "_data"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    if-eqz p5, :cond_3

    move-object/from16 v0, p5

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 328
    sget-object v2, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string v3, "Single updateImagesCMH case"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/providers/media/CMHServiceInterface;->getIntentForCMH(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v19

    .line 331
    .local v19, "updateIntent":Landroid/content/Intent;
    const-string v2, "data"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 332
    .local v11, "data":Landroid/os/Bundle;
    const-string v2, "uri"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v2, "contentvalues"

    move-object/from16 v0, p3

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 335
    const-string v2, "_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    const-string v2, "where"

    const-string v3, "media_id = ? AND device_id = 1"

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_0
    const-string v2, "whereargs"

    move-object/from16 v0, p5

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 392
    .end local v11    # "data":Landroid/os/Bundle;
    .end local v19    # "updateIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 338
    .restart local v11    # "data":Landroid/os/Bundle;
    .restart local v19    # "updateIntent":Landroid/content/Intent;
    :cond_2
    const-string v2, "where"

    move-object/from16 v0, p4

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    .end local v11    # "data":Landroid/os/Bundle;
    .end local v19    # "updateIntent":Landroid/content/Intent;
    :catch_0
    move-exception v12

    .line 390
    .local v12, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string v3, "[CMH] Exception in updateImagesCMH"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v12    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 344
    :try_start_1
    invoke-static/range {v2 .. v7}, Lcom/android/providers/media/CMHServiceInterface;->getIds(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/providers/media/MediaProvider$DatabaseHelper;)Ljava/util/ArrayList;

    move-result-object v16

    .line 345
    .local v16, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    .line 346
    .local v17, "size":I
    if-lez v17, :cond_1

    .line 347
    const/4 v10, 0x0

    .line 348
    .local v10, "current_size":I
    :goto_2
    move/from16 v0, v17

    if-ge v10, v0, :cond_1

    .line 349
    move/from16 v18, v10

    .line 350
    .local v18, "startIdx":I
    add-int/lit8 v2, v10, 0x65

    move/from16 v0, v17

    if-gt v2, v0, :cond_4

    add-int/lit8 v14, v10, 0x65

    .line 353
    .local v14, "endIdx":I
    :goto_3
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 356
    .local v8, "batchIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v20, 0x0

    .line 357
    .local v20, "where":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 p5, v0

    .line 358
    const/4 v9, 0x0

    .line 359
    .local v9, "count":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 360
    .local v13, "eachId":I
    if-nez v20, :cond_5

    .line 361
    new-instance v20, Ljava/lang/StringBuilder;

    .end local v20    # "where":Ljava/lang/StringBuilder;
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .restart local v20    # "where":Ljava/lang/StringBuilder;
    const-string v2, "uri = ? "

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :goto_5
    const-string v2, "external"

    int-to-long v4, v13

    invoke-static {v2, v4, v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p5, v9

    .line 368
    add-int/lit8 v9, v9, 0x1

    .line 369
    goto :goto_4

    .end local v8    # "batchIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "count":I
    .end local v13    # "eachId":I
    .end local v14    # "endIdx":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v20    # "where":Ljava/lang/StringBuilder;
    :cond_4
    move/from16 v14, v17

    .line 350
    goto :goto_3

    .line 364
    .restart local v8    # "batchIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "count":I
    .restart local v13    # "eachId":I
    .restart local v14    # "endIdx":I
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v20    # "where":Ljava/lang/StringBuilder;
    :cond_5
    const-string v2, " OR uri = ? "

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 370
    .end local v13    # "eachId":I
    :cond_6
    if-eqz v20, :cond_7

    .line 371
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 374
    :cond_7
    sget-object v2, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string v3, "Sending intent to CMH to update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/providers/media/CMHServiceInterface;->getIntentForCMH(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v19

    .line 377
    .restart local v19    # "updateIntent":Landroid/content/Intent;
    const-string v2, "data"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 378
    .restart local v11    # "data":Landroid/os/Bundle;
    const-string v2, "uri"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v2, "contentvalues"

    move-object/from16 v0, p3

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 380
    const-string v2, "where"

    move-object/from16 v0, p4

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v2, "whereargs"

    move-object/from16 v0, p5

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 384
    add-int/lit8 v10, v10, 0x65

    .line 385
    goto/16 :goto_2
.end method

.method public static updateLocation(Landroid/content/Context;Landroid/content/ContentValues;DD)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D

    .prologue
    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.cmh/files"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "latitude=? AND longitude=? AND addr is null AND langagecode is null"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 402
    return-void
.end method
