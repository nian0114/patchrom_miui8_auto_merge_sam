.class Lcom/sec/android/app/camera/engine/CommonEngine$9;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;->onQueueEmpty()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    .prologue
    .line 5491
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5494
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1500(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 5495
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1500(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5496
    .local v0, "emptyRequestQueueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/interfaces/Engine$OnRequestQueueEmptyListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5497
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/interfaces/Engine$OnRequestQueueEmptyListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$OnRequestQueueEmptyListener;->onEmpty()V

    goto :goto_0

    .line 5499
    .end local v0    # "emptyRequestQueueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/interfaces/Engine$OnRequestQueueEmptyListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "emptyRequestQueueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/interfaces/Engine$OnRequestQueueEmptyListener;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5500
    return-void
.end method
