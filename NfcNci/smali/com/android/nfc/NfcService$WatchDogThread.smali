.class Lcom/android/nfc/NfcService$WatchDogThread;
.super Ljava/lang/Thread;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchDogThread"
.end annotation


# instance fields
.field final mCancelWaiter:Ljava/lang/Object;

.field mCanceled:Z

.field final mTimeout:I

.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V
    .locals 1
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    .line 4304
    iput-object p1, p0, Lcom/android/nfc/NfcService$WatchDogThread;->this$0:Lcom/android/nfc/NfcService;

    .line 4305
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4300
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    .line 4302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCanceled:Z

    .line 4306
    iput p3, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mTimeout:I

    .line 4307
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 4328
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4329
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCanceled:Z

    .line 4330
    iget-object v0, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 4331
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4332
    monitor-exit p0

    return-void

    .line 4331
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

    .line 4328
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 4312
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4313
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    iget v3, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mTimeout:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 4314
    iget-boolean v1, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCanceled:Z

    if-eqz v1, :cond_0

    .line 4315
    monitor-exit v2

    .line 4325
    :goto_0
    return-void

    .line 4317
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4323
    :goto_1
    const-string v1, "NfcService"

    const-string v2, "Watchdog triggered, aborting."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4324
    iget-object v1, p0, Lcom/android/nfc/NfcService$WatchDogThread;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doAbort()V

    goto :goto_0

    .line 4317
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4318
    :catch_0
    move-exception v0

    .line 4320
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "NfcService"

    const-string v2, "Watchdog thread interruped."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4321
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$WatchDogThread;->interrupt()V

    goto :goto_1
.end method
