.class public Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmUDSRestrict"
.end annotation


# static fields
.field static final dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5297
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5296
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 5299
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5304
    :cond_0
    :goto_0
    return-void

    .line 5300
    :cond_1
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5301
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 5302
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;->dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmUDSRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 5315
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 5317
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5319
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e16b2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5320
    const v2, 0x7f0e16b3

    new-instance v3, Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5329
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5331
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
