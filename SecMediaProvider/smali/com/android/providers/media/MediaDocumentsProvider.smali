.class public Lcom/android/providers/media/MediaDocumentsProvider;
.super Landroid/provider/DocumentsProvider;
.source "MediaDocumentsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MediaDocumentsProvider$1;,
        Lcom/android/providers/media/MediaDocumentsProvider$ImageOrientationQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$VideoThumbnailQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$VideosBucketThumbnailQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$ImageThumbnailQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$ImagesBucketThumbnailQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$SongQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$AlbumQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$ArtistQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$VideoQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$VideosBucketQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$ImageQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$ImagesBucketQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$Ident;
    }
.end annotation


# static fields
.field private static final AUDIO_MIME_TYPES:Ljava/lang/String;

.field private static final AUTHORITY:Ljava/lang/String; = "com.android.providers.media.documents"

.field private static final DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

.field private static final DEFAULT_ROOT_PROJECTION:[Ljava/lang/String;

.field private static final IMAGE_MIME_TYPES:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaDocumentsProvider"

.field private static final TYPE_ALBUM:Ljava/lang/String; = "album"

.field private static final TYPE_ARTIST:Ljava/lang/String; = "artist"

.field private static final TYPE_AUDIO:Ljava/lang/String; = "audio"

.field private static final TYPE_AUDIO_ROOT:Ljava/lang/String; = "audio_root"

.field private static final TYPE_IMAGE:Ljava/lang/String; = "image"

.field private static final TYPE_IMAGES_BUCKET:Ljava/lang/String; = "images_bucket"

.field private static final TYPE_IMAGES_ROOT:Ljava/lang/String; = "images_root"

.field private static final TYPE_VIDEO:Ljava/lang/String; = "video"

.field private static final TYPE_VIDEOS_BUCKET:Ljava/lang/String; = "videos_bucket"

.field private static final TYPE_VIDEOS_ROOT:Ljava/lang/String; = "videos_root"

.field private static final VIDEO_MIME_TYPES:Ljava/lang/String;

.field private static sReturnedAudioEmpty:Z

.field private static sReturnedImagesEmpty:Z

.field private static sReturnedVideosEmpty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "root_id"

    aput-object v1, v0, v3

    const-string v1, "flags"

    aput-object v1, v0, v4

    const-string v1, "icon"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v6

    const-string v1, "document_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mime_types"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider;->DEFAULT_ROOT_PROJECTION:[Ljava/lang/String;

    .line 73
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "document_id"

    aput-object v1, v0, v3

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    const-string v1, "_display_name"

    aput-object v1, v0, v5

    const-string v1, "last_modified"

    aput-object v1, v0, v6

    const-string v1, "flags"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider;->DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

    .line 78
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "image/*"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/android/providers/media/MediaDocumentsProvider;->joinNewline([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider;->IMAGE_MIME_TYPES:Ljava/lang/String;

    .line 80
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "video/*"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/android/providers/media/MediaDocumentsProvider;->joinNewline([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider;->VIDEO_MIME_TYPES:Ljava/lang/String;

    .line 82
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "audio/*"

    aput-object v1, v0, v3

    const-string v1, "application/ogg"

    aput-object v1, v0, v4

    const-string v1, "application/x-flac"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/android/providers/media/MediaDocumentsProvider;->joinNewline([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider;->AUDIO_MIME_TYPES:Ljava/lang/String;

    .line 98
    sput-boolean v3, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedImagesEmpty:Z

    .line 99
    sput-boolean v3, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedVideosEmpty:Z

    .line 100
    sput-boolean v3, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedAudioEmpty:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/provider/DocumentsProvider;-><init>()V

    .line 919
    return-void
.end method

.method private cleanUpMediaDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 946
    const-string v0, "<unknown>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 949
    .end local p1    # "displayName":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "displayName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {p2}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 108
    return-void
.end method

.method private static getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "id"    # J

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIdentForDocId(Ljava/lang/String;)Lcom/android/providers/media/MediaDocumentsProvider$Ident;
    .locals 4
    .param p0, "docId"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/providers/media/MediaDocumentsProvider$Ident;-><init>(Lcom/android/providers/media/MediaDocumentsProvider$1;)V

    .line 167
    .local v0, "ident":Lcom/android/providers/media/MediaDocumentsProvider$Ident;
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 168
    .local v1, "split":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 169
    iput-object p0, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    .line 170
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    .line 175
    :goto_0
    return-object v0

    .line 172
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    .line 173
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    goto :goto_0
.end method

.method private getImageForBucketCleared(J)J
    .locals 7
    .param p1, "bucketId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 772
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 774
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ImagesBucketThumbnailQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 777
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 781
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide v2

    :cond_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 783
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "No video found for bucket"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 781
    :catchall_0
    move-exception v1

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private getUriForDocumentId(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p1, "docId"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .line 191
    invoke-static {p1}, Lcom/android/providers/media/MediaDocumentsProvider;->getIdentForDocId(Ljava/lang/String;)Lcom/android/providers/media/MediaDocumentsProvider$Ident;

    move-result-object v0

    .line 192
    .local v0, "ident":Lcom/android/providers/media/MediaDocumentsProvider$Ident;
    const-string v1, "image"

    iget-object v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 193
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 199
    :goto_0
    return-object v1

    .line 195
    :cond_0
    const-string v1, "video"

    iget-object v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 196
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 198
    :cond_1
    const-string v1, "audio"

    iget-object v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 199
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 202
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported document "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getVideoForBucketCleared(J)J
    .locals 7
    .param p1, "bucketId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 860
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 862
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$VideosBucketThumbnailQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 865
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 866
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 869
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide v2

    :cond_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 871
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "No video found for bucket"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 869
    :catchall_0
    move-exception v1

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private includeAlbum(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 720
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 721
    .local v2, "id":J
    const-string v4, "album"

    invoke-static {v4, v2, v3}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "docId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 724
    .local v1, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v4, "document_id"

    invoke-virtual {v1, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 725
    const-string v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/providers/media/MediaDocumentsProvider;->cleanUpMediaDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 727
    const-string v4, "mime_type"

    const-string v5, "vnd.android.document/directory"

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 728
    return-void
.end method

.method private includeArtist(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 700
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 701
    .local v2, "id":J
    const-string v4, "artist"

    invoke-static {v4, v2, v3}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "docId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 704
    .local v1, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v4, "document_id"

    invoke-virtual {v1, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 705
    const-string v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/providers/media/MediaDocumentsProvider;->cleanUpMediaDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 707
    const-string v4, "mime_type"

    const-string v5, "vnd.android.document/directory"

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 708
    return-void
.end method

.method private includeAudio(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x4

    .line 746
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 747
    .local v2, "id":J
    const-string v4, "audio"

    invoke-static {v4, v2, v3}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "docId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 750
    .local v1, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v4, "document_id"

    invoke-virtual {v1, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 751
    const-string v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 752
    const-string v4, "_size"

    const/4 v5, 0x3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 753
    const-string v4, "mime_type"

    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 754
    const-string v4, "last_modified"

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 756
    const-string v4, "flags"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 757
    return-void
.end method

.method private includeAudioRoot(Landroid/database/MatrixCursor;)V
    .locals 5
    .param p1, "result"    # Landroid/database/MatrixCursor;

    .prologue
    .line 533
    const/4 v0, 0x2

    .line 534
    .local v0, "flags":I
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->isEmpty(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    .line 536
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedAudioEmpty:Z

    .line 539
    :cond_0
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 540
    .local v1, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v2, "root_id"

    const-string v3, "audio_root"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 541
    const-string v2, "flags"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 542
    const-string v2, "title"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070008

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 543
    const-string v2, "document_id"

    const-string v3, "audio_root"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 544
    const-string v2, "mime_types"

    sget-object v3, Lcom/android/providers/media/MediaDocumentsProvider;->AUDIO_MIME_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 545
    return-void
.end method

.method private includeAudioRootDocument(Landroid/database/MatrixCursor;)V
    .locals 4
    .param p1, "result"    # Landroid/database/MatrixCursor;

    .prologue
    .line 566
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 567
    .local v0, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v1, "document_id"

    const-string v2, "audio_root"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 568
    const-string v1, "_display_name"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 569
    const-string v1, "mime_type"

    const-string v2, "vnd.android.document/directory"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 570
    return-void
.end method

.method private includeImage(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 617
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 618
    .local v2, "id":J
    const-string v4, "image"

    invoke-static {v4, v2, v3}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "docId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 621
    .local v1, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v4, "document_id"

    invoke-virtual {v1, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 622
    const-string v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 623
    const-string v4, "_size"

    const/4 v5, 0x3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 624
    const-string v4, "mime_type"

    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 625
    const-string v4, "last_modified"

    const/4 v5, 0x4

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 627
    const-string v4, "flags"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 629
    return-void
.end method

.method private includeImagesBucket(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 586
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 587
    .local v2, "id":J
    const-string v4, "images_bucket"

    invoke-static {v4, v2, v3}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "docId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 590
    .local v1, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v4, "document_id"

    invoke-virtual {v1, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 591
    const-string v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 593
    const-string v4, "mime_type"

    const-string v5, "vnd.android.document/directory"

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 594
    const-string v4, "last_modified"

    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 596
    const-string v4, "flags"

    const v5, 0x10031

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 599
    return-void
.end method

.method private includeImagesRoot(Landroid/database/MatrixCursor;)V
    .locals 5
    .param p1, "result"    # Landroid/database/MatrixCursor;

    .prologue
    .line 503
    const/4 v0, 0x6

    .line 504
    .local v0, "flags":I
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->isEmpty(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    .line 506
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedImagesEmpty:Z

    .line 509
    :cond_0
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 510
    .local v1, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v2, "root_id"

    const-string v3, "images_root"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 511
    const-string v2, "flags"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 512
    const-string v2, "title"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070006

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 513
    const-string v2, "document_id"

    const-string v3, "images_root"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 514
    const-string v2, "mime_types"

    sget-object v3, Lcom/android/providers/media/MediaDocumentsProvider;->IMAGE_MIME_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 515
    return-void
.end method

.method private includeImagesRootDocument(Landroid/database/MatrixCursor;)V
    .locals 4
    .param p1, "result"    # Landroid/database/MatrixCursor;

    .prologue
    .line 548
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 549
    .local v0, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v1, "document_id"

    const-string v2, "images_root"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 550
    const-string v1, "_display_name"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070006

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 551
    const-string v1, "flags"

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 553
    const-string v1, "mime_type"

    const-string v2, "vnd.android.document/directory"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 554
    return-void
.end method

.method private includeVideo(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 676
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 677
    .local v2, "id":J
    const-string v4, "video"

    invoke-static {v4, v2, v3}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "docId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 680
    .local v1, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v4, "document_id"

    invoke-virtual {v1, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 681
    const-string v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 682
    const-string v4, "_size"

    const/4 v5, 0x3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 683
    const-string v4, "mime_type"

    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 684
    const-string v4, "last_modified"

    const/4 v5, 0x4

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 686
    const-string v4, "flags"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 688
    return-void
.end method

.method private includeVideosBucket(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 645
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 646
    .local v2, "id":J
    const-string v4, "videos_bucket"

    invoke-static {v4, v2, v3}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "docId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 649
    .local v1, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v4, "document_id"

    invoke-virtual {v1, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 650
    const-string v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 652
    const-string v4, "mime_type"

    const-string v5, "vnd.android.document/directory"

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 653
    const-string v4, "last_modified"

    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 655
    const-string v4, "flags"

    const v5, 0x10031

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 658
    return-void
.end method

.method private includeVideosRoot(Landroid/database/MatrixCursor;)V
    .locals 5
    .param p1, "result"    # Landroid/database/MatrixCursor;

    .prologue
    .line 518
    const/4 v0, 0x6

    .line 519
    .local v0, "flags":I
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->isEmpty(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    .line 521
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedVideosEmpty:Z

    .line 524
    :cond_0
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 525
    .local v1, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v2, "root_id"

    const-string v3, "videos_root"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 526
    const-string v2, "flags"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 527
    const-string v2, "title"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070007

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 528
    const-string v2, "document_id"

    const-string v3, "videos_root"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 529
    const-string v2, "mime_types"

    sget-object v3, Lcom/android/providers/media/MediaDocumentsProvider;->VIDEO_MIME_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 530
    return-void
.end method

.method private includeVideosRootDocument(Landroid/database/MatrixCursor;)V
    .locals 4
    .param p1, "result"    # Landroid/database/MatrixCursor;

    .prologue
    .line 557
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 558
    .local v0, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v1, "document_id"

    const-string v2, "videos_root"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 559
    const-string v1, "_display_name"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070007

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 560
    const-string v1, "flags"

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 562
    const-string v1, "mime_type"

    const-string v2, "vnd.android.document/directory"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 563
    return-void
.end method

.method private isEmpty(Landroid/net/Uri;)Z
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 489
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 490
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 491
    .local v8, "token":J
    const/4 v6, 0x0

    .line 493
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 495
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v10

    .line 497
    :goto_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 498
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_1
    move v1, v7

    .line 495
    goto :goto_0

    .line 497
    :catchall_0
    move-exception v1

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 498
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private static varargs joinNewline([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 103
    const-string v0, "\n"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static notifyRootsChanged(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.providers.media.documents"

    invoke-static {v1}, Landroid/provider/DocumentsContract;->buildRootsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 118
    return-void
.end method

.method static onMediaStoreDelete(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volumeName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v3, -0x1

    .line 143
    const-string v1, "external"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 146
    const-string v1, "com.android.providers.media.documents"

    const-string v2, "image"

    invoke-static {v2, p3, p4}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 148
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto :goto_0

    .line 149
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 150
    const-string v1, "com.android.providers.media.documents"

    const-string v2, "video"

    invoke-static {v2, p3, p4}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 152
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto :goto_0

    .line 153
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 154
    const-string v1, "com.android.providers.media.documents"

    const-string v2, "audio"

    invoke-static {v2, p3, p4}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 156
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method static onMediaStoreInsert(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volumeName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v1, 0x0

    .line 125
    const-string v0, "external"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    sget-boolean v0, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedImagesEmpty:Z

    if-eqz v0, :cond_2

    .line 128
    sput-boolean v1, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedImagesEmpty:Z

    .line 129
    invoke-static {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->notifyRootsChanged(Landroid/content/Context;)V

    goto :goto_0

    .line 130
    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    sget-boolean v0, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedVideosEmpty:Z

    if-eqz v0, :cond_3

    .line 131
    sput-boolean v1, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedVideosEmpty:Z

    .line 132
    invoke-static {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->notifyRootsChanged(Landroid/content/Context;)V

    goto :goto_0

    .line 133
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    sget-boolean v0, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedAudioEmpty:Z

    if-eqz v0, :cond_0

    .line 134
    sput-boolean v1, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedAudioEmpty:Z

    .line 135
    invoke-static {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->notifyRootsChanged(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private openImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 11
    .param p1, "id"    # J
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 795
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 797
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 799
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ImageThumbnailQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 802
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 804
    .local v8, "data":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 808
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 810
    .end local v8    # "data":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 808
    :cond_0
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v9

    .line 810
    goto :goto_0

    .line 808
    :catchall_0
    move-exception v1

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private openOrCreateImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 11
    .param p1, "id"    # J
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 815
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 817
    .local v10, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 818
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_0

    .line 821
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 822
    .local v8, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 823
    invoke-static {v10, p1, p2, v2, v8}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 825
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 828
    .end local v8    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    if-nez v1, :cond_1

    .line 830
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 831
    .local v7, "fullUri":Landroid/net/Uri;
    const-string v0, "r"

    invoke-virtual {v10, v7, v0, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 834
    .end local v7    # "fullUri":Landroid/net/Uri;
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->queryOrientationForImage(JLandroid/os/CancellationSignal;)I

    move-result v9

    .line 836
    .local v9, "orientation":I
    if-eqz v9, :cond_2

    .line 837
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 838
    .local v6, "extras":Landroid/os/Bundle;
    const-string v0, "android.content.extra.ORIENTATION"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 843
    :goto_0
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V

    return-object v0

    .line 840
    .end local v6    # "extras":Landroid/os/Bundle;
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "extras":Landroid/os/Bundle;
    goto :goto_0
.end method

.method private openOrCreateVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 5
    .param p1, "id"    # J
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 903
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 905
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 906
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_0

    .line 909
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 910
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 911
    invoke-static {v2, p1, p2, v4, v1}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 913
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 916
    .end local v1    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return-object v0
.end method

.method private openVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 11
    .param p1, "id"    # J
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 883
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 884
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 886
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$VideoThumbnailQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 889
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 891
    .local v9, "data":Ljava/lang/String;
    new-instance v2, Landroid/content/res/AssetFileDescriptor;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    invoke-direct/range {v2 .. v7}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 898
    .end local v9    # "data":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 896
    :cond_0
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v7

    .line 898
    goto :goto_0

    .line 896
    :catchall_0
    move-exception v1

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private queryOrientationForImage(JLandroid/os/CancellationSignal;)I
    .locals 9
    .param p1, "id"    # J
    .param p3, "signal"    # Landroid/os/CancellationSignal;

    .prologue
    const/4 v8, 0x0

    .line 927
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 929
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 931
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ImageOrientationQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 934
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 935
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 941
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_0
    return v1

    .line 937
    :cond_0
    :try_start_1
    const-string v1, "MediaDocumentsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing orientation data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 941
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move v1, v8

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private static resolveDocumentProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "projection"    # [Ljava/lang/String;

    .prologue
    .line 187
    if-eqz p0, :cond_0

    .end local p0    # "projection":[Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "projection":[Ljava/lang/String;
    :cond_0
    sget-object p0, Lcom/android/providers/media/MediaDocumentsProvider;->DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static resolveRootProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "projection"    # [Ljava/lang/String;

    .prologue
    .line 183
    if-eqz p0, :cond_0

    .end local p0    # "projection":[Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "projection":[Ljava/lang/String;
    :cond_0
    sget-object p0, Lcom/android/providers/media/MediaDocumentsProvider;->DEFAULT_ROOT_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public deleteDocument(Ljava/lang/String;)V
    .locals 6
    .param p1, "docId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaDocumentsProvider;->getUriForDocumentId(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 211
    .local v0, "target":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 213
    .local v2, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 217
    return-void

    .line 215
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaDocumentsProvider;->getUriForDocumentId(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 449
    .local v0, "target":Landroid/net/Uri;
    const-string v1, "r"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Media is read-only"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 456
    .local v2, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 458
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 9
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "sizeHint"    # Landroid/graphics/Point;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 466
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/providers/media/MediaDocumentsProvider;->getIdentForDocId(Ljava/lang/String;)Lcom/android/providers/media/MediaDocumentsProvider$Ident;

    move-result-object v2

    .line 468
    .local v2, "ident":Lcom/android/providers/media/MediaDocumentsProvider$Ident;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 470
    .local v4, "token":J
    :try_start_0
    const-string v6, "images_bucket"

    iget-object v7, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 471
    iget-wide v6, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-direct {p0, v6, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->getImageForBucketCleared(J)J

    move-result-wide v0

    .line 472
    .local v0, "id":J
    invoke-direct {p0, v0, v1, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openOrCreateImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 484
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "id":J
    :goto_0
    return-object v6

    .line 473
    :cond_0
    :try_start_1
    const-string v6, "image"

    iget-object v7, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 474
    iget-wide v6, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-direct {p0, v6, v7, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openOrCreateImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 484
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 475
    :cond_1
    :try_start_2
    const-string v6, "videos_bucket"

    iget-object v7, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 476
    iget-wide v6, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-direct {p0, v6, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->getVideoForBucketCleared(J)J

    move-result-wide v0

    .line 477
    .restart local v0    # "id":J
    invoke-direct {p0, v0, v1, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openOrCreateVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 484
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 478
    .end local v0    # "id":J
    :cond_2
    :try_start_3
    const-string v6, "video"

    iget-object v7, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 479
    iget-wide v6, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-direct {p0, v6, v7, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openOrCreateVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 484
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 481
    :cond_3
    :try_start_4
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported document "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 484
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 323
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v14, Landroid/database/MatrixCursor;

    invoke-static/range {p2 .. p2}, Lcom/android/providers/media/MediaDocumentsProvider;->resolveDocumentProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 324
    .local v14, "result":Landroid/database/MatrixCursor;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/media/MediaDocumentsProvider;->getIdentForDocId(Ljava/lang/String;)Lcom/android/providers/media/MediaDocumentsProvider$Ident;

    move-result-object v9

    .line 326
    .local v9, "ident":Lcom/android/providers/media/MediaDocumentsProvider$Ident;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 327
    .local v16, "token":J
    const/4 v8, 0x0

    .line 329
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "images_root"

    iget-object v4, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 331
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/media/MediaDocumentsProvider$ImagesBucketQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "bucket_id, date_modified DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 334
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 335
    const-wide/high16 v12, -0x8000000000000000L

    .line 336
    .local v12, "lastId":J
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 337
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 338
    .local v10, "id":J
    cmp-long v3, v12, v10

    if-eqz v3, :cond_0

    .line 339
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImagesBucket(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 340
    move-wide v12, v10

    goto :goto_0

    .line 343
    .end local v10    # "id":J
    .end local v12    # "lastId":J
    :cond_1
    const-string v3, "images_bucket"

    iget-object v4, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 345
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/media/MediaDocumentsProvider$ImageQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bucket_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 348
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 349
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 350
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImage(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 403
    :catchall_0
    move-exception v3

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 404
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 352
    :cond_2
    :try_start_1
    const-string v3, "videos_root"

    iget-object v4, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 354
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/media/MediaDocumentsProvider$VideosBucketQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "bucket_id, date_modified DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 356
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 357
    const-wide/high16 v12, -0x8000000000000000L

    .line 358
    .restart local v12    # "lastId":J
    :cond_3
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 359
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 360
    .restart local v10    # "id":J
    cmp-long v3, v12, v10

    if-eqz v3, :cond_3

    .line 361
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideosBucket(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 362
    move-wide v12, v10

    goto :goto_2

    .line 365
    .end local v10    # "id":J
    .end local v12    # "lastId":J
    :cond_4
    const-string v3, "videos_bucket"

    iget-object v4, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 367
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/media/MediaDocumentsProvider$VideoQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bucket_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 370
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 371
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 372
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideo(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_3

    .line 374
    :cond_5
    const-string v3, "audio_root"

    iget-object v4, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 376
    sget-object v3, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/media/MediaDocumentsProvider$ArtistQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 378
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 379
    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 380
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeArtist(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_4

    .line 382
    :cond_6
    const-string v3, "artist"

    iget-object v4, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 384
    const-string v3, "external"

    iget-wide v4, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-static {v3, v4, v5}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/providers/media/MediaDocumentsProvider$AlbumQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 386
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 387
    :goto_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 388
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeAlbum(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_5

    .line 390
    :cond_7
    const-string v3, "album"

    iget-object v4, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 392
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/media/MediaDocumentsProvider$SongQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "album_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 395
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 396
    :goto_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 397
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeAudio(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_6

    .line 400
    :cond_8
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported document "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    :cond_9
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 404
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    return-object v14
.end method

.method public queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 231
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v8, Landroid/database/MatrixCursor;

    invoke-static {p2}, Lcom/android/providers/media/MediaDocumentsProvider;->resolveDocumentProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 232
    .local v8, "result":Landroid/database/MatrixCursor;
    invoke-static {p1}, Lcom/android/providers/media/MediaDocumentsProvider;->getIdentForDocId(Ljava/lang/String;)Lcom/android/providers/media/MediaDocumentsProvider$Ident;

    move-result-object v7

    .line 234
    .local v7, "ident":Lcom/android/providers/media/MediaDocumentsProvider$Ident;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 235
    .local v10, "token":J
    const/4 v6, 0x0

    .line 237
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "images_root"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    invoke-direct {p0, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImagesRootDocument(Landroid/database/MatrixCursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_0
    :goto_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 316
    return-object v8

    .line 240
    :cond_1
    :try_start_1
    const-string v1, "images_bucket"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ImagesBucketQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "bucket_id, date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 245
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImagesBucket(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v1

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 249
    :cond_2
    :try_start_2
    const-string v1, "image"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 251
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ImageQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 254
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 255
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImage(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_0

    .line 258
    :cond_3
    const-string v1, "videos_root"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 260
    invoke-direct {p0, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideosRootDocument(Landroid/database/MatrixCursor;)V

    goto/16 :goto_0

    .line 261
    :cond_4
    const-string v1, "videos_bucket"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 263
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$VideosBucketQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "bucket_id, date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 266
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 267
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideosBucket(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 270
    :cond_5
    const-string v1, "video"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 272
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$VideoQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 275
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 276
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideo(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 279
    :cond_6
    const-string v1, "audio_root"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 281
    invoke-direct {p0, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeAudioRootDocument(Landroid/database/MatrixCursor;)V

    goto/16 :goto_0

    .line 282
    :cond_7
    const-string v1, "artist"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 284
    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ArtistQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 287
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 288
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeArtist(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 291
    :cond_8
    const-string v1, "album"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 293
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$AlbumQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 296
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 297
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeAlbum(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 300
    :cond_9
    const-string v1, "audio"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 302
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$SongQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 305
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 306
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeAudio(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 310
    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported document "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x40

    .line 412
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 413
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v7, Landroid/database/MatrixCursor;

    invoke-static {p2}, Lcom/android/providers/media/MediaDocumentsProvider;->resolveDocumentProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 415
    .local v7, "result":Landroid/database/MatrixCursor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 416
    .local v8, "token":J
    const/4 v6, 0x0

    .line 418
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "images_root"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ImageQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 422
    invoke-direct {p0, v7, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 423
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    if-ge v1, v10, :cond_2

    .line 424
    invoke-direct {p0, v7, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImage(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v1

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 439
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 426
    :cond_0
    :try_start_1
    const-string v1, "videos_root"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$VideoQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 430
    invoke-direct {p0, v7, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 431
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    if-ge v1, v10, :cond_2

    .line 432
    invoke-direct {p0, v7, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideo(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_1

    .line 435
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    :cond_2
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 439
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 441
    return-object v7
.end method

.method public queryRoots([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-static {p1}, Lcom/android/providers/media/MediaDocumentsProvider;->resolveRootProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 222
    .local v0, "result":Landroid/database/MatrixCursor;
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImagesRoot(Landroid/database/MatrixCursor;)V

    .line 223
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideosRoot(Landroid/database/MatrixCursor;)V

    .line 224
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaDocumentsProvider;->includeAudioRoot(Landroid/database/MatrixCursor;)V

    .line 225
    return-object v0
.end method
