.class final Lcom/android/nfc/P2pLinkManager$ConnectTask;
.super Landroid/os/AsyncTask;
.source "P2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConnectTask"
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
.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 853
    const/4 v2, 0x0

    .line 854
    .local v2, "needsHandover":Z
    const/4 v3, 0x0

    .line 855
    .local v3, "needsNdef":Z
    const/4 v6, 0x0

    .line 856
    .local v6, "success":Z
    const/4 v1, 0x0

    .line 857
    .local v1, "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    const/4 v5, 0x0

    .line 858
    .local v5, "snepClient":Lcom/android/nfc/snep/SnepClient;
    const/4 v4, 0x0

    .line 860
    .local v4, "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v8

    .line 861
    :try_start_0
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v7, :cond_0

    .line 862
    const/4 v2, 0x1

    .line 865
    :cond_0
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-eqz v7, :cond_1

    .line 866
    const/4 v3, 0x1

    .line 868
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    if-eqz v2, :cond_2

    .line 872
    new-instance v1, Lcom/android/nfc/handover/HandoverClient;

    .end local v1    # "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    invoke-direct {v1}, Lcom/android/nfc/handover/HandoverClient;-><init>()V

    .line 874
    .restart local v1    # "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    :try_start_1
    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverClient;->connect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 875
    const/4 v6, 0x1

    .line 881
    :cond_2
    :goto_0
    if-nez v3, :cond_3

    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    .line 882
    :cond_3
    new-instance v5, Lcom/android/nfc/snep/SnepClient;

    .end local v5    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    invoke-direct {v5}, Lcom/android/nfc/snep/SnepClient;-><init>()V

    .line 884
    .restart local v5    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    :try_start_2
    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepClient;->connect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 885
    const/4 v6, 0x1

    .line 890
    :goto_1
    if-nez v6, :cond_4

    .line 891
    new-instance v4, Lcom/android/nfc/ndefpush/NdefPushClient;

    .end local v4    # "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    invoke-direct {v4}, Lcom/android/nfc/ndefpush/NdefPushClient;-><init>()V

    .line 893
    .restart local v4    # "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    :try_start_3
    invoke-virtual {v4}, Lcom/android/nfc/ndefpush/NdefPushClient;->connect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 894
    const/4 v6, 0x1

    .line 901
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v8

    .line 902
    :try_start_4
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 904
    if-eqz v1, :cond_5

    .line 905
    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverClient;->close()V

    .line 907
    :cond_5
    if-eqz v5, :cond_6

    .line 908
    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 910
    :cond_6
    if-eqz v4, :cond_7

    .line 911
    invoke-virtual {v4}, Lcom/android/nfc/ndefpush/NdefPushClient;->close()V

    .line 913
    :cond_7
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 921
    :goto_3
    return-object v7

    .line 868
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0

    .line 886
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 887
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_1

    .line 895
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 896
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_2

    .line 918
    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    :try_start_6
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v1, v7, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 919
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v5, v7, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    .line 920
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v4, v7, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 921
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    monitor-exit v8

    goto :goto_3

    .line 923
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 837
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 840
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    sget-boolean v0, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcP2pLinkManager"

    const-string v1, "ConnectTask was cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 844
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 845
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->onLlcpServicesConnected()V

    goto :goto_0

    .line 847
    :cond_2
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Could not connect required NFC transports"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 837
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
