.class Lcom/android/nfc/NfcService$CheckCardEmulationStatus;
.super Ljava/lang/Thread;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckCardEmulationStatus"
.end annotation


# instance fields
.field final mCancelWaiter:Ljava/lang/Object;

.field mCanceled:Z

.field final mTimeout:I

.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>(Lcom/android/nfc/NfcService;I)V
    .locals 1
    .param p2, "timeout"    # I

    .prologue
    .line 6903
    iput-object p1, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6899
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->mCancelWaiter:Ljava/lang/Object;

    .line 6901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->mCanceled:Z

    .line 6904
    const/4 v0, 0x1

    # setter for: Lcom/android/nfc/NfcService;->isTimerStarted:Z
    invoke-static {p1, v0}, Lcom/android/nfc/NfcService;->access$4702(Lcom/android/nfc/NfcService;Z)Z

    .line 6905
    iput p2, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->mTimeout:I

    .line 6906
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 3

    .prologue
    .line 6948
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->mCancelWaiter:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6949
    :try_start_1
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    const-string v2, "Timer Cancel"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6950
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->mCanceled:Z

    .line 6951
    iget-object v0, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    # setter for: Lcom/android/nfc/NfcService;->isTimerStarted:Z
    invoke-static {v0, v2}, Lcom/android/nfc/NfcService;->access$4702(Lcom/android/nfc/NfcService;Z)Z

    .line 6952
    iget-object v0, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    # setter for: Lcom/android/nfc/NfcService;->fieldOnCount:I
    invoke-static {v0, v2}, Lcom/android/nfc/NfcService;->access$4602(Lcom/android/nfc/NfcService;I)I

    .line 6953
    iget-object v0, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    # setter for: Lcom/android/nfc/NfcService;->seActivateCount:I
    invoke-static {v0, v2}, Lcom/android/nfc/NfcService;->access$5002(Lcom/android/nfc/NfcService;I)I

    .line 6954
    iget-object v0, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->mCancelWaiter:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 6955
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6956
    monitor-exit p0

    return-void

    .line 6955
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

    .line 6948
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 6910
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NfcService"

    const-string v3, "Starting CardEmulation status check"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6913
    :cond_0
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 6914
    iget-object v2, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->seActivateCount:I
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$5000(Lcom/android/nfc/NfcService;)I

    move-result v2

    if-le v2, v4, :cond_1

    .line 6915
    iget-object v2, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x1

    # setter for: Lcom/android/nfc/NfcService;->seActivateCount:I
    invoke-static {v2, v3}, Lcom/android/nfc/NfcService;->access$5002(Lcom/android/nfc/NfcService;I)I

    .line 6916
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->mCancelWaiter:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6917
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->mCancelWaiter:Ljava/lang/Object;

    iget v4, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->mTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 6919
    iget-boolean v2, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->mCanceled:Z

    if-eqz v2, :cond_2

    .line 6920
    monitor-exit v3

    .line 6945
    :goto_0
    return-void

    .line 6922
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->seActivateCount:I
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$5000(Lcom/android/nfc/NfcService;)I

    move-result v2

    if-gt v2, v6, :cond_3

    iget-object v2, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->fieldOnCount:I
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$4600(Lcom/android/nfc/NfcService;)I

    move-result v2

    if-le v2, v7, :cond_5

    .line 6923
    :cond_3
    const/4 v0, 0x0

    .line 6924
    .local v0, "ceErrorType":I
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6926
    .local v1, "jsonObject":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->seActivateCount:I
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$5000(Lcom/android/nfc/NfcService;)I

    move-result v2

    if-le v2, v6, :cond_7

    .line 6927
    const/4 v0, 0x2

    .line 6932
    :cond_4
    :goto_1
    const-string v2, "CE_ERR"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6935
    iget-object v2, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->this$0:Lcom/android/nfc/NfcService;

    const-string v4, "POSF"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/nfc/NfcService;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 6937
    .end local v0    # "ceErrorType":I
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "NfcService"

    const-string v4, "Stoping CardEmulation status check"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6938
    :cond_6
    iget-object v2, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->this$0:Lcom/android/nfc/NfcService;

    const/4 v4, 0x0

    # setter for: Lcom/android/nfc/NfcService;->isTimerStarted:Z
    invoke-static {v2, v4}, Lcom/android/nfc/NfcService;->access$4702(Lcom/android/nfc/NfcService;Z)Z

    .line 6939
    iget-object v2, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->this$0:Lcom/android/nfc/NfcService;

    const/4 v4, 0x0

    # setter for: Lcom/android/nfc/NfcService;->fieldOnCount:I
    invoke-static {v2, v4}, Lcom/android/nfc/NfcService;->access$4602(Lcom/android/nfc/NfcService;I)I

    .line 6940
    iget-object v2, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->this$0:Lcom/android/nfc/NfcService;

    const/4 v4, 0x0

    # setter for: Lcom/android/nfc/NfcService;->seActivateCount:I
    invoke-static {v2, v4}, Lcom/android/nfc/NfcService;->access$5002(Lcom/android/nfc/NfcService;I)I

    .line 6941
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 6942
    :catch_0
    move-exception v2

    goto :goto_0

    .line 6928
    .restart local v0    # "ceErrorType":I
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_7
    :try_start_3
    iget-object v2, p0, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->fieldOnCount:I
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$4600(Lcom/android/nfc/NfcService;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-le v2, v7, :cond_4

    .line 6929
    const/4 v0, 0x1

    goto :goto_1

    .line 6943
    .end local v0    # "ceErrorType":I
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    goto :goto_0
.end method
