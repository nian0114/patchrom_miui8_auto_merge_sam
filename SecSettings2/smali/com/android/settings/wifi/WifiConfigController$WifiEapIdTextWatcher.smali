.class Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiEapIdTextWatcher"
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mPreviousString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiConfigController;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/wifi/WifiConfigController;Landroid/widget/EditText;)V
    .locals 0
    .param p2, "et"    # Landroid/widget/EditText;

    .prologue
    .line 4008
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4009
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    .line 4010
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 4041
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 4042
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 4013
    if-eqz p1, :cond_0

    .line 4014
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v0, v1

    .line 4015
    .local v0, "sLength":I
    if-lez v0, :cond_0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    .line 4016
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;->mPreviousString:Ljava/lang/String;

    .line 4019
    .end local v0    # "sLength":I
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/16 v2, 0xc8

    const/4 v5, 0x0

    .line 4022
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v2, :cond_1

    .line 4023
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;->mPreviousString:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;->mPreviousString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v2, :cond_2

    .line 4024
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;->mPreviousString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4029
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->eToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$1400(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_3

    .line 4030
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$600(Lcom/android/settings_ex/wifi/WifiConfigController;)Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4031
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    const v2, 0x7f0e0414

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    # setter for: Lcom/android/settings_ex/wifi/WifiConfigController;->eToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$1402(Lcom/android/settings_ex/wifi/WifiConfigController;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 4032
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->eToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$1400(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4036
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 4038
    :cond_1
    return-void

    .line 4026
    :cond_2
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 4033
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->eToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$1400(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->eToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$1400(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4034
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->eToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$1400(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
