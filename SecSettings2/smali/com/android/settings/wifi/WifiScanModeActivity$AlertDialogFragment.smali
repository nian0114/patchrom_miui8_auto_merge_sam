.class public Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "WifiScanModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiScanModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertDialogFragment"
.end annotation


# instance fields
.field private final mApp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment;->mApp:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment;->mApp:Ljava/lang/String;

    .line 119
    return-void
.end method

.method static newInstance(Ljava/lang/String;)Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment;
    .locals 1
    .param p0, "app"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "frag":Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment;
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/WifiScanModeActivity;

    # invokes: Lcom/android/settings_ex/wifi/WifiScanModeActivity;->doNegativeClick()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->access$000(Lcom/android/settings_ex/wifi/WifiScanModeActivity;)V

    .line 149
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e042f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment;->mApp:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0431

    new-instance v2, Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment$2;-><init>(Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0432

    new-instance v2, Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment$1;-><init>(Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
