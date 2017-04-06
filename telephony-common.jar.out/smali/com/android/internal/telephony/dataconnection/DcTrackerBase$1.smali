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
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    move/from16 v19, v0

    .local v19, "isPreviouslyWifiConnected":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .local v5, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "onReceive: action="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    const-string v30, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_RIL_KeepMobileDataEvenWifiOn"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_1

    const-string v30, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_DETECTED"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isWifiActualConnected()Z

    move-result v31

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->changeMobileState(Z)V
    invoke-static/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$000(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Z)V

    :cond_1
    :goto_1
    const-string v30, "VZW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v31, v0

    invoke-static {}, Lcom/android/internal/telephony/PhoneBase;->getMainOperatorName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v0

    invoke-static {}, Lcom/android/internal/telephony/PhoneBase;->supportsGlobalModeForUsaCdma()Z

    move-result v30

    if-eqz v30, :cond_2

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    move/from16 v30, v0

    if-nez v30, :cond_2

    const-string v30, "gsm.sim.operator.numeric"

    const-string v31, ""

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .local v24, "operatorNumeric":Ljava/lang/String;
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .end local v24    # "operatorNumeric":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_RIL_PromptToDataRoam"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_4

    :cond_3
    const-string v30, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4

    const-string v30, "Roaming"

    const/16 v31, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    if-eqz v30, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNeedRoamingDataSelctionPopup:Z

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mWaitingForUserSelection:Z

    const-string v30, "DataEnable"

    const/16 v31, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    if-eqz v30, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "DataEnable = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "DataEnable"

    const/16 v33, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const-string v31, "nothing"

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    :cond_4
    const-string v30, "SKT"

    const-string v31, "CMCC"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_5

    const-string v30, "com.android.phone.UsimDownload.end"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const-string v31, "nothing"

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    :cond_5
    const-string v30, "LGT"

    const-string v31, "CMCC"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_6

    const-string v30, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAirplaneMode()Z

    move-result v30

    if-nez v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v30

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mWaitingForUserSelection:Z

    move/from16 v30, v0

    if-nez v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const-string v31, "DATA : air plane mode is disabled "

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNeedRoamingDataSelctionPopup:Z

    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_RIL_SupportEpdg"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_7

    const-string v30, "android.intent.action.EXCLUDE_IMS_PACKET_COUNT"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const-string v30, "STATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .local v26, "state":Ljava/lang/String;
    const-string v30, "on"

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mExcludeImsPacketCount:Z

    .end local v26    # "state":Ljava/lang/String;
    :cond_7
    :goto_3
    const-string v30, "android.intent.action.retrySetupData"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const-string v31, "call onTrySetupData cause of received intent retrySetupData"

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const-string v31, "dataEnabled"

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDomesticModel()Z

    move-result v30

    if-eqz v30, :cond_9

    const-string v30, "android.intent.action.SET_DEPENDENCY_MET"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_9

    const-string v30, "Met"

    const/16 v31, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .local v20, "met":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "SET_DEPENDENCY_MET: met = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDependencyMet(Z)V

    .end local v20    # "met":Z
    :cond_9
    return-void

    :cond_a
    const-string v30, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_b
    const-string v30, "android.intent.action.PDP_RESET_TEST"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_d

    const-string v30, "actionNum"

    const/16 v31, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .local v7, "doRecoveryAction":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "PDP Rest Test: doRecoveryAction= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    if-nez v7, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const-string v31, "pdpReset"

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpAllConnections(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v7    # "doRecoveryAction":I
    :cond_d
    const-string v30, "com.android.server.status.network_mode_sync"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "getLteDataOnEnabled() "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLteDataOnEnabled()Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLteDataOnEnabled()Z

    move-result v30

    if-eqz v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v30, v0

    const/16 v31, 0x9

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_e
    const-string v30, "com.android.internal.telephony.data-reconnect"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Reconnect alarm. Previous state was "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_f
    const-string v30, "com.android.internal.telephony.data-restart-trysetup"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const-string v31, "Restart trySetup alarm"

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentRestartTrySetupAlarm(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_10
    const-string v30, "com.android.internal.telephony.data-stall"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentDataStallAlarm(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_11
    const-string v30, "com.android.internal.telephony.provisioning_apn_alarm"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentProvisioningApnAlarm(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_12
    const-string v30, "com.android.internal.telephony.preferred_data_1"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_13

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v27

    .local v27, "subId":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "INTENT_PREFERED_DATA_1, mPhone.getSubId()="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", subId[0]="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x0

    aget v32, v27, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v30

    const/16 v31, 0x0

    aget v31, v27, v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    goto/16 :goto_0

    .end local v27    # "subId":[I
    :cond_13
    const-string v30, "com.android.internal.telephony.preferred_data_2"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_14

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v27

    .restart local v27    # "subId":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "INTENT_PREFERED_DATA_2, mPhone.getSubId()="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", subId[0]="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x0

    aget v32, v27, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v30

    const/16 v31, 0x0

    aget v31, v27, v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    goto/16 :goto_0

    .end local v27    # "subId":[I
    :cond_14
    const-string v30, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_15

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_0

    const-string v30, "XXV"

    const-string v31, "ro.csc.sales_code"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    const-string v30, "subscription"

    const/16 v31, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .local v27, "subId":I
    invoke-static/range {v27 .. v27}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v25

    .local v25, "phoneId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v30

    move/from16 v0, v25

    move/from16 v1, v30

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v14

    .local v14, "gprsState":I
    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const-string v31, "Default data subscription is changed. gprs state is already IN_SERVICE."

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v31, v0

    const v32, 0x42003

    const-string v33, "DDS changed"

    invoke-virtual/range {v31 .. v33}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v14    # "gprsState":I
    .end local v25    # "phoneId":I
    .end local v27    # "subId":I
    :cond_15
    const-string v30, "com.android.internal.telephony.GET_DATA_ENABLED"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v30

    const-string v31, "phone"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telephony/TelephonyManager;

    .local v29, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "INTENT_GET_DATA_ENABLED, getDataEnabled()="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", getDefaultDataSubId()="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", preferred_data="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v32

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "getDataEnabled()="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", getDefaultDataSubId()="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", preferred_data="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v31

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .local v28, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v30

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .end local v28    # "text":Ljava/lang/String;
    .end local v29    # "tm":Landroid/telephony/TelephonyManager;
    :cond_16
    const-string v30, "com.android.internal.telephony.SET_DATA_ENABLED"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_17

    const-string v30, "enable"

    const/16 v31, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .local v12, "enable":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v30

    const-string v31, "phone"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telephony/TelephonyManager;

    .restart local v29    # "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "INTENT_SET_DATA_ENABLED, enable="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto/16 :goto_0

    .end local v12    # "enable":Z
    .end local v29    # "tm":Landroid/telephony/TelephonyManager;
    :cond_17
    const-string v30, "com.android.internal.telephony.cdma-initializeState"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDunInitializeStateTimerExpired()V

    goto/16 :goto_0

    :cond_18
    const-string v30, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_29

    const-string v30, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v22

    check-cast v22, Landroid/net/NetworkInfo;

    .local v22, "networkInfo":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v31, v0

    if-eqz v22, :cond_1c

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v30

    if-eqz v30, :cond_1c

    const/16 v30, 0x1

    :goto_4
    move/from16 v0, v30

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NETWORK_STATE_CHANGED_ACTION: mIsWifiConnected="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    const-string v30, "SPR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v31, v0

    invoke-static {}, Lcom/android/internal/telephony/PhoneBase;->getMainOperatorName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v30

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1b

    if-eqz v22, :cond_28

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v30

    if-nez v30, :cond_28

    const/16 v30, 0x1

    move/from16 v0, v19

    move/from16 v1, v30

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v30, v0

    const-string v31, "roam_setting_data_domestic"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1d

    const/4 v11, 0x1

    .local v11, "domesticRoamEnabled":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v30, v0

    const-string v31, "roam_setting_data_lte"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1e

    const/4 v10, 0x1

    .local v10, "domesticLteRoamEnabled":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v30, v0

    const-string v31, "roam_setting_data_international"

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1f

    const/16 v18, 0x1

    .local v18, "internationalRoamEnabled":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v30, v0

    const-string v31, "roam_setting_data_lte_international"

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_20

    const/16 v17, 0x1

    .local v17, "internationalLteRoamEnabled":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v30, v0

    const-string v31, "roam_guard_data_domestic"

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_21

    const/4 v8, 0x1

    .local v8, "domesticDataGuardEnabled":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v30, v0

    const-string v31, "roam_guard_data_lte"

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_22

    const/4 v9, 0x1

    .local v9, "domesticLteDataGuardEnabled":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v30, v0

    const-string v31, "roam_guard_data_international"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_23

    const/4 v15, 0x1

    .local v15, "internationalDataGuardEnabled":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v30, v0

    const-string v31, "roam_guard_data_lte_international"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_24

    const/16 v16, 0x1

    .local v16, "internationalLteDataGuardEnabled":Z
    :goto_c
    if-eqz v11, :cond_19

    if-eqz v8, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneBase;->IsDomesticRoaming()Z

    move-result v30

    if-nez v30, :cond_1a

    :cond_19
    if-eqz v10, :cond_25

    if-eqz v9, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneBase;->IsDomesticLteRoaming()Z

    move-result v30

    if-eqz v30, :cond_25

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const-string v31, " showDomesticDataGuard due to wifi disconnected"

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    const-string v30, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    move-object/from16 v0, v30

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, "dialogIntent":Landroid/content/Intent;
    const-string v30, "status"

    const-string v31, "domesticRoam"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v30

    sget-object v31, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v6    # "dialogIntent":Landroid/content/Intent;
    .end local v8    # "domesticDataGuardEnabled":Z
    .end local v9    # "domesticLteDataGuardEnabled":Z
    .end local v10    # "domesticLteRoamEnabled":Z
    .end local v11    # "domesticRoamEnabled":Z
    .end local v15    # "internationalDataGuardEnabled":Z
    .end local v16    # "internationalLteDataGuardEnabled":Z
    .end local v17    # "internationalLteRoamEnabled":Z
    .end local v18    # "internationalRoamEnabled":Z
    :cond_1b
    :goto_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_RIL_KeepMobileDataEvenWifiOn"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isWifiActualConnected()Z

    move-result v31

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->changeMobileState(Z)V
    invoke-static/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$000(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Z)V

    goto/16 :goto_0

    :cond_1c
    const/16 v30, 0x0

    goto/16 :goto_4

    :cond_1d
    const/4 v11, 0x0

    goto/16 :goto_5

    .restart local v11    # "domesticRoamEnabled":Z
    :cond_1e
    const/4 v10, 0x0

    goto/16 :goto_6

    .restart local v10    # "domesticLteRoamEnabled":Z
    :cond_1f
    const/16 v18, 0x0

    goto/16 :goto_7

    .restart local v18    # "internationalRoamEnabled":Z
    :cond_20
    const/16 v17, 0x0

    goto/16 :goto_8

    .restart local v17    # "internationalLteRoamEnabled":Z
    :cond_21
    const/4 v8, 0x0

    goto/16 :goto_9

    .restart local v8    # "domesticDataGuardEnabled":Z
    :cond_22
    const/4 v9, 0x0

    goto/16 :goto_a

    .restart local v9    # "domesticLteDataGuardEnabled":Z
    :cond_23
    const/4 v15, 0x0

    goto/16 :goto_b

    .restart local v15    # "internationalDataGuardEnabled":Z
    :cond_24
    const/16 v16, 0x0

    goto/16 :goto_c

    .restart local v16    # "internationalLteDataGuardEnabled":Z
    :cond_25
    if-eqz v18, :cond_26

    if-eqz v15, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneBase;->IsInternationalRoaming()Z

    move-result v30

    if-nez v30, :cond_27

    :cond_26
    if-eqz v17, :cond_1b

    if-eqz v16, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneBase;->IsInternationalLteRoaming()Z

    move-result v30

    if-eqz v30, :cond_1b

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const-string v31, " showInternationalDataGuard due to wifi disconnected"

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    const-string v30, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    move-object/from16 v0, v30

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v6    # "dialogIntent":Landroid/content/Intent;
    const-string v30, "status"

    const-string v31, "internationalRoam"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v30

    sget-object v31, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_d

    .end local v6    # "dialogIntent":Landroid/content/Intent;
    .end local v8    # "domesticDataGuardEnabled":Z
    .end local v9    # "domesticLteDataGuardEnabled":Z
    .end local v10    # "domesticLteRoamEnabled":Z
    .end local v11    # "domesticRoamEnabled":Z
    .end local v15    # "internationalDataGuardEnabled":Z
    .end local v16    # "internationalLteDataGuardEnabled":Z
    .end local v17    # "internationalLteRoamEnabled":Z
    .end local v18    # "internationalRoamEnabled":Z
    :cond_28
    if-eqz v22, :cond_1b

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v30

    if-eqz v30, :cond_1b

    if-nez v19, :cond_1b

    new-instance v6, Landroid/content/Intent;

    const-string v30, "android.intent.action.ACTION_CLOSE_DIALOG_DATA_ROAMING_GUARD"

    move-object/from16 v0, v30

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v6    # "dialogIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v30

    sget-object v31, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_d

    .end local v6    # "dialogIntent":Landroid/content/Intent;
    .end local v22    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_29
    const-string v30, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2c

    const-string v30, "wifi_state"

    const/16 v31, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2b

    const/4 v13, 0x1

    .local v13, "enabled":Z
    :goto_e
    if-nez v13, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "WIFI_STATE_CHANGED_ACTION: enabled="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " mIsWifiConnected="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_RIL_KeepMobileDataEvenWifiOn"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isWifiActualConnected()Z

    move-result v31

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->changeMobileState(Z)V
    invoke-static/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$000(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Z)V

    goto/16 :goto_0

    .end local v13    # "enabled":Z
    :cond_2b
    const/4 v13, 0x0

    goto :goto_e

    :cond_2c
    const-string v30, "android.intent.action.SET_POLICY_DATA_ENABLE"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2e

    const-string v30, "enabled"

    const/16 v31, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .restart local v13    # "enabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const v31, 0x42020

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .local v21, "msg":Landroid/os/Message;
    if-eqz v13, :cond_2d

    const/16 v30, 0x1

    :goto_f
    move/from16 v0, v30

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_2d
    const/16 v30, 0x0

    goto :goto_f

    .end local v13    # "enabled":Z
    .end local v21    # "msg":Landroid/os/Message;
    :cond_2e
    const-string v30, "android.intent.action.ACTION_HONGBAO_RECEIVED"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v30, v0

    const-string v31, "red_packet_mode"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    if-eqz v30, :cond_30

    const/4 v4, 0x1

    .local v4, "HongbaoModeState":Z
    :goto_10
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsHongbaoModeActivated:Z
    invoke-static/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$102(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const v31, 0x42070

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->hasMessages(I)Z

    move-result v30

    if-eqz v30, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const v31, 0x42070

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const-string v31, "[Hongbao] remove EVENT_HONGBAO_RECEIVED"

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const v31, 0x42070

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    .local v23, "onDelay":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const-wide/32 v32, 0x57e40

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v4    # "HongbaoModeState":Z
    .end local v23    # "onDelay":Landroid/os/Message;
    :cond_30
    const/4 v4, 0x0

    goto :goto_10

    :cond_31
    const-string v30, "android.intent.action.ACTION_HONGBAO_MODE_DEACTIVATED"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsHongbaoModeActivated:Z
    invoke-static/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$102(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Z)Z

    goto/16 :goto_0

    :cond_32
    const-string v30, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_AUTHENTICATED"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isWifiActualConnected()Z

    move-result v31

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->changeMobileState(Z)V
    invoke-static/range {v30 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$000(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Z)V

    goto/16 :goto_1

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNeedDataSelctionPopup:Z

    goto/16 :goto_2

    .restart local v26    # "state":Ljava/lang/String;
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mExcludeImsPacketCount:Z

    goto/16 :goto_3
.end method
