.class Lcom/android/settings_ex/net/DataUsageMeteredSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageMeteredSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/net/DataUsageMeteredSettings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/net/DataUsageMeteredSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/net/DataUsageMeteredSettings;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings$1;->this$0:Lcom/android/settings_ex/net/DataUsageMeteredSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings$1;->this$0:Lcom/android/settings_ex/net/DataUsageMeteredSettings;

    # invokes: Lcom/android/settings_ex/net/DataUsageMeteredSettings;->updateNetworks(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->access$000(Lcom/android/settings_ex/net/DataUsageMeteredSettings;Landroid/content/Context;)V

    .line 88
    :cond_0
    return-void
.end method
