.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$23;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;->showInputMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 2227
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$23;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2232
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$23;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 2233
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$23;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$3300(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2237
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 2234
    :catch_0
    move-exception v0

    .line 2235
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "WifiDisplaySettings"

    const-string v3, "Caught Exception showInputMethod"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
