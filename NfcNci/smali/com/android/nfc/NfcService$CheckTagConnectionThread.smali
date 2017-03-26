.class Lcom/android/nfc/NfcService$CheckTagConnectionThread;
.super Ljava/lang/Thread;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckTagConnectionThread"
.end annotation


# instance fields
.field private isPresent:Z

.field final mCancelWaiter:Ljava/lang/Object;

.field mCanceled:Z

.field final mTimeout:I

.field mtagEndpoint:Lcom/android/nfc/DeviceHost$TagEndpoint;

.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>(Lcom/android/nfc/NfcService;Lcom/android/nfc/DeviceHost$TagEndpoint;I)V
    .locals 2
    .param p2, "tagEndpoint"    # Lcom/android/nfc/DeviceHost$TagEndpoint;
    .param p3, "timeout"    # I

    .prologue
    const/4 v1, 0x0

    .line 6862
    iput-object p1, p0, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6856
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->mCancelWaiter:Ljava/lang/Object;

    .line 6858
    iput-boolean v1, p0, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->mCanceled:Z

    .line 6859
    iput-boolean v1, p0, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->isPresent:Z

    .line 6863
    const/4 v0, 0x1

    # setter for: Lcom/android/nfc/NfcService;->isCheckTagConnetion:Z
    invoke-static {p1, v0}, Lcom/android/nfc/NfcService;->access$4302(Lcom/android/nfc/NfcService;Z)Z

    .line 6864
    iput-object p2, p0, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->mtagEndpoint:Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 6865
    iput p3, p0, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->mTimeout:I

    .line 6866
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 3

    .prologue
    .line 6888
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->mCancelWaiter:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6889
    :try_start_1
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    const-string v2, "Timer Cancel"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6890
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->mCanceled:Z

    .line 6891
    iget-object v0, p0, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    # setter for: Lcom/android/nfc/NfcService;->isCheckTagConnetion:Z
    invoke-static {v0, v2}, Lcom/android/nfc/NfcService;->access$4302(Lcom/android/nfc/NfcService;Z)Z

    .line 6892
    iget-object v0, p0, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->mCancelWaiter:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 6893
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6894
    monitor-exit p0

    return-void

    .line 6893
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6888
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 6870
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    const-string v1, "Starting Tag Connection check"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6873
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->mCancelWaiter:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6874
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->mCancelWaiter:Ljava/lang/Object;

    iget v2, p0, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->mTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 6876
    iget-boolean v0, p0, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->mCanceled:Z

    if-eqz v0, :cond_1

    .line 6877
    monitor-exit v1

    .line 6885
    :goto_0
    return-void

    .line 6880
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->mtagEndpoint:Lcom/android/nfc/DeviceHost$TagEndpoint;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 6881
    iget-object v0, p0, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->this$0:Lcom/android/nfc/NfcService;

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 6883
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6884
    :catch_0
    move-exception v0

    goto :goto_0
.end method
