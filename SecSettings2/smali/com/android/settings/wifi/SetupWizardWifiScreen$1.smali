.class Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$1;
.super Landroid/content/BroadcastReceiver;
.source "SetupWizardWifiScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->onCreate(Landroid/os/Bundle;)V
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
    .line 200
    iput-object p1, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    # invokes: Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->handleConnectionEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->access$400(Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;Landroid/content/Context;Landroid/content/Intent;)V

    .line 204
    return-void
.end method
