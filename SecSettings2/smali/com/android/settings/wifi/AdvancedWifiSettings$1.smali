.class Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    # invokes: Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->refreshWifiInfo()V
    invoke-static {v2}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->access$000(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 152
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 153
    .local v1, "state":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 154
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_3

    .line 155
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 157
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    .line 159
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 161
    :cond_4
    const-string v2, "ATT"

    # getter for: Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEnableAutoConnectHotspot:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 165
    :cond_5
    if-ne v1, v5, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_6

    .line 167
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 169
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_7

    .line 171
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 173
    :cond_7
    const-string v2, "ATT"

    # getter for: Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEnableAutoConnectHotspot:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 178
    .end local v1    # "state":I
    :cond_8
    const-string v2, "android.net.wifi.HS20_DISABLED_COMPLETE_BY_CREDERROR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    const-string v2, "AdvancedWifiSettings"

    const-string v3, "HS20_DISABLED_COMPLETE_BY_CREDERROR_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    # invokes: Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->changeHotspot20(Z)V
    invoke-static {v2, v4}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->access$200(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;Z)V

    goto/16 :goto_0
.end method
