.class Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$3;
.super Ljava/lang/Object;
.source "WifiApWhitelistDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->validate()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)V

    .line 335
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 328
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTempSsid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$602(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/16 v2, 0x20

    .line 306
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "temp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v2, :cond_3

    .line 308
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTempSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$600(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTempSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$600(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v2, :cond_1

    .line 309
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$700(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTempSsid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$600(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->sToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$800(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$900(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0414

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    # setter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->sToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$802(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 315
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->sToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$800(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 319
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$700(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$700(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 324
    :goto_2
    return-void

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$700(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->sToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$800(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->sToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$800(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 321
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    # setter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTempSsid:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->access$602(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2
.end method
