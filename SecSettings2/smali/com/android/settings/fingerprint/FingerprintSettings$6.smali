.class Lcom/android/settings_ex/fingerprint/FingerprintSettings$6;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
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
    .line 858
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    const-string v1, "FingerprintSettings_register"

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->access$1200(Lcom/android/settings_ex/fingerprint/FingerprintSettings;Ljava/lang/String;)V

    .line 862
    return-void
.end method
