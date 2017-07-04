.class Lcom/android/internal/telephony/SMSDispatcher$2;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet;
    }
.end annotation


# static fields
.field private static final AT_COMMAND_CMGF:Ljava/lang/String; = "AT+CMGF"

.field private static final AT_COMMAND_CMGS:Ljava/lang/String; = "AT+CMGS"

.field private static final AT_COMMAND_CMGW:Ljava/lang/String; = "AT+CMGW"

.field private static final AT_COMMAND_CMSS:Ljava/lang/String; = "AT+CMSS"


# instance fields
.field private aTaddress:Ljava/lang/String;

.field private aTtext:Ljava/lang/String;

.field private dcnType:B

.field private index:I

.field private msgId:I

.field private records:Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet;

.field private resultCode:I

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2622
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2627
    const-string v0, "9081209000"

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    .line 2628
    const-string v0, "This is the message body"

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    .line 2629
    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->index:I

    .line 2630
    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->msgId:I

    .line 2631
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet;-><init>(Lcom/android/internal/telephony/SMSDispatcher$2;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->records:Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet;

    .line 2632
    iput-byte v1, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->dcnType:B

    .line 2633
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->resultCode:I

    .line 2833
    return-void
.end method


# virtual methods
.method public extractValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 2828
    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2829
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2830
    const/16 v0, 0xd

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2637
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_CellbroadcastWithoutSim"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2640
    const-string v2, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2641
    const-string v2, "SMSDispatcher"

    const-string v3, "[CB] broadcastCbSettingsAvailable in No SIM state"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    # invokes: Lcom/android/internal/telephony/SMSDispatcher;->broadcastCbSettingsAvailable()V
    invoke-static {v2}, Lcom/android/internal/telephony/SMSDispatcher;->access$800(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 2814
    :cond_0
    :goto_0
    return-void

    .line 2644
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.action.SIM_REFRESH_INIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2645
    const-string v2, "SMSDispatcher"

    const-string v3, "ACTION_SIM_REFRESH_INIT"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/SMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    .line 2647
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/telephony/SMSDispatcher;->retryGetSmsc:I

    .line 2648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    goto :goto_0

    .line 2649
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.LTE_SMS_STATUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2650
    const-string v2, "ltesms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "ltesms"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/SMSDispatcher;->mLteSmsStatus:I

    .line 2652
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lte sms status is updated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mLteSmsStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2654
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.internal.telephony.dcn_result"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2655
    const-string v2, "dcn_type"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    move-object/from16 v0, p0

    iput-byte v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->dcnType:B

    .line 2656
    const-string v2, "result"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->resultCode:I

    .line 2657
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DCN Message Sent Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->dcnType:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resultCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->resultCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2659
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2660
    const-string v2, "SMSDispatcher"

    const-string v3, "ACTION_BCS_REQUEST"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    .line 2662
    .local v18, "data":Landroid/os/Bundle;
    if-nez v18, :cond_5

    .line 2663
    const-string v2, "SmsDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but there are no extras..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2668
    :cond_5
    const-string v2, "command"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2669
    .local v17, "command":Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 2673
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$2;->splitArgu(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 2674
    .local v12, "arg":[Ljava/lang/String;
    if-eqz v17, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    .line 2675
    :goto_1
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " command : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    new-instance v25, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.BCS_RESPONSE"

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2679
    .local v25, "responseIntent":Landroid/content/Intent;
    const-string v2, "AT+CMSS"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "AT+CMSS"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_9

    .line 2680
    array-length v2, v12

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 2681
    const/4 v2, 0x0

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->index:I

    .line 2687
    :cond_6
    :goto_2
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aTaddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    new-instance v13, Landroid/content/Intent;

    const-string v2, "android.intent.action.AT_CMSS_COMPLETE"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2690
    .local v13, "atIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v13, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2692
    .local v6, "sentIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 2693
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->msgId:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->msgId:I

    .line 2736
    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    .end local v13    # "atIntent":Landroid/content/Intent;
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2674
    .end local v25    # "responseIntent":Landroid/content/Intent;
    :cond_7
    const-string v17, ""

    goto/16 :goto_1

    .line 2682
    .restart local v25    # "responseIntent":Landroid/content/Intent;
    :cond_8
    array-length v2, v12

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 2683
    const/4 v2, 0x0

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->index:I

    .line 2684
    const/4 v2, 0x1

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    goto/16 :goto_2

    .line 2694
    :cond_9
    const-string v2, "AT+CMGS"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "AT+CMGS"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_b

    .line 2695
    array-length v2, v12

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 2696
    const/4 v2, 0x0

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    .line 2697
    const/4 v2, 0x1

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    .line 2699
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aTtext : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aTaddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    :goto_4
    new-instance v13, Landroid/content/Intent;

    const-string v2, "android.intent.action.AT_CMSS_COMPLETE"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2706
    .restart local v13    # "atIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v13, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2708
    .restart local v6    # "sentIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 2709
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->msgId:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->msgId:I

    goto/16 :goto_3

    .line 2702
    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    .end local v13    # "atIntent":Landroid/content/Intent;
    :cond_a
    const-string v2, "SMSDispatcher"

    const-string v3, "the size of arg is not proper"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2710
    :cond_b
    const-string v2, "AT+CMGF"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "AT+CMSS"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_c

    .line 2711
    const-string v2, "response"

    const-string v3, "OK"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 2712
    :cond_c
    const-string v2, "AT+CMGW"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "AT+CMSS"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_10

    .line 2713
    array-length v2, v12

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    .line 2714
    const/4 v2, 0x0

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    .line 2715
    const/4 v2, 0x1

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    .line 2726
    :goto_5
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aTtext : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aTaddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->records:Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet;->addMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 2729
    .local v21, "index":I
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    const-string v2, "response"

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 2716
    .end local v21    # "index":I
    :cond_d
    array-length v2, v12

    const/4 v3, 0x3

    if-ne v2, v3, :cond_e

    .line 2717
    const/4 v2, 0x0

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    .line 2718
    const/4 v2, 0x2

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    goto/16 :goto_5

    .line 2719
    :cond_e
    array-length v2, v12

    const/4 v3, 0x4

    if-ne v2, v3, :cond_f

    .line 2720
    const/4 v2, 0x0

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    .line 2721
    const/4 v2, 0x3

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    goto/16 :goto_5

    .line 2723
    :cond_f
    const-string v2, "SMSDispatcher"

    const-string v3, "the size of arg is not proper"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2732
    :cond_10
    const-string v2, "SMSDispatcher"

    const-string v3, "AT-Command is not for SMS"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2737
    .end local v12    # "arg":[Ljava/lang/String;
    .end local v17    # "command":Ljava/lang/String;
    .end local v18    # "data":Landroid/os/Bundle;
    .end local v25    # "responseIntent":Landroid/content/Intent;
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.AT_CMSS_COMPLETE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2738
    const-string v2, "SMSDispatcher"

    const-string v3, "ACTION_AT_CMSS_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    new-instance v25, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.BCS_RESPONSE"

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2740
    .restart local v25    # "responseIntent":Landroid/content/Intent;
    const/16 v27, 0x0

    .line 2741
    .local v27, "resultCode":I
    const-string v2, "result"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2742
    const-string v2, "result"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 2745
    :cond_12
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resultCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    if-nez v27, :cond_13

    .line 2747
    const-string v2, "response"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->msgId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2751
    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2749
    :cond_13
    const-string v2, "response"

    const-string v3, "500"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 2752
    .end local v25    # "responseIntent":Landroid/content/Intent;
    .end local v27    # "resultCode":I
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.CUSTOMER_TEST_RESPONSE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2753
    const-string v2, "SMSDispatcher"

    const-string v3, "ACTION_CUSTOMER_TEST_RESPONSE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    const-string v2, "mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2755
    .local v22, "mode":Ljava/lang/String;
    const-string v2, "bypass_ap_cp"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2756
    const-string v2, "result"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2757
    .local v26, "result":Ljava/lang/String;
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total segment result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    :try_start_0
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2761
    .local v14, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v19, Ljava/io/DataOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2763
    .local v19, "dos":Ljava/io/DataOutputStream;
    const/16 v11, 0xc8

    .line 2764
    .local v11, "MAX_AT_RESULT_LENGTH":I
    const/16 v23, 0x0

    .line 2765
    .local v23, "offset":I
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v15

    .line 2766
    .local v15, "bufLen":I
    const/16 v16, 0x0

    .line 2768
    .local v16, "bufResult":Ljava/lang/String;
    const/16 v2, 0xc8

    if-le v15, v2, :cond_16

    .line 2769
    :goto_7
    if-le v15, v11, :cond_15

    .line 2770
    new-instance v28, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2771
    .local v28, "tbos":Ljava/io/ByteArrayOutputStream;
    new-instance v29, Ljava/io/DataOutputStream;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2773
    .local v29, "tdos":Ljava/io/DataOutputStream;
    const/16 v2, 0x11

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2774
    const/16 v2, 0x61

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2776
    add-int v2, v23, v11

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 2777
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2778
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual/range {v28 .. v28}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2781
    sub-int/2addr v15, v11

    .line 2782
    add-int v23, v23, v11

    .line 2783
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remaining length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 2801
    .end local v11    # "MAX_AT_RESULT_LENGTH":I
    .end local v14    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "bufLen":I
    .end local v16    # "bufResult":Ljava/lang/String;
    .end local v19    # "dos":Ljava/io/DataOutputStream;
    .end local v23    # "offset":I
    .end local v28    # "tbos":Ljava/io/ByteArrayOutputStream;
    .end local v29    # "tdos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v20

    .line 2802
    .local v20, "e":Ljava/io/IOException;
    const-string v2, "SMSDispatcher"

    const-string v3, "IOException in CP_BYPASS!!!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2786
    .end local v20    # "e":Ljava/io/IOException;
    .restart local v11    # "MAX_AT_RESULT_LENGTH":I
    .restart local v14    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "bufLen":I
    .restart local v16    # "bufResult":Ljava/lang/String;
    .restart local v19    # "dos":Ljava/io/DataOutputStream;
    .restart local v23    # "offset":I
    :cond_15
    const/16 v2, 0x11

    :try_start_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2787
    const/16 v2, 0x61

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2788
    add-int v2, v23, v15

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 2789
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last segment : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", len : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2792
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2795
    :cond_16
    const/16 v2, 0x11

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2796
    const/16 v2, 0x61

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2797
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2798
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2807
    .end local v11    # "MAX_AT_RESULT_LENGTH":I
    .end local v14    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "bufLen":I
    .end local v16    # "bufResult":Ljava/lang/String;
    .end local v19    # "dos":Ljava/io/DataOutputStream;
    .end local v22    # "mode":Ljava/lang/String;
    .end local v23    # "offset":I
    .end local v26    # "result":Ljava/lang/String;
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher$2;->getResultCode()I

    move-result v24

    .line 2808
    .local v24, "rc":I
    const/4 v2, -0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_0

    goto/16 :goto_0
.end method

.method public splitArgu(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 2818
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2819
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2820
    .local v0, "args":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2824
    .end local v0    # "args":Ljava/lang/String;
    .local v1, "res":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2822
    .end local v1    # "res":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/String;

    .restart local v1    # "res":[Ljava/lang/String;
    goto :goto_0
.end method
