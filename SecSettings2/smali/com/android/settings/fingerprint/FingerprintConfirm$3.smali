.class Lcom/android/settings_ex/fingerprint/FingerprintConfirm$3;
.super Ljava/lang/Object;
.source "FingerprintConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 198
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintConfirm$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintConfirm$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintConfirm;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintConfirm;->finish()V

    .line 202
    return-void
.end method
