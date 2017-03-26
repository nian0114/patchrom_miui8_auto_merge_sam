.class Lcom/android/nfc/RegisteredComponentCache$CacheThread;
.super Ljava/lang/Thread;
.source "RegisteredComponentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/RegisteredComponentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CacheThread"
.end annotation


# instance fields
.field final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/nfc/RegisteredComponentCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/RegisteredComponentCache;)V
    .locals 1

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/nfc/RegisteredComponentCache$CacheThread;->this$0:Lcom/android/nfc/RegisteredComponentCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/RegisteredComponentCache$CacheThread;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/RegisteredComponentCache$CacheThread;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/RegisteredComponentCache$CacheThread;->this$0:Lcom/android/nfc/RegisteredComponentCache;

    invoke-virtual {v1}, Lcom/android/nfc/RegisteredComponentCache;->generateComponentsList()V

    .line 79
    monitor-exit v2

    .line 83
    :goto_0
    return-void

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RegisteredComponentCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
