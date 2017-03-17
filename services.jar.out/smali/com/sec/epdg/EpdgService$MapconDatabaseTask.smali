.class Lcom/sec/epdg/EpdgService$MapconDatabaseTask;
.super Landroid/os/AsyncTask;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapconDatabaseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppPolicy:Z

.field private final mHandler:Landroid/os/Handler;

.field private mMapcon:Z

.field private mUpdate:Z

.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;ZZZ)V
    .locals 1
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "update"    # Z
    .param p4, "mapcon"    # Z
    .param p5, "appPolicy"    # Z

    .prologue
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->mHandler:Landroid/os/Handler;

    iput-boolean p3, p0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->mUpdate:Z

    iput-boolean p4, p0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->mMapcon:Z

    iput-boolean p5, p0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->mAppPolicy:Z

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private doExec()Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Z
    const-string v1, "[EPDGService]"

    const-string v2, "MapconDatabaseTask:doExec - started"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v1

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2500()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->mMapcon:Z

    iget-boolean v5, p0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->mAppPolicy:Z

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/epdg/mapcon/PolicyManager;->createPolicyTable(Landroid/content/Context;ZZ)Z

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "[EPDGService]"

    const-string v2, "MapconDatabaseTask:doExec - completed"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const-string v0, "[EPDGService]"

    const-string v1, "MapconDatabaseTask:doInBackground - started"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->doExec()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const-string v1, "[EPDGService]"

    const-string v2, "MapconDatabaseTask:onPostExecute - started"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->mUpdate:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->mMapcon:Z

    if-eqz v1, :cond_0

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1400()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1c

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
