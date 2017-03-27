.class Lcom/android/settings_ex/fingerprint/FingerprintSettings$5;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings;->showHuntipForFingerprintIdentification()V
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
    .line 804
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$5;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$5;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->access$1100(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$5;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->access$1100(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 810
    :cond_0
    return-void
.end method
