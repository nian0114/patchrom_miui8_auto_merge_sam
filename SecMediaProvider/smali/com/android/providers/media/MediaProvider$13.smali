.class Lcom/android/providers/media/MediaProvider$13;
.super Ljava/lang/Object;
.source "MediaProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaProvider;->deletePrivateStorageFiles(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;

.field final synthetic val$privatePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9975
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$13;->this$0:Lcom/android/providers/media/MediaProvider;

    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$13;->val$privatePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 9978
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$13;->this$0:Lcom/android/providers/media/MediaProvider;

    const-string v4, "content://media/external"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    # invokes: Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    invoke-static {v3, v4}, Lcom/android/providers/media/MediaProvider;->access$3300(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v2

    .line 9979
    .local v2, "helper":Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    invoke-virtual {v2}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 9980
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$13;->this$0:Lcom/android/providers/media/MediaProvider;

    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$13;->val$privatePath:Ljava/lang/String;

    # invokes: Lcom/android/providers/media/MediaProvider;->savePlaylistTableInBulkDeleter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v1, v4, v5}, Lcom/android/providers/media/MediaProvider;->access$3400(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 9981
    const-string v3, "files"

    const-string v4, "is_secretbox=1"

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 9982
    .local v0, "count":I
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deletePrivateStorageFiles() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9983
    return-void
.end method
