.class Lcom/android/settings_ex/fingerprint/FingerprintEntry$2;
.super Ljava/lang/Object;
.source "FingerprintEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 300
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 302
    const-string v0, "FpstFingerprintEntry"

    const-string v1, "showSensorErrorDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method
