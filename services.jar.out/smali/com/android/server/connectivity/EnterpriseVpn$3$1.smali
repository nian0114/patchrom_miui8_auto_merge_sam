.class Lcom/android/server/connectivity/EnterpriseVpn$3$1;
.super Ljava/lang/Object;
.source "EnterpriseVpn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/EnterpriseVpn$3;->interfaceRemoved(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn$3;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3$1;->this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3$1;->this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;

    iget-object v1, v1, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;
    invoke-static {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$900(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn$3$1;->this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;

    iget-object v2, v2, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/EnterpriseVpn;->access$500(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn$3$1;->this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;

    iget-object v3, v3, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn$3$1;->this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;

    iget-object v4, v4, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I
    invoke-static {v4}, Lcom/android/server/connectivity/EnterpriseVpn;->access$600(Lcom/android/server/connectivity/EnterpriseVpn;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn$3$1;->this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;

    iget-object v5, v5, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/EnterpriseVpn;->access$700(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/connectivity/EnterpriseVpn;->getUIDForPackage(ILjava/lang/String;)I
    invoke-static {v3, v4, v5}, Lcom/android/server/connectivity/EnterpriseVpn;->access$800(Lcom/android/server/connectivity/EnterpriseVpn;ILjava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/net/IConnectivityManager;->disconnectPerAppVpn(Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3$1;->this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;

    iget-object v1, v1, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1100(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn$3$1;->this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;

    iget-object v2, v2, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;
    invoke-static {v2}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1000(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EnterpriseVpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at  interfaceRemoved : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
