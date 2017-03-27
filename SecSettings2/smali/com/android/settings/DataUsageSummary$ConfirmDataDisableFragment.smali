.class public Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDataDisableFragment"
.end annotation


# static fields
.field static final dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5216
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5215
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static close(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 2
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 5230
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;

    if-eqz v0, :cond_0

    .line 5231
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5236
    :cond_0
    :goto_0
    return-void

    .line 5233
    :cond_1
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 5234
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->dismiss()V

    goto :goto_0
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 5220
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5227
    :cond_0
    :goto_0
    return-void

    .line 5222
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 5223
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5224
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 5225
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmDataDisable"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 5240
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 5242
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5244
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    .line 5245
    .local v2, "salesCode":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticSKTModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5246
    const v4, 0x7f0e1092

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5273
    :goto_0
    const v4, 0x104000a

    new-instance v5, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5283
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5285
    const v4, 0x7f0e0c97

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5286
    const-string v4, "VZW"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5287
    const v4, 0x7f0e109b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5289
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 5248
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticKTTModel()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5249
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_ForceConnectMMS"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5250
    const v4, 0x7f0e1093

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 5253
    :cond_2
    const v4, 0x7f0e1094

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 5256
    :cond_3
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticLGTModel()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5257
    const v4, 0x7f0e1095

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 5258
    :cond_4
    const-string v4, "VZW"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5260
    # getter for: Lcom/android/settings_ex/DataUsageSummary;->isVolteProvisioned:Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$8200()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5261
    const v4, 0x7f0e109d

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5265
    .local v3, "vzwMessage":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 5263
    .end local v3    # "vzwMessage":Ljava/lang/String;
    :cond_5
    const v4, 0x7f0e109c

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "vzwMessage":Ljava/lang/String;
    goto :goto_1

    .line 5267
    .end local v3    # "vzwMessage":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5268
    const v4, 0x7f0e0c8a

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 5270
    :cond_7
    const v4, 0x7f0e109e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0
.end method
