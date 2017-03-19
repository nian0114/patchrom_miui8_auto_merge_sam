.class public Lcom/android/providers/media/FaceScanner;
.super Ljava/lang/Object;
.source "FaceScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/FaceScanner$1;,
        Lcom/android/providers/media/FaceScanner$__ompClass0;,
        Lcom/android/providers/media/FaceScanner$FileInfor;,
        Lcom/android/providers/media/FaceScanner$PersonInfo;,
        Lcom/android/providers/media/FaceScanner$FaceGroupData;,
        Lcom/android/providers/media/FaceScanner$RecomendedPerson;
    }
.end annotation


# static fields
.field public static final AUTO_GROUP_FACE_SIZE:I = 0x64

.field public static final MAX_KEY_FACE_COUNT:I = 0x1e

.field public static final RAW_SQL_MAIN_DB:Landroid/net/Uri;

.field public static final RAW_SQL_PERSON_DB:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "FaceScanner"

.field public static final UNKOWN_PERSON_ID:I = 0x1

.field private static mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/media/FaceScanner$FileInfor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private categoryMediaIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private faceScannedMediaIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mApp:Lcom/android/providers/media/ContentApp;

.field private volatile mMaxGroupId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/android/providers/media/Columns;->RAW_SQL_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    .line 32
    sget-object v0, Lcom/android/providers/media/Columns;->RAW_SQL_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "person"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/FaceScanner;->RAW_SQL_PERSON_DB:Landroid/net/Uri;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/media/ContentApp;)V
    .locals 1
    .param p1, "app"    # Lcom/android/providers/media/ContentApp;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/media/FaceScanner;->mMaxGroupId:I

    .line 946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/FaceScanner;->categoryMediaIds:Ljava/util/ArrayList;

    .line 991
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/FaceScanner;->faceScannedMediaIds:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    .line 39
    iget-object v0, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v0}, Lcom/android/providers/media/ContentApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/media/FaceValue;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private deleteInvalidFile(I)I
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 263
    iget-object v2, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 264
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, v1, p1}, Lcom/android/providers/media/FaceScanner;->removeFaceByFileId(Landroid/content/ContentResolver;I)V

    .line 265
    sget-object v2, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    const-string v3, "image_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 266
    .local v0, "change":I
    return v0
.end method

.method private getInvalidFileList(I)Ljava/util/ArrayList;
    .locals 11
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    const/4 v9, 0x0

    .line 161
    .local v9, "id":I
    iget-object v2, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v8, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->isNeedToRestore()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 165
    :cond_0
    const-string v2, "FaceScanner"

    const-string v3, "getInvalidFileList FINISHED_TYPE_RESTORE_MMC+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/android/providers/media/FaceScanner;->restore()V

    .line 168
    const-string v10, "select image_id from faces where usable=1"

    .line 169
    .local v10, "sql":Ljava/lang/String;
    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 170
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 172
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 173
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 176
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 182
    :cond_2
    if-eqz v6, :cond_3

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->resetFileFaceInfo()V

    .line 186
    const-string v2, "FaceScanner"

    const-string v3, "getInvalidFileList FINISHED_TYPE_RESTORE_MMC-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "sql":Ljava/lang/String;
    :cond_4
    const-string v10, "select _id from files where media_type=1 and face_count=-1 and _id in (select image_id from faces where usable=0 )"

    .line 190
    .restart local v10    # "sql":Ljava/lang/String;
    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 191
    .restart local v1    # "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 193
    .restart local v6    # "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 194
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 196
    :cond_5
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 197
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_5

    .line 203
    :cond_6
    if-eqz v6, :cond_7

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_7
    :goto_1
    const-string v10, "select image_id from faces where usable=0 and image_id not in ( select _id from files where media_type=1 )"

    .line 208
    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 211
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 212
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 214
    :cond_8
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 215
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-nez v2, :cond_8

    .line 221
    :cond_9
    if-eqz v6, :cond_a

    .line 222
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_a
    :goto_2
    return-object v8

    .line 179
    :catch_0
    move-exception v7

    .line 180
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    if-eqz v6, :cond_3

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 182
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_b

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    .line 200
    :catch_1
    move-exception v7

    .line 201
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 203
    if-eqz v6, :cond_7

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 203
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v6, :cond_c

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    .line 218
    :catch_2
    move-exception v7

    .line 219
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 221
    if-eqz v6, :cond_a

    .line 222
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 221
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    if-eqz v6, :cond_d

    .line 222
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2
.end method

