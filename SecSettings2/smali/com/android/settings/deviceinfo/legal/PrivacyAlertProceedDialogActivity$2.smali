.class Lcom/android/settings_ex/deviceinfo/legal/PrivacyAlertProceedDialogActivity$2;
.super Ljava/lang/Object;
.source "PrivacyAlertProceedDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->showProceedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/legal/PrivacyAlertProceedDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/legal/PrivacyAlertProceedDialogActivity;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/legal/PrivacyAlertProceedDialogActivity$2;->this$0:Lcom/android/settings_ex/deviceinfo/legal/PrivacyAlertProceedDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/legal/PrivacyAlertProceedDialogActivity$2;->this$0:Lcom/android/settings_ex/deviceinfo/legal/PrivacyAlertProceedDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->finish()V

    .line 65
    return-void
.end method
