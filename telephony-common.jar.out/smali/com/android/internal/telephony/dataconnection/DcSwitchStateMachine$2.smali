.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;
.super Landroid/content/BroadcastReceiver;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mReceiver action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 132
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const/4 v4, 0x1

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mSubInfoReady:Z
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$802(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Z)Z

    .line 134
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    .line 135
    .local v1, "serviceState":I
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedReceived:Z
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v4

    if-eq v3, v4, :cond_1

    if-nez v1, :cond_1

    .line 136
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    .line 137
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 140
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignore because DDS is not matched. current state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 147
    .end local v1    # "serviceState":I
    .end local v2    # "subId":I
    :cond_1
    :goto_0
    return-void

    .line 143
    .restart local v1    # "serviceState":I
    .restart local v2    # "subId":I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1400(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method
