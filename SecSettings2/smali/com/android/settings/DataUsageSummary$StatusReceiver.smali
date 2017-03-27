.class Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 6715
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/DataUsageSummary$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p2, "x1"    # Lcom/android/settings_ex/DataUsageSummary$1;

    .prologue
    .line 6715
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 6719
    const-string v3, "DataUsage"

    const-string v4, "the Broadcast receiver"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6720
    const-string v3, "receive_type"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 6721
    .local v16, "value":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mAutoCalibration:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$4600(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6722
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mManualCalibration:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$4700(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6723
    const/16 v3, 0x64

    move/from16 v0, v16

    if-ne v0, v3, :cond_a

    .line 6724
    const-string v3, "DataUsage"

    const-string v4, "auto calibration success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6726
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    new-instance v4, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v5}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/ChartData;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v6}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;-><init>(Lcom/android/settings_ex/net/ChartData;Landroid/content/Context;)V

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    invoke-static {v3, v4}, Lcom/android/settings_ex/DataUsageSummary;->access$002(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    .line 6728
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/ChartData;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 6729
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 6731
    .local v8, "mCurrentTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/ChartData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getStartTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    invoke-static {v6}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getEndTime()J

    move-result-wide v6

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 6732
    .local v12, "entry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v12, :cond_5

    iget-wide v4, v12, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v12, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v14, v4, v6

    .line 6733
    .local v14, "middle_real_value":J
    :goto_0
    const-string v3, "simslot"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 6734
    .local v13, "simslot":I
    if-nez v13, :cond_6

    .line 6735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "middle_real_value"

    invoke-static {v3, v4, v14, v15}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 6741
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->setSimSlot(I)V

    .line 6742
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/ChartData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->setChartData(Lcom/android/settings_ex/net/ChartData;)V

    .line 6743
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    .line 6744
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    iget-object v2, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 6745
    .local v2, "cycleTimezone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$300(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6747
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$300(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v4, v4, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    invoke-static {v5}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getStartDay()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 6748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v4, 0x0

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/DataUsageSummary;->access$400(Lcom/android/settings_ex/DataUsageSummary;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 6753
    :cond_2
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getIsMonitorOn()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getIsBlockData()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getlimiValue()J

    move-result-wide v4

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->access$500(Lcom/android/settings_ex/DataUsageSummary;J)V

    .line 6758
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getIsMonitorOn()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getWarningValue()F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 6759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getWarningByte()J

    move-result-wide v4

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->access$600(Lcom/android/settings_ex/DataUsageSummary;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6768
    .end local v2    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "mCurrentTime":J
    .end local v12    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v13    # "simslot":I
    .end local v14    # "middle_real_value":J
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6769
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v4

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setColorOnStatus(F)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/DataUsageSummary;->access$700(Lcom/android/settings_ex/DataUsageSummary;F)V

    .line 6770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setTrafficText()V
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$800(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 6771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v4

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setDonut(F)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/DataUsageSummary;->access$900(Lcom/android/settings_ex/DataUsageSummary;F)V

    .line 6774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$6900(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$1000(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateSavedDataCircleView()V
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$1100(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 6778
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mReceiver:Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$5100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 6780
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mReceiver:Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$5100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 6796
    :cond_4
    :goto_5
    return-void

    .line 6732
    .restart local v8    # "mCurrentTime":J
    .restart local v12    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_5
    const-wide/16 v14, 0x0

    goto/16 :goto_0

    .line 6737
    .restart local v13    # "simslot":I
    .restart local v14    # "middle_real_value":J
    :cond_6
    const/4 v3, 0x1

    if-ne v13, v3, :cond_1

    .line 6738
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "middle_real_value_1"

    invoke-static {v3, v4, v14, v15}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_1

    .line 6756
    .restart local v2    # "cycleTimezone":Ljava/lang/String;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const-wide/16 v4, -0x1

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->access$500(Lcom/android/settings_ex/DataUsageSummary;J)V

    goto/16 :goto_3

    .line 6763
    :catch_0
    move-exception v3

    goto/16 :goto_4

    .line 6761
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const-wide/16 v4, -0x1

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->access$600(Lcom/android/settings_ex/DataUsageSummary;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    .line 6766
    .end local v2    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "mCurrentTime":J
    .end local v12    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v13    # "simslot":I
    .end local v14    # "middle_real_value":J
    :cond_9
    const-string v3, "DataUsage/LPF"

    const-string v4, "mChartData113 is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 6781
    :catch_1
    move-exception v11

    .line 6782
    .local v11, "e":Ljava/lang/Exception;
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterReceiver Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 6786
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_a
    const/16 v3, 0x66

    move/from16 v0, v16

    if-ne v0, v3, :cond_4

    .line 6787
    const-string v3, "DataUsage"

    const-string v4, "auto calibration fail"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mReceiver:Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$5100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 6790
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mReceiver:Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$5100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_5

    .line 6791
    :catch_2
    move-exception v11

    .line 6792
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterReceiver Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 6749
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v2    # "cycleTimezone":Ljava/lang/String;
    .restart local v8    # "mCurrentTime":J
    .restart local v12    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v13    # "simslot":I
    .restart local v14    # "middle_real_value":J
    :catch_3
    move-exception v3

    goto/16 :goto_2
.end method
