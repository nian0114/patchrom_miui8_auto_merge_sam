.class Lcom/android/settings_ex/nfc/NfcEnabler$4;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nfc/NfcEnabler;->makeAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/NfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nfc/NfcEnabler;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcEnabler$4;->this$0:Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x1

    .line 475
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler$4;->this$0:Lcom/android/settings_ex/nfc/NfcEnabler;

    # getter for: Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/NfcEnabler;->access$300(Lcom/android/settings_ex/nfc/NfcEnabler;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 476
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler$4;->this$0:Lcom/android/settings_ex/nfc/NfcEnabler;

    # getter for: Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/NfcEnabler;->access$300(Lcom/android/settings_ex/nfc/NfcEnabler;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 477
    return-void
.end method
