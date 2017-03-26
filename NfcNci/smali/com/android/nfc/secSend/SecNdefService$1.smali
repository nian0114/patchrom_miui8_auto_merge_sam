.class Lcom/android/nfc/secSend/SecNdefService$1;
.super Ljava/lang/Object;
.source "SecNdefService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/secSend/SecNdefService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mSecSnepInfo:Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

.field msg:Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;

.field final synthetic this$0:Lcom/android/nfc/secSend/SecNdefService;


# direct methods
.method constructor <init>(Lcom/android/nfc/secSend/SecNdefService;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/nfc/secSend/SecNdefService$1;->this$0:Lcom/android/nfc/secSend/SecNdefService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 100
    sget-boolean v3, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "SecNdefService"

    const-string v4, "Runnable Starts!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 103
    iget-object v3, p0, Lcom/android/nfc/secSend/SecNdefService$1;->this$0:Lcom/android/nfc/secSend/SecNdefService;

    # getter for: Lcom/android/nfc/secSend/SecNdefService;->mSecNdefSendQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v3}, Lcom/android/nfc/secSend/SecNdefService;->access$000(Lcom/android/nfc/secSend/SecNdefService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;

    iput-object v3, p0, Lcom/android/nfc/secSend/SecNdefService$1;->msg:Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;

    .line 104
    sget-boolean v3, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "SecNdefService"

    const-string v4, "Runnable taken!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    sget-object v4, Lcom/android/nfc/secSend/SecNdefService;->mSecSnepTransmissionLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/secSend/SecNdefService$1;->this$0:Lcom/android/nfc/secSend/SecNdefService;

    # getter for: Lcom/android/nfc/secSend/SecNdefService;->mSecSnepInfoArray:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/nfc/secSend/SecNdefService;->access$100(Lcom/android/nfc/secSend/SecNdefService;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lcom/android/nfc/secSend/SecNdefService$1;->msg:Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;

    invoke-virtual {v5}, Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;->getSAP()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    iput-object v3, p0, Lcom/android/nfc/secSend/SecNdefService$1;->mSecSnepInfo:Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    if-eqz v3, :cond_2

    .line 108
    new-instance v2, Lcom/android/nfc/snep/SnepClient;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "urn:nfc:xsn:samsung.com:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/nfc/secSend/SecNdefService$1;->mSecSnepInfo:Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    invoke-virtual {v5}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/nfc/snep/SnepClient;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .local v2, "snepClient":Lcom/android/nfc/snep/SnepClient;
    :try_start_2
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepClient;->connect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :try_start_3
    iget-object v3, p0, Lcom/android/nfc/secSend/SecNdefService$1;->msg:Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;

    invoke-virtual {v3}, Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;->getMsg()Landroid/nfc/NdefMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/snep/SnepClient;->put(Landroid/nfc/NdefMessage;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    :try_start_4
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 126
    iget-object v3, p0, Lcom/android/nfc/secSend/SecNdefService$1;->this$0:Lcom/android/nfc/secSend/SecNdefService;

    iget-object v5, p0, Lcom/android/nfc/secSend/SecNdefService$1;->mSecSnepInfo:Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    invoke-virtual {v5}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/nfc/secSend/SecNdefService;->sendSecSendComplete(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/nfc/secSend/SecNdefService;->access$300(Lcom/android/nfc/secSend/SecNdefService;Ljava/lang/String;)V

    .line 127
    sget-boolean v3, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "SecNdefService"

    const-string v5, "Send complete!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v2    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    :cond_2
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "ex":Ljava/lang/InterruptedException;
    sget-boolean v3, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "SecNdefService"

    const-string v4, "Runnable Interrupted!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_3
    return-void

    .line 111
    .restart local v2    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    sget-boolean v3, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "SecNdefService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to connect "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_4
    iget-object v3, p0, Lcom/android/nfc/secSend/SecNdefService$1;->this$0:Lcom/android/nfc/secSend/SecNdefService;

    iget-object v5, p0, Lcom/android/nfc/secSend/SecNdefService$1;->mSecSnepInfo:Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    invoke-virtual {v5}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/nfc/secSend/SecNdefService;->sendSecUnsupported(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/nfc/secSend/SecNdefService;->access$200(Lcom/android/nfc/secSend/SecNdefService;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 115
    monitor-exit v4

    goto/16 :goto_0

    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 120
    .restart local v0    # "e":Ljava/io/IOException;
    sget-boolean v3, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "SecNdefService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_5
    iget-object v3, p0, Lcom/android/nfc/secSend/SecNdefService$1;->this$0:Lcom/android/nfc/secSend/SecNdefService;

    # getter for: Lcom/android/nfc/secSend/SecNdefService;->mSecNdefSendQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v3}, Lcom/android/nfc/secSend/SecNdefService;->access$000(Lcom/android/nfc/secSend/SecNdefService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    iget-object v5, p0, Lcom/android/nfc/secSend/SecNdefService$1;->msg:Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;

    invoke-interface {v3, v5}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 123
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method
