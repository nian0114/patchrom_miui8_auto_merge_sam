.class public Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmRestrictFragment"
.end annotation


# static fields
.field static final dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5340
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5339
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 5343
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5349
    :cond_0
    :goto_0
    return-void

    .line 5345
    :cond_1
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5346
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 5347
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 5361
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 5363
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5364
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e0cae

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5365
    invoke-static {v1}, Lcom/android/settings_ex/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5366
    const v2, 0x7f0e0cb0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5371
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5380
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5382
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 5368
    :cond_0
    const v2, 0x7f0e0caf

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
