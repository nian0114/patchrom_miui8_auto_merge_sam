.class Lcom/android/settings_ex/DataUsageSummary$25;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 3492
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$25;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3496
    const-string v0, "DataUsage/LPF"

    const-string v1, "manual check data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$25;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v0

    if-le v0, v3, :cond_2

    .line 3498
    const-string v0, "DataUsage/LPF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set  Data Monitoring, the sim slot is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$25;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3499
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$25;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v0

    sput v0, Lcom/android/settings_ex/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    .line 3500
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$25;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$25;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 3501
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$25;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v0

    aget v0, v0, v4

    sput v0, Lcom/android/settings_ex/trafficmanager/settings/PackageSettingActivity;->subId:I

    .line 3510
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$25;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataUsedEditorFragment:Lcom/android/settings_ex/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$25;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$25;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mVertifyTrafficHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$4800(Lcom/android/settings_ex/DataUsageSummary;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;->show(Lcom/android/settings_ex/DataUsageSummary;Landroid/os/Handler;)V

    .line 3511
    return-void

    .line 3504
    :cond_2
    const-string v0, "DataUsage/LPF"

    const-string v1, "set  Data Monitoring, only one SIM card"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$25;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v0

    sput v0, Lcom/android/settings_ex/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    .line 3506
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$25;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$25;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 3507
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$25;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v0

    aget v0, v0, v4

    sput v0, Lcom/android/settings_ex/trafficmanager/settings/PackageSettingActivity;->subId:I

    goto :goto_0
.end method
