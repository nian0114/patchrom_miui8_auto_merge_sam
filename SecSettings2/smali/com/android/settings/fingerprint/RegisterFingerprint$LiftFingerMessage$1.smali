.class Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage$1;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;)V
    .locals 0

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0xcc

    const/4 v4, 0x1

    .line 1488
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    const/16 v2, 0x191

    # invokes: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$2700(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;I)V

    .line 1489
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->isError:Z
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$700(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1490
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->isError:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$702(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;Z)Z

    .line 1491
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    const/16 v2, 0xcb

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v3, v3, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    iget-object v3, v3, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/widget/RelativeLayout;

    # invokes: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 1493
    const-wide/16 v2, 0x82

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->mLiftMsgShow:Z
    invoke-static {v1, v4}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$2502(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;Z)Z

    .line 1499
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v2, v2, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    iget-object v2, v2, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    # invokes: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v1, v5, v2}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 1500
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    const/16 v2, 0xce

    const/4 v3, 0x0

    # invokes: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 1505
    :goto_1
    return-void

    .line 1494
    :catch_0
    move-exception v0

    .line 1496
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "LiftFingerMessage show: Interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1502
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->mLiftMsgShow:Z
    invoke-static {v1, v4}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$2502(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;Z)Z

    .line 1503
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v2, v2, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    iget-object v2, v2, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    # invokes: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v1, v5, v2}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    goto :goto_1
.end method
