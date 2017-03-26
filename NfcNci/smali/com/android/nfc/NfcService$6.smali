.class Lcom/android/nfc/NfcService$6;
.super Landroid/content/BroadcastReceiver;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 6044
    iput-object p1, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6047
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 6049
    .local v1, "action":Ljava/lang/String;
    const-string v11, "com.sec.android.app.nfctest.NFC_TEST_START"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 6050
    const-string v11, "NfcService"

    const-string v12, "Start Factory Test"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6051
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    const/4 v12, 0x1

    # setter for: Lcom/android/nfc/NfcService;->mTestMode:Z
    invoke-static {v11, v12}, Lcom/android/nfc/NfcService;->access$4502(Lcom/android/nfc/NfcService;Z)Z

    .line 6052
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    const/4 v12, 0x0

    # setter for: Lcom/android/nfc/NfcService;->mNoDiscoveryNfcOn:Z
    invoke-static {v11, v12}, Lcom/android/nfc/NfcService;->access$1702(Lcom/android/nfc/NfcService;Z)Z

    .line 6195
    :cond_0
    :goto_0
    return-void

    .line 6053
    :cond_1
    const-string v11, "com.sec.android.app.nfctest.NFC_TEST_END"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 6054
    const-string v11, "NfcService"

    const-string v12, "END Factory Test"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6055
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    const/4 v12, 0x0

    # setter for: Lcom/android/nfc/NfcService;->mTestMode:Z
    invoke-static {v11, v12}, Lcom/android/nfc/NfcService;->access$4502(Lcom/android/nfc/NfcService;Z)Z

    .line 6056
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    const/4 v12, 0x0

    # setter for: Lcom/android/nfc/NfcService;->mNoDiscoveryNfcOn:Z
    invoke-static {v11, v12}, Lcom/android/nfc/NfcService;->access$1702(Lcom/android/nfc/NfcService;Z)Z

    .line 6057
    const-string v11, "NXP_PN547C2"

    iget-object v12, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v12}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "NXP_PN548C2"

    iget-object v12, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v12}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "NXP_PN551"

    iget-object v12, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v12}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v11}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/nfc/NfcFeatureUtil;->isSamsungChip()Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v11}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/nfc/NfcFeatureUtil;->isBroadcomChip()Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v11}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/nfc/NfcFeatureUtil;->isSonyChip()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 6063
    :cond_2
    const-string v11, "NfcService"

    const-string v12, "NFC No Action"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6065
    :cond_3
    new-instance v11, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v12, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v11, v12}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Integer;

    invoke-virtual {v11, v12}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 6067
    :cond_4
    const-string v11, "com.sec.android.app.nfctest.NFC_DISCOVERY_ENABLE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 6068
    const-string v11, "NfcService"

    const-string v12, "Enable Discovery"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6069
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v11}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    iget v11, v11, Lcom/android/nfc/NfcService;->mState:I

    const/4 v12, 0x5

    if-eq v11, v12, :cond_5

    .line 6070
    const-string v11, "NfcService"

    const-string v12, "Skip due to NFC off"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6073
    :cond_5
    iget-object v12, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v12

    .line 6074
    :try_start_0
    const-string v11, "NfcService"

    const-string v13, "Enable Discovery 2"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6075
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    const/4 v13, 0x3

    iput v13, v11, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 6076
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    iget-object v13, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    iget v13, v13, Lcom/android/nfc/NfcService;->mScreenState:I

    # invokes: Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;
    invoke-static {v11, v13}, Lcom/android/nfc/NfcService;->access$6200(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v5

    .line 6077
    .local v5, "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    iget-object v11, v11, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v5, v11}, Lcom/android/nfc/NfcDiscoveryParameters;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;
    invoke-static {v11}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v11

    const/4 v13, 0x3

    if-ne v11, v13, :cond_7

    .line 6079
    :cond_6
    invoke-virtual {v5}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 6080
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    iget-object v11, v11, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v11}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v8

    .line 6081
    .local v8, "shouldRestart":Z
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v11}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v11

    invoke-interface {v11, v5, v8}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 6084
    .end local v8    # "shouldRestart":Z
    :cond_7
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    iput-object v5, v11, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 6085
    monitor-exit v12

    goto/16 :goto_0

    .end local v5    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 6086
    :cond_8
    const-string v11, "com.sec.android.app.nfctest.NFC_DISCOVERY_DISABLE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 6087
    const-string v11, "NfcService"

    const-string v12, "Disable Discovery"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6088
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v11}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    iget v11, v11, Lcom/android/nfc/NfcService;->mState:I

    const/4 v12, 0x5

    if-eq v11, v12, :cond_9

    .line 6089
    const-string v11, "NfcService"

    const-string v12, "Skip due to NFC off"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6092
    :cond_9
    iget-object v12, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v12

    .line 6093
    :try_start_1
    const-string v11, "NfcService"

    const-string v13, "Disable Discovery 2"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6094
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v11}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 6095
    monitor-exit v12

    goto/16 :goto_0

    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v11

    .line 6096
    :cond_a
    const-string v11, "com.sec.android.app.nfctest.NFC_ON_NO_DISCOVERY"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 6097
    const-string v11, "NfcService"

    const-string v12, "Disable Discovery When NFC ON"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6098
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    const/4 v12, 0x1

    # setter for: Lcom/android/nfc/NfcService;->mNoDiscoveryNfcOn:Z
    invoke-static {v11, v12}, Lcom/android/nfc/NfcService;->access$1702(Lcom/android/nfc/NfcService;Z)Z

    goto/16 :goto_0

    .line 6100
    :cond_b
    const-string v11, "com.sec.android.app.nfctest.CHECK_SEC_NFC_CARDMODE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 6101
    const-string v11, "NfcService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CHECK_SEC_NFC_CARDMODE TEST Result: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isSeActivated:I
    invoke-static {v13}, Lcom/android/nfc/NfcService;->access$4900(Lcom/android/nfc/NfcService;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6102
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.sec.android.app.nfctest.CHECK_SEC_NFC_CARDMODE_RESP"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6103
    .local v7, "respIntent":Landroid/content/Intent;
    const-string v11, "CARDMODE_ACTIVATED"

    iget-object v12, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isSeActivated:I
    invoke-static {v12}, Lcom/android/nfc/NfcService;->access$4900(Lcom/android/nfc/NfcService;)I

    move-result v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6104
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    iget-object v11, v11, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6105
    const-string v11, "NfcService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CHECK_SEC_NFC_CARDMODE TEST finished. So isSeActivated is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isSeActivated:I
    invoke-static {v13}, Lcom/android/nfc/NfcService;->access$4900(Lcom/android/nfc/NfcService;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6107
    .end local v7    # "respIntent":Landroid/content/Intent;
    :cond_c
    const-string v11, "com.sec.android.app.nfctest.NFC_CHECK_SIM"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 6108
    const-string v11, "NfcService"

    const-string v12, "check SIM I/O"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6109
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v11}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v11

    if-nez v11, :cond_d

    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    iget v11, v11, Lcom/android/nfc/NfcService;->mState:I

    const/4 v12, 0x5

    if-eq v11, v12, :cond_d

    .line 6110
    const-string v11, "NfcService"

    const-string v12, "Skip due to NFC off"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6113
    :cond_d
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v11}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/android/nfc/DeviceHost;->SWPSelfTest(I)I

    move-result v9

    .line 6114
    .local v9, "status":I
    const-string v11, "NfcService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SWP TEST Result:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6115
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.sec.android.app.nfctest.NFC_CHECK_SIM_RESPONSE"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6116
    .restart local v7    # "respIntent":Landroid/content/Intent;
    const-string v11, "SIM_DATA"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6117
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    iget-object v11, v11, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 6118
    .end local v7    # "respIntent":Landroid/content/Intent;
    .end local v9    # "status":I
    :cond_e
    const-string v11, "com.sec.android.app.nfctest.NFC_CHECK_ESE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 6119
    const-string v11, "NfcService"

    const-string v12, "check eSE I/O"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6120
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v11}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v11

    if-nez v11, :cond_f

    .line 6121
    const-string v11, "NfcService"

    const-string v12, "Skip due to NFC off"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6124
    :cond_f
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v11}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/android/nfc/DeviceHost;->SWPSelfTest(I)I

    move-result v9

    .line 6125
    .restart local v9    # "status":I
    const-string v11, "NfcService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ESE TEST Result:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6126
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.sec.android.app.nfctest.NFC_CHECK_ESE_RESPONSE"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6127
    .restart local v7    # "respIntent":Landroid/content/Intent;
    const-string v11, "SIM_DATA"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6128
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    iget-object v11, v11, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 6129
    .end local v7    # "respIntent":Landroid/content/Intent;
    .end local v9    # "status":I
    :cond_10
    const-string v11, "com.sec.android.app.nfctest.PRBS_TEST_ON"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 6130
    const-string v11, "NfcService"

    const-string v12, "PRBS_ON"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6131
    new-instance v2, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v2, v11}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 6132
    .local v2, "disableTask":Lcom/android/nfc/NfcService$EnableDisableTask;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Integer;

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v2, v11}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 6134
    :try_start_2
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->get()Ljava/lang/Object;

    .line 6135
    const-string v11, "NXP_PN547C2"

    iget-object v12, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v12}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    const-string v11, "NXP_PN548C2"

    iget-object v12, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v12}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    const-string v11, "NXP_PN551"

    iget-object v12, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v12}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 6138
    :cond_11
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v11}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/nfc/DeviceHost;->initialize()Z

    .line 6140
    :cond_12
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v11}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v11

    const-string v12, "TECH"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string v13, "RATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-interface {v11, v12, v13}, Lcom/android/nfc/DeviceHost;->doPrbsOn(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 6141
    :catch_0
    move-exception v3

    .line 6142
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "NfcService"

    const-string v12, "failed to prbsOff"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6144
    .end local v2    # "disableTask":Lcom/android/nfc/NfcService$EnableDisableTask;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_13
    const-string v11, "com.sec.android.app.nfctest.PRBS_TEST_OFF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 6145
    const-string v11, "NfcService"

    const-string v12, "PRBS_OFF"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6146
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v11}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/nfc/DeviceHost;->doPrbsOff()V

    .line 6147
    new-instance v4, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v4, v11}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 6148
    .local v4, "enableTask":Lcom/android/nfc/NfcService$EnableDisableTask;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Integer;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v4, v11}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 6150
    :try_start_3
    invoke-virtual {v4}, Lcom/android/nfc/NfcService$EnableDisableTask;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 6151
    :catch_1
    move-exception v3

    .line 6152
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v11, "NfcService"

    const-string v12, "failed to prbsOff"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6154
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "enableTask":Lcom/android/nfc/NfcService$EnableDisableTask;
    :cond_14
    const-string v11, "services.nfc.action.GET_FIRMWARE_VERSION"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 6155
    new-instance v7, Landroid/content/Intent;

    const-string v11, "services.nfc.action.GET_FIRMWARE_VERSION_RESPONSE"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6156
    .restart local v7    # "respIntent":Landroid/content/Intent;
    const-string v11, "vendor"

    iget-object v12, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v12}, Lcom/android/nfc/NfcService;->getNfcFwVendor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6157
    const-string v11, "nfc.fw.rfreg_display_ver"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_15

    .line 6158
    const-string v11, "version"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    iget-object v14, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/nfc/DeviceHost;->getFWVersion()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/nfc/NfcService;->getNfcFwVersion(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "nfc.fw.rfreg_display_ver"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6162
    :goto_1
    const-string v11, "package"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6163
    .local v6, "pkg":Ljava/lang/String;
    if-eqz v6, :cond_16

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_16

    .line 6164
    invoke-virtual {v7, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6165
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    iget-object v11, v11, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 6160
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_15
    const-string v11, "version"

    iget-object v12, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    iget-object v13, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v13}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/nfc/DeviceHost;->getFWVersion()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/nfc/NfcService;->getNfcFwVersion(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 6167
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_16
    const-string v11, "NfcService"

    const-string v12, "can\'t send response"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6169
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "respIntent":Landroid/content/Intent;
    :cond_17
    const-string v11, "com.sec.android.app.nfctest.GET_TECH_TYPE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 6170
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v11}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/nfc/DeviceHost;->doGetSecureElementTechList()I

    move-result v10

    .line 6171
    .local v10, "tech_type":I
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.sec.android.app.nfctest.GET_TECH_TYPE_RESPONSE"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6172
    .restart local v7    # "respIntent":Landroid/content/Intent;
    const-string v11, "TECH_TYPE"

    invoke-virtual {v7, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6173
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    iget-object v11, v11, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 6174
    .end local v7    # "respIntent":Landroid/content/Intent;
    .end local v10    # "tech_type":I
    :cond_18
    const-string v11, "com.sec.android.app.nfctest.SET_TECH_TYPE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 6175
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v11}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v11

    const-string v12, "TECH_TYPE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    invoke-interface {v11, v12}, Lcom/android/nfc/DeviceHost;->doSetSecureElementListenTechMask(I)V

    goto/16 :goto_0

    .line 6176
    :cond_19
    const-string v11, "com.sec.android.app.nfctest.FIRMWARE_FORCE_DOWNLOAD"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 6177
    sget-boolean v11, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v11, :cond_1d

    .line 6178
    const-string v11, "NfcService"

    const-string v12, "enforceFWDownloadMode start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6179
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/nfc/NfcService;->setEnforceFWDownloadMode(Z)V

    .line 6180
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    iget v11, v11, Lcom/android/nfc/NfcService;->mState:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_1a

    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    iget v11, v11, Lcom/android/nfc/NfcService;->mState:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_1b

    .line 6181
    :cond_1a
    new-instance v11, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v12, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v11, v12}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Integer;

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v12}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 6182
    new-instance v11, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v12, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v11, v12}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Integer;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v12}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 6184
    :cond_1b
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    iget v11, v11, Lcom/android/nfc/NfcService;->mState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1c

    .line 6185
    iget-object v11, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v11}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/nfc/DeviceHost;->checkFirmware()V

    goto/16 :goto_0

    .line 6188
    :cond_1c
    const-string v11, "NfcService"

    const-string v12, "enforceFWDownloadMode failed for wrong state"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6191
    :cond_1d
    const-string v11, "NfcService"

    const-string v12, "enforceFWDownloadMode ignore"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
