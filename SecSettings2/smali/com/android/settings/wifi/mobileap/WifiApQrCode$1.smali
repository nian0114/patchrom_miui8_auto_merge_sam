.class Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApQrCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "action":Ljava/lang/String;
    const-string v2, "WifiApQrCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    const-string v2, "wifi_state"

    const/16 v3, 0xe

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 99
    .local v1, "wifiApState":I
    const-string v2, "WifiApQrCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifiApState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->clearQrCode()V

    .line 102
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 107
    .end local v1    # "wifiApState":I
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->clearQrCode()V

    goto :goto_0
.end method
