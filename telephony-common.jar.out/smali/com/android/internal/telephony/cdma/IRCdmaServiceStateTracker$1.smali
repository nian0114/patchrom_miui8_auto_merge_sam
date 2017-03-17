.class Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "IRCdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v14, "airplane_mode_on"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    const/4 v8, 0x1

    .line 124
    .local v8, "isAirplaneMode":Z
    :goto_0
    const-string v13, "IRCDMASST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Global mode] action = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v13, "android.intent.action.SCREEN_ON"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 126
    const/4 v13, 0x1

    # setter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mScreenOn:Z
    invoke-static {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$002(Z)Z

    .line 128
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isPwrSaveModeTimerRunning()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 129
    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$100()Z

    move-result v13

    if-nez v13, :cond_0

    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mGsmInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$200()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 130
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    .line 328
    :cond_1
    :goto_1
    return-void

    .line 122
    .end local v8    # "isAirplaneMode":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 132
    .restart local v8    # "isAirplaneMode":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    goto :goto_1

    .line 135
    :cond_4
    const-string v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 136
    const/4 v13, 0x0

    # setter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mScreenOn:Z
    invoke-static {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$302(Z)Z

    goto :goto_1

    .line 137
    :cond_5
    const-string v13, "android.intent.action.ACTION_GLOBAL_NOSVC_CHK_TIMER_EXPIRED_CDMA"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 138
    if-nez v8, :cond_6

    .line 139
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startGlobalNetworkSearchTimer()V

    .line 140
    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$400()Z

    move-result v13

    if-nez v13, :cond_1

    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mGsmInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$500()Z

    move-result v13

    if-nez v13, :cond_1

    .line 141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sendNoServiceNotiIntent()V

    goto :goto_1

    .line 144
    :cond_6
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] Now airplane mode on."

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopGlobalNoSvcChkTimer()V

    goto :goto_1

    .line 147
    :cond_7
    const-string v13, "android.intent.action.ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED_INTERNAL_CDMA"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 148
    if-nez v8, :cond_b

    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isGlobalMode(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->globalNoSvcChkTimerRequired(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isChinaAreas()Z

    move-result v13

    if-nez v13, :cond_a

    .line 150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isPwrSaveModeRequired()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 151
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startPwrSaveModeTimer(Lcom/android/internal/telephony/PhoneBase;I)V

    .line 159
    :cond_8
    :goto_2
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/internal/telephony/ServiceStateTracker;->alreadyExpired:Z

    .line 160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v14, "ril.mIsSwitchedToCdma"

    const-string v15, "false"

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 152
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v13, v14, :cond_8

    .line 153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sendNetChangeIntent(Z)V

    .line 154
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->incNetSrchCnt(I)V

    goto :goto_2

    .line 162
    :cond_a
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] Ignore EXPIRED_INTERNAL_CDMA."

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopGlobalNetworkSearchTimer()V

    .line 164
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isGlobalMode(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isChinaAreas()Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isSlot1CdmaActive()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isSlot1DualCard()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 165
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] Caused by isGlobalMode is false. Start cdma srch timer again."

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startGlobalNetworkSearchTimer()V

    goto/16 :goto_1

    .line 170
    :cond_b
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] Now airplane mode on."

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopGlobalNetworkSearchTimer()V

    goto/16 :goto_1

    .line 173
    :cond_c
    const-string v13, "android.intent.action.ACTION_GLOBAL_PWR_SAVE_MODE_STAY_TIMER_EXPIRED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 174
    if-nez v8, :cond_f

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isPwrSaveModeTimerRunning()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 176
    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$600()Z

    move-result v13

    if-nez v13, :cond_d

    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mGsmInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$700()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 177
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    goto/16 :goto_1

    .line 179
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    goto/16 :goto_1

    .line 183
    :cond_f
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] Now airplane mode on."

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 185
    :cond_10
    const-string v13, "android.intent.action.ACTION_SIMCARDMANAGER_LAUNCH_TIMER_EXPIRED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 186
    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSimCardMngEverLaunched:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$800()Z

    move-result v13

    if-nez v13, :cond_1

    .line 187
    const/4 v4, 0x0

    .line 188
    .local v4, "currGsmMccInt":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getCurrCdmaMcc()I

    move-result v3

    .line 189
    .local v3, "currCdmaMccInt":I
    const-string v13, "gsm.operator.numeric"

    const/4 v14, 0x1

    const-string v15, ""

    invoke-static {v13, v14, v15}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "currGsmOprtNum":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x5

    if-lt v13, v14, :cond_11

    .line 192
    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 195
    :cond_11
    const-string v13, "IRCDMASST"

    const-string v14, "[SimCardMngLaunch] simcardmanager launch timer expired."

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v13, "IRCDMASST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[SimCardMngLaunch] currCdmaMccInt : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " currGsmMccInt : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v7, Landroid/content/Intent;

    const-string v13, "android.intent.action.ACTION_SIMCARDMANAGER_LAUNCH"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v7, "intentFwd":Landroid/content/Intent;
    const/high16 v13, 0x20000000

    invoke-virtual {v7, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 201
    const/16 v13, 0x1cc

    if-eq v3, v13, :cond_12

    const/16 v13, 0x1c7

    if-eq v3, v13, :cond_12

    const/16 v13, 0x1cc

    if-eq v4, v13, :cond_12

    const/16 v13, 0x1c7

    if-ne v4, v13, :cond_13

    .line 203
    :cond_12
    const-string v13, "china_mainland"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopSimCardMngLaunchTimer(Lcom/android/internal/telephony/PhoneBase;)V

    .line 210
    const/4 v13, 0x1

    # setter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSimCardMngEverLaunched:Z
    invoke-static {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$902(Z)Z

    goto/16 :goto_1

    .line 205
    :cond_13
    const-string v13, "china_mainland"

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 212
    .end local v3    # "currCdmaMccInt":I
    .end local v4    # "currGsmMccInt":I
    .end local v5    # "currGsmOprtNum":Ljava/lang/String;
    .end local v7    # "intentFwd":Landroid/content/Intent;
    :cond_14
    const-string v13, "PRL_GETTING_RETRY_TIMER"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 213
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] PRL_GETTING_RETRY_TIMER expired!!!"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$1000(Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/16 v15, 0x73

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "alarm"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 219
    .local v2, "am":Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->prlGettingRetrySender:Landroid/app/PendingIntent;

    invoke-virtual {v2, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 245
    .end local v2    # "am":Landroid/app/AlarmManager;
    :cond_15
    const-string v13, "SEND_BACKGROUND_SWITCHING"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 246
    const/4 v12, 0x0

    .line 247
    .local v12, "switchedGsm":Z
    sget-boolean v13, Lcom/android/internal/telephony/ServiceStateTracker;->IsGlobalModeAvail:Z

    if-nez v13, :cond_16

    .line 248
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/internal/telephony/ServiceStateTracker;->IsGlobalModeAvail:Z

    .line 249
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->switchToGsmInCdmaRoamingArea(Z)Z

    move-result v12

    .line 251
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isCdmaManSel(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v10

    .line 253
    .local v10, "isCdmaManSel":Z
    const-string v13, "IRCDMASST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Global mode] SEND_BACKGROUND_SWITCHING isCdmaManSel:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " isSlot1DualCard: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isSlot1DualCard()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    if-nez v12, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isFirstCdmaNoSvcChkTimerStarted()Z

    move-result v13

    if-nez v13, :cond_17

    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->globalNoSvcChkTimerRequired(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 263
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] Currently cdma noSvc timer not started yet. Start here."

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startGlobalNoSvcChkTimer()V

    .line 268
    :cond_17
    if-eqz v10, :cond_18

    const-string v13, "2012"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_RIL_ConfigSpecForCtcMtrIR"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isSlot1DualCard()Z

    move-result v13

    if-nez v13, :cond_1a

    .line 271
    :cond_19
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] set fakeDispCanceled to true"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v14, "ril.fakeDispCanceled"

    const-string v15, "true"

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->setFakeDispCancelToCP()V

    .line 274
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_1

    .line 275
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getCurrCdmaMcc()I

    move-result v13

    if-lez v13, :cond_1

    .line 277
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startFakeDispCancelTimer()V

    goto/16 :goto_1

    .line 279
    .end local v10    # "isCdmaManSel":Z
    .end local v12    # "switchedGsm":Z
    :cond_1b
    const-string v13, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_SWITCH_BACK_TO_CDMA_IN_CHINA"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 282
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->pollState()V

    goto/16 :goto_1

    .line 283
    :cond_1c
    const-string v13, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 285
    .local v6, "extra":Landroid/os/Bundle;
    const-string v13, "GSM"

    const-string v14, "pendedMode"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 286
    const-string v13, "switchToGsmInCdmaRoamingArea"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 287
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const-string v14, "GSM"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startPendingIntentTimer(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 289
    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const-string v14, "GSM"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startPendingIntentTimer(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 292
    :cond_1e
    const-string v13, "IRCDMASST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Global mode] pendedMode error:: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "pendedMode"

    invoke-virtual {v6, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 294
    .end local v6    # "extra":Landroid/os/Bundle;
    :cond_1f
    const-string v13, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING_TIMER_EXPIRED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 296
    .restart local v6    # "extra":Landroid/os/Bundle;
    const-string v13, "GSM"

    const-string v14, "pendedMode"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopPendingIntentTimer()V

    .line 298
    const-string v13, "isSwitchToGsmInCdmaRoamingArea"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 299
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->switchToGsmInCdmaRoamingArea(Z)Z

    goto/16 :goto_1

    .line 300
    :cond_20
    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$1100()Z

    move-result v13

    if-eqz v13, :cond_21

    .line 301
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] cdma inSvc! no need to switch!!!"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 302
    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v13, v14, :cond_1

    .line 303
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sendNetChangeIntent(Z)V

    goto/16 :goto_1

    .line 306
    :cond_22
    const-string v13, "IRCDMASST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Global mode] pendedMode error:: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "pendedMode"

    invoke-virtual {v6, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 308
    .end local v6    # "extra":Landroid/os/Bundle;
    :cond_23
    const-string v13, "ACTION_DUALMODE_SETTING"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24

    .line 309
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->switchToGsmInCdmaRoamingArea(Z)Z

    goto/16 :goto_1

    .line 310
    :cond_24
    const-string v13, "android.intent.action.ACTION_FAKE_DISP_CANCEL_TIMER"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    .line 311
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] set fakeDispCanceled to true"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v14, "ril.fakeDispCanceled"

    const-string v15, "true"

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->setFakeDispCancelToCP()V

    .line 314
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->updateSpnDisplay()V

    .line 315
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopFakeDispCancelTimer()V

    goto/16 :goto_1

    .line 316
    :cond_25
    const-string v13, "com.samsung.intent.action.SlotSwitched"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 317
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->SlotSwitched()V

    goto/16 :goto_1

    .line 318
    :cond_26
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_28

    .line 319
    const-string v13, "true"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const-string v15, "ril.mHasEverSwitchedToGsm"

    const-string v16, "false"

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 320
    .local v11, "mHasEverSwitchedToGsm":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v14, "airplane_mode_on"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_27

    const/4 v9, 0x1

    .line 321
    .local v9, "isAirplaneModeOn":Z
    :goto_4
    if-eqz v9, :cond_1

    if-nez v11, :cond_1

    .line 322
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const-string v14, "switchToGsmInCdmaRoamingArea is breaked off by airplane mode on"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v14, "ril.m2ndNetSelCnfWaiting"

    const-string v15, "false"

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 320
    .end local v9    # "isAirplaneModeOn":Z
    :cond_27
    const/4 v9, 0x0

    goto :goto_4

    .line 326
    .end local v11    # "mHasEverSwitchedToGsm":Z
    :cond_28
    const-string v13, "IRCDMASST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IRCDMASST received unexpected Intent: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
