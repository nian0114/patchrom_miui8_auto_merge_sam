.class public Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeniedRestrictFragment"
.end annotation


# static fields
.field static final dialog:Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5392
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;->dialog:Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5391
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 5411
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 5413
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5414
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e0c9d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5415
    const v2, 0x7f0e0ca1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5416
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5418
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
