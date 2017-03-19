.class Lcom/android/providers/media/utils/MusicCacheMapUpdater$MusicCacheMapUpdateHandler;
.super Landroid/os/Handler;
.source "MusicCacheMapUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/utils/MusicCacheMapUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MusicCacheMapUpdateHandler"
.end annotation


# static fields
.field private static final MSG_UPDATE_START:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 65
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    iput-object p1, p0, Lcom/android/providers/media/utils/MusicCacheMapUpdater$MusicCacheMapUpdateHandler;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    # getter for: Lcom/android/providers/media/utils/MusicCacheMapUpdater;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicCacheMapUpdateHandler::handleMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 82
    :goto_0
    const-string v1, "content://media/external/audio/media/raw_sql"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 83
    .local v0, "rawQueryUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/providers/media/utils/MusicCacheMapUpdater$MusicCacheMapUpdateHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 84
    return-void

    .line 76
    .end local v0    # "rawQueryUri":Landroid/net/Uri;
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lcom/android/providers/media/utils/SecAudioViewSchema;->updateMusicCacheMapTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method release()V
    .locals 3

    .prologue
    .line 99
    # getter for: Lcom/android/providers/media/utils/MusicCacheMapUpdater;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicCacheMapUpdateHandler::release"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/media/utils/MusicCacheMapUpdater$MusicCacheMapUpdateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method updateMusicCacheMap(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x1

    .line 88
    # getter for: Lcom/android/providers/media/utils/MusicCacheMapUpdater;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicCacheMapUpdateHandler::updateMusicCacheMap"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0, v4}, Lcom/android/providers/media/utils/MusicCacheMapUpdater$MusicCacheMapUpdateHandler;->removeMessages(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/providers/media/utils/MusicCacheMapUpdater$MusicCacheMapUpdateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 92
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 93
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/providers/media/utils/MusicCacheMapUpdater$MusicCacheMapUpdateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    return-void
.end method
