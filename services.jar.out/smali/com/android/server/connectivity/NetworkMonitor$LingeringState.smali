.class Lcom/android/server/connectivity/NetworkMonitor$LingeringState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LingeringState"
.end annotation


# static fields
.field private static final ACTION_LINGER_EXPIRED:Ljava/lang/String; = "android.net.netmon.lingerExpired"


# instance fields
.field private mBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

.field private mIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const v4, 0x82004

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$6102(Lcom/android/server/connectivity/NetworkMonitor;I)I

    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v2, "android.net.netmon.lingerExpired"

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$6100(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # ++operator for: Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$6104(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(II)V

    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$6300(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :cond_0
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v3, "Unlingered"

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$6200(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$6100(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v3, 0x82005

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x82001
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
