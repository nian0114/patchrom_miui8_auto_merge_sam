.class Lcom/android/settings_ex/fingerprint/FingerprintConfirm$2;
.super Ljava/lang/Object;
.source "FingerprintConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintConfirm;->showSensorErrorDialog(I)V
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
    .line 193
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintConfirm$2;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 195
    const-string v0, "ChooseLockSettingsHelper"

    const-string v1, "showSensorErrorDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method
