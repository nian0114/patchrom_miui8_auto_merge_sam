.class Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CaptivePortalCheckState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 14826
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 14829
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 14830
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$21500(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 14831
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 14832
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$15000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$30900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 14833
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 14836
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 14857
    const/4 v2, 0x0

    .line 14859
    :goto_0
    return v2

    .line 14838
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CMD_CAPTIVE_CHECK_COMPLETE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 14840
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14846
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$21500(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 14847
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 14848
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$15000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$30900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 14849
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$29300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$38700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 14852
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastConnectedTime:J
    invoke-static {v2, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$38802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 14859
    const/4 v2, 0x1

    goto :goto_0

    .line 14841
    :catch_0
    move-exception v1

    .line 14842
    .local v1, "re":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to enable IPv6: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 14843
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 14844
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$CaptivePortalCheckState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to enable IPv6: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 14836
    nop

    :pswitch_data_0
    .packed-switch 0x20014
        :pswitch_0
    .end packed-switch
.end method
