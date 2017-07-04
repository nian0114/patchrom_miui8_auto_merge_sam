.class Lcom/sec/epdg/EpdgService$16;
.super Lcom/sec/epdg/EpdgBroadcastReceiver;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    .prologue
    .line 1661
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$16;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1664
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1669
    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 1670
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "wifi_call_enable"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1671
    .local v1, "wificallenable":I
    const-string/jumbo v3, "wifi_call_preferred"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1672
    .local v2, "wificallpreferred":I
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WiFiCallEnable value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1800()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/epdg/EpdgService$WifiCallEnabler;

    iget-object v5, p0, Lcom/sec/epdg/EpdgService$16;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {v4, v5, v1, v2, v7}, Lcom/sec/epdg/EpdgService$WifiCallEnabler;-><init>(Lcom/sec/epdg/EpdgService;IIZ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1674
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSharePreferredModeViaProperty()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq v2, v6, :cond_0

    .line 1675
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wificallpreferred value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    const-string/jumbo v3, "ril.epdg.preferred.mode"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    :cond_0
    return-void
.end method
