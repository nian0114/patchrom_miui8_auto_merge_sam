.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$21;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$mOkButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/widget/Button;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 2140
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$21;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    iput-object p2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$21;->val$mOkButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$21;->val$mEditDeviceName:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 2142
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 2144
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/16 v6, 0x17

    const/4 v5, 0x0

    .line 2146
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2147
    .local v1, "temp":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2148
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$21;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2173
    :goto_0
    return-void

    .line 2149
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-le v2, v6, :cond_4

    .line 2150
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2151
    .local v0, "mTempSsid":Ljava/lang/String;
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTempSsid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-gt v2, v6, :cond_3

    .line 2153
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$21;->val$mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2158
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2159
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$21;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2162
    :cond_1
    if-eqz v0, :cond_2

    .line 2163
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$21;->val$mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 2166
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$21;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e056a

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2155
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$21;->val$mEditDeviceName:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2168
    .end local v0    # "mTempSsid":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 2169
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$21;->val$mOkButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 2171
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$21;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
