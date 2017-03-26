.class Lcom/android/nfc/NfcService$3;
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
    .line 5696
    iput-object p1, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5699
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 5701
    .local v1, "action":Ljava/lang/String;
    const-string v14, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "com.samsung.cover.NFC.OPEN"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 5709
    :cond_0
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTestMode:Z
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$4500(Lcom/android/nfc/NfcService;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 5711
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v14}, Lcom/android/nfc/NfcService;->isFactoryTestApp()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 5712
    const-string v14, "NfcService"

    const-string v15, "SCREEN_ON, SCREEN_OFF skip - FactoryTestApp running"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6009
    :cond_2
    :goto_0
    return-void

    .line 5715
    :cond_3
    const-string v14, "NfcService"

    const-string v15, "FactoryTestApp is not running, keep going"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5719
    :cond_4
    const/4 v10, 0x1

    .line 5720
    .local v10, "screenState":I
    const-string v14, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 5721
    const/4 v10, 0x1

    .line 5794
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/nfc/NfcFeatureUtil;->isBroadcomChip()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 5795
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget v14, v14, Lcom/android/nfc/NfcService;->mScreenState:I

    if-eq v14, v10, :cond_6

    .line 5797
    packed-switch v10, :pswitch_data_0

    .line 5812
    :cond_6
    :goto_2
    const-string v14, "VZW"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mIconType:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/nfc/NfcService;->access$4200(Lcom/android/nfc/NfcService;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 5813
    const/4 v14, 0x3

    if-ne v10, v14, :cond_16

    .line 5814
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget v14, v14, Lcom/android/nfc/NfcService;->mState:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_15

    .line 5815
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    const/4 v15, 0x1

    # invokes: Lcom/android/nfc/NfcService;->showIcon(Z)V
    invoke-static {v14, v15}, Lcom/android/nfc/NfcService;->access$5300(Lcom/android/nfc/NfcService;Z)V

    .line 5825
    :cond_7
    :goto_3
    new-instance v14, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v14, v15}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 5722
    :cond_8
    const-string v14, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 5726
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;
    invoke-static {v15}, Lcom/android/nfc/NfcService;->access$5600(Lcom/android/nfc/NfcService;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v15

    # setter for: Lcom/android/nfc/NfcService;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;
    invoke-static {v14, v15}, Lcom/android/nfc/NfcService;->access$002(Lcom/android/nfc/NfcService;Lcom/samsung/android/sdk/cover/ScoverState;)Lcom/samsung/android/sdk/cover/ScoverState;

    .line 5727
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v14

    if-nez v14, :cond_a

    .line 5728
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$5700(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v10, 0x2

    .line 5731
    :goto_4
    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "BASIC ACTION_SCREEN_ON. So screenState is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;
    invoke-static/range {v16 .. v16}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    invoke-static {v10}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " by isKeyguardLocked()"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5728
    :cond_9
    const/4 v10, 0x3

    goto :goto_4

    .line 5736
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    const/4 v4, 0x1

    .line 5737
    .local v4, "coverOpen":Z
    :goto_5
    if-eqz v4, :cond_d

    .line 5738
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$5700(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v14

    if-eqz v14, :cond_c

    const/4 v10, 0x2

    .line 5741
    :goto_6
    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "When receiving ACTION_SCREEN_ON, S view cover is already opened. So screenState is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;
    invoke-static/range {v16 .. v16}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    invoke-static {v10}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " by isKeyguardLocked()"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5736
    .end local v4    # "coverOpen":Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    .line 5738
    .restart local v4    # "coverOpen":Z
    :cond_c
    const/4 v10, 0x3

    goto :goto_6

    .line 5746
    :cond_d
    const/4 v10, 0x1

    .line 5747
    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "When receiving ACTION_SCREEN_ON, S view cover is already closed. So screenState is changed to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;
    invoke-static/range {v16 .. v16}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    invoke-static {v10}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " by concept"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5751
    .end local v4    # "coverOpen":Z
    :cond_e
    const-string v14, "com.samsung.cover.NFC.OPEN"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 5754
    const-string v14, "coverOpen"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 5755
    .local v8, "isCoverOpen":Z
    if-eqz v8, :cond_10

    .line 5756
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$5700(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v14

    if-eqz v14, :cond_f

    const/4 v10, 0x2

    .line 5759
    :goto_7
    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "S view cover is opened right now. So screenState is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;
    invoke-static/range {v16 .. v16}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    invoke-static {v10}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " by isKeyguardLocked()"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5756
    :cond_f
    const/4 v10, 0x3

    goto :goto_7

    .line 5766
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v14, v14, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 5767
    .local v2, "am":Landroid/app/ActivityManager;
    const/16 v14, 0x64

    const-string v15, "com.samsung.android.spay"

    invoke-virtual {v2, v15}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v15

    if-ne v14, v15, :cond_11

    .line 5768
    const/4 v10, 0x2

    .line 5769
    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Spay is foreground. So screenState is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;
    invoke-static/range {v16 .. v16}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    invoke-static {v10}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " by concept"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5771
    :cond_11
    const/4 v10, 0x1

    .line 5772
    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "S view cover is closed right now. So screenState is changed to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;
    invoke-static/range {v16 .. v16}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    invoke-static {v10}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " by concept"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5777
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v8    # "isCoverOpen":Z
    :cond_12
    const-string v14, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 5779
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_13

    .line 5780
    const-string v14, "NfcService"

    const-string v15, "SCREEN_STATE is SCREEN_STATE_OFF. So ACTION_USER_PRESENT is ignored"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5783
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;
    invoke-static {v15}, Lcom/android/nfc/NfcService;->access$5600(Lcom/android/nfc/NfcService;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v15

    # setter for: Lcom/android/nfc/NfcService;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;
    invoke-static {v14, v15}, Lcom/android/nfc/NfcService;->access$002(Lcom/android/nfc/NfcService;Lcom/samsung/android/sdk/cover/ScoverState;)Lcom/samsung/android/sdk/cover/ScoverState;

    .line 5784
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v14

    if-eqz v14, :cond_14

    .line 5785
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v14

    if-nez v14, :cond_14

    .line 5786
    const-string v14, "NfcService"

    const-string v15, "S view cover is closed right now. ACTION_USER_PRESENT is ignored"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5790
    :cond_14
    const/4 v10, 0x3

    goto/16 :goto_1

    .line 5799
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v14

    const/4 v15, 0x2

    invoke-interface {v14, v15}, Lcom/android/nfc/DeviceHost;->setPowerMode(I)Z

    goto/16 :goto_2

    .line 5802
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v14

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Lcom/android/nfc/DeviceHost;->setPowerMode(I)Z

    goto/16 :goto_2

    .line 5805
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v14

    const/4 v15, 0x4

    invoke-interface {v14, v15}, Lcom/android/nfc/DeviceHost;->setPowerMode(I)Z

    goto/16 :goto_2

    .line 5816
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget v14, v14, Lcom/android/nfc/NfcService;->mState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    .line 5817
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    const/4 v15, 0x0

    # invokes: Lcom/android/nfc/NfcService;->showIcon(Z)V
    invoke-static {v14, v15}, Lcom/android/nfc/NfcService;->access$5300(Lcom/android/nfc/NfcService;Z)V

    goto/16 :goto_3

    .line 5820
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    const/4 v15, 0x0

    # invokes: Lcom/android/nfc/NfcService;->showIcon(Z)V
    invoke-static {v14, v15}, Lcom/android/nfc/NfcService;->access$5300(Lcom/android/nfc/NfcService;Z)V

    goto/16 :goto_3

    .line 5827
    .end local v10    # "screenState":I
    :cond_17
    const-string v14, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    const-string v14, "ATT"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mIconType:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/nfc/NfcService;->access$4200(Lcom/android/nfc/NfcService;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    :cond_18
    const-string v14, "com.samsung.intent.action.SETTINGS_SOFT_NETWORK_RESET"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 5831
    :cond_19
    new-instance v14, Lcom/android/nfc/NfcService$EnableDisableTask;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v14, v15}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5832
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 5833
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5834
    const-string v14, "NfcService"

    const-string v15, "NFC SOFT RESET"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5835
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 5836
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v15, v15, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v14, v15}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    .line 5838
    new-instance v14, Lcom/android/nfc/NfcService$EnableDisableTask;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v14, v15}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    const/16 v17, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 5842
    :cond_1a
    const-string v14, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 5843
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget v14, v14, Lcom/android/nfc/NfcService;->mState:I

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget v14, v14, Lcom/android/nfc/NfcService;->mState:I

    const/4 v15, 0x5

    if-ne v14, v15, :cond_2

    .line 5844
    :cond_1b
    sget-boolean v14, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v14, :cond_1c

    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Device received intent of QCOMHOTSWAP and mState is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5846
    :cond_1c
    new-instance v14, Lcom/android/nfc/NfcService$EnableDisableTask;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v14, v15}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5847
    new-instance v14, Lcom/android/nfc/NfcService$EnableDisableTask;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v14, v15}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    const/16 v17, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 5850
    :cond_1d
    const-string v14, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 5851
    const-string v14, "state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 5855
    .local v7, "isAirplaneModeOn":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v14, v14, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v5

    .line 5856
    .local v5, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v15, v15, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v15

    # setter for: Lcom/android/nfc/NfcService;->isEmergencyMode:Z
    invoke-static {v14, v15}, Lcom/android/nfc/NfcService;->access$5802(Lcom/android/nfc/NfcService;Z)Z

    .line 5857
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isEmergencyMode:Z
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$5800(Lcom/android/nfc/NfcService;)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 5858
    const-string v14, "NfcService"

    const-string v15, "UPS mode is not allow that nfc state change"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5862
    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v14}, Lcom/android/nfc/NfcService;->isAirplaneModeOn()Z

    move-result v14

    if-ne v7, v14, :cond_2

    .line 5865
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v14, v14, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    if-eqz v14, :cond_2

    .line 5868
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "airplane_override"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5869
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5870
    if-eqz v7, :cond_1f

    .line 5871
    new-instance v14, Lcom/android/nfc/NfcService$EnableDisableTask;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v14, v15}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5872
    const-string v14, "KOREA"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v15}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/nfc/NfcFeatureUtil;->getOperatorSettingUiType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5874
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v14, v14, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v14}, Lcom/android/nfc/NfcService$NfcAdapterService;->disableNdefPush()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5875
    :catch_0
    move-exception v6

    .line 5876
    .local v6, "ex":Landroid/os/RemoteException;
    const-string v14, "NfcService"

    const-string v15, "got remote exception"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5879
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_1f
    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "nfc_on"

    sget-boolean v16, Lcom/android/nfc/NfcService;->NFC_ON_DEFAULT:Z

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5880
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/nfc/NfcService;->mChnEnablePopupFromAirplaneOn:Z

    .line 5881
    new-instance v14, Lcom/android/nfc/NfcService$EnableDisableTask;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v14, v15}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5882
    const-string v14, "KOREA"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v15}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/nfc/NfcFeatureUtil;->getOperatorSettingUiType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5884
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v14, v14, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v14}, Lcom/android/nfc/NfcService$NfcAdapterService;->enableNdefPush()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 5885
    :catch_1
    move-exception v6

    .line 5886
    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string v14, "NfcService"

    const-string v15, "got remote exception"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5890
    .end local v5    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "isAirplaneModeOn":Z
    :cond_20
    const-string v14, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22

    .line 5891
    const-string v14, "android.intent.extra.user_handle"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 5892
    .local v13, "userId":I
    monitor-enter p0

    .line 5893
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mUserId:I
    invoke-static {v14, v13}, Lcom/android/nfc/NfcService;->access$2102(Lcom/android/nfc/NfcService;I)I

    .line 5894
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5895
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v14, v14, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v15}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/nfc/P2pLinkManager;->onUserSwitched(I)V

    .line 5896
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v14, v14, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v14, :cond_21

    .line 5897
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v15}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onUserSwitched(I)V

    .line 5900
    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v15, v15, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v14, v15}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    goto/16 :goto_0

    .line 5894
    :catchall_0
    move-exception v14

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v14

    .line 5902
    .end local v13    # "userId":I
    :cond_22
    const-string v14, "services.nfc.action.GET_NFC_DETAILS"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_24

    .line 5904
    const-string v14, "package"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5905
    .local v9, "pkg":Ljava/lang/String;
    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "GET_NFC_DETAILS. package : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5906
    if-eqz v9, :cond_23

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_23

    .line 5907
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v14, v14, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->makeNfcDetailsIntent(Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v15, v9}, Lcom/android/nfc/NfcService;->access$5900(Lcom/android/nfc/NfcService;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5909
    :cond_23
    const-string v14, "NfcService"

    const-string v15, "Can\'t send GET_NFC_DETAILS_RSP"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5912
    .end local v9    # "pkg":Ljava/lang/String;
    :cond_24
    const-string v14, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_27

    .line 5913
    const-string v14, "KOREA"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v15}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/nfc/NfcFeatureUtil;->getOperatorSettingUiType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5914
    sget-boolean v14, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v14, :cond_25

    const-string v14, "NfcService"

    const-string v15, "SETUPWIZARD_COMPLETE"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5916
    :cond_25
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v14}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v14

    if-eqz v14, :cond_26

    .line 5917
    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Don\'t change the state of NFC after changing another user : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5922
    :cond_26
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget v14, v14, Lcom/android/nfc/NfcService;->mState:I

    packed-switch v14, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_0

    .line 5924
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v14, v14, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v14}, Lcom/android/nfc/NfcService$NfcAdapterService;->enable()Z

    .line 5926
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v14, v14, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v14}, Lcom/android/nfc/NfcService$NfcAdapterService;->disableNdefPush()Z

    .line 5927
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v14, v14, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v14}, Lcom/android/nfc/NfcService$NfcAdapterService;->readerDisable()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 5933
    :catch_2
    move-exception v6

    .line 5934
    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string v14, "NfcService"

    const-string v15, "got remote exception"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5939
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_27
    const-string v14, "com.samsung.nfc.mpos.action.SELECT_HOST"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    .line 5940
    sget-boolean v14, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v14, :cond_28

    const-string v14, "NfcService"

    const-string v15, "mPOS - select host type"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5941
    :cond_28
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    const-string v15, "com.samsung.nfc.mpos.extra.PACKAGE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/nfc/NfcService;->checkmPOSPermission(Ljava/lang/String;)Z
    invoke-static {v14, v15}, Lcom/android/nfc/NfcService;->access$6000(Lcom/android/nfc/NfcService;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5943
    const-string v14, "com.samsung.nfc.mpos.extra.HOST"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5944
    .local v12, "type":Ljava/lang/String;
    const-string v14, "eSE"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_29

    .line 5945
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/android/nfc/DeviceHost;->SLSI_mPOSSelectUiccHost(Z)Z

    goto/16 :goto_0

    .line 5946
    :cond_29
    const-string v14, "SIM"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2a

    const-string v14, "UICC"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2b

    .line 5947
    :cond_2a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Lcom/android/nfc/DeviceHost;->SLSI_mPOSSelectUiccHost(Z)Z

    goto/16 :goto_0

    .line 5949
    :cond_2b
    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mPOS - select host type - unknown type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5950
    .end local v12    # "type":Ljava/lang/String;
    :cond_2c
    const-string v14, "com.samsung.nfc.mpos.action.START_DEDICATE_READERMODE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2f

    .line 5951
    sget-boolean v14, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v14, :cond_2d

    const-string v14, "NfcService"

    const-string v15, "mPOS - start dedicated reader mode"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5952
    :cond_2d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    const-string v15, "com.samsung.nfc.mpos.extra.PACKAGE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/nfc/NfcService;->checkmPOSPermission(Ljava/lang/String;)Z
    invoke-static {v14, v15}, Lcom/android/nfc/NfcService;->access$6000(Lcom/android/nfc/NfcService;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5954
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Lcom/android/nfc/DeviceHost;->SLSI_mPOSDedicatedMode(Z)Z

    move-result v14

    if-eqz v14, :cond_2e

    .line 5955
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    const/4 v15, 0x1

    # invokes: Lcom/android/nfc/NfcService;->setmPOSMode(Z)V
    invoke-static {v14, v15}, Lcom/android/nfc/NfcService;->access$6100(Lcom/android/nfc/NfcService;Z)V

    .line 5956
    const-string v14, "NfcService"

    const-string v15, "mPOS - start dedicated reader mode success"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5958
    :cond_2e
    const-string v14, "NfcService"

    const-string v15, "mPOS - start dedicated reader mode Fail"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5960
    :cond_2f
    const-string v14, "com.samsung.nfc.mpos.action.STOP_DEDICATE_READERMODE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_31

    .line 5961
    sget-boolean v14, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v14, :cond_30

    const-string v14, "NfcService"

    const-string v15, "mPOS - stop dedicated reader mode"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5962
    :cond_30
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    const-string v15, "com.samsung.nfc.mpos.extra.PACKAGE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/nfc/NfcService;->checkmPOSPermission(Ljava/lang/String;)Z
    invoke-static {v14, v15}, Lcom/android/nfc/NfcService;->access$6000(Lcom/android/nfc/NfcService;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5964
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    const/4 v15, 0x0

    # invokes: Lcom/android/nfc/NfcService;->setmPOSMode(Z)V
    invoke-static {v14, v15}, Lcom/android/nfc/NfcService;->access$6100(Lcom/android/nfc/NfcService;Z)V

    .line 5965
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/android/nfc/DeviceHost;->SLSI_mPOSDedicatedMode(Z)Z

    goto/16 :goto_0

    .line 5966
    :cond_31
    const-string v14, "com.samsung.nfc.mpos.action.RF_POWER_ON"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_33

    .line 5967
    sget-boolean v14, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v14, :cond_32

    const-string v14, "NfcService"

    const-string v15, "mPOS - RF power on"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5968
    :cond_32
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    const-string v15, "com.samsung.nfc.mpos.extra.PACKAGE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/nfc/NfcService;->checkmPOSPermission(Ljava/lang/String;)Z
    invoke-static {v14, v15}, Lcom/android/nfc/NfcService;->access$6000(Lcom/android/nfc/NfcService;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    goto/16 :goto_0

    .line 5971
    :cond_33
    const-string v14, "com.samsung.nfc.mpos.action.RF_POWER_OFF"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_35

    .line 5972
    sget-boolean v14, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v14, :cond_34

    const-string v14, "NfcService"

    const-string v15, "mPOS - RF power off"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5973
    :cond_34
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    const-string v15, "com.samsung.nfc.mpos.extra.PACKAGE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/nfc/NfcService;->checkmPOSPermission(Ljava/lang/String;)Z
    invoke-static {v14, v15}, Lcom/android/nfc/NfcService;->access$6000(Lcom/android/nfc/NfcService;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    goto/16 :goto_0

    .line 5976
    :cond_35
    const-string v14, "com.samsung.nfc.mpos.action.SET_TESTMODE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_37

    .line 5977
    sget-boolean v14, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v14, :cond_36

    const-string v14, "NfcService"

    const-string v15, "mPOS - set test mode"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5978
    :cond_36
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    const-string v15, "com.samsung.nfc.mpos.extra.PACKAGE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/nfc/NfcService;->checkmPOSPermission(Ljava/lang/String;)Z
    invoke-static {v14, v15}, Lcom/android/nfc/NfcService;->access$6000(Lcom/android/nfc/NfcService;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5980
    const-string v14, "com.samsung.nfc.mpos.extra.MODE"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 5981
    .local v11, "testmode":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v14

    invoke-interface {v14, v11}, Lcom/android/nfc/DeviceHost;->SLSI_mPOSConfigforTest(I)Z

    goto/16 :goto_0

    .line 5984
    .end local v11    # "testmode":I
    :cond_37
    const-string v14, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_39

    .line 5985
    const-string v14, "plugged"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 5986
    .local v3, "chargeMode":I
    const/4 v14, 0x4

    if-ne v3, v14, :cond_38

    # getter for: Lcom/android/nfc/NfcService;->wirelessCharing:Z
    invoke-static {}, Lcom/android/nfc/NfcService;->access$4100()Z

    move-result v14

    if-nez v14, :cond_38

    .line 5987
    const/4 v14, 0x1

    # setter for: Lcom/android/nfc/NfcService;->wirelessCharing:Z
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$4102(Z)Z

    .line 5988
    sget-boolean v14, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v14, :cond_2

    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Start - wirlesscharge chargeMode : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " wirelessCharing : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    # getter for: Lcom/android/nfc/NfcService;->wirelessCharing:Z
    invoke-static {}, Lcom/android/nfc/NfcService;->access$4100()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5989
    :cond_38
    const/4 v14, 0x4

    if-eq v3, v14, :cond_2

    # getter for: Lcom/android/nfc/NfcService;->wirelessCharing:Z
    invoke-static {}, Lcom/android/nfc/NfcService;->access$4100()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 5990
    const/4 v14, 0x0

    # setter for: Lcom/android/nfc/NfcService;->wirelessCharing:Z
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$4102(Z)Z

    .line 5991
    sget-boolean v14, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v14, :cond_2

    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Start - wirlesscharge chargeMode : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " wirelessCharing : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    # getter for: Lcom/android/nfc/NfcService;->wirelessCharing:Z
    invoke-static {}, Lcom/android/nfc/NfcService;->access$4100()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5995
    .end local v3    # "chargeMode":I
    :cond_39
    const-string v14, "com.samsung.nfc.p2p.ERROR"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3a

    .line 5996
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/nfc/NfcService;->makeP2pLog(II)V

    goto/16 :goto_0

    .line 5998
    :cond_3a
    const-string v14, "NXP_PN547C2"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v15}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3b

    const-string v14, "NXP_PN548C2"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v15}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3b

    const-string v14, "NXP_PN551"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v15}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/nfc/NfcFeatureUtil;->isSamsungChip()Z

    move-result v14

    if-nez v14, :cond_3b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/nfc/NfcFeatureUtil;->isBroadcomChip()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 6003
    :cond_3b
    const-string v14, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 6004
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/nfc/NfcService;->mPowerShutDown:Z

    .line 6005
    const-string v14, "NfcService"

    const-string v15, "Device is shutting down."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5797
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 5922
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
