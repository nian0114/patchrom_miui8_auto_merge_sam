.class Lcom/android/settings_ex/fingerprint/FingerprintConfirm$4;
.super Ljava/lang/Object;
.source "FingerprintConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintConfirm;->showDatabaseFailureDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintConfirm;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintConfirm$4;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 214
    const-string v0, "FpstFingerprintConfirm"

    const-string v1, "showDatabaseFailureDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintConfirm$4;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintConfirm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintConfirm;->setResult(I)V

    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintConfirm$4;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintConfirm;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintConfirm;->finish()V

    .line 217
    return-void
.end method
