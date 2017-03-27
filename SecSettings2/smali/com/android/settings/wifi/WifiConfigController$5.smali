.class Lcom/android/settings_ex/wifi/WifiConfigController$5;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V
    .locals 0

    .prologue
    .line 3333
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$5;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 3359
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController$5;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 3360
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 3354
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 3355
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController$5;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    .line 3356
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/16 v2, 0x20

    .line 3335
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v2, :cond_1

    .line 3336
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$5;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$5;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v2, :cond_0

    .line 3337
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$5;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$500(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController$5;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3341
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$5;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$600(Lcom/android/settings_ex/wifi/WifiConfigController;)Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3342
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$5;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidErrorText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$700(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0e0094

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 3343
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$5;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$500(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3344
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$5;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidErrorText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$700(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3345
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$5;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$500(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController$5;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$500(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 3351
    :goto_1
    return-void

    .line 3339
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$5;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$500(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3347
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$5;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$600(Lcom/android/settings_ex/wifi/WifiConfigController;)Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3348
    .restart local v0    # "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$5;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidErrorText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$700(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3349
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$5;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$500(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method
