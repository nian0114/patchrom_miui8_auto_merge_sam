.class Lcom/android/settings_ex/fingerprint/RegisterFingerprint$16;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->startCompleteEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)V
    .locals 0

    .prologue
    .line 1527
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$16;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0xcb

    .line 1529
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$16;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    if-eqz v1, :cond_0

    .line 1530
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$16;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v1}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;->interrupt()V

    .line 1531
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$16;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings_ex/fingerprint/RegisterFingerprint$LiftFingerMessage;

    .line 1534
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$16;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    const v2, 0x7f0d02be

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1536
    .local v0, "completeText":Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$16;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$16;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    iget-object v2, v2, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    # invokes: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v1, v3, v2}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 1537
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$16;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$16;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$500(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;

    move-result-object v2

    # invokes: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v1, v3, v2}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 1538
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1539
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$16;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    const/16 v2, 0xcd

    # invokes: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v1, v2, v0}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 1540
    return-void
.end method
