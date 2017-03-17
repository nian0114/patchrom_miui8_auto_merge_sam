.class Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
.super Landroid/hardware/scontext/ISContextCallback$Stub;
.source "SContextManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SContextListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mIsHistoryData:Z

.field private final mListener:Landroid/hardware/scontext/SContextListener;

.field final synthetic this$0:Landroid/hardware/scontext/SContextManager;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V
    .locals 2
    .param p2, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "isHistoryData"    # Z

    .prologue
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    invoke-direct {p0}, Landroid/hardware/scontext/ISContextCallback$Stub;-><init>()V

    iput-object p2, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    if-eqz p3, :cond_0

    move-object v0, p3

    .local v0, "mLooper":Landroid/os/Looper;
    :goto_0
    iput-boolean p4, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mIsHistoryData:Z

    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;-><init>(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;Landroid/os/Looper;Landroid/hardware/scontext/SContextManager;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void

    .end local v0    # "mLooper":Landroid/os/Looper;
    :cond_0
    iget-object v0, p1, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .prologue
    iget-boolean v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mIsHistoryData:Z

    return v0
.end method


# virtual methods
.method public getListener()Landroid/hardware/scontext/SContextListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized scontextCallback(Landroid/hardware/scontext/SContextEvent;)V
    .locals 2
    .param p1, "scontextEvent"    # Landroid/hardware/scontext/SContextEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
