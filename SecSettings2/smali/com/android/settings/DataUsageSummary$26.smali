.class Lcom/android/settings_ex/DataUsageSummary$26;
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
    .line 3513
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$26;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0e16f4

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 3516
    const-string v1, "DataUsage/LPF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEnabledSimCount():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary$26;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v5}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$26;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v1

    if-le v1, v7, :cond_2

    .line 3518
    const-string v1, "DataUsage/LPF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set  Data Monitoring, the sim slot is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary$26;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v5}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$26;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v1

    sput v1, Lcom/android/settings_ex/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    .line 3520
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$26;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$26;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 3521
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$26;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v1

    aget v1, v1, v6

    sput v1, Lcom/android/settings_ex/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    .line 3530
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$26;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v1, :cond_4

    .line 3531
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$26;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 3532
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/trafficmanager/settings/TrafficSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary$26;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 3539
    .end local v0    # "sa":Lcom/android/settings_ex/SettingsActivity;
    :goto_1
    return-void

    .line 3524
    :cond_2
    const-string v1, "DataUsage/LPF"

    const-string v4, "set  Data Monitoring, only one SIM card"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$26;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v1

    sput v1, Lcom/android/settings_ex/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    .line 3526
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$26;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$26;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 3527
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$26;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v1

    aget v1, v1, v6

    sput v1, Lcom/android/settings_ex/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    goto :goto_0

    .line 3535
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$26;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 3536
    .local v0, "sa":Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings_ex/trafficmanager/settings/TrafficSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary$26;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1
.end method
