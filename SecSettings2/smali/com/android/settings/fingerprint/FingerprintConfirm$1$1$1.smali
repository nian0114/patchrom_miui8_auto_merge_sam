.class Lcom/android/settings_ex/fingerprint/FingerprintConfirm$1$1$1;
.super Ljava/lang/Object;
.source "FingerprintConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintConfirm$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings_ex/fingerprint/FingerprintConfirm$1$1;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintConfirm$1$1;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintConfirm$1$1$1;->this$2:Lcom/android/settings_ex/fingerprint/FingerprintConfirm$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintConfirm$1$1$1;->this$2:Lcom/android/settings_ex/fingerprint/FingerprintConfirm$1$1;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings_ex/fingerprint/FingerprintConfirm$1;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintConfirm;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintConfirm;->showDatabaseFailureDialog()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintConfirm;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintConfirm;)V

    .line 162
    return-void
.end method
