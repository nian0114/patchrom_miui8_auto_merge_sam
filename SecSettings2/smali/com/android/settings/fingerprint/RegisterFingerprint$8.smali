.class Lcom/android/settings_ex/fingerprint/RegisterFingerprint$8;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->hideGuideScreen(I)V
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
    .line 910
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$8;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$8;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->isError:Z
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$700(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$8;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    const/16 v1, 0xcf

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$8;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    iget-object v2, v2, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    # invokes: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$8;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$8;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$2900(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->setViewVisibility(Landroid/view/ViewGroup;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$3400(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;Landroid/view/ViewGroup;Z)V

    .line 916
    return-void
.end method
