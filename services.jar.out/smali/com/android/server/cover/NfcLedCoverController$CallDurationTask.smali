.class Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;
.super Ljava/util/TimerTask;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallDurationTask"
.end annotation


# instance fields
.field private prevSecond:B

.field final synthetic this$0:Lcom/android/server/cover/NfcLedCoverController;


# direct methods
.method private constructor <init>(Lcom/android/server/cover/NfcLedCoverController;)V
    .locals 1

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1302
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->prevSecond:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cover/NfcLedCoverController;Lcom/android/server/cover/NfcLedCoverController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p2, "x1"    # Lcom/android/server/cover/NfcLedCoverController$1;

    .prologue
    .line 1301
    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;-><init>(Lcom/android/server/cover/NfcLedCoverController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1309
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$1400(Lcom/android/server/cover/NfcLedCoverController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1310
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$1500(Lcom/android/server/cover/NfcLedCoverController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1311
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->getCallDuration()[B
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$1600(Lcom/android/server/cover/NfcLedCoverController;)[B

    move-result-object v0

    .line 1312
    .local v0, "data":[B
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    iget-byte v3, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->prevSecond:B

    if-eq v1, v3, :cond_0

    .line 1313
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    iput-byte v1, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->prevSecond:B

    .line 1315
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$100(Lcom/android/server/cover/NfcLedCoverController;)V

    .line 1316
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    const/4 v3, 0x3

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V
    invoke-static {v1, v3, v0}, Lcom/android/server/cover/NfcLedCoverController;->access$400(Lcom/android/server/cover/NfcLedCoverController;I[B)V

    .line 1319
    .end local v0    # "data":[B
    :cond_0
    monitor-exit v2

    .line 1320
    return-void

    .line 1319
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
