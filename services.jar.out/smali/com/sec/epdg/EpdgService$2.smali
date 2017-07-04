.class Lcom/sec/epdg/EpdgService$2;
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
    .line 1316
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$2;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1332
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1319
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "onReceive action: ACTION_IMS_ON_SIMLOADED"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    iget-object v2, p0, Lcom/sec/epdg/EpdgService$2;->this$0:Lcom/sec/epdg/EpdgService;

    const/16 v3, 0x3fd

    # invokes: Lcom/sec/epdg/EpdgService;->handleImsStateChange(I)V
    invoke-static {v2, v3}, Lcom/sec/epdg/EpdgService;->access$1400(Lcom/sec/epdg/EpdgService;I)V

    .line 1321
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 1322
    .local v1, "salesCode":Ljava/lang/String;
    const-string v2, "ZVV"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ZTO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1323
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1324
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.epdg.VOWIFI_SUPPORT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1325
    const-string v2, "CAPABLILITY"

    # getter for: Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1326
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1328
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
