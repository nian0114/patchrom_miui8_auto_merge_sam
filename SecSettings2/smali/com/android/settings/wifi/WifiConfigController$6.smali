.class Lcom/android/settings_ex/wifi/WifiConfigController$6;
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
    .line 3364
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 3423
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 3424
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 3420
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 3366
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3367
    .local v5, "password":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 3368
    .local v2, "length":I
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I
    invoke-static {v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$800(Lcom/android/settings_ex/wifi/WifiConfigController;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 3369
    const-string v6, "[0-9A-Fa-f]*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 3370
    .local v1, "isPasswordHex":Z
    const/16 v6, 0xd

    if-le v2, v6, :cond_0

    const/16 v6, 0x1a

    if-ne v2, v6, :cond_2

    if-eqz v1, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 3371
    .local v3, "mPasswordValid":Z
    :goto_0
    if-eqz v3, :cond_1

    if-eqz v1, :cond_5

    .line 3372
    :cond_1
    const/16 v6, 0xd

    if-le v2, v6, :cond_3

    if-nez v1, :cond_3

    .line 3373
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v7, 0x0

    const/16 v8, 0xd

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3374
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$600(Lcom/android/settings_ex/wifi/WifiConfigController;)Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3375
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const v7, 0x7f0e0094

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 3376
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a007e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3377
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3378
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v7, v7, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 3416
    .end local v1    # "isPasswordHex":Z
    .end local v3    # "mPasswordValid":Z
    :goto_1
    return-void

    .line 3370
    .end local v0    # "context":Landroid/content/Context;
    .restart local v1    # "isPasswordHex":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 3379
    .restart local v3    # "mPasswordValid":Z
    :cond_3
    const/16 v6, 0x1a

    if-le v2, v6, :cond_4

    if-eqz v1, :cond_4

    .line 3380
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v7, 0x0

    const/16 v8, 0x1a

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3381
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$600(Lcom/android/settings_ex/wifi/WifiConfigController;)Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3382
    .restart local v0    # "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const v7, 0x7f0e0094

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 3383
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a007e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3384
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3385
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v7, v7, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 3387
    .end local v0    # "context":Landroid/content/Context;
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$600(Lcom/android/settings_ex/wifi/WifiConfigController;)Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3388
    .restart local v0    # "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3389
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00d3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 3392
    .end local v0    # "context":Landroid/content/Context;
    :cond_5
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$600(Lcom/android/settings_ex/wifi/WifiConfigController;)Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3393
    .restart local v0    # "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3394
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00d3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 3398
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "isPasswordHex":Z
    .end local v3    # "mPasswordValid":Z
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I
    invoke-static {v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$800(Lcom/android/settings_ex/wifi/WifiConfigController;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    .line 3399
    const/16 v4, 0xc8

    .line 3403
    .local v4, "maxPasswordLength":I
    :goto_2
    if-le v2, v4, :cond_8

    .line 3404
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3405
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$600(Lcom/android/settings_ex/wifi/WifiConfigController;)Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3406
    .restart local v0    # "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const v7, 0x7f0e0094

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 3407
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a007e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3408
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3409
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v7, v7, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_1

    .line 3401
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "maxPasswordLength":I
    :cond_7
    const/16 v4, 0x40

    .restart local v4    # "maxPasswordLength":I
    goto :goto_2

    .line 3411
    :cond_8
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    # getter for: Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->access$600(Lcom/android/settings_ex/wifi/WifiConfigController;)Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3412
    .restart local v0    # "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3413
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController$6;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00d3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1
.end method
