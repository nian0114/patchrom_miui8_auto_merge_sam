.class Lcom/android/settings_ex/DeviceNameSettings$5;
.super Ljava/lang/Object;
.source "DeviceNameSettings.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DeviceNameSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DeviceNameSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DeviceNameSettings;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/settings_ex/DeviceNameSettings$5;->this$0:Lcom/android/settings_ex/DeviceNameSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/settings_ex/DeviceNameSettings$5;->this$0:Lcom/android/settings_ex/DeviceNameSettings;

    # getter for: Lcom/android/settings_ex/DeviceNameSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/DeviceNameSettings;->access$300(Lcom/android/settings_ex/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/DeviceNameSettings$5;->this$0:Lcom/android/settings_ex/DeviceNameSettings;

    # getter for: Lcom/android/settings_ex/DeviceNameSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/DeviceNameSettings;->access$300(Lcom/android/settings_ex/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/settings_ex/DeviceNameSettings$5;->this$0:Lcom/android/settings_ex/DeviceNameSettings;

    # getter for: Lcom/android/settings_ex/DeviceNameSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/DeviceNameSettings;->access$300(Lcom/android/settings_ex/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 250
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/settings_ex/DeviceNameSettings$5;->this$0:Lcom/android/settings_ex/DeviceNameSettings;

    # getter for: Lcom/android/settings_ex/DeviceNameSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/DeviceNameSettings;->access$300(Lcom/android/settings_ex/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 254
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
