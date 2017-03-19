.class public Lcom/android/providers/media/utils/MusicCacheMapUpdater;
.super Ljava/lang/Object;
.source "MusicCacheMapUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/utils/MusicCacheMapUpdater$MusicCacheMapUpdateHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static final THREAD_NAME:Ljava/lang/String; = "MusicCacheMapUpdater"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mThread:Landroid/os/HandlerThread;

.field private mUpdateHandler:Lcom/android/providers/media/utils/MusicCacheMapUpdater$MusicCacheMapUpdateHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/android/providers/media/utils/MusicCacheMapUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public start(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 32
    sget-object v0, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->TAG:Ljava/lang/String;

    const-string v1, "start called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MusicCacheMapUpdater"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->mThread:Landroid/os/HandlerThread;

    .line 36
    iget-object v0, p0, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 37
    new-instance v0, Lcom/android/providers/media/utils/MusicCacheMapUpdater$MusicCacheMapUpdateHandler;

    iget-object v1, p0, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/utils/MusicCacheMapUpdater$MusicCacheMapUpdateHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->mUpdateHandler:Lcom/android/providers/media/utils/MusicCacheMapUpdater$MusicCacheMapUpdateHandler;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->mUpdateHandler:Lcom/android/providers/media/utils/MusicCacheMapUpdater$MusicCacheMapUpdateHandler;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->mUpdateHandler:Lcom/android/providers/media/utils/MusicCacheMapUpdater$MusicCacheMapUpdateHandler;

    invoke-virtual {v0, p1}, Lcom/android/providers/media/utils/MusicCacheMapUpdater$MusicCacheMapUpdateHandler;->updateMusicCacheMap(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->TAG:Ljava/lang/String;

    const-string v1, "stop called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->mUpdateHandler:Lcom/android/providers/media/utils/MusicCacheMapUpdater$MusicCacheMapUpdateHandler;

    invoke-virtual {v0}, Lcom/android/providers/media/utils/MusicCacheMapUpdater$MusicCacheMapUpdateHandler;->release()V

    .line 54
    iget-object v0, p0, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/media/utils/MusicCacheMapUpdater;->mThread:Landroid/os/HandlerThread;

    .line 57
    :cond_0
    return-void
.end method
