.class Lcom/android/settings_ex/vpn2/VpnSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "VpnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/vpn2/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/vpn2/VpnSettings;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/VpnSettings$3;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 537
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "action":Ljava/lang/String;
    const-string v3, "edm.intent.action.internal.VPN_NEW_PROFILE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings$3;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    # getter for: Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/settings_ex/vpn2/VpnSettings;->access$100(Lcom/android/settings_ex/vpn2/VpnSettings;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 540
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings$3;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 541
    .local v2, "group":Landroid/preference/PreferenceGroup;
    const-string v3, "add_network"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 542
    .local v1, "addNetworkPreference":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 544
    if-eqz v1, :cond_0

    .line 545
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 547
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings$3;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    # setter for: Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;
    invoke-static {v3, v4}, Lcom/android/settings_ex/vpn2/VpnSettings;->access$102(Lcom/android/settings_ex/vpn2/VpnSettings;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 550
    .end local v1    # "addNetworkPreference":Landroid/preference/Preference;
    .end local v2    # "group":Landroid/preference/PreferenceGroup;
    :cond_1
    return-void
.end method
