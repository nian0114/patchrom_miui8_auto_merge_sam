.class Lcom/android/server/LSManager$SetLockedInThread;
.super Ljava/lang/Object;
.source "LSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetLockedInThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LSManager;


# direct methods
.method private constructor <init>(Lcom/android/server/LSManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LSManager;Lcom/android/server/LSManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LSManager;
    .param p2, "x1"    # Lcom/android/server/LSManager$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LSManager$SetLockedInThread;-><init>(Lcom/android/server/LSManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    const-string v4, "SetLockedInThread.run()"

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .local v0, "completedCount":J
    :cond_0
    # getter for: Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/android/server/LSManager;->access$100()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    const-string v4, "l:Going to wait 666 ms..."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    const-wide/16 v4, 0x29a

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "l:mSetPasswordExecutor.getQueue().size() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/android/server/LSManager;->access$100()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "l:mSetPasswordExecutor.getActiveCount() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/android/server/LSManager;->access$100()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    # getter for: Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/android/server/LSManager;->access$100()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    if-gtz v3, :cond_0

    # getter for: Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/android/server/LSManager;->access$100()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->setLockedState(Z)V
    invoke-static {v3, v7}, Lcom/android/server/LSManager;->access$200(Lcom/android/server/LSManager;Z)V

    iget-object v3, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->isLockedState()Z
    invoke-static {v3}, Lcom/android/server/LSManager;->access$300(Lcom/android/server/LSManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->setPasswordReady(Z)V
    invoke-static {v3, v6}, Lcom/android/server/LSManager;->access$400(Lcom/android/server/LSManager;Z)V

    iget-object v3, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->passwordIsProtected()Z
    invoke-static {v3}, Lcom/android/server/LSManager;->access$500(Lcom/android/server/LSManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->secretIsReady()Z
    invoke-static {v3}, Lcom/android/server/LSManager;->access$600(Lcom/android/server/LSManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    # getter for: Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;
    invoke-static {}, Lcom/android/server/LSManager;->access$700()Landroid/os/storage/sensitive/SecureStorageLSM;

    move-result-object v3

    new-array v4, v6, [B

    new-array v5, v6, [B

    invoke-virtual {v3, v4, v5, v7}, Landroid/os/storage/sensitive/SecureStorageLSM;->set_state([B[BI)I

    iget-object v3, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    const-string v4, "Locked."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v3, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    const-string v4, "Wait for pass."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    goto :goto_1
.end method
