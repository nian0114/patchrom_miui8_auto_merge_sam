.class Lcom/android/settings_ex/fingerprint/RegisterFingerprint$12;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V
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
    .line 1358
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$12;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 1360
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "showSensorErrorDialog dismiss!!"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1362
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "enrollResult"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1363
    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$12;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->mToken:[B
    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$1900(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1364
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$12;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    invoke-virtual {v1, v3, v0}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 1365
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$12;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->finish()V

    .line 1366
    return-void
.end method
