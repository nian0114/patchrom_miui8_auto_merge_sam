.class Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$2;
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
    .line 237
    iput-object p1, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$2;->this$0:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$2;->this$0:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->access$500(Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;)Lcom/android/settings_ex/wifi/WifiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->onScanMenuPressed()V

    .line 240
    return-void
.end method
