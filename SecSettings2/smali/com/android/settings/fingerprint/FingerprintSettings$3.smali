.class Lcom/android/settings_ex/fingerprint/FingerprintSettings$3;
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
    .line 361
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintSettings;->registerAuthenticate()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->access$500(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)V

    .line 365
    return-void
.end method
