.class Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$10;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$10;->this$0:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$10;->this$0:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->access$900(Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiConnectivityUtils;->forgetNetWork(Landroid/net/wifi/WifiManager;)V

    .line 476
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 477
    return-void
.end method
