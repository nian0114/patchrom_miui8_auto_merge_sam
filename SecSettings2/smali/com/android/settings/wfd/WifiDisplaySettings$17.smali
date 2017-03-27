.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$17;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$activeDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$mEditDeviceName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 2115
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$17;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    iput-object p2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$17;->val$activeDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object p3, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$17;->val$mEditDeviceName:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$17;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$17;->val$activeDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_0

    .line 2118
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$17;->val$mEditDeviceName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$17;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$3100(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2120
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$17;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$17;->val$mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2121
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2122
    return-void
.end method