.method private getKeyFaceDataIndex(I[II)I
    .locals 12
    .param p1, "personId"    # I
    .param p2, "keyFaceDataIndex"    # [I
    .param p3, "maxCount"    # I

    .prologue
    const/4 v11, 0x0

    .line 346
    const/4 v6, 0x0

    .line 347
    .local v6, "count":I
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v7, v6

    .line 367
    .end local v6    # "count":I
    .local v7, "count":I
    :goto_0
    return v7

    .line 349
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :cond_1
    iget-object v2, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 350
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "select face_data from faces where person_id=%1$d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 351
    .local v10, "sql":Ljava/lang/String;
    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_PERSON_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 352
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 354
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 355
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 357
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p2, v6

    .line 358
    add-int/lit8 v6, v6, 0x1

    .line 359
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    if-lt v6, p3, :cond_2

    .line 364
    :cond_3
    if-eqz v8, :cond_4

    .line 365
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move v7, v6

    .line 367
    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto :goto_0

    .line 361
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :catch_0
    move-exception v9

    .line 362
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    if-eqz v8, :cond_4

    .line 365
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 364
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_5

    .line 365
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method private getNewGroupId()I
    .locals 10

    .prologue
    .line 371
    const/4 v8, 0x0

    .line 372
    .local v8, "groupId":I
    iget-object v2, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 373
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v9, "select max(group_id) from faces"

    .line 374
    .local v9, "sql":Ljava/lang/String;
    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 375
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 377
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 378
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 384
    :cond_0
    if-eqz v6, :cond_1

    .line 385
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_1
    :goto_0
    add-int/lit8 v8, v8, 0x1

    .line 388
    return v8

    .line 381
    :catch_0
    move-exception v7

    .line 382
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    if-eqz v6, :cond_1

    .line 385
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 384
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    .line 385
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private getRecomendedPerson(II)Lcom/android/providers/media/FaceScanner$RecomendedPerson;
    .locals 12
    .param p1, "fr"    # I
    .param p2, "rawData"    # I

    .prologue
    const/4 v11, 0x1

    .line 292
    new-instance v6, Lcom/android/providers/media/FaceScanner$RecomendedPerson;

    const/4 v9, 0x0

    invoke-direct {v6, v11, v9}, Lcom/android/providers/media/FaceScanner$RecomendedPerson;-><init>(II)V

    .line 293
    .local v6, "recomendedPerson":Lcom/android/providers/media/FaceScanner$RecomendedPerson;
    const/4 v4, 0x0

    .line 294
    .local v4, "personCount":I
    const/4 v2, 0x0

    .line 295
    .local v2, "keyFaceCount":I
    const/4 v0, 0x0

    .line 296
    .local v0, "groupKey":I
    const/4 v7, 0x0

    .line 297
    .local v7, "score":I
    move v8, v7

    .line 298
    .local v8, "scoreMax":I
    const/16 v9, 0x14

    new-array v3, v9, [I

    .line 299
    .local v3, "keyFaceDataIndex":[I
    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->getRegisteredPersons()Ljava/util/ArrayList;

    move-result-object v5

    .line 300
    .local v5, "persons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_0

    .line 301
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 303
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 304
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    array-length v10, v3

    invoke-direct {p0, v9, v3, v10}, Lcom/android/providers/media/FaceScanner;->getKeyFaceDataIndex(I[II)I

    move-result v2

    .line 305
    invoke-static {p1, v3, v2, v11}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v0

    .line 306
    invoke-static {p1, p2, v0}, Lcom/android/providers/media/NativeApi;->faceGroupMatch(III)I

    move-result v7

    .line 307
    if-le v7, v8, :cond_1

    .line 308
    move v8, v7

    .line 309
    const/16 v9, 0x157c

    if-le v8, v9, :cond_1

    .line 310
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v6, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mPersonId:I

    .line 311
    iput v8, v6, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mScore:I

    .line 315
    :cond_1
    invoke-static {p1, v0}, Lcom/android/providers/media/NativeApi;->unLoadGroup(II)V

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    :cond_2
    return-object v6
.end method

.method private getRegisteredPersons()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    const/4 v8, 0x0

    .line 322
    .local v8, "personId":I
    iget-object v2, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 323
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 324
    .local v9, "registeredPerson":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v11, "select _id from persons where _id>1"

    .line 325
    .local v11, "sql":Ljava/lang/String;
    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_PERSON_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 326
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 328
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 329
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    .end local v9    # "registeredPerson":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v10, "registeredPerson":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 333
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    move-object v9, v10

    .line 339
    .end local v10    # "registeredPerson":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "registeredPerson":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    if-eqz v6, :cond_2

    .line 340
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_2
    :goto_0
    return-object v9

    .line 336
    :catch_0
    move-exception v7

    .line 337
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    if-eqz v6, :cond_2

    .line 340
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 339
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v6, :cond_3

    .line 340
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 339
    .end local v9    # "registeredPerson":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "registeredPerson":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v2

    move-object v9, v10

    .end local v10    # "registeredPerson":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "registeredPerson":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_2

    .line 336
    .end local v9    # "registeredPerson":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "registeredPerson":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v7

    move-object v9, v10

    .end local v10    # "registeredPerson":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "registeredPerson":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_1
.end method

.method private groupAndMatchFaces(I)V
    .locals 26
    .param p1, "fr"    # I

    .prologue
    .line 393
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v21, v0

    new-instance v22, Landroid/content/Intent;

    const-string v23, "com.android.media.FACE_AUTO_GROUP_STARTED"

    sget-object v24, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct/range {v22 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 394
    invoke-static/range {p1 .. p1}, Lcom/android/providers/media/NativeApi;->createGroups(I)V

    .line 395
    const/4 v9, 0x0

    .line 396
    .local v9, "groupKey":I
    const/4 v6, 0x0

    .line 397
    .local v6, "faceCount":I
    const/4 v7, 0x0

    .line 398
    .local v7, "faceId":I
    const/4 v15, 0x0

    .line 399
    .local v15, "personCount":I
    const/4 v14, 0x0

    .line 400
    .local v14, "maxScore":I
    const/16 v21, 0x1e

    move/from16 v0, v21

    new-array v13, v0, [I

    .line 401
    .local v13, "keyFaceDataIndex":[I
    const/4 v12, 0x0

    .line 402
    .local v12, "keyFaceCount":I
    const/16 v20, 0x0

    .line 403
    .local v20, "values":Landroid/content/ContentValues;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/media/NativeApi;->getGroupCount(I)I

    move-result v8

    .line 405
    .local v8, "groupCount":I
    if-lez v8, :cond_d

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 407
    .local v4, "cr":Landroid/content/ContentResolver;
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/FaceScanner;->getRegisteredPersons()Ljava/util/ArrayList;

    move-result-object v17

    .line 408
    .local v17, "persons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v17, :cond_0

    .line 409
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 411
    :cond_0
    if-lez v15, :cond_9

    .line 412
    filled-new-array {v15, v8}, [I

    move-result-object v21

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[I

    .line 413
    .local v19, "scores":[[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v15, :cond_2

    .line 414
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    array-length v0, v13

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v13, v2}, Lcom/android/providers/media/FaceScanner;->getKeyFaceDataIndex(I[II)I

    move-result v12

    .line 415
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v13, v12, v1}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v9

    .line 416
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v8, :cond_1

    .line 417
    aget-object v21, v19, v10

    move/from16 v0, p1

    invoke-static {v0, v9, v11}, Lcom/android/providers/media/NativeApi;->groupMatchEx(III)I

    move-result v22

    aput v22, v21, v11

    .line 416
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 419
    :cond_1
    move/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/providers/media/NativeApi;->unLoadGroup(II)V

    .line 413
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 421
    .end local v11    # "j":I
    :cond_2
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_2
    if-ge v11, v8, :cond_d

    .line 422
    const/4 v14, 0x0

    .line 423
    const/16 v16, 0x0

    .line 424
    .local v16, "personIndex":I
    const/16 v18, 0x1

    .line 425
    .local v18, "recomendPerson":I
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v15, :cond_4

    .line 426
    aget-object v21, v19, v10

    aget v21, v21, v11

    move/from16 v0, v21

    if-le v0, v14, :cond_3

    .line 427
    aget-object v21, v19, v10

    aget v14, v21, v11

    .line 428
    move/from16 v16, v10

    .line 425
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 432
    :cond_4
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 433
    move/from16 v0, p1

    invoke-static {v0, v11}, Lcom/android/providers/media/NativeApi;->getFaceCount(II)I

    move-result v6

    .line 434
    new-instance v20, Landroid/content/ContentValues;

    .end local v20    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 435
    .restart local v20    # "values":Landroid/content/ContentValues;
    const/16 v21, 0x157c

    move/from16 v0, v21

    if-le v14, v0, :cond_5

    .line 436
    const-string v21, "recommended_id"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    const-string v21, "similarity"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    :cond_5
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v6, v0, :cond_7

    .line 440
    const-string v21, "group_id"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mMaxGroupId:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/media/FaceScanner;->mMaxGroupId:I

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 444
    :goto_4
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v6, :cond_8

    .line 445
    move/from16 v0, p1

    invoke-static {v0, v11, v10}, Lcom/android/providers/media/NativeApi;->getFaceId(III)I

    move-result v7

    .line 446
    if-ltz v7, :cond_6

    .line 447
    sget-object v21, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    int-to-long v0, v7

    move-wide/from16 v22, v0

    invoke-static/range {v21 .. v23}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    const-string v22, "person_id=?"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 444
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 442
    :cond_7
    const-string v21, "auto_group"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 469
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "faceCount":I
    .end local v7    # "faceId":I
    .end local v8    # "groupCount":I
    .end local v9    # "groupKey":I
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v12    # "keyFaceCount":I
    .end local v13    # "keyFaceDataIndex":[I
    .end local v14    # "maxScore":I
    .end local v15    # "personCount":I
    .end local v16    # "personIndex":I
    .end local v17    # "persons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "recomendPerson":I
    .end local v19    # "scores":[[I
    .end local v20    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 470
    .local v5, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_1
    const-string v21, "FaceScanner"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "groupAndMatchFaces() - UnsupportedOperationException: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v5}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    invoke-static/range {p1 .. p1}, Lcom/android/providers/media/NativeApi;->destroyGroups(I)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v21, v0

    new-instance v22, Landroid/content/Intent;

    const-string v23, "com.android.media.FACE_AUTO_GROUP_FINISHED"

    sget-object v24, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct/range {v22 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 475
    .end local v5    # "e":Ljava/lang/UnsupportedOperationException;
    :goto_6
    return-void

    .line 421
    .restart local v4    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "faceCount":I
    .restart local v7    # "faceId":I
    .restart local v8    # "groupCount":I
    .restart local v9    # "groupKey":I
    .restart local v10    # "i":I
    .restart local v11    # "j":I
    .restart local v12    # "keyFaceCount":I
    .restart local v13    # "keyFaceDataIndex":[I
    .restart local v14    # "maxScore":I
    .restart local v15    # "personCount":I
    .restart local v16    # "personIndex":I
    .restart local v17    # "persons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v18    # "recomendPerson":I
    .restart local v19    # "scores":[[I
    .restart local v20    # "values":Landroid/content/ContentValues;
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 451
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v16    # "personIndex":I
    .end local v18    # "recomendPerson":I
    .end local v19    # "scores":[[I
    :cond_9
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_7
    if-ge v10, v8, :cond_d

    .line 452
    :try_start_2
    move/from16 v0, p1

    invoke-static {v0, v10}, Lcom/android/providers/media/NativeApi;->getFaceCount(II)I

    move-result v6

    .line 453
    const/4 v7, 0x0

    .line 454
    new-instance v20, Landroid/content/ContentValues;

    .end local v20    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 455
    .restart local v20    # "values":Landroid/content/ContentValues;
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v6, v0, :cond_b

    .line 456
    const-string v21, "group_id"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mMaxGroupId:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/media/FaceScanner;->mMaxGroupId:I

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    :goto_8
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_9
    if-ge v11, v6, :cond_c

    .line 461
    move/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/android/providers/media/NativeApi;->getFaceId(III)I

    move-result v7

    .line 462
    if-ltz v7, :cond_a

    .line 463
    sget-object v21, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    int-to-long v0, v7

    move-wide/from16 v22, v0

    invoke-static/range {v21 .. v23}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 460
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 458
    .end local v11    # "j":I
    :cond_b
    const-string v21, "auto_group"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    .line 472
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "faceCount":I
    .end local v7    # "faceId":I
    .end local v8    # "groupCount":I
    .end local v9    # "groupKey":I
    .end local v10    # "i":I
    .end local v12    # "keyFaceCount":I
    .end local v13    # "keyFaceDataIndex":[I
    .end local v14    # "maxScore":I
    .end local v15    # "personCount":I
    .end local v17    # "persons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v21

    invoke-static/range {p1 .. p1}, Lcom/android/providers/media/NativeApi;->destroyGroups(I)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v22, v0

    new-instance v23, Landroid/content/Intent;

    const-string v24, "com.android.media.FACE_AUTO_GROUP_FINISHED"

    sget-object v25, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct/range {v23 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v22 .. v23}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    throw v21

    .line 451
    .restart local v4    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "faceCount":I
    .restart local v7    # "faceId":I
    .restart local v8    # "groupCount":I
    .restart local v9    # "groupKey":I
    .restart local v10    # "i":I
    .restart local v11    # "j":I
    .restart local v12    # "keyFaceCount":I
    .restart local v13    # "keyFaceDataIndex":[I
    .restart local v14    # "maxScore":I
    .restart local v15    # "personCount":I
    .restart local v17    # "persons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v20    # "values":Landroid/content/ContentValues;
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 472
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v17    # "persons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/android/providers/media/NativeApi;->destroyGroups(I)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v21, v0

    new-instance v22, Landroid/content/Intent;

    const-string v23, "com.android.media.FACE_AUTO_GROUP_FINISHED"

    sget-object v24, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct/range {v22 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6
.end method

.method private isNeedToRestore()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 101
    const-string v2, "FaceScanner"

    const-string v3, "isNeedToRestore : start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 105
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v8, "select _id from backup"

    .line 106
    .local v8, "sql":Ljava/lang/String;
    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 108
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 109
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    if-eqz v6, :cond_0

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v2, v9

    .line 156
    :goto_0
    return v2

    .line 116
    :cond_1
    if-eqz v6, :cond_2

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_2
    :goto_1
    const-string v8, "select _id from faces where usable = 1"

    .line 122
    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 124
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 125
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_7

    .line 126
    :cond_3
    if-eqz v6, :cond_4

    .line 127
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    :cond_4
    if-eqz v6, :cond_5

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v2, v9

    goto :goto_0

    .line 113
    :catch_0
    move-exception v7

    .line 114
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    if-eqz v6, :cond_2

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 116
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_6

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    .line 134
    :cond_7
    if-eqz v6, :cond_8

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_8
    :goto_2
    const-string v8, "select _id from file where reusable = 1"

    .line 140
    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 142
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_3
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 143
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_d

    .line 144
    :cond_9
    if-eqz v6, :cond_a

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 152
    :cond_a
    if-eqz v6, :cond_b

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b
    move v2, v9

    goto :goto_0

    .line 131
    :catch_1
    move-exception v7

    .line 132
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 134
    if-eqz v6, :cond_8

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 134
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v6, :cond_c

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    .line 152
    :cond_d
    if-eqz v6, :cond_e

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_e
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 149
    :catch_2
    move-exception v7

    .line 150
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 152
    if-eqz v6, :cond_e

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 152
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    if-eqz v6, :cond_f

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v2
.end method

.method private loadFileList()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/media/FaceScanner$FileInfor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v11, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/media/FaceScanner$FileInfor;>;"
    iget-object v2, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 650
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 651
    .local v12, "id":I
    const/4 v9, 0x0

    .line 652
    .local v9, "fileInfo":Lcom/android/providers/media/FaceScanner$FileInfor;
    const/4 v7, 0x0

    .line 653
    .local v7, "data":Ljava/lang/String;
    const-string v13, "select _id, _data from files where media_type=1 and face_count=-1 order by scan_pri desc, date_modified desc limit 500"

    .line 654
    .local v13, "sql":Ljava/lang/String;
    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 655
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 657
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 658
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v10, v9

    .line 660
    .end local v9    # "fileInfo":Lcom/android/providers/media/FaceScanner$FileInfor;
    .local v10, "fileInfo":Lcom/android/providers/media/FaceScanner$FileInfor;
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 661
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 662
    new-instance v9, Lcom/android/providers/media/FaceScanner$FileInfor;

    invoke-direct {v9, v12, v7}, Lcom/android/providers/media/FaceScanner$FileInfor;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 663
    .end local v10    # "fileInfo":Lcom/android/providers/media/FaceScanner$FileInfor;
    .restart local v9    # "fileInfo":Lcom/android/providers/media/FaceScanner$FileInfor;
    :try_start_2
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 670
    :cond_1
    if-eqz v6, :cond_2

    .line 671
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 673
    :cond_2
    :goto_0
    return-object v11

    .line 667
    :catch_0
    move-exception v8

    .line 668
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 670
    if-eqz v6, :cond_2

    .line 671
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 670
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v6, :cond_3

    .line 671
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 670
    .end local v9    # "fileInfo":Lcom/android/providers/media/FaceScanner$FileInfor;
    .restart local v10    # "fileInfo":Lcom/android/providers/media/FaceScanner$FileInfor;
    :catchall_1
    move-exception v2

    move-object v9, v10

    .end local v10    # "fileInfo":Lcom/android/providers/media/FaceScanner$FileInfor;
    .restart local v9    # "fileInfo":Lcom/android/providers/media/FaceScanner$FileInfor;
    goto :goto_2

    .line 667
    .end local v9    # "fileInfo":Lcom/android/providers/media/FaceScanner$FileInfor;
    .restart local v10    # "fileInfo":Lcom/android/providers/media/FaceScanner$FileInfor;
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "fileInfo":Lcom/android/providers/media/FaceScanner$FileInfor;
    .restart local v9    # "fileInfo":Lcom/android/providers/media/FaceScanner$FileInfor;
    goto :goto_1
.end method

.method private loadGroupData(I)Ljava/util/ArrayList;
    .locals 13
    .param p1, "fr"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/media/FaceScanner$FaceGroupData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 587
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v8, "groupData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/media/FaceScanner$FaceGroupData;>;"
    const/4 v6, 0x0

    .line 589
    .local v6, "count":I
    const/4 v10, 0x0

    .line 590
    .local v10, "indexOfList":I
    iget-object v3, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v3}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 591
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "select _id, face_data from faces where auto_group=2 AND group_id=0 AND person_id=1 "

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 592
    .local v12, "sql":Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 593
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 595
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 596
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 597
    const-string v2, "FaceScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadGroupData() :: count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v9, 0x0

    .line 601
    .local v9, "i":I
    :cond_0
    if-nez v9, :cond_2

    .line 602
    const/16 v11, 0x12c

    .line 603
    .local v11, "newCount":I
    div-int/lit16 v2, v6, 0x12c

    if-nez v2, :cond_1

    .line 604
    move v11, v6

    .line 606
    :cond_1
    new-instance v2, Lcom/android/providers/media/FaceScanner$FaceGroupData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/providers/media/FaceScanner$FaceGroupData;-><init>(Lcom/android/providers/media/FaceScanner$1;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/media/FaceScanner$FaceGroupData;

    new-array v3, v11, [I

    iput-object v3, v2, Lcom/android/providers/media/FaceScanner$FaceGroupData;->mFaceIds:[I

    .line 608
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/media/FaceScanner$FaceGroupData;

    new-array v3, v11, [I

    iput-object v3, v2, Lcom/android/providers/media/FaceScanner$FaceGroupData;->mFaceDataIndexs:[I

    .line 609
    const-string v2, "FaceScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadGroupData() :: newCount ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .end local v11    # "newCount":I
    :cond_2
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/media/FaceScanner$FaceGroupData;

    iget-object v2, v2, Lcom/android/providers/media/FaceScanner$FaceGroupData;->mFaceIds:[I

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v2, v9

    .line 613
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/media/FaceScanner$FaceGroupData;

    iget-object v2, v2, Lcom/android/providers/media/FaceScanner$FaceGroupData;->mFaceDataIndexs:[I

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v2, v9

    .line 614
    add-int/lit8 v9, v9, 0x1

    .line 615
    rem-int/lit16 v2, v9, 0x12c

    if-nez v2, :cond_3

    .line 616
    const/4 v9, 0x0

    .line 617
    add-int/lit8 v10, v10, 0x1

    .line 618
    add-int/lit16 v6, v6, -0x12c

    .line 620
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 623
    .end local v9    # "i":I
    :cond_4
    if-eqz v7, :cond_5

    .line 624
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 626
    :cond_5
    return-object v8

    .line 623
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_6

    .line 624
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method private removeFaceByFileId(Landroid/content/ContentResolver;I)V
    .locals 15
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "fileId"    # I

    .prologue
    .line 228
    const/4 v9, 0x0

    .line 229
    .local v9, "faceData":[I
    const/4 v10, 0x0

    .line 230
    .local v10, "faceFile":Ljava/lang/String;
    const/4 v12, 0x0

    .line 231
    .local v12, "i":I
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "select face_data from faces where image_id=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 232
    .local v14, "sql":Ljava/lang/String;
    sget-object v0, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 233
    .local v1, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 235
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 236
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 238
    .local v6, "count":I
    new-array v9, v6, [I

    move v13, v12

    .line 240
    .end local v12    # "i":I
    .local v13, "i":I
    :goto_0
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "i":I
    .restart local v12    # "i":I
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v9, v13

    .line 241
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 247
    .end local v6    # "count":I
    :cond_0
    if-eqz v7, :cond_1

    .line 248
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_1
    :goto_1
    if-eqz v9, :cond_4

    .line 251
    const/4 v11, 0x0

    .line 252
    .local v11, "file":Ljava/io/File;
    const/4 v12, 0x0

    :goto_2
    array-length v0, v9

    if-ge v12, v0, :cond_4

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/providers/media/ContentApp;->mFaceDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v9, v12

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 254
    new-instance v11, Ljava/io/File;

    .end local v11    # "file":Ljava/io/File;
    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .restart local v11    # "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 252
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 244
    .end local v11    # "file":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 245
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    if-eqz v7, :cond_1

    .line 248
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 247
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 248
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 260
    :cond_4
    return-void

    .restart local v6    # "count":I
    :cond_5
    move v13, v12

    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_0
.end method

.method private resetFileFaceInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 270
    const-string v3, "FaceScanner"

    const-string v4, "resetFileFaceInfo : start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v1, "update files set face_count = -1 where _id in (select t1._id from files as t1 left outer join (select image_id, count() as count from faces where usable = 0 group by image_id) as t2 on t1._id = t2.image_id where count isnull and t1.face_count > 0 and t1.media_type=1)"

    .line 276
    .local v1, "sql":Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 278
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v3}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 279
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 280
    const-string v3, "FaceScanner"

    const-string v4, "resetFileFaceInfo : end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method


# virtual methods
.method public declared-synchronized addCategoryPeople(I)V
    .locals 11
    .param p1, "id"    # I

    .prologue
    .line 950
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v8}, Lcom/android/providers/media/ContentApp;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/providers/media/FaceValue;->isEmergencyMode(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 989
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 953
    :cond_1
    if-ltz p1, :cond_4

    .line 954
    :try_start_1
    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->categoryMediaIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    :cond_2
    if-ltz p1, :cond_3

    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->categoryMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0x32

    if-lt v8, v9, :cond_0

    .line 960
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 961
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->categoryMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 962
    .local v5, "mediaid":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://media/external/file/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 950
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "mediaid":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 955
    :cond_4
    :try_start_2
    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->categoryMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    .line 966
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.dcm.action.DCM_EXECUTE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 967
    .local v7, "updateIntent":Landroid/content/Intent;
    const-string v8, "com.samsung.dcm"

    const-string v9, "com.samsung.dcm.framework.FrameworkService"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 968
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 969
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v8, "operation"

    const-string v9, "update"

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string v8, "origin"

    const-string v9, "com.android.providers.media.FaceScanner"

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .local v6, "sceneType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "People"

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 976
    .local v1, "data":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 977
    .local v2, "fields":Landroid/os/Bundle;
    const-string v8, "OSC_SCENETYPE_TO_BE_ADDED"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 978
    const-string v8, "fields"

    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 980
    const-string v8, "ids"

    invoke-virtual {v1, v8, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 981
    const-string v8, "data"

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 982
    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 983
    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v8}, Lcom/android/providers/media/ContentApp;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 984
    const-string v8, "FaceScanner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/providers/media/FaceScanner;->categoryMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " new people category images are added to DCM."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->categoryMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized addNotifyFaceScanProgress(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 994
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v4}, Lcom/android/providers/media/ContentApp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/media/FaceValue;->isEmergencyMode(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1017
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 998
    :cond_1
    if-ltz p1, :cond_4

    .line 999
    :try_start_1
    iget-object v4, p0, Lcom/android/providers/media/FaceScanner;->faceScannedMediaIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    :cond_2
    if-ltz p1, :cond_3

    iget-object v4, p0, Lcom/android/providers/media/FaceScanner;->faceScannedMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x32

    if-lt v4, v5, :cond_0

    .line 1005
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    .local v3, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/providers/media/FaceScanner;->faceScannedMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1007
    .local v2, "mediaid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://media/external/face_scanning_progress/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 994
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "mediaid":I
    .end local v3    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1000
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/android/providers/media/FaceScanner;->faceScannedMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 1010
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.media.FACE_SCANNER_PROGRESS"

    sget-object v5, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1011
    .local v1, "intentFSProgress":Landroid/content/Intent;
    const-string v4, "uris"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1012
    iget-object v4, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v4, v1}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 1013
    const-string v4, "FaceScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/providers/media/FaceScanner;->faceScannedMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " files has done Face Scanning."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v4, p0, Lcom/android/providers/media/FaceScanner;->faceScannedMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected faceGroup(ILcom/android/providers/media/FaceScanner$FaceGroupData;)V
    .locals 3
    .param p1, "fr"    # I
    .param p2, "groupData"    # Lcom/android/providers/media/FaceScanner$FaceGroupData;

    .prologue
    .line 577
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/providers/media/FaceScanner$FaceGroupData;->mFaceIds:[I

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/providers/media/FaceScanner$FaceGroupData;->mFaceIds:[I

    array-length v0, v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    .line 578
    :cond_0
    const-string v0, "FaceScanner"

    const-string v1, "faceGroup() is return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-object v0, p2, Lcom/android/providers/media/FaceScanner$FaceGroupData;->mFaceIds:[I

    iget-object v1, p2, Lcom/android/providers/media/FaceScanner$FaceGroupData;->mFaceDataIndexs:[I

    iget-object v2, p2, Lcom/android/providers/media/FaceScanner$FaceGroupData;->mFaceIds:[I

    array-length v2, v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/providers/media/NativeApi;->prepareUngroupedData(I[I[II)V

    .line 582
    invoke-direct {p0, p1}, Lcom/android/providers/media/FaceScanner;->groupAndMatchFaces(I)V

    goto :goto_0
.end method

.method protected restore()V
    .locals 11

    .prologue
    .line 44
    const/4 v9, 0x0

    .line 45
    .local v9, "image_id_faces":I
    const/4 v8, 0x0

    .line 47
    .local v8, "id_files":I
    iget-object v2, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 48
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v10, "select A.image_id, B.[_id] from (select * from faces where usable = 1) A inner join (select * from files where reusable = 1 ) B on A.data = B._data"

    .line 49
    .local v10, "sql":Ljava/lang/String;
    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 50
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 52
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 53
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 56
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 57
    invoke-virtual {p0, v9, v8}, Lcom/android/providers/media/FaceScanner;->updateNewImageID(II)Z

    .line 59
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 64
    :cond_1
    if-eqz v6, :cond_2

    .line 65
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_2
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v7

    .line 62
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    if-eqz v6, :cond_2

    .line 65
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 64
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_3

    .line 65
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method protected scanFile(IILjava/lang/String;)I
    .locals 22
    .param p1, "fr"    # I
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 487
    const/4 v7, 0x0

    .line 488
    .local v7, "faceCount":I
    const/4 v8, 0x0

    .line 489
    .local v8, "faceDataIndex":I
    const/16 v17, 0x0

    .line 490
    .local v17, "uri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 491
    .local v12, "rawData":I
    const/4 v11, 0x0

    .line 492
    .local v11, "left":I
    const/16 v16, 0x0

    .line 493
    .local v16, "top":I
    const/4 v14, 0x0

    .line 494
    .local v14, "right":I
    const/4 v4, 0x0

    .line 495
    .local v4, "bottom":I
    const/4 v15, 0x0

    .line 496
    .local v15, "size":I
    const/4 v9, 0x0

    .line 497
    .local v9, "hasFeature":Z
    const/4 v13, 0x0

    .line 499
    .local v13, "recomendedPerson":Lcom/android/providers/media/FaceScanner$RecomendedPerson;
    move/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/providers/media/NativeApi;->faceDetect(ILjava/lang/String;)I

    move-result v7

    .line 500
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_2

    .line 501
    move/from16 v0, p1

    invoke-static {v0, v10}, Lcom/android/providers/media/NativeApi;->getFaceLeft(II)I

    move-result v11

    .line 502
    move/from16 v0, p1

    invoke-static {v0, v10}, Lcom/android/providers/media/NativeApi;->getFaceTop(II)I

    move-result v16

    .line 503
    move/from16 v0, p1

    invoke-static {v0, v10}, Lcom/android/providers/media/NativeApi;->getFaceRight(II)I

    move-result v14

    .line 504
    move/from16 v0, p1

    invoke-static {v0, v10}, Lcom/android/providers/media/NativeApi;->getFaceBottom(II)I

    move-result v4

    .line 505
    const/4 v9, 0x0

    .line 506
    const/4 v12, 0x0

    .line 507
    sub-int v15, v14, v11

    .line 508
    move/from16 v0, p1

    invoke-static {v0, v10}, Lcom/android/providers/media/NativeApi;->generateFaceData(II)Z

    move-result v9

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 510
    .local v5, "cr":Landroid/content/ContentResolver;
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 512
    .local v18, "values":Landroid/content/ContentValues;
    const-string v19, "image_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 513
    const-string v19, "person_id"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 514
    const-string v19, "recommended_id"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 515
    const-string v19, "group_id"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 516
    const-string v19, "pos_left"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 517
    const-string v19, "pos_top"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 518
    const-string v19, "pos_right"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    const-string v19, "pos_bottom"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 520
    const-string v19, "data"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v19, "usable"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 523
    monitor-enter p0

    .line 525
    if-eqz v9, :cond_1

    .line 526
    :try_start_0
    sget-object v19, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/providers/media/ContentApp;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/providers/media/NativeApi;->getFaceFreeDataIndex(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v8

    .line 527
    const-string v19, "face_data"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 528
    const/16 v19, 0x64

    move/from16 v0, v19

    if-lt v15, v0, :cond_0

    .line 530
    invoke-static/range {p1 .. p1}, Lcom/android/providers/media/NativeApi;->getRawData(I)I

    move-result v12

    .line 531
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/providers/media/FaceScanner;->getRecomendedPerson(II)Lcom/android/providers/media/FaceScanner$RecomendedPerson;

    move-result-object v13

    .line 532
    const-string v19, "auto_group"

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 533
    const-string v19, "recommended_id"

    iget v0, v13, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mPersonId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 534
    const-string v19, "similarity"

    iget v0, v13, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mScore:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 540
    :cond_0
    :goto_1
    move/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/providers/media/NativeApi;->saveFace(II)V

    .line 541
    sget-object v19, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .line 542
    monitor-exit p0

    .line 500
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 537
    :cond_1
    sget-object v19, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/providers/media/ContentApp;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/providers/media/NativeApi;->getFaceFreeDataIndexNoFeature(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v8

    .line 538
    const-string v19, "face_data"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 542
    :catchall_0
    move-exception v19

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 544
    .end local v5    # "cr":Landroid/content/ContentResolver;
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/providers/media/NativeApi;->faceDetectRelease(I)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 547
    .restart local v5    # "cr":Landroid/content/ContentResolver;
    sget-object v19, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v19

    sget-object v20, Lcom/android/providers/media/Columns;->IGNORE_NOTIFY:Ljava/lang/String;

    const-string v21, "true"

    invoke-virtual/range {v19 .. v21}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    .line 548
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 549
    .restart local v18    # "values":Landroid/content/ContentValues;
    const-string v19, "face_count"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 550
    const-string v19, "scan_pri"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    const/16 v19, 0x0

    const/16 v20, 0x0

    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    .line 557
    :goto_2
    return v7

    .line 553
    :catch_0
    move-exception v6

    .line 554
    .local v6, "dbfull":Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_2
.end method

.method protected scanSingleFile(ILjava/lang/String;)V
    .locals 13
    .param p1, "id"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 678
    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    if-eqz v8, :cond_0

    sget v8, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    if-nez v8, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    const/4 v7, 0x0

    .line 682
    .local v7, "newInfo":Lcom/android/providers/media/FaceScanner$FileInfor;
    const/4 v0, 0x0

    .line 684
    .local v0, "IsNeedGrouping":Z
    sget-object v8, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    if-nez v8, :cond_5

    .line 685
    new-instance v7, Lcom/android/providers/media/FaceScanner$FileInfor;

    .end local v7    # "newInfo":Lcom/android/providers/media/FaceScanner$FileInfor;
    invoke-direct {v7, p1, p2}, Lcom/android/providers/media/FaceScanner$FileInfor;-><init>(ILjava/lang/String;)V

    .line 686
    .restart local v7    # "newInfo":Lcom/android/providers/media/FaceScanner$FileInfor;
    iput v10, v7, Lcom/android/providers/media/FaceScanner$FileInfor;->mState:I

    .line 687
    const/4 v0, 0x1

    .line 713
    :goto_1
    sget v8, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    invoke-static {v8, v11, v11}, Lcom/android/providers/media/NativeApi;->createFR(III)I

    move-result v3

    .line 715
    .local v3, "fr_scan":I
    const/16 v8, 0x190

    invoke-static {v3, v8}, Lcom/android/providers/media/NativeApi;->setFaceThumbnaislSize(II)V

    .line 717
    iget v8, v7, Lcom/android/providers/media/FaceScanner$FileInfor;->mId:I

    iget-object v9, v7, Lcom/android/providers/media/FaceScanner$FileInfor;->mData:Ljava/lang/String;

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/providers/media/FaceScanner;->scanFile(IILjava/lang/String;)I

    move-result v1

    .line 718
    .local v1, "face_count":I
    if-lez v1, :cond_2

    invoke-static {}, Lcom/android/providers/media/FaceValue;->IsUseDCM()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 719
    iget v8, v7, Lcom/android/providers/media/FaceScanner$FileInfor;->mId:I

    invoke-virtual {p0, v8}, Lcom/android/providers/media/FaceScanner;->addCategoryPeople(I)V

    .line 721
    :cond_2
    iget v8, v7, Lcom/android/providers/media/FaceScanner$FileInfor;->mId:I

    invoke-virtual {p0, v8}, Lcom/android/providers/media/FaceScanner;->addNotifyFaceScanProgress(I)V

    .line 722
    invoke-virtual {p0, v12}, Lcom/android/providers/media/FaceScanner;->addCategoryPeople(I)V

    .line 723
    invoke-virtual {p0, v12}, Lcom/android/providers/media/FaceScanner;->addNotifyFaceScanProgress(I)V

    .line 724
    const/4 v8, 0x2

    iput v8, v7, Lcom/android/providers/media/FaceScanner$FileInfor;->mState:I

    .line 726
    if-eqz v3, :cond_3

    .line 727
    invoke-static {v3}, Lcom/android/providers/media/NativeApi;->destroyFR(I)V

    .line 728
    const/4 v3, 0x0

    .line 732
    :cond_3
    if-eqz v0, :cond_0

    .line 733
    sget v8, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    const/16 v9, 0x12c

    invoke-static {v8, v10, v9}, Lcom/android/providers/media/NativeApi;->createFR(III)I

    move-result v2

    .line 735
    .local v2, "fr_load":I
    invoke-direct {p0, v2}, Lcom/android/providers/media/FaceScanner;->loadGroupData(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 737
    .local v4, "groupData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/media/FaceScanner$FaceGroupData;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v10, :cond_4

    .line 738
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/providers/media/FaceScanner$FaceGroupData;

    invoke-virtual {p0, v2, v8}, Lcom/android/providers/media/FaceScanner;->faceGroup(ILcom/android/providers/media/FaceScanner$FaceGroupData;)V

    .line 740
    :cond_4
    if-eqz v2, :cond_0

    .line 741
    invoke-static {v2}, Lcom/android/providers/media/NativeApi;->destroyFR(I)V

    goto :goto_0

    .line 690
    .end local v1    # "face_count":I
    .end local v2    # "fr_load":I
    .end local v3    # "fr_scan":I
    .end local v4    # "groupData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/media/FaceScanner$FaceGroupData;>;"
    :cond_5
    sget-object v8, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/providers/media/FaceScanner$FileInfor;

    .line 691
    .local v6, "info":Lcom/android/providers/media/FaceScanner$FileInfor;
    iget v8, v6, Lcom/android/providers/media/FaceScanner$FileInfor;->mId:I

    if-ne v8, p1, :cond_6

    .line 692
    move-object v7, v6

    goto :goto_2

    .line 696
    .end local v6    # "info":Lcom/android/providers/media/FaceScanner$FileInfor;
    :cond_7
    if-nez v7, :cond_8

    .line 697
    new-instance v7, Lcom/android/providers/media/FaceScanner$FileInfor;

    .end local v7    # "newInfo":Lcom/android/providers/media/FaceScanner$FileInfor;
    invoke-direct {v7, p1, p2}, Lcom/android/providers/media/FaceScanner$FileInfor;-><init>(ILjava/lang/String;)V

    .line 698
    .restart local v7    # "newInfo":Lcom/android/providers/media/FaceScanner$FileInfor;
    iput v10, v7, Lcom/android/providers/media/FaceScanner$FileInfor;->mState:I

    .line 699
    const/4 v0, 0x1

    goto :goto_1

    .line 702
    :cond_8
    sget-object v9, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    monitor-enter v9

    .line 704
    :try_start_0
    iget v8, v7, Lcom/android/providers/media/FaceScanner$FileInfor;->mState:I

    if-eqz v8, :cond_9

    .line 705
    monitor-exit v9

    goto/16 :goto_0

    .line 708
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 707
    :cond_9
    const/4 v8, 0x1

    :try_start_1
    iput v8, v7, Lcom/android/providers/media/FaceScanner$FileInfor;->mState:I

    .line 708
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method protected setUnusable()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 88
    const-string v3, "FaceScanner"

    const-string v4, "setUnusable FINISHED_TYPE_REMOVE_MMC+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "usable"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    iget-object v3, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v3}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 93
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v3, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    const-string v4, "data LIKE ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "/storage/extSdCard%"

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    const-string v3, "FaceScanner"

    const-string v4, "setUnusable FINISHED_TYPE_REMOVE_MMC-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sleep(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 749
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected sync(I)V
    .locals 12
    .param p1, "type"    # I

    .prologue
    .line 756
    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    if-eqz v8, :cond_0

    sget v8, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    if-nez v8, :cond_1

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    const/4 v8, 0x2

    if-ne p1, v8, :cond_5

    .line 760
    invoke-virtual {p0}, Lcom/android/providers/media/FaceScanner;->setUnusable()V

    .line 774
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->getNewGroupId()I

    move-result v8

    iput v8, p0, Lcom/android/providers/media/FaceScanner;->mMaxGroupId:I

    .line 776
    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->loadFileList()Ljava/util/ArrayList;

    move-result-object v8

    sput-object v8, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    .line 778
    sget-object v8, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 782
    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.media.FACE_SCANNER_STARTED"

    sget-object v11, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 786
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getNumProcs()I

    move-result v7

    .line 788
    .local v7, "numProcs":I
    invoke-static {}, Lcom/android/providers/media/FaceValue;->getMaxThreadNum()I

    move-result v8

    if-eqz v8, :cond_3

    .line 789
    invoke-static {}, Lcom/android/providers/media/FaceValue;->getMaxThreadNum()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/javaomp/runtime/OMP;->setNumThreads(I)V

    .line 792
    :cond_3
    new-instance v0, Lcom/android/providers/media/FaceScanner$__ompClass0;

    invoke-direct {v0, p0}, Lcom/android/providers/media/FaceScanner$__ompClass0;-><init>(Lcom/android/providers/media/FaceScanner;)V

    .line 793
    .local v0, "__ompVar0":Lcom/android/providers/media/FaceScanner$__ompClass0;
    const/4 v8, 0x2

    if-le v7, v8, :cond_7

    invoke-static {}, Lcom/android/providers/media/FaceValue;->IsUseOpenMP()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    :goto_2
    invoke-static {v0, v8}, Lcom/samsung/javaomp/runtime/OMP;->__if(Lcom/samsung/javaomp/runtime/__OMPWorkItem;Z)V

    .line 794
    invoke-static {v0}, Lcom/samsung/javaomp/runtime/OMP;->__doParallel(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V

    .line 800
    sget-object v8, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    .line 801
    sget-object v8, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 802
    const/4 v8, 0x0

    sput-object v8, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    .line 805
    :cond_4
    sget-boolean v8, Lcom/android/providers/media/ContentApp;->mStopScan:Z

    if-eqz v8, :cond_8

    .line 806
    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.media.FACE_SCANNER_STOPPED"

    sget-object v11, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 762
    .end local v0    # "__ompVar0":Lcom/android/providers/media/FaceScanner$__ompClass0;
    .end local v7    # "numProcs":I
    :cond_5
    const/4 v1, 0x0

    .line 763
    .local v1, "count":I
    invoke-direct {p0, p1}, Lcom/android/providers/media/FaceScanner;->getInvalidFileList(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 765
    .local v6, "invalidFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_2

    .line 766
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 767
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v1, :cond_6

    .line 768
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/providers/media/FaceScanner;->deleteInvalidFile(I)I

    .line 767
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 770
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 793
    .end local v1    # "count":I
    .end local v5    # "i":I
    .end local v6    # "invalidFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v0    # "__ompVar0":Lcom/android/providers/media/FaceScanner$__ompClass0;
    .restart local v7    # "numProcs":I
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 813
    :cond_8
    sget v8, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    const/4 v9, 0x1

    const/16 v10, 0x12c

    invoke-static {v8, v9, v10}, Lcom/android/providers/media/NativeApi;->createFR(III)I

    move-result v3

    .line 814
    .local v3, "fr_load":I
    invoke-direct {p0, v3}, Lcom/android/providers/media/FaceScanner;->loadGroupData(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 816
    .local v4, "groupData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/media/FaceScanner$FaceGroupData;>;"
    const-string v8, "FaceScanner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scan groupData.size():"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_a

    .line 819
    if-eqz v3, :cond_9

    .line 820
    invoke-static {v3}, Lcom/android/providers/media/NativeApi;->destroyFR(I)V

    .line 821
    const/4 v3, 0x0

    .line 861
    :cond_9
    :goto_4
    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.media.FACE_AUTO_GROUP_FINISHED"

    sget-object v11, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 864
    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.media.FACE_SCANNER_FINISHED"

    sget-object v11, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 823
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 824
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/providers/media/FaceScanner$FaceGroupData;

    invoke-virtual {p0, v3, v8}, Lcom/android/providers/media/FaceScanner;->faceGroup(ILcom/android/providers/media/FaceScanner$FaceGroupData;)V

    .line 826
    if-eqz v3, :cond_9

    .line 827
    invoke-static {v3}, Lcom/android/providers/media/NativeApi;->destroyFR(I)V

    .line 828
    const/4 v3, 0x0

    goto :goto_4

    .line 831
    :cond_b
    if-eqz v3, :cond_c

    .line 832
    invoke-static {v3}, Lcom/android/providers/media/NativeApi;->destroyFR(I)V

    .line 833
    const/4 v3, 0x0

    .line 838
    :cond_c
    sget v8, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    const/4 v9, 0x1

    const/16 v10, 0x12c

    invoke-static {v8, v9, v10}, Lcom/android/providers/media/NativeApi;->createFR(III)I

    move-result v2

    .line 840
    .local v2, "fr_group":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_d

    .line 841
    const-string v8, "FaceScanner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "faceGroup() is called. groupDate["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    sget-boolean v8, Lcom/android/providers/media/ContentApp;->mStopScan:Z

    if-eqz v8, :cond_f

    .line 843
    const-string v8, "FaceScanner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "group 1 ( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ) break "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_d
    if-eqz v2, :cond_e

    .line 850
    invoke-static {v2}, Lcom/android/providers/media/NativeApi;->destroyFR(I)V

    .line 855
    :cond_e
    sget-boolean v8, Lcom/android/providers/media/ContentApp;->mStopScan:Z

    if-eqz v8, :cond_9

    .line 856
    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.media.FACE_SCANNER_STOPPED"

    sget-object v11, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 846
    :cond_f
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/providers/media/FaceScanner$FaceGroupData;

    invoke-virtual {p0, v2, v8}, Lcom/android/providers/media/FaceScanner;->faceGroup(ILcom/android/providers/media/FaceScanner$FaceGroupData;)V

    .line 840
    add-int/lit8 v5, v5, 0x1

    goto :goto_5
.end method

.method public updateNewImageID(II)Z
    .locals 10
    .param p1, "oldId"    # I
    .param p2, "newId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 70
    iget-object v6, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v6}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 71
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v3, "values":Landroid/content/ContentValues;
    if-eq p1, p2, :cond_0

    .line 73
    const-string v6, "FaceScanner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "face restore - update oldId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v6, "image_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    :cond_0
    const-string v6, "usable"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string v2, "image_id = ?"

    .line 79
    .local v2, "selection":Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v3, v2, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return v4

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v5

    .line 82
    goto :goto_0
.end method
