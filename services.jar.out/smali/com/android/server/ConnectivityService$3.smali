.class Lcom/android/server/ConnectivityService$3;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v2, "caindicator"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "lteCaEnabled":Z
    const-string v3, "net.lte_ca_enabled"

    if-eqz v0, :cond_1

    const-string v2, "true"

    :goto_0
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .local v1, "thisNet":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateTcpDelayedAckSettings(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .end local v1    # "thisNet":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_0
    return-void

    :cond_1
    const-string v2, "false"

    goto :goto_0
.end method
