.class Lcom/android/settings_ex/DataUsageSummary$19;
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
    .line 3154
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3157
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z
    invoke-static {v6}, Lcom/android/settings_ex/DataUsageSummary;->access$3500(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3219
    :cond_0
    :goto_0
    return-void

    .line 3158
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v6}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3160
    .local v2, "isAirplaneMode":I
    if-nez v2, :cond_0

    .line 3164
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v6}, Lcom/android/settings_ex/DataUsageSummary;->access$1800(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    if-nez v6, :cond_5

    move v1, v4

    .line 3165
    .local v1, "dataEnabled":Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings_ex/DataUsageSummary;->access$3600(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 3166
    .local v0, "currentTab":Ljava/lang/String;
    # invokes: Lcom/android/settings_ex/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$3700(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3167
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v6}, Lcom/android/settings_ex/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0xb2

    invoke-static {v6, v7, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 3168
    if-eqz v1, :cond_8

    .line 3175
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticSKTModel()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticKTTModel()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticLGTModel()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3176
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v4}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v6, "confirmDataEnable"

    invoke-virtual {v4, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_4

    .line 3177
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$3800(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 3178
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$3800(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/DialogFragment;->dismiss()V

    .line 3180
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v6}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataEnableFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v6

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v4, v6}, Lcom/android/settings_ex/DataUsageSummary;->access$3802(Lcom/android/settings_ex/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    .line 3218
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->access$400(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_0

    .end local v0    # "currentTab":Ljava/lang/String;
    .end local v1    # "dataEnabled":Z
    :cond_5
    move v1, v5

    .line 3164
    goto :goto_1

    .line 3184
    .restart local v0    # "currentTab":Ljava/lang/String;
    .restart local v1    # "dataEnabled":Z
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3185
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v4}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v6, "confirmDataEnable"

    invoke-virtual {v4, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_4

    .line 3186
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataEnableFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/DialogFragment;

    goto :goto_2

    .line 3189
    :cond_7
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v6, v4}, Lcom/android/settings_ex/DataUsageSummary;->access$3900(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_2

    .line 3195
    :cond_8
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticSKTModel()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticKTTModel()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticLGTModel()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Lcom/android/settings_ex/Utils;->isAllNAVendor()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Lcom/android/settings_ex/Utils;->isJapanModel()Z

    move-result v4

    if-nez v4, :cond_9

    .line 3196
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->access$3900(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_2

    .line 3200
    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Common_SupportHuxPco"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Common_SupportHuxPayg"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3202
    const-string v4, "persist.sys.pcovalue"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3203
    .local v3, "value":I
    const/4 v4, 0x3

    if-eq v3, v4, :cond_a

    const/4 v4, 0x5

    if-eq v3, v4, :cond_a

    .line 3204
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    goto :goto_2

    .line 3207
    :cond_a
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->access$3900(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto/16 :goto_2

    .line 3210
    .end local v3    # "value":I
    :cond_b
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$19;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    goto/16 :goto_2
.end method
