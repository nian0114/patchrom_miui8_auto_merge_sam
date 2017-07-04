.class Lcom/android/providers/media/MediaProvider$3;
.super Landroid/content/BroadcastReceiver;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;)V
    .locals 0

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1044
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.DB_CLEAN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1045
    # getter for: Lcom/android/providers/media/MediaProvider;->isReceiveEjectIntent:Z
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1046
    # getter for: Lcom/android/providers/media/MediaProvider;->isReceiveEjectIntentLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$1100()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1047
    const/4 v2, 0x0

    :try_start_0
    # setter for: Lcom/android/providers/media/MediaProvider;->isReceiveEjectIntent:Z
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->access$1202(Z)Z

    .line 1048
    monitor-exit v3

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1048
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1052
    :cond_1
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mContentApp:Lcom/android/providers/media/ContentApp;
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->access$200(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/ContentApp;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1053
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mContentApp:Lcom/android/providers/media/ContentApp;
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->access$200(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/ContentApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->stopScan()V

    .line 1056
    :cond_2
    const-string v2, "storage_volume"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 1058
    .local v0, "storage":Landroid/os/storage/StorageVolume;
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive : action = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], path = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/providers/media/MediaProvider;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1062
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    const-string v3, "content://media/external"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    # invokes: Lcom/android/providers/media/MediaProvider;->detachVolume(Landroid/net/Uri;)V
    invoke-static {v2, v3}, Lcom/android/providers/media/MediaProvider;->access$1300(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)V

    .line 1064
    # getter for: Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$1400()Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 1065
    :try_start_1
    # getter for: Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$1400()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1066
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1068
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    goto :goto_0

    .line 1066
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 1070
    :cond_3
    const-string v2, "sd"

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1071
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MEDIA_EJECT"

    # invokes: Lcom/android/providers/media/MediaProvider;->stopMediaScanner(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->access$1500(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    :cond_4
    :goto_1
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Call CleanerThread "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    new-instance v1, Lcom/android/providers/media/MediaProvider$CleanerThread;

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {v1, v2, v0, p1}, Lcom/android/providers/media/MediaProvider$CleanerThread;-><init>(Lcom/android/providers/media/MediaProvider;Landroid/os/storage/StorageVolume;Landroid/content/Context;)V

    .line 1079
    .local v1, "th":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1080
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DBCleanReceiver finished"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1073
    .end local v1    # "th":Ljava/lang/Thread;
    :cond_5
    const-string v2, "private"

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1074
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MEDIA_EJECT"

    # invokes: Lcom/android/providers/media/MediaProvider;->stopMediaScanner(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->access$1500(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
