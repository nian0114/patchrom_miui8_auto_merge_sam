.class Lcom/android/settings_ex/fingerprint/FingerprintSettings_MultiSelect$12;
.super Ljava/lang/Object;
.source "FingerprintSettings_MultiSelect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings_MultiSelect;->deleteAllFingerPrint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings_MultiSelect;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings_MultiSelect$12;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings_MultiSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings_MultiSelect$12;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintSettings_MultiSelect;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings_MultiSelect;->access$1302(Lcom/android/settings_ex/fingerprint/FingerprintSettings_MultiSelect;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1062
    return-void
.end method
