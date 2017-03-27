.class Lcom/android/settings_ex/DataUsageSummary$21;
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
    .line 3285
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$21;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v8, -0x1

    .line 3289
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary$21;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;
    invoke-static {v7}, Lcom/android/settings_ex/DataUsageSummary;->access$4100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary$21;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;
    invoke-static {v7}, Lcom/android/settings_ex/DataUsageSummary;->access$4100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/RestrictionPolicy;->isUserMobileDataLimitAllowed()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3290
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary$21;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/DataUsageSummary;->access$500(Lcom/android/settings_ex/DataUsageSummary;J)V

    .line 3316
    :cond_0
    :goto_0
    return-void

    .line 3294
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary$21;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;
    invoke-static {v7}, Lcom/android/settings_ex/DataUsageSummary;->access$4200(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Switch;->isChecked()Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v1, 0x1

    .line 3295
    .local v1, "disableAtLimit":Z
    :goto_1
    if-eqz v1, :cond_6

    .line 3298
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$4300()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3299
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary$21;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v7}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    goto :goto_0

    .line 3294
    .end local v1    # "disableAtLimit":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 3301
    .restart local v1    # "disableAtLimit":Z
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary$21;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    invoke-static {v7}, Lcom/android/settings_ex/DataUsageSummary;->access$300(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$21;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v8, v8, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v6

    .line 3302
    .local v6, "policy":Landroid/net/NetworkPolicy;
    if-eqz v6, :cond_0

    .line 3304
    iget-wide v8, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v7, v8

    const v8, 0x3f99999a    # 1.2f

    mul-float/2addr v7, v8

    float-to-long v4, v7

    .line 3307
    .local v4, "minLimitBytes":J
    const/4 v0, 0x5

    .line 3308
    .local v0, "defaultLimitGB":I
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->isSPR:Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$4400()Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v0, 0x50

    .line 3309
    :cond_4
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->isTMB:Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$4500()Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v0, 0x64

    .line 3310
    :cond_5
    int-to-long v8, v0

    const-wide/32 v10, 0x40000000

    mul-long/2addr v8, v10

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 3311
    .local v2, "limitBytes":J
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary$21;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v7, v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$500(Lcom/android/settings_ex/DataUsageSummary;J)V

    goto :goto_0

    .line 3314
    .end local v0    # "defaultLimitGB":I
    .end local v2    # "limitBytes":J
    .end local v4    # "minLimitBytes":J
    .end local v6    # "policy":Landroid/net/NetworkPolicy;
    :cond_6
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary$21;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/DataUsageSummary;->access$500(Lcom/android/settings_ex/DataUsageSummary;J)V

    goto :goto_0
.end method
