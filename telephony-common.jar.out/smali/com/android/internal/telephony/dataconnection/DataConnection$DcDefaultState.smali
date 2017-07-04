.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcDefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    .prologue
    .line 1586
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$1;

    .prologue
    .line 1586
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1589
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v1, "DcDefaultState: enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1592
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x4000b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1595
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x4000c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1597
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x4000d

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1601
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x40011

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->registerForDataConnectionStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1606
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->addDc(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1607
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1610
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v1, "DcDefaultState: exit"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1613
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    .line 1617
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOn(Landroid/os/Handler;)V

    .line 1618
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    .line 1620
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForDataConnectionStateChanged(Landroid/os/Handler;)V

    .line 1626
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->removeDc(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1628
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1629
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnected()V

    .line 1630
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$302(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 1632
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->dispose()V

    .line 1633
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$402(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    .line 1634
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    .line 1635
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 1636
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$502(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1637
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$602(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 1638
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$102(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/PhoneBase;

    .line 1639
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$702(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 1640
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$802(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 1641
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$902(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 1642
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mUserData:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1002(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$202(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcController;

    .line 1644
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1102(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 1645
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 31
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1649
    const/16 v25, 0x1

    .line 1652
    .local v25, "retVal":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDefault msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RefCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1655
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDefaultState: shouldn\'t happen but ignore msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1921
    :cond_0
    :goto_0
    return v25

    .line 1657
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnecting to previous connection mAc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x11002

    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_0

    .line 1662
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$302(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 1663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcDefaultState: FULL_CONNECTION reply connected"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v4, 0x11002

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1200(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v6

    const-string v7, "hi"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1672
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcDefault: CMD_CHANNEL_DISCONNECTED before quiting call dump"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->dumpToLog()V
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1300(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->quit()V
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1400(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    goto/16 :goto_0

    .line 1680
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getIsInactive()Z

    move-result v30

    .line 1681
    .local v30, "val":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQ_IS_INACTIVE  isInactive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x41001

    if-eqz v30, :cond_2

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4, v2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1686
    .end local v30    # "val":Z
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCid()I

    move-result v13

    .line 1687
    .local v13, "cid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQ_GET_CID  cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x41003

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 1692
    .end local v13    # "cid":I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v10

    .line 1693
    .local v10, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQ_GET_APNSETTING  mApnSetting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x41005

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v10}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1698
    .end local v10    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCopyLinkProperties()Landroid/net/LinkProperties;

    move-result-object v18

    .line 1699
    .local v18, "lp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQ_GET_LINK_PROPERTIES linkProperties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x41007

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1704
    .end local v18    # "lp":Landroid/net/LinkProperties;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/net/ProxyInfo;

    .line 1705
    .local v23, "proxy":Landroid/net/ProxyInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQ_SET_LINK_PROPERTIES_HTTP_PROXY proxy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLinkPropertiesHttpProxy(Landroid/net/ProxyInfo;)V

    .line 1707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x41009

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 1711
    .end local v23    # "proxy":Landroid/net/ProxyInfo;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCopyNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v20

    .line 1712
    .local v20, "nc":Landroid/net/NetworkCapabilities;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQ_GET_NETWORK_CAPABILITIES networkCapabilities"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x4100b

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1717
    .end local v20    # "nc":Landroid/net/NetworkCapabilities;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcDefaultState: msg.what=REQ_RESET"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1600(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1721
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcDefaultState: msg.what=EVENT_CONNECT, fail not expected"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1722
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1723
    .local v14, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v4, 0x0

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V
    invoke-static {v2, v14, v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1700(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    goto/16 :goto_0

    .line 1728
    .end local v14    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDefaultState deferring msg.what=EVENT_DISCONNECT RefCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1800(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1736
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDefaultState deferring msg.what=EVENT_DISCONNECT_ALL RefCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1900(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1743
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcDefaultState EVENT_TEAR_DOWN_NOW"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1749
    :sswitch_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDefaultState ignore EVENT_LOST_CONNECTION tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":mTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1751
    .local v26, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, v26

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->logAndAddLogRec(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2000(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1757
    .end local v26    # "s":Ljava/lang/String;
    :sswitch_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDefaultState ignore EVENT_RETRY_CONNECTION tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":mTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1759
    .restart local v26    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, v26

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->logAndAddLogRec(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2100(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    .line 1762
    const-string v2, "VD2"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "VODAFONE_EUR"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ORG"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ORANGE_EUR"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "TELE2_Netherland"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1766
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v2

    iget-object v9, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1768
    .local v9, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v9, :cond_4

    .line 1769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_RETRY_CONNECTION : mDcRetryFailCause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$900(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", apntype = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$900(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne v2, v3, :cond_0

    const-string v2, "ims"

    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const-string v3, "persist.ril.ims.eutranParam"

    const-string v4, "3"

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "EVENT_RETRY_CONNECTION : set eutranParam to 3"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1776
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "EVENT_RETRY_CONNECTION : apnContext == null"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1783
    .end local v9    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v26    # "s":Ljava/lang/String;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 1784
    .local v12, "ar":Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/util/Pair;

    .line 1785
    .local v16, "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I
    invoke-static {v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2302(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I

    .line 1786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2400(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v3

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v3, v2, :cond_5

    .line 1787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->updateTcpBufferSizes(I)V
    invoke-static {v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2500(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 1789
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I
    invoke-static {v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2402(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I

    .line 1791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDefaultState: EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED drs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2300(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mRilRat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2400(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1795
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WFC20"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mProfileId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 1798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2400(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 1799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mConnectionParams.mRilRat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1802
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v28

    .line 1803
    .local v28, "ss":Landroid/telephony/ServiceState;
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v22

    .line 1804
    .local v22, "networkType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v2, v0, v3}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 1806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2700(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->updateNetworkInfoSuspendState()Z
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2800(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    .line 1808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mFixedApnType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2900(Lcom/android/internal/telephony/dataconnection/DataConnection;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2700(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mFixedApnType:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2900(Lcom/android/internal/telephony/dataconnection/DataConnection;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->makeNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$3000(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 1825
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2700(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->sendLinkPropertiesForSuspend()V
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$3200(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    goto/16 :goto_0

    .line 1811
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->makeNetworkCapabilities()Landroid/net/NetworkCapabilities;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$3100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkCapabilities;

    move-result-object v21

    .line 1812
    .local v21, "netCap":Landroid/net/NetworkCapabilities;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDefaultState: EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED,netCap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2700(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 1815
    const-string v2, "TGY"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "BRI"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1817
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2300(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_7

    const/4 v2, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcDefaultState: DRS_OR_RAT_CHANGED,change CONNECTED to SUSPENDED as STATE_OUT_OF_SERVICE"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1836
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v21    # "netCap":Landroid/net/NetworkCapabilities;
    .end local v22    # "networkType":I
    .end local v28    # "ss":Landroid/telephony/ServiceState;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    goto/16 :goto_0

    .line 1840
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    goto/16 :goto_0

    .line 1845
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 1846
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/util/Pair;

    .line 1847
    .local v29, "statePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;[Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->getNiDetailedState(I)Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$3300(Lcom/android/internal/telephony/dataconnection/DataConnection;I)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    .line 1848
    .local v15, "detailedState":Landroid/net/NetworkInfo$DetailedState;
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v24, v2, v3

    .line 1849
    .local v24, "reason":Ljava/lang/String;
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v11, v2, v3

    .line 1850
    .local v11, "apnType":Ljava/lang/String;
    const-string v2, "default"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 1852
    .local v27, "sendRequired":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1853
    .local v8, "apnCnxt":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1854
    const/16 v27, 0x0

    .line 1855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1856
    .local v19, "mCp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1857
    .restart local v9    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1858
    const/16 v27, 0x1

    .line 1863
    .end local v9    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "mCp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :cond_b
    if-eqz v27, :cond_f

    .line 1864
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v15, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_e

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v15, v2, :cond_e

    .line 1872
    :cond_d
    const/16 v27, 0x0

    .line 1875
    :cond_e
    const-string v2, "ims"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1879
    const/16 v27, 0x0

    .line 1883
    :cond_f
    if-eqz v27, :cond_0

    if-eqz v24, :cond_0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-eq v15, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    if-eq v15, v2, :cond_0

    .line 1887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDetailed state, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", old = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and new state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v2, v15, v0, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2700(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2700(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1896
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v15, v2, :cond_10

    .line 1897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2700(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDummylp:Landroid/net/LinkProperties;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$3400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    goto/16 :goto_0

    .line 1899
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2700(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    goto/16 :goto_0

    .line 1655
    :sswitch_data_0
    .sparse-switch
        0x11001 -> :sswitch_0
        0x11004 -> :sswitch_1
        0x40000 -> :sswitch_9
        0x40004 -> :sswitch_a
        0x40006 -> :sswitch_b
        0x40008 -> :sswitch_c
        0x40009 -> :sswitch_d
        0x4000a -> :sswitch_e
        0x4000b -> :sswitch_f
        0x4000c -> :sswitch_10
        0x4000d -> :sswitch_11
        0x40011 -> :sswitch_12
        0x41000 -> :sswitch_2
        0x41002 -> :sswitch_3
        0x41004 -> :sswitch_4
        0x41006 -> :sswitch_5
        0x41008 -> :sswitch_6
        0x4100a -> :sswitch_7
        0x4100c -> :sswitch_8
    .end sparse-switch
.end method
