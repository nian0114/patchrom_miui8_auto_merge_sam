.class Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$4;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->initializeView()V
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
    .line 258
    iput-object p1, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " Add Network "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->access$900(Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->access$500(Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;)Lcom/android/settings_ex/wifi/WifiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAddNetworkPressed()V

    .line 264
    :cond_0
    return-void
.end method
