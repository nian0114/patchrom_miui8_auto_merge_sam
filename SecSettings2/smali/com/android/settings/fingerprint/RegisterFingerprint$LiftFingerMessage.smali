.class Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;
.super Ljava/lang/Thread;
.source "RegisterFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/RegisterFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiftFingerMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)V
    .locals 0

    .prologue
    .line 1481
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1484
    const-wide/16 v2, 0x5dc

    :try_start_0
    invoke-static {v2, v3}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->sleep(J)V

    .line 1485
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    new-instance v2, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage$1;-><init>(Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;)V

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1518
    :goto_0
    return-void

    .line 1507
    :catch_0
    move-exception v0

    .line 1510
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->isLiftMsgCalled:Z
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$3500(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->isFinish:Z
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$800(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1511
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "LiftFingerMessage : Interrupted after start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    new-instance v2, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    invoke-direct {v2, v3}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;-><init>(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)V

    iput-object v2, v1, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    .line 1513
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v1}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->start()V

    goto :goto_0

    .line 1515
    :cond_0
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "LiftFingerMessage : Interrupted "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
