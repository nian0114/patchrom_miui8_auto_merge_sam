.class Lcom/android/settings_ex/fingerprint/FingerprintSettings$7;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)V
    .locals 0

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$7;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$7;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mInFingerprintLockout:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->access$1302(Lcom/android/settings_ex/fingerprint/FingerprintSettings;Z)Z

    .line 1294
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$7;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintSettings;->retryFingerprint()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->access$400(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)V

    .line 1295
    return-void
.end method
