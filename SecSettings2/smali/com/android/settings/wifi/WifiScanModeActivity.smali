.class public Lcom/android/settings_ex/wifi/WifiScanModeActivity;
.super Landroid/app/Activity;
.source "WifiScanModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment;
    }
.end annotation


# instance fields
.field private mApp:Ljava/lang/String;

.field private mDialog:Landroid/app/DialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiScanModeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiScanModeActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->doNegativeClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiScanModeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiScanModeActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->doPositiveClick()V

    return-void
.end method

.method private createDialog()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settings_ex/wifi/WifiScanModeActivity$AlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    .line 78
    :cond_0
    return-void
.end method

.method private doNegativeClick()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->setResult(I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->finish()V

    .line 90
    return-void
.end method

.method private doPositiveClick()V
    .locals 3

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->setResult(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->finish()V

    .line 85
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 45
    .local v1, "intent":Landroid/content/Intent;
    if-nez p1, :cond_1

    .line 46
    if-eqz v1, :cond_0

    const-string v3, "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 52
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 53
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->createDialog()V

    .line 64
    :goto_1
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->finish()V

    goto :goto_1

    .line 61
    :cond_1
    const-string v3, "app"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    goto :goto_0

    .line 54
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 101
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->dismissDialog()V

    .line 102
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 106
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->createDialog()V

    .line 107
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    const-string v0, "app"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method
