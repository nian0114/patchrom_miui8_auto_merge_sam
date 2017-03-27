.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;->createDongleRenameDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

.field final synthetic val$mEditDeviceName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 2083
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    iput-object p2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->val$mEditDeviceName:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$3000(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Landroid/app/AlertDialog;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2086
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$3002(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2089
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->val$mEditDeviceName:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 2090
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->val$mEditDeviceName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;->val$mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2092
    :cond_1
    return-void
.end method
