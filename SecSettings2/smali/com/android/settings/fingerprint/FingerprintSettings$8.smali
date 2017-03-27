.class Lcom/android/settings_ex/fingerprint/FingerprintSettings$8;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings;->renameFingerPrint(ILjava/lang/CharSequence;)V
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
    .line 1656
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$8;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$8;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->access$1602(Lcom/android/settings_ex/fingerprint/FingerprintSettings;Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;

    .line 1679
    return-void
.end method

.method public onPositiveClick()V
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$8;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintSettings;->updatePreferences()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->access$1500(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)V

    .line 1668
    return-void
.end method

.method public onResumeDialog()V
    .locals 0

    .prologue
    .line 1661
    return-void
.end method
