.class Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyPropertiesEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyPropertiesEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v23, "TelephonyPropertiesEdit"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onReceive : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "NEW_CARD_CHECK"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    const-string v23, "slotWitch"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .local v22, "slot":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v22

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyNewCard(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$000(Lcom/android/internal/telephony/TelephonyPropertiesEdit;I)V

    .end local v22    # "slot":I
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const-string v23, "simcard_sim_id"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .local v20, "simId":I
    const-string v23, "simcard_sim_icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .local v19, "simIconIndex":Ljava/lang/String;
    const-string v23, "simcard_sim_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .local v21, "simName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyIconName(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$100(Lcom/android/internal/telephony/TelephonyPropertiesEdit;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v19    # "simIconIndex":Ljava/lang/String;
    .end local v20    # "simId":I
    .end local v21    # "simName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "ACTION_REGCARD_ICON_CHANGED"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .local v9, "extras":Landroid/os/Bundle;
    const-string v23, "CDMA01_ICON_INDEX"

    const-string v24, "6"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "cdmaIcon":Ljava/lang/String;
    const-string v23, "GSM_ICON_INDEX"

    const-string v24, "7"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "gsm01Icon":Ljava/lang/String;
    const-string v23, "GSM02_ICON_INDEX"

    const-string v24, "8"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "gsm02Icon":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v7, v11, v14}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$200(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "cdmaIcon":Ljava/lang/String;
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v11    # "gsm01Icon":Ljava/lang/String;
    .end local v14    # "gsm02Icon":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "ACTION_REGCARD_CARDNAME_CHANGED"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .restart local v9    # "extras":Landroid/os/Bundle;
    const-string v23, "CDMA01_CARDNAME"

    const-string v24, "Slot 1"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "cdmaName":Ljava/lang/String;
    const-string v23, "GSM_CARDNAME"

    const-string v24, "Slot 2"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "gsm01Name":Ljava/lang/String;
    const-string v23, "GSM02_CARDNAME"

    const-string v24, "Slot 1"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "gsm02Name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyCardname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v8, v12, v15}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$300(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v8    # "cdmaName":Ljava/lang/String;
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v12    # "gsm01Name":Ljava/lang/String;
    .end local v15    # "gsm02Name":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "ACTION_NETWORK_ACTIVATE_STATE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .restart local v9    # "extras":Landroid/os/Bundle;
    const-string v23, "CARDTYPE_CDMA01"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "cdmaAct":Ljava/lang/String;
    const-string v23, "CARDTYPE_GSM"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "gsm01Act":Ljava/lang/String;
    const-string v23, "CARDTYPE_GSM02"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "gsm02Act":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v6, v10, v13}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$400(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6    # "cdmaAct":Ljava/lang/String;
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v10    # "gsm01Act":Ljava/lang/String;
    .end local v13    # "gsm02Act":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    const-string v23, "slot"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .restart local v22    # "slot":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyState(I)V
    invoke-static/range {v23 .. v24}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$500(Lcom/android/internal/telephony/TelephonyPropertiesEdit;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyState(I)V
    invoke-static/range {v23 .. v24}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$500(Lcom/android/internal/telephony/TelephonyPropertiesEdit;I)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_0

    const-string v23, "CTC"

    const-string v24, "ro.csc.sales_code"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .local v16, "i":Landroid/content/Intent;
    const-string v23, "ACTION_SET_PROPERTY_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v23, "property_item"

    const-string v24, "SIM_STATE_CHANGED"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v23, "simSlot"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v16    # "i":Landroid/content/Intent;
    .end local v22    # "slot":I
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "ACTION_PLMN_UPDATE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .restart local v9    # "extras":Landroid/os/Bundle;
    const-string v23, "slot1"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, "sSwitchStateC":Ljava/lang/String;
    const-string v23, "slot2"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, "sSwitchStateG":Ljava/lang/String;
    const-string v23, "slot1State"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .local v4, "bSwitchImgViewC":Z
    const-string v23, "slot2State"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .local v5, "bSwitchImgViewG":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyPLMN(Ljava/lang/String;Ljava/lang/String;ZZ)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$600(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .end local v4    # "bSwitchImgViewC":Z
    .end local v5    # "bSwitchImgViewG":Z
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v17    # "sSwitchStateC":Ljava/lang/String;
    .end local v18    # "sSwitchStateG":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "com.samsung.intent.action.Slot1OffCompleted"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "com.samsung.intent.action.Slot2OffCompleted"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "com.samsung.intent.action.Slot1OnCompleted"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "com.samsung.intent.action.Slot2OnCompleted"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->handleCardOnOffCompleted(Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$700(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0
.end method
