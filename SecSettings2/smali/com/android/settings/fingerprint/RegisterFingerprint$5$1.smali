.class Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5$1;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->interrupt()V

    .line 442
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->getFingerRegisterText()I
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$2600(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)I

    move-result v1

    # invokes: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$2700(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;I)V

    .line 445
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->isError:Z
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$700(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    const/16 v1, 0xcc

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5$1;->this$1:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;

    iget-object v2, v2, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    iget-object v2, v2, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    # invokes: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 448
    :cond_1
    return-void
.end method
