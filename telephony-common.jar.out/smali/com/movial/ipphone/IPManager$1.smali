.class Lcom/movial/ipphone/IPManager$1;
.super Ljava/lang/Object;
.source "IPManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/IPManager;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/movial/ipphone/IPManager$1;->this$0:Lcom/movial/ipphone/IPManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    iget-object v1, p0, Lcom/movial/ipphone/IPManager$1;->this$0:Lcom/movial/ipphone/IPManager;

    invoke-static {p2}, Lcom/movial/ipphone/IIPRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/movial/ipphone/IIPRegistry;

    move-result-object v2

    # setter for: Lcom/movial/ipphone/IPManager;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;
    invoke-static {v1, v2}, Lcom/movial/ipphone/IPManager;->access$002(Lcom/movial/ipphone/IPManager;Lcom/movial/ipphone/IIPRegistry;)Lcom/movial/ipphone/IIPRegistry;

    iget-object v1, p0, Lcom/movial/ipphone/IPManager$1;->this$0:Lcom/movial/ipphone/IPManager;

    # getter for: Lcom/movial/ipphone/IPManager;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/movial/ipphone/IPManager;->access$100(Lcom/movial/ipphone/IPManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPManager$1;->this$0:Lcom/movial/ipphone/IPManager;

    # getter for: Lcom/movial/ipphone/IPManager;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;
    invoke-static {v1}, Lcom/movial/ipphone/IPManager;->access$200(Lcom/movial/ipphone/IPManager;)Ljava/util/concurrent/CyclicBarrier;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/movial/ipphone/IPManager$1;->this$0:Lcom/movial/ipphone/IPManager;

    # getter for: Lcom/movial/ipphone/IPManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/movial/ipphone/IPManager;->access$300(Lcom/movial/ipphone/IPManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPManager$1;->this$0:Lcom/movial/ipphone/IPManager;

    const/4 v1, 0x0

    # setter for: Lcom/movial/ipphone/IPManager;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;
    invoke-static {v0, v1}, Lcom/movial/ipphone/IPManager;->access$002(Lcom/movial/ipphone/IPManager;Lcom/movial/ipphone/IIPRegistry;)Lcom/movial/ipphone/IIPRegistry;

    iget-object v0, p0, Lcom/movial/ipphone/IPManager$1;->this$0:Lcom/movial/ipphone/IPManager;

    # getter for: Lcom/movial/ipphone/IPManager;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/movial/ipphone/IPManager;->access$100(Lcom/movial/ipphone/IPManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
