.class Lcom/android/settings_ex/wfd/WfdPickerDialog$2;
.super Ljava/lang/Object;
.source "WfdPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WfdPickerDialog;->createWfdPickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WfdPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WfdPickerDialog;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings_ex/wfd/WfdPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 105
    const-string v0, "WfdPickerDialog"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings_ex/wfd/WfdPickerDialog;

    # getter for: Lcom/android/settings_ex/wfd/WfdPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerDialog;->access$000(Lcom/android/settings_ex/wfd/WfdPickerDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings_ex/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wfd/WfdPickerDialog;->finish()V

    .line 108
    return-void
.end method
