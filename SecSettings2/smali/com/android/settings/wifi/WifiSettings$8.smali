.class Lcom/android/settings_ex/wifi/WifiSettings$8;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 958
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$8;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0xa

    .line 967
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$8;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->isMobileApON()Z
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1200(Lcom/android/settings_ex/wifi/WifiSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$8;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->isWifiSharingEnabled()Z
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1300(Lcom/android/settings_ex/wifi/WifiSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    const-string v1, "WifiSettings"

    const-string v2, "Mobile AP is ON and sending broadcast to WifiAPBroadcastreceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.WIFI_P2P_ENABLE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 972
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "req_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 973
    const-string v1, "extra_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 974
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 975
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$8;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 984
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 977
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$8;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    const/4 v2, 0x1

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->dismissDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1400(Lcom/android/settings_ex/wifi/WifiSettings;I)V

    .line 978
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$8;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->onP2pMenuPressed()V

    goto :goto_0
.end method
