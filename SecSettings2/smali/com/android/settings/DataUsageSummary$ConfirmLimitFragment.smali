.class public Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# static fields
.field static final dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4732
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4729
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 14
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 4734
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v10

    if-nez v10, :cond_1

    .line 4788
    :cond_0
    :goto_0
    return-void

    .line 4736
    :cond_1
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->access$300(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v8

    .line 4737
    .local v8, "policy":Landroid/net/NetworkPolicy;
    if-eqz v8, :cond_0

    .line 4739
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 4741
    .local v9, "res":Landroid/content/res/Resources;
    iget-wide v10, v8, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v10, v10

    const v11, 0x3f99999a    # 1.2f

    mul-float/2addr v10, v11

    float-to-long v6, v10

    .line 4745
    .local v6, "minLimitBytes":J
    const/4 v2, 0x5

    .line 4746
    .local v2, "defaultLimitGB":I
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->isSPR:Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$4400()Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v2, 0x50

    .line 4749
    :cond_2
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->isTMB:Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$4500()Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v2, 0x64

    .line 4753
    :cond_3
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->access$3600(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    .line 4754
    .local v1, "currentTab":Ljava/lang/String;
    const-string v10, "3g"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 4755
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$4300()Z

    move-result v10

    if-nez v10, :cond_4

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->isSPR:Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$4400()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 4756
    :cond_4
    const v10, 0x7f0e1091

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4760
    .local v3, "message":Ljava/lang/CharSequence;
    :goto_1
    int-to-long v10, v2

    const-wide/32 v12, 0x40000000

    mul-long/2addr v10, v12

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 4779
    .local v4, "limitBytes":J
    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4780
    .local v0, "args":Landroid/os/Bundle;
    const-string v10, "message"

    invoke-virtual {v0, v10, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4781
    const-string v10, "limitBytes"

    invoke-virtual {v0, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4783
    sget-object v10, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v10}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->isAdded()Z

    move-result v10

    if-nez v10, :cond_0

    .line 4784
    sget-object v10, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v10, v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 4785
    sget-object v10, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;

    const/4 v11, 0x0

    invoke-virtual {v10, p0, v11}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 4786
    sget-object v10, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v11

    const-string v12, "confirmLimit"

    invoke-virtual {v10, v11, v12}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4758
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v4    # "limitBytes":J
    :cond_5
    const v10, 0x7f0e0cac

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "message":Ljava/lang/CharSequence;
    goto :goto_1

    .line 4761
    .end local v3    # "message":Ljava/lang/CharSequence;
    :cond_6
    const-string v10, "4g"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 4762
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$4300()Z

    move-result v10

    if-nez v10, :cond_7

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->isSPR:Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$4400()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 4763
    :cond_7
    const v10, 0x7f0e1091

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4767
    .restart local v3    # "message":Ljava/lang/CharSequence;
    :goto_3
    int-to-long v10, v2

    const-wide/32 v12, 0x40000000

    mul-long/2addr v10, v12

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .restart local v4    # "limitBytes":J
    goto :goto_2

    .line 4765
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v4    # "limitBytes":J
    :cond_8
    const v10, 0x7f0e0cac

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "message":Ljava/lang/CharSequence;
    goto :goto_3

    .line 4768
    .end local v3    # "message":Ljava/lang/CharSequence;
    :cond_9
    # invokes: Lcom/android/settings_ex/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$3700(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 4769
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$4300()Z

    move-result v10

    if-nez v10, :cond_a

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->isSPR:Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$4400()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 4770
    :cond_a
    const v10, 0x7f0e1091

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4774
    .restart local v3    # "message":Ljava/lang/CharSequence;
    :goto_4
    int-to-long v10, v2

    const-wide/32 v12, 0x40000000

    mul-long/2addr v10, v12

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .restart local v4    # "limitBytes":J
    goto/16 :goto_2

    .line 4772
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v4    # "limitBytes":J
    :cond_b
    const v10, 0x7f0e0cac

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "message":Ljava/lang/CharSequence;
    goto :goto_4

    .line 4776
    .end local v3    # "message":Ljava/lang/CharSequence;
    :cond_c
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown current tab: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 4803
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 4805
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 4806
    .local v4, "message":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "limitBytes"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 4808
    .local v2, "limitBytes":J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4810
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$4300()Z

    move-result v5

    if-nez v5, :cond_0

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->isSPR:Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$4400()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4811
    :cond_0
    const v5, 0x7f0e1090

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4816
    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4818
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;J)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4828
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 4813
    :cond_1
    const v5, 0x7f0e0cab

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
