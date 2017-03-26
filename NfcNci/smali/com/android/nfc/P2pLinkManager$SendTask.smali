.class final Lcom/android/nfc/P2pLinkManager$SendTask;
.super Landroid/os/AsyncTask;
.source "P2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SendTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field handoverClient:Lcom/android/nfc/handover/HandoverClient;

.field nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

.field snepClient:Lcom/android/nfc/snep/SnepClient;

.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method doHandover([Landroid/net/Uri;Landroid/os/UserHandle;)I
    .locals 7
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x2

    .line 933
    const/4 v2, 0x0

    .line 934
    .local v2, "response":Landroid/nfc/NdefMessage;
    invoke-static {}, Lcom/android/nfc/beam/BeamManager;->getInstance()Lcom/android/nfc/beam/BeamManager;

    move-result-object v0

    .line 936
    .local v0, "beamManager":Lcom/android/nfc/beam/BeamManager;
    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamManager;->isBeamInProgress()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 967
    :cond_0
    :goto_0
    return v4

    .line 940
    :cond_1
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v6, v6, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v6}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 941
    .local v1, "request":Landroid/nfc/NdefMessage;
    if-eqz v1, :cond_4

    .line 942
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v6, :cond_2

    .line 944
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    # invokes: Lcom/android/nfc/P2pLinkManager;->trySBeamRecord(Landroid/nfc/NdefMessage;)V
    invoke-static {v6, v1}, Lcom/android/nfc/P2pLinkManager;->access$000(Lcom/android/nfc/P2pLinkManager;Landroid/nfc/NdefMessage;)V

    .line 946
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v6, v1}, Lcom/android/nfc/handover/HandoverClient;->sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 948
    :cond_2
    if-nez v2, :cond_3

    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v6, :cond_3

    .line 952
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v6, v1}, Lcom/android/nfc/snep/SnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    .line 953
    .local v3, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v3}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 955
    .end local v3    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_3
    if-nez v2, :cond_5

    move v4, v5

    .line 956
    goto :goto_0

    :cond_4
    move v4, v5

    .line 959
    goto :goto_0

    .line 962
    :cond_5
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v5, v5, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v6, v6, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v6, v2}, Lcom/android/nfc/handover/HandoverDataParser;->getOutgoingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v6

    invoke-virtual {v0, v5, v6, p1, p2}, Lcom/android/nfc/beam/BeamManager;->startBeamSend(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 967
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 927
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$SendTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v12, 0x0

    .line 987
    const/4 v3, 0x0

    .line 989
    .local v3, "result":Z
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v10

    .line 990
    :try_start_0
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v9, v9, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_0

    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v9, v9, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v11, 0x4

    if-eq v9, v11, :cond_2

    .line 991
    :cond_0
    monitor-exit v10

    .line 1060
    :cond_1
    :goto_0
    return-object v12

    .line 993
    :cond_2
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v2, v9, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 994
    .local v2, "m":Landroid/nfc/NdefMessage;
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v5, v9, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 995
    .local v5, "uris":[Landroid/net/Uri;
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v8, v9, Lcom/android/nfc/P2pLinkManager;->mUserHandle:Landroid/os/UserHandle;

    .line 996
    .local v8, "userHandle":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v9, v9, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    iput-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    .line 997
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v9, v9, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    iput-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 998
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v9, v9, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    iput-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 999
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1003
    .local v6, "time":J
    if-eqz v5, :cond_4

    .line 1004
    sget-boolean v9, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v9, :cond_3

    const-string v9, "NfcP2pLinkManager"

    const-string v10, "Trying handover request"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_3
    :try_start_1
    invoke-virtual {p0, v5, v8}, Lcom/android/nfc/P2pLinkManager$SendTask;->doHandover([Landroid/net/Uri;Landroid/os/UserHandle;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 1007
    .local v1, "handoverResult":I
    packed-switch v1, :pswitch_data_0

    .line 1028
    .end local v1    # "handoverResult":I
    :cond_4
    :goto_1
    if-nez v3, :cond_6

    if-eqz v2, :cond_6

    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v9, :cond_6

    .line 1029
    sget-boolean v9, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v9, :cond_5

    const-string v9, "NfcP2pLinkManager"

    const-string v10, "Sending ndef via SNEP"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_5
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/nfc/P2pLinkManager$SendTask;->doSnepProtocol(Landroid/nfc/NdefMessage;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    .line 1032
    .local v4, "snepResult":I
    packed-switch v4, :pswitch_data_1

    .line 1040
    const/4 v3, 0x0

    .line 1047
    .end local v4    # "snepResult":I
    :cond_6
    :goto_2
    if-nez v3, :cond_7

    if-eqz v2, :cond_7

    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    if-eqz v9, :cond_7

    .line 1049
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    # invokes: Lcom/android/nfc/P2pLinkManager;->trySBeamRecord(Landroid/nfc/NdefMessage;)V
    invoke-static {v9, v2}, Lcom/android/nfc/P2pLinkManager;->access$000(Lcom/android/nfc/P2pLinkManager;Landroid/nfc/NdefMessage;)V

    .line 1051
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    invoke-virtual {v9, v2}, Lcom/android/nfc/ndefpush/NdefPushClient;->push(Landroid/nfc/NdefMessage;)Z

    move-result v3

    .line 1054
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v6, v10, v6

    .line 1055
    sget-boolean v9, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v9, :cond_8

    const-string v9, "NfcP2pLinkManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SendTask result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", time ms="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_8
    if-eqz v3, :cond_1

    .line 1057
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v9, v2, v6, v7}, Lcom/android/nfc/P2pLinkManager;->onSendComplete(Landroid/nfc/NdefMessage;J)V

    goto/16 :goto_0

    .line 999
    .end local v2    # "m":Landroid/nfc/NdefMessage;
    .end local v5    # "uris":[Landroid/net/Uri;
    .end local v6    # "time":J
    .end local v8    # "userHandle":Landroid/os/UserHandle;
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 1009
    .restart local v1    # "handoverResult":I
    .restart local v2    # "m":Landroid/nfc/NdefMessage;
    .restart local v5    # "uris":[Landroid/net/Uri;
    .restart local v6    # "time":J
    .restart local v8    # "userHandle":Landroid/os/UserHandle;
    :pswitch_0
    const/4 v3, 0x1

    .line 1010
    goto :goto_1

    .line 1012
    :pswitch_1
    const/4 v3, 0x0

    .line 1013
    goto :goto_1

    .line 1015
    :pswitch_2
    const/4 v3, 0x0

    .line 1016
    :try_start_4
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v9}, Lcom/android/nfc/P2pLinkManager;->onHandoverUnsupported()V

    goto :goto_1

    .line 1023
    .end local v1    # "handoverResult":I
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_1

    .line 1019
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "handoverResult":I
    :pswitch_3
    const/4 v3, 0x0

    .line 1020
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v9}, Lcom/android/nfc/P2pLinkManager;->onHandoverBusy()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1034
    .end local v1    # "handoverResult":I
    .restart local v4    # "snepResult":I
    :pswitch_4
    const/4 v3, 0x1

    .line 1035
    goto :goto_2

    .line 1037
    :pswitch_5
    const/4 v3, 0x0

    .line 1038
    goto :goto_2

    .line 1042
    .end local v4    # "snepResult":I
    :catch_1
    move-exception v0

    .line 1043
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_2

    .line 1007
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1032
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method doSnepProtocol(Landroid/nfc/NdefMessage;)I
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 971
    if-eqz p1, :cond_0

    .line 973
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    # invokes: Lcom/android/nfc/P2pLinkManager;->trySBeamRecord(Landroid/nfc/NdefMessage;)V
    invoke-static {v0, p1}, Lcom/android/nfc/P2pLinkManager;->access$000(Lcom/android/nfc/P2pLinkManager;Landroid/nfc/NdefMessage;)V

    .line 975
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v0, p1}, Lcom/android/nfc/snep/SnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 976
    const/4 v0, 0x0

    .line 978
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
