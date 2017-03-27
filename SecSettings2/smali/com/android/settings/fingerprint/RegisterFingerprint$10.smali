.class Lcom/android/settings_ex/fingerprint/RegisterFingerprint$10;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->showLDUDialog()V
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
    .line 1217
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$10;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$10;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->finish()V

    .line 1220
    return-void
.end method
