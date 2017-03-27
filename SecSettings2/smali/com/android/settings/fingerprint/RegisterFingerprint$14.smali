.class Lcom/android/settings_ex/fingerprint/RegisterFingerprint$14;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->showGuidewithTipDialog()V
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
    .line 1384
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$14;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$14;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->fromShowGuidewithTipDialog:Z
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$3800(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1387
    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "showGuidewithTipDialog setOnDismissListener called!!"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$14;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->finish()V

    .line 1390
    :cond_0
    return-void
.end method
