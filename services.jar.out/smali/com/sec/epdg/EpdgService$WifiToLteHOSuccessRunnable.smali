.class Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;
.super Lcom/sec/epdg/EpdgService$HORunnable;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiToLteHOSuccessRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p2, "networkType"    # I

    .prologue
    .line 3735
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    .line 3736
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService$HORunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    .line 3737
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3741
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;->getNetworkType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 3742
    .local v0, "cid":I
    if-gez v0, :cond_1

    .line 3743
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiToLteHOSuccessRunnable() invalid cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;->getNetworkType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3745
    iget-object v2, p0, Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->getHasPendingCdmaIndication()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$8000(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3746
    const-string v2, "[EPDGService]"

    const-string v3, "W2L not initiated, still send cdma availability to IMS"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3747
    iget-object v2, p0, Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v3

    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V
    invoke-static {v2, v3}, Lcom/sec/epdg/EpdgService;->access$2900(Lcom/sec/epdg/EpdgService;Z)V

    .line 3748
    iget-object v2, p0, Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v3, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->setHasPendingCdmaIndication(Z)V
    invoke-static {v2, v3}, Lcom/sec/epdg/EpdgService;->access$8100(Lcom/sec/epdg/EpdgService;Z)V

    .line 3755
    :cond_0
    :goto_0
    return-void

    .line 3752
    :cond_1
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3800()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 3753
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3754
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
