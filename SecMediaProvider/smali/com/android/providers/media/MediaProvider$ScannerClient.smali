.class final Lcom/android/providers/media/MediaProvider$ScannerClient;
.super Ljava/lang/Object;
.source "MediaProvider.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScannerClient"
.end annotation


# instance fields
.field mDb:Landroid/database/sqlite/SQLiteDatabase;

.field mPath:Ljava/lang/String;

.field mScannerConnection:Landroid/media/MediaScannerConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 6843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6839
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mPath:Ljava/lang/String;

    .line 6844
    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 6845
    iput-object p3, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mPath:Ljava/lang/String;

    .line 6846
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    .line 6847
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 6848
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 6852
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "files"

    # getter for: Lcom/android/providers/media/MediaProvider;->openFileColumns:[Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$2800()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_data >= ? AND _data < ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "0"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 6857
    .local v8, "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6858
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 6859
    .local v9, "d":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6860
    .local v10, "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6861
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6866
    .end local v9    # "d":Ljava/lang/String;
    .end local v10    # "f":Ljava/io/File;
    :catchall_0
    move-exception v0

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 6864
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6866
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 6868
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 6872
    return-void
.end method
