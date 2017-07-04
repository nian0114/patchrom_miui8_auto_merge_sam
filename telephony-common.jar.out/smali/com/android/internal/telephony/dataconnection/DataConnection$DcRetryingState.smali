.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcRetryingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    .prologue
    .line 2153
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$1;

    .prologue
    .line 2153
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 2156
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2400(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2300(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 2160
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcRetryingState: enter() not retrying rat changed, mConnectionParams.mRilRat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != mRilRat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2400(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transitionTo(mInactiveState)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2164
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->logAndAddLogRec(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$4600(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    .line 2166
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2167
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$4700(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2188
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2170
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcRetryingState: enter() mTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", call notifyAllOfDisconnectDcRetrying lostConnection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2174
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v2, "lostDataConnection"

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllOfDisconnectDcRetrying(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$4800(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    .line 2177
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->removeActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 2178
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    .line 2180
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2700(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2181
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2700(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 2184
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2702(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2194
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    .line 2442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DcRetryingState nothandled msg.what="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2444
    const/4 v15, 0x0

    .line 2448
    .local v15, "retVal":Z
    :goto_0
    return v15

    .line 2196
    .end local v15    # "retVal":Z
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2197
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v9, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Landroid/util/Pair;

    .line 2198
    .local v9, "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2199
    .local v8, "drs":I
    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 2200
    .local v14, "rat":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2400(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v19

    move/from16 v0, v19

    if-ne v14, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2300(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v19

    move/from16 v0, v19

    if-ne v8, v0, :cond_0

    .line 2202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DcRetryingState: EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED strange no change in drs="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " rat="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ignoring"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2274
    :goto_1
    const/4 v15, 0x1

    .line 2275
    .restart local v15    # "retVal":Z
    goto :goto_0

    .line 2208
    .end local v15    # "retVal":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v19

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRetryWhenSSChange:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 2209
    const/4 v15, 0x0

    .line 2210
    .restart local v15    # "retVal":Z
    goto :goto_0

    .line 2215
    .end local v15    # "retVal":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    invoke-static {}, Lcom/android/internal/telephony/PhoneBase;->isUsaCdmaModel()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2400(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v19

    if-eqz v19, :cond_2

    .line 2218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2400(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v20

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPrevDataRat:I
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$4902(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I

    .line 2221
    :cond_2
    const/16 v18, 0x0

    .line 2222
    .local v18, "wasCdma":Z
    const/4 v10, 0x0

    .line 2223
    .local v10, "isLte":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPrevDataRat:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$4900(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v19

    const/16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPrevDataRat:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$4900(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPrevDataRat:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$4900(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 2226
    :cond_3
    const/16 v18, 0x1

    .line 2228
    :cond_4
    const/16 v19, 0xd

    move/from16 v0, v19

    if-eq v14, v0, :cond_5

    const/16 v19, 0xe

    move/from16 v0, v19

    if-ne v14, v0, :cond_6

    .line 2230
    :cond_5
    const/4 v10, 0x1

    .line 2233
    :cond_6
    if-eqz v18, :cond_7

    if-eqz v10, :cond_7

    .line 2234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    const-string v20, "DcRetryingState: Stop Retrying cdma APN if moved to LTE or eHRPD"

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v20

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$5000(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2241
    .end local v10    # "isLte":Z
    .end local v18    # "wasCdma":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DcRetryingState: EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED giving up changed from "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2400(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to rat = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " or drs changed from "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2300(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to drs= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v19

    if-eqz v19, :cond_8

    .line 2247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v19

    move-object/from16 v0, v19

    iput v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 2249
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I
    invoke-static {v0, v14}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2402(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I

    .line 2269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v17

    .line 2270
    .local v17, "ss":Landroid/telephony/ServiceState;
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v11

    .line 2271
    .local v11, "networkType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v19

    invoke-static {v11}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 2278
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v8    # "drs":I
    .end local v9    # "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v11    # "networkType":I
    .end local v14    # "rat":I
    .end local v17    # "ss":Landroid/telephony/ServiceState;
    :sswitch_1
    const-string v19, "dsds"

    const-string v20, "persist.radio.multisim.config"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 2279
    const-string v19, "ril.datacross.slotid"

    const/16 v20, -0x1

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 2280
    .local v16, "slotId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v12

    .line 2281
    .local v12, "phoneId":I
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    :cond_9
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v19

    move/from16 v0, v19

    if-eq v12, v0, :cond_b

    .line 2283
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DcRetryingState EVENT_RETRY_CONNECTION, But, not handled because mPhone.getPhoneId()="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", datacross.slotid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", getDefaultDataPhoneId()="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v20

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$5100(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2288
    const/4 v15, 0x1

    .line 2289
    .restart local v15    # "retVal":Z
    goto/16 :goto_0

    .line 2293
    .end local v12    # "phoneId":I
    .end local v15    # "retVal":Z
    .end local v16    # "slotId":I
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 2294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    .line 2296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DcRetryingState EVENT_RETRY_CONNECTION RetryCount="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mConnectionParams="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2302
    const/4 v5, 0x1

    .line 2303
    .local v5, "bDoRetry":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v19

    if-eqz v19, :cond_d

    .line 2304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2305
    .local v3, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v3, :cond_d

    .line 2306
    const-string v19, "VD2"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    const-string v19, "VODAFONE_EUR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$900(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_f

    const-string v19, "ims"

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 2310
    const/4 v5, 0x0

    .line 2311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v19

    const-string v20, "persist.ril.ims.eutranParam"

    const-string v21, "3"

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    const-string v20, "EVENT_RETRY_CONNECTION : set eutranParam to 3"

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2330
    .end local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_d
    :goto_2
    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataAllowed()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 2331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v20

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->onConnect(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$4200(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    .line 2332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$4300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    move-result-object v20

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$5200(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2341
    .end local v5    # "bDoRetry":Z
    :cond_e
    :goto_3
    const/4 v15, 0x1

    .line 2342
    .restart local v15    # "retVal":Z
    goto/16 :goto_0

    .line 2313
    .end local v15    # "retVal":Z
    .restart local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .restart local v5    # "bDoRetry":Z
    :cond_f
    const-string v19, "ORG"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_10

    const-string v19, "ORANGE_EUR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_10

    const-string v19, "TELE2_Netherland"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$900(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_11

    const-string v19, "ims"

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 2318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v19

    const-string v20, "persist.ril.ims.eutranParam"

    const-string v21, "3"

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    const-string v20, "EVENT_RETRY_CONNECTION : set eutranParam to 3"

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2320
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v19

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->IsOnlyLteDataAllowed(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 2321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v13

    .line 2322
    .local v13, "radioTech":I
    const/16 v19, 0xe

    move/from16 v0, v19

    if-eq v13, v0, :cond_d

    const/16 v19, 0x12

    move/from16 v0, v19

    if-eq v13, v0, :cond_d

    .line 2323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DcRetryingState: X "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " reject RAT="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", not LTE or IWLAN"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2324
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 2337
    .end local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v5    # "bDoRetry":Z
    .end local v13    # "radioTech":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DcRetryingState stale EVENT_RETRY_CONNECTION tag:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " != mTag:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2346
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    const-string v20, "DcRetryingState: msg.what=RSP_RESET, ignore we\'re already reset"

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v20

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$5300(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2351
    const/4 v15, 0x1

    .line 2352
    .restart local v15    # "retVal":Z
    goto/16 :goto_0

    .line 2355
    .end local v15    # "retVal":Z
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2357
    .local v6, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DcRetryingState: msg.what=EVENT_CONNECT RefCount="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " cp="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mConnectionParams="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2362
    const-string v19, "ORG"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_13

    const-string v19, "ORANGE_EUR"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_13

    const-string v19, "TELE2_Netherland"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 2365
    :cond_13
    iget-object v3, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2366
    .restart local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v3, :cond_15

    .line 2367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "EVENT_CONNECT : mDcRetryFailCause = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$900(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", apntype = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$900(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_15

    const-string v19, "ims"

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    iget-object v0, v3, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "nwTypeChanged"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_14

    iget-object v0, v3, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "dataAttached"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 2371
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    const-string v20, "EVENT_CONNECT : ORANGE_EUR, skip ims apn try !"

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2372
    const/4 v15, 0x1

    .line 2373
    .restart local v15    # "retVal":Z
    goto/16 :goto_0

    .line 2377
    .end local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v15    # "retVal":Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->initConnection(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z
    invoke-static {v0, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$4100(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 2378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v20

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->onConnect(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$4200(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    .line 2379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$4300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    move-result-object v20

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$5400(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2387
    :goto_4
    const/4 v15, 0x1

    .line 2388
    .restart local v15    # "retVal":Z
    goto/16 :goto_0

    .line 2382
    .end local v15    # "retVal":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    const-string v20, "DcRetryingState: msg.what=EVENT_CONNECT initConnection failed"

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V
    invoke-static {v0, v6, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1700(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    goto :goto_4

    .line 2391
    .end local v6    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 2393
    .local v7, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    if-eqz v7, :cond_1a

    .line 2394
    const-string v19, "VD2"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_17

    const-string v19, "VODAFONE_EUR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_17

    const-string v19, "ORG"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_17

    const-string v19, "ORANGE_EUR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_17

    const-string v19, "TELE2_Netherland"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 2399
    :cond_17
    iget-object v3, v7, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2400
    .restart local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v3, :cond_18

    .line 2401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "EVENT_DISCONNECT : mDcRetryFailCause = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$900(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", apntype = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$900(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_18

    const-string v19, "ims"

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 2404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v19

    const-string v20, "persist.ril.ims.eutranParam"

    const-string v21, "3"

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$902(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    const-string v20, "IMS DISCONNECTED_ALL : set eutranParam to 3"

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2411
    .end local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v7, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    if-nez v19, :cond_19

    .line 2414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DcRetryingState msg.what=EVENT_DISCONNECT  RefCount="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " dp="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V

    .line 2418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v20

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$5500(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2427
    :goto_5
    const/4 v15, 0x1

    .line 2428
    .restart local v15    # "retVal":Z
    goto/16 :goto_0

    .line 2420
    .end local v15    # "retVal":Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    const-string v20, "DcRetryingState: msg.what=EVENT_DISCONNECT"

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    invoke-static {v0, v7, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$3800(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    goto :goto_5

    .line 2424
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    const-string v20, "DcRetryingState: msg.what=EVENT_DISCONNECT"

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    invoke-static {v0, v7, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$3800(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    goto :goto_5

    .line 2432
    .end local v7    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DcRetryingState msg.what=EVENT_DISCONNECT/DISCONNECT_ALL RefCount="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v20

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$5600(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2437
    const/4 v15, 0x1

    .line 2438
    .restart local v15    # "retVal":Z
    goto/16 :goto_0

    .line 2194
    nop

    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_3
        0x40004 -> :sswitch_4
        0x40006 -> :sswitch_5
        0x4000a -> :sswitch_1
        0x4000b -> :sswitch_0
        0x4100c -> :sswitch_2
    .end sparse-switch
.end method
