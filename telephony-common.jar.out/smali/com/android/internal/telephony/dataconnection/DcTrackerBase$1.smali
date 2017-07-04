.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;
.super Landroid/content/BroadcastReceiver;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    move/from16 v17, v0

    .line 511
    .local v17, "isPreviouslyWifiConnected":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onReceive: action="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 513
    const-string v27, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 650
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v27

    const-string v28, "CscFeature_RIL_KeepMobileDataEvenWifiOn"

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 652
    const-string v27, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_DETECTED"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2f

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isWifiActualConnected()Z

    move-result v28

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->changeMobileState(Z)V
    invoke-static/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$000(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Z)V

    .line 659
    :cond_1
    :goto_1
    const-string v27, "VZW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v28, v0

    invoke-static {}, Lcom/android/internal/telephony/PhoneBase;->getMainOperatorName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-static {}, Lcom/android/internal/telephony/PhoneBase;->supportsGlobalModeForUsaCdma()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 667
    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    move/from16 v27, v0

    if-nez v27, :cond_2

    .line 668
    const-string v27, "gsm.sim.operator.numeric"

    const-string v28, ""

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 669
    .local v21, "operatorNumeric":Ljava/lang/String;
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 673
    .end local v21    # "operatorNumeric":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v27

    const-string v28, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v27

    const-string v28, "CscFeature_RIL_PromptToDataRoam"

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 676
    :cond_3
    const-string v27, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 677
    const-string v27, "Roaming"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v27

    if-eqz v27, :cond_30

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNeedRoamingDataSelctionPopup:Z

    .line 682
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mWaitingForUserSelection:Z

    .line 683
    const-string v27, "DataEnable"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DataEnable = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "DataEnable"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const-string v28, "nothing"

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    .line 690
    :cond_4
    const-string v27, "SKT"

    const-string v28, "EUR"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v27

    const-string v28, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 693
    const-string v27, "com.android.phone.UsimDownload.end"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const-string v28, "nothing"

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    .line 746
    :cond_5
    const-string v27, "LGT"

    const-string v28, "EUR"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 747
    const-string v27, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAirplaneMode()Z

    move-result v27

    if-nez v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mWaitingForUserSelection:Z

    move/from16 v27, v0

    if-nez v27, :cond_6

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const-string v28, "DATA : air plane mode is disabled "

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNeedRoamingDataSelctionPopup:Z

    .line 760
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v27

    const-string v28, "CscFeature_RIL_SupportEpdg"

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 761
    const-string v27, "android.intent.action.EXCLUDE_IMS_PACKET_COUNT"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 762
    const-string v27, "STATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 763
    .local v23, "state":Ljava/lang/String;
    const-string v27, "on"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_31

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mExcludeImsPacketCount:Z

    .line 771
    .end local v23    # "state":Ljava/lang/String;
    :cond_7
    :goto_3
    const-string v27, "android.intent.action.retrySetupData"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const-string v28, "call onTrySetupData cause of received intent retrySetupData"

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const-string v28, "dataEnabled"

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    .line 777
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDomesticModel()Z

    move-result v27

    if-eqz v27, :cond_9

    .line 778
    const-string v27, "android.intent.action.SET_DEPENDENCY_MET"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 779
    const-string v27, "Met"

    const/16 v28, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 780
    .local v18, "met":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "SET_DEPENDENCY_MET: met = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDependencyMet(Z)V

    .line 792
    .end local v18    # "met":Z
    :cond_9
    return-void

    .line 516
    :cond_a
    const-string v27, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 520
    :cond_b
    const-string v27, "android.intent.action.PDP_RESET_TEST"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 521
    const-string v27, "actionNum"

    const/16 v28, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 522
    .local v5, "doRecoveryAction":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "PDP Rest Test: doRecoveryAction= "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 523
    if-nez v5, :cond_c

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const-string v28, "pdpReset"

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpAllConnections(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 525
    :cond_c
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v5, v0, :cond_0

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 528
    .end local v5    # "doRecoveryAction":I
    :cond_d
    const-string v27, "com.android.server.status.network_mode_sync"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "getLteDataOnEnabled() "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLteDataOnEnabled()Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLteDataOnEnabled()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v27, v0

    const/16 v28, 0x9

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 532
    :cond_e
    const-string v27, "com.android.internal.telephony.data-reconnect"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Reconnect alarm. Previous state was "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 535
    :cond_f
    const-string v27, "com.android.internal.telephony.data-restart-trysetup"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const-string v28, "Restart trySetup alarm"

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentRestartTrySetupAlarm(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 538
    :cond_10
    const-string v27, "com.android.internal.telephony.data-stall"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_11

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentDataStallAlarm(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 540
    :cond_11
    const-string v27, "com.android.internal.telephony.provisioning_apn_alarm"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_12

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentProvisioningApnAlarm(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 542
    :cond_12
    const-string v27, "com.android.internal.telephony.preferred_data_1"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13

    .line 543
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v24

    .line 544
    .local v24, "subId":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "INTENT_PREFERED_DATA_1, mPhone.getSubId()="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", subId[0]="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x0

    aget v29, v24, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 545
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v27

    const/16 v28, 0x0

    aget v28, v24, v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    goto/16 :goto_0

    .line 546
    .end local v24    # "subId":[I
    :cond_13
    const-string v27, "com.android.internal.telephony.preferred_data_2"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_14

    .line 547
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v24

    .line 548
    .restart local v24    # "subId":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "INTENT_PREFERED_DATA_2, mPhone.getSubId()="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", subId[0]="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x0

    aget v29, v24, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v27

    const/16 v28, 0x0

    aget v28, v24, v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    goto/16 :goto_0

    .line 551
    .end local v24    # "subId":[I
    :cond_14
    const-string v27, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_15

    .line 552
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_0

    const-string v27, "XXV"

    const-string v28, "ro.csc.sales_code"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 554
    const-string v27, "subscription"

    const/16 v28, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 555
    .local v24, "subId":I
    invoke-static/range {v24 .. v24}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v22

    .line 556
    .local v22, "phoneId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v27

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v12

    .line 558
    .local v12, "gprsState":I
    if-nez v12, :cond_0

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const-string v28, "Default data subscription is changed. gprs state is already IN_SERVICE."

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v28, v0

    const v29, 0x42003

    const-string v30, "DDS changed"

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 565
    .end local v12    # "gprsState":I
    .end local v22    # "phoneId":I
    .end local v24    # "subId":I
    :cond_15
    const-string v27, "com.android.internal.telephony.GET_DATA_ENABLED"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v27

    const-string v28, "phone"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/telephony/TelephonyManager;

    .line 567
    .local v26, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "INTENT_GET_DATA_ENABLED, getDataEnabled()="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", getDefaultDataSubId()="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", preferred_data="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v29

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 570
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "getDataEnabled()="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", getDefaultDataSubId()="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", preferred_data="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v28

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 572
    .local v25, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 573
    .end local v25    # "text":Ljava/lang/String;
    .end local v26    # "tm":Landroid/telephony/TelephonyManager;
    :cond_16
    const-string v27, "com.android.internal.telephony.SET_DATA_ENABLED"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_17

    .line 574
    const-string v27, "enable"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 575
    .local v10, "enable":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v27

    const-string v28, "phone"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/telephony/TelephonyManager;

    .line 576
    .restart local v26    # "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "INTENT_SET_DATA_ENABLED, enable="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 577
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto/16 :goto_0

    .line 578
    .end local v10    # "enable":Z
    .end local v26    # "tm":Landroid/telephony/TelephonyManager;
    :cond_17
    const-string v27, "com.android.internal.telephony.cdma-initializeState"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_18

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDunInitializeStateTimerExpired()V

    goto/16 :goto_0

    .line 581
    :cond_18
    const-string v27, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_29

    .line 582
    const-string v27, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/net/NetworkInfo;

    .line 584
    .local v20, "networkInfo":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v28, v0

    if-eqz v20, :cond_1c

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v27

    if-eqz v27, :cond_1c

    const/16 v27, 0x1

    :goto_4
    move/from16 v0, v27

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "NETWORK_STATE_CHANGED_ACTION: mIsWifiConnected="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 587
    const-string v27, "SPR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v28, v0

    invoke-static {}, Lcom/android/internal/telephony/PhoneBase;->getMainOperatorName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1b

    .line 588
    if-eqz v20, :cond_28

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v27

    if-nez v27, :cond_28

    const/16 v27, 0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_28

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v27, v0

    const-string v28, "roam_setting_data_domestic"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d

    const/4 v9, 0x1

    .line 590
    .local v9, "domesticRoamEnabled":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v27, v0

    const-string v28, "roam_setting_data_lte"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1e

    const/4 v8, 0x1

    .line 591
    .local v8, "domesticLteRoamEnabled":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v27, v0

    const-string v28, "roam_setting_data_international"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1f

    const/16 v16, 0x1

    .line 592
    .local v16, "internationalRoamEnabled":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v27, v0

    const-string v28, "roam_setting_data_lte_international"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_20

    const/4 v15, 0x1

    .line 593
    .local v15, "internationalLteRoamEnabled":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v27, v0

    const-string v28, "roam_guard_data_domestic"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_21

    const/4 v6, 0x1

    .line 594
    .local v6, "domesticDataGuardEnabled":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v27, v0

    const-string v28, "roam_guard_data_lte"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_22

    const/4 v7, 0x1

    .line 595
    .local v7, "domesticLteDataGuardEnabled":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v27, v0

    const-string v28, "roam_guard_data_international"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_23

    const/4 v13, 0x1

    .line 596
    .local v13, "internationalDataGuardEnabled":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v27, v0

    const-string v28, "roam_guard_data_lte_international"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_24

    const/4 v14, 0x1

    .line 598
    .local v14, "internationalLteDataGuardEnabled":Z
    :goto_c
    if-eqz v9, :cond_19

    if-eqz v6, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->IsDomesticRoaming()Z

    move-result v27

    if-nez v27, :cond_1a

    :cond_19
    if-eqz v8, :cond_25

    if-eqz v7, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->IsDomesticLteRoaming()Z

    move-result v27

    if-eqz v27, :cond_25

    .line 599
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const-string v28, " showDomesticDataGuard due to wifi disconnected"

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 600
    new-instance v4, Landroid/content/Intent;

    const-string v27, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .local v4, "dialogIntent":Landroid/content/Intent;
    const-string v27, "status"

    const-string v28, "domesticRoam"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v27

    sget-object v28, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 615
    .end local v4    # "dialogIntent":Landroid/content/Intent;
    .end local v6    # "domesticDataGuardEnabled":Z
    .end local v7    # "domesticLteDataGuardEnabled":Z
    .end local v8    # "domesticLteRoamEnabled":Z
    .end local v9    # "domesticRoamEnabled":Z
    .end local v13    # "internationalDataGuardEnabled":Z
    .end local v14    # "internationalLteDataGuardEnabled":Z
    .end local v15    # "internationalLteRoamEnabled":Z
    .end local v16    # "internationalRoamEnabled":Z
    :cond_1b
    :goto_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v27

    const-string v28, "CscFeature_RIL_KeepMobileDataEvenWifiOn"

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isWifiActualConnected()Z

    move-result v28

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->changeMobileState(Z)V
    invoke-static/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$000(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Z)V

    goto/16 :goto_0

    .line 584
    :cond_1c
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 589
    :cond_1d
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 590
    .restart local v9    # "domesticRoamEnabled":Z
    :cond_1e
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 591
    .restart local v8    # "domesticLteRoamEnabled":Z
    :cond_1f
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 592
    .restart local v16    # "internationalRoamEnabled":Z
    :cond_20
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 593
    .restart local v15    # "internationalLteRoamEnabled":Z
    :cond_21
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 594
    .restart local v6    # "domesticDataGuardEnabled":Z
    :cond_22
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 595
    .restart local v7    # "domesticLteDataGuardEnabled":Z
    :cond_23
    const/4 v13, 0x0

    goto/16 :goto_b

    .line 596
    .restart local v13    # "internationalDataGuardEnabled":Z
    :cond_24
    const/4 v14, 0x0

    goto/16 :goto_c

    .line 603
    .restart local v14    # "internationalLteDataGuardEnabled":Z
    :cond_25
    if-eqz v16, :cond_26

    if-eqz v13, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->IsInternationalRoaming()Z

    move-result v27

    if-nez v27, :cond_27

    :cond_26
    if-eqz v15, :cond_1b

    if-eqz v14, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->IsInternationalLteRoaming()Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 604
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const-string v28, " showInternationalDataGuard due to wifi disconnected"

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 605
    new-instance v4, Landroid/content/Intent;

    const-string v27, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    .restart local v4    # "dialogIntent":Landroid/content/Intent;
    const-string v27, "status"

    const-string v28, "internationalRoam"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v27

    sget-object v28, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_d

    .line 609
    .end local v4    # "dialogIntent":Landroid/content/Intent;
    .end local v6    # "domesticDataGuardEnabled":Z
    .end local v7    # "domesticLteDataGuardEnabled":Z
    .end local v8    # "domesticLteRoamEnabled":Z
    .end local v9    # "domesticRoamEnabled":Z
    .end local v13    # "internationalDataGuardEnabled":Z
    .end local v14    # "internationalLteDataGuardEnabled":Z
    .end local v15    # "internationalLteRoamEnabled":Z
    .end local v16    # "internationalRoamEnabled":Z
    :cond_28
    if-eqz v20, :cond_1b

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v27

    if-eqz v27, :cond_1b

    if-nez v17, :cond_1b

    .line 610
    new-instance v4, Landroid/content/Intent;

    const-string v27, "android.intent.action.ACTION_CLOSE_DIALOG_DATA_ROAMING_GUARD"

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .restart local v4    # "dialogIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v27

    sget-object v28, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_d

    .line 619
    .end local v4    # "dialogIntent":Landroid/content/Intent;
    .end local v20    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_29
    const-string v27, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2c

    .line 620
    const-string v27, "wifi_state"

    const/16 v28, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2b

    const/4 v11, 0x1

    .line 623
    .local v11, "enabled":Z
    :goto_e
    if-nez v11, :cond_2a

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    .line 628
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "WIFI_STATE_CHANGED_ACTION: enabled="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " mIsWifiConnected="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 630
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v27

    const-string v28, "CscFeature_RIL_KeepMobileDataEvenWifiOn"

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isWifiActualConnected()Z

    move-result v28

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->changeMobileState(Z)V
    invoke-static/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$000(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Z)V

    goto/16 :goto_0

    .line 620
    .end local v11    # "enabled":Z
    :cond_2b
    const/4 v11, 0x0

    goto :goto_e

    .line 635
    :cond_2c
    const-string v27, "android.intent.action.SET_POLICY_DATA_ENABLE"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2e

    .line 636
    const-string v27, "enabled"

    const/16 v28, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 637
    .restart local v11    # "enabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const v28, 0x42020

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 638
    .local v19, "msg":Landroid/os/Message;
    if-eqz v11, :cond_2d

    const/16 v27, 0x1

    :goto_f
    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 638
    :cond_2d
    const/16 v27, 0x0

    goto :goto_f

    .line 640
    .end local v11    # "enabled":Z
    .end local v19    # "msg":Landroid/os/Message;
    :cond_2e
    const-string v27, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 641
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v27

    const-string v28, "CscFeature_RIL_KeepMobileDataEvenWifiOn"

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 642
    const-string v27, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/net/NetworkInfo;

    .line 643
    .restart local v20    # "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v27

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getType()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isWifiActualConnected()Z

    move-result v28

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->changeMobileState(Z)V
    invoke-static/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$000(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Z)V

    goto/16 :goto_0

    .line 654
    .end local v20    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_2f
    const-string v27, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_AUTHENTICATED"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isWifiActualConnected()Z

    move-result v28

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->changeMobileState(Z)V
    invoke-static/range {v27 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$000(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Z)V

    goto/16 :goto_1

    .line 680
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNeedDataSelctionPopup:Z

    goto/16 :goto_2

    .line 766
    .restart local v23    # "state":Ljava/lang/String;
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mExcludeImsPacketCount:Z

    goto/16 :goto_3
.end method
