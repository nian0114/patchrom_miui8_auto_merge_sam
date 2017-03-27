.class Lcom/android/settings_ex/fingerprint/FingerprintEntry$3;
.super Ljava/lang/Object;
.source "FingerprintEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintEntry;->showSensorErrorDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintEntry;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintEntry;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEntry$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEntry$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEntry;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEntry;->finish()V

    .line 309
    return-void
.end method
