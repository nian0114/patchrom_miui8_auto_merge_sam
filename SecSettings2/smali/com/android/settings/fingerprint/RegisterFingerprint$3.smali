.class Lcom/android/settings_ex/fingerprint/RegisterFingerprint$3;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/RegisterFingerprint;
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
    .line 276
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->cancelEnrollment()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$100(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)V

    .line 280
    return-void
.end method
