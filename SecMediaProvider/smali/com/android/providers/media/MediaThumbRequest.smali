.class Lcom/android/providers/media/MediaThumbRequest;
.super Ljava/lang/Object;
.source "MediaThumbRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MediaThumbRequest$State;
    }
.end annotation


# static fields
.field static final PRIORITY_CRITICAL:I = 0x0

.field static final PRIORITY_HIGH:I = 0x5

.field static final PRIORITY_LOW:I = 0x14

.field static final PRIORITY_NORMAL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "MediaThumbRequest"

.field private static final THUMB_PROJECTION:[Ljava/lang/String;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field mCallingPid:I

.field mCr:Landroid/content/ContentResolver;

.field mGroupId:J

.field mIsVideo:Z

.field mMagic:J

.field mOrigColumnName:Ljava/lang/String;

.field mOrigId:J

.field mPath:Ljava/lang/String;

.field mPriority:I

.field mRequestTime:J

.field mState:Lcom/android/providers/media/MediaThumbRequest$State;

.field mThumbUri:Landroid/net/Uri;

.field mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaThumbRequest;->THUMB_PROJECTION:[Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaThumbRequest;->sRandom:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;IJ)V
    .locals 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "priority"    # I
    .param p5, "magic"    # J

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/media/MediaThumbRequest;->mRequestTime:J

    .line 70
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mCallingPid:I

    .line 78
    sget-object v1, Lcom/android/providers/media/MediaThumbRequest$State;->WAIT:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 96
    iput-object p1, p0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    .line 97
    iput-object p2, p0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    .line 98
    iput p4, p0, Lcom/android/providers/media/MediaThumbRequest;->mPriority:I

    .line 99
    iput-wide p5, p0, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J

    .line 100
    iput-object p3, p0, Lcom/android/providers/media/MediaThumbRequest;->mUri:Landroid/net/Uri;

    .line 101
    const-string v1, "video"

    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    .line 102
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    .line 103
    iget-boolean v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    iput-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    .line 106
    iget-boolean v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    if-eqz v1, :cond_2

    const-string v1, "video_id"

    :goto_1
    iput-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigColumnName:Ljava/lang/String;

    .line 111
    const-string v1, "group_id"

    invoke-virtual {p3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "groupIdParam":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 113
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/media/MediaThumbRequest;->mGroupId:J

    .line 115
    :cond_0
    return-void

    .line 103
    .end local v0    # "groupIdParam":Ljava/lang/String;
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 106
    :cond_2
    const-string v1, "image_id"

    goto :goto_1
.end method

.method static getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/providers/media/MediaThumbRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/android/providers/media/MediaThumbRequest$1;

    invoke-direct {v0}, Lcom/android/providers/media/MediaThumbRequest$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method execute()V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/media/MiniThumbFile;->instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;

    move-result-object v22

    .line 153
    .local v22, "miniThumbFile":Landroid/media/MiniThumbFile;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J

    move-wide/from16 v20, v0

    .line 154
    .local v20, "magic":J
    const-wide/16 v4, 0x0

    cmp-long v2, v20, v4

    if-eqz v2, :cond_5

    .line 155
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v14

    .line 156
    .local v14, "fileMagic":J
    cmp-long v2, v14, v20

    if-nez v2, :cond_5

    .line 157
    const/4 v9, 0x0

    .line 158
    .local v9, "c":Landroid/database/Cursor;
    const/16 v23, 0x0

    .line 160
    .local v23, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 162
    .local v16, "identity":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/media/MediaThumbRequest;->THUMB_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mOrigColumnName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v27, " = "

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 164
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v23

    .line 171
    :cond_0
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_1
    if-eqz v23, :cond_5

    .line 174
    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V

    move-wide/from16 v6, v20

    .line 266
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v14    # "fileMagic":J
    .end local v16    # "identity":J
    .end local v20    # "magic":J
    .end local v23    # "pfd":Landroid/os/ParcelFileDescriptor;
    .local v6, "magic":J
    :goto_0
    return-void

    .line 168
    .end local v6    # "magic":J
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v14    # "fileMagic":J
    .restart local v16    # "identity":J
    .restart local v20    # "magic":J
    .restart local v23    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v2

    .line 171
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_2
    if-eqz v23, :cond_5

    .line 174
    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V

    move-wide/from16 v6, v20

    .line 175
    .end local v20    # "magic":J
    .restart local v6    # "magic":J
    goto :goto_0

    .line 171
    .end local v6    # "magic":J
    .restart local v20    # "magic":J
    :catchall_0
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_3
    if-eqz v23, :cond_4

    .line 174
    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V

    move-wide/from16 v6, v20

    .line 175
    .end local v20    # "magic":J
    .restart local v6    # "magic":J
    goto :goto_0

    .end local v6    # "magic":J
    .restart local v20    # "magic":J
    :cond_4
    throw v2

    .line 184
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v14    # "fileMagic":J
    .end local v16    # "identity":J
    .end local v23    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_5
    const/4 v8, 0x0

    .line 186
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 187
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    if-eqz v2, :cond_6

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 194
    :goto_1
    if-nez v8, :cond_7

    .line 195
    const-string v2, "MediaThumbRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t create mini thumbnail for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v6, v20

    .line 196
    .end local v20    # "magic":J
    .restart local v6    # "magic":J
    goto :goto_0

    .line 191
    .end local v6    # "magic":J
    .restart local v20    # "magic":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_1

    .line 199
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/providers/media/MediaThumbRequest;->updateDatabase(Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v25

    .line 200
    .local v25, "uri":Landroid/net/Uri;
    if-eqz v25, :cond_8

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v24

    .line 202
    .local v24, "thumbOut":Ljava/io/OutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    move-object/from16 v0, v24

    invoke-virtual {v8, v2, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 203
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V

    .line 207
    .end local v24    # "thumbOut":Ljava/io/OutputStream;
    .end local v25    # "uri":Landroid/net/Uri;
    :cond_8
    const/16 v2, 0x60

    const/16 v4, 0x60

    const/4 v5, 0x2

    invoke-static {v8, v2, v4, v5}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 212
    if-eqz v8, :cond_c

    .line 213
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 214
    .local v19, "miniOutStream":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    move-object/from16 v0, v19

    invoke-virtual {v8, v2, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 215
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    const/4 v3, 0x0

    .line 219
    .local v3, "data":[B
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 220
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 229
    :goto_2
    if-eqz v3, :cond_d

    move-wide/from16 v6, v20

    .line 232
    .end local v20    # "magic":J
    .restart local v6    # "magic":J
    :cond_9
    sget-object v2, Lcom/android/providers/media/MediaThumbRequest;->sRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    .line 233
    const-wide/16 v4, 0x0

    cmp-long v2, v6, v4

    if-eqz v2, :cond_9

    .line 235
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 237
    :try_start_2
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v13, "file":Ljava/io/File;
    invoke-static {v13}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 239
    invoke-static {}, Lcom/sec/enterprise/knox/dlp/XattrManager;->getXattrManager()Lcom/sec/enterprise/knox/dlp/XattrManager;

    move-result-object v10

    .line 240
    .local v10, "dlp":Lcom/sec/enterprise/knox/dlp/XattrManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/sec/enterprise/knox/dlp/XattrManager;->isDLPFile(Ljava/lang/String;)Z

    move-result v18

    .line 241
    .local v18, "isDLP":Z
    if-nez v18, :cond_a

    .line 242
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    move-object/from16 v2, v22

    invoke-virtual/range {v2 .. v7}, Landroid/media/MiniThumbFile;->saveMiniThumbToFile([BJJ)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 252
    .end local v10    # "dlp":Lcom/sec/enterprise/knox/dlp/XattrManager;
    .end local v13    # "file":Ljava/io/File;
    .end local v18    # "isDLP":Z
    :cond_a
    :goto_3
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 254
    .local v26, "values":Landroid/content/ContentValues;
    const-string v2, "mini_thumb_magic"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 256
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaThumbRequest;->mUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v2, v4, v0, v5, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 257
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 265
    .end local v3    # "data":[B
    .end local v19    # "miniOutStream":Ljava/io/ByteArrayOutputStream;
    .end local v26    # "values":Landroid/content/ContentValues;
    :goto_4
    invoke-virtual/range {v22 .. v22}, Landroid/media/MiniThumbFile;->deactivate()V

    goto/16 :goto_0

    .line 221
    .end local v6    # "magic":J
    .restart local v3    # "data":[B
    .restart local v19    # "miniOutStream":Ljava/io/ByteArrayOutputStream;
    .restart local v20    # "magic":J
    :catch_1
    move-exception v12

    .line 222
    .local v12, "ex":Ljava/io/IOException;
    const-string v2, "MediaThumbRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception ex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 245
    .end local v12    # "ex":Ljava/io/IOException;
    .end local v20    # "magic":J
    .restart local v6    # "magic":J
    :catch_2
    move-exception v11

    .line 246
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaThumbRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "emulated storage is not backed by  internal storage nor an adopted storage device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 249
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    :cond_b
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    move-object/from16 v2, v22

    invoke-virtual/range {v2 .. v7}, Landroid/media/MiniThumbFile;->saveMiniThumbToFile([BJJ)V

    goto :goto_3

    .line 258
    .restart local v26    # "values":Landroid/content/ContentValues;
    :catch_3
    move-exception v12

    .line 259
    .local v12, "ex":Ljava/lang/IllegalStateException;
    const-string v2, "MediaThumbRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception while updating database "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 263
    .end local v3    # "data":[B
    .end local v6    # "magic":J
    .end local v12    # "ex":Ljava/lang/IllegalStateException;
    .end local v19    # "miniOutStream":Ljava/io/ByteArrayOutputStream;
    .end local v26    # "values":Landroid/content/ContentValues;
    .restart local v20    # "magic":J
    :cond_c
    const-string v2, "MediaThumbRequest"

    const-string v4, "can\'t create bitmap for thumbnail."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-wide/from16 v6, v20

    .end local v20    # "magic":J
    .restart local v6    # "magic":J
    goto :goto_4
.end method

.method updateDatabase(Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 12
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 118
    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaThumbRequest;->THUMB_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigColumnName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v10, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 120
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-object v4

    .line 122
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 126
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_3
    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 130
    .local v8, "values":Landroid/content/ContentValues;
    const-string v0, "kind"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigColumnName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    const-string v0, "width"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v0, "height"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    .line 126
    .end local v8    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 136
    .restart local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 137
    .local v7, "ex":Ljava/lang/Exception;
    const-string v0, "MediaThumbRequest"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
