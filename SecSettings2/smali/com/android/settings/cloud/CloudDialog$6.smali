.class Lcom/android/settings_ex/cloud/CloudDialog$6;
.super Ljava/lang/Object;
.source "CloudDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/cloud/CloudDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cloud/CloudDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cloud/CloudDialog;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/settings_ex/cloud/CloudDialog$6;->this$0:Lcom/android/settings_ex/cloud/CloudDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "result":Z
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 226
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 227
    iget-object v1, p0, Lcom/android/settings_ex/cloud/CloudDialog$6;->this$0:Lcom/android/settings_ex/cloud/CloudDialog;

    # getter for: Lcom/android/settings_ex/cloud/CloudDialog;->dialogListener:Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;
    invoke-static {v1}, Lcom/android/settings_ex/cloud/CloudDialog;->access$200(Lcom/android/settings_ex/cloud/CloudDialog;)Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/settings_ex/cloud/CloudDialog$6;->this$0:Lcom/android/settings_ex/cloud/CloudDialog;

    # getter for: Lcom/android/settings_ex/cloud/CloudDialog;->dialogListener:Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;
    invoke-static {v1}, Lcom/android/settings_ex/cloud/CloudDialog;->access$200(Lcom/android/settings_ex/cloud/CloudDialog;)Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;->onCancelButtonClick()V

    .line 230
    :cond_0
    const/4 v0, 0x1

    .line 232
    :cond_1
    return v0
.end method
