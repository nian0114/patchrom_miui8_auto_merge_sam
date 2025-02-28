.class public Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmWarningFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4833
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/DialogFragment;
    .locals 14
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    const-wide/32 v12, 0x40000000

    const-wide/16 v10, 0x0

    .line 4838
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v2, 0x0

    .line 4865
    :goto_0
    return-object v2

    .line 4840
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 4842
    .local v3, "res":Landroid/content/res/Resources;
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->access$6600(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v4

    .line 4844
    .local v4, "limitBytes":J
    const/4 v1, 0x2

    .line 4845
    .local v1, "defaultWarningGB":I
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->isSPR:Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$4400()Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v1, 0x32

    .line 4846
    :cond_1
    int-to-long v8, v1

    mul-long v6, v8, v12

    .line 4849
    .local v6, "warningBytes":J
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->access$4200(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Switch;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4850
    cmp-long v8, v4, v10

    if-nez v8, :cond_3

    .line 4851
    const-wide/16 v6, 0x0

    .line 4857
    :cond_2
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4858
    .local v0, "args":Landroid/os/Bundle;
    const-string v8, "warningBytes"

    invoke-virtual {v0, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4860
    new-instance v2, Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;

    invoke-direct {v2}, Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;-><init>()V

    .line 4861
    .local v2, "dialog":Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;
    invoke-virtual {v2, v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;->setArguments(Landroid/os/Bundle;)V

    .line 4862
    const/4 v8, 0x0

    invoke-virtual {v2, p0, v8}, Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 4863
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string v9, "confirmWarning"

    invoke-virtual {v2, v8, v9}, Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 4852
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "dialog":Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;
    :cond_3
    cmp-long v8, v4, v10

    if-lez v8, :cond_2

    int-to-long v8, v1

    mul-long/2addr v8, v12

    cmp-long v8, v4, v8

    if-gtz v8, :cond_2

    .line 4853
    const-wide/32 v8, 0x100000

    sub-long v6, v4, v8

    goto :goto_1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 4870
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 4872
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "warningBytes"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 4874
    .local v2, "warningBytes":J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4875
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0e108d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4876
    const v4, 0x7f0e108e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4878
    const v4, 0x104000a

    new-instance v5, Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;J)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4887
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
