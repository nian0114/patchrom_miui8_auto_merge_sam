.class public final Lcom/android/settings_ex/nfc/PaymentDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "PaymentDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

.field private mNewDefault:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private buildDialog(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 13
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 71
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 72
    :cond_0
    const-string v10, "PaymentDefaultDialog"

    const-string v11, "Component or category are null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return v9

    .line 76
    :cond_1
    const-string v11, "payment"

    invoke-virtual {v11, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 77
    const-string v10, "PaymentDefaultDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Don\'t support defaults for category "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_2
    const/4 v6, 0x0

    .line 83
    .local v6, "requestedPaymentApp":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    const/4 v1, 0x0

    .line 85
    .local v1, "defaultPaymentApp":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v11, p0, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v11}, Lcom/android/settings_ex/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v8

    .line 86
    .local v8, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    .line 87
    .local v7, "service":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v11, v7, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 88
    move-object v6, v7

    .line 90
    :cond_4
    iget-boolean v11, v7, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-eqz v11, :cond_3

    .line 91
    move-object v1, v7

    goto :goto_1

    .line 95
    .end local v7    # "service":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    :cond_5
    if-nez v6, :cond_6

    .line 96
    const-string v10, "PaymentDefaultDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Component "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not a registered payment service."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_6
    iget-object v11, p0, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v11}, Lcom/android/settings_ex/nfc/PaymentBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v0

    .line 102
    .local v0, "defaultComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 103
    const-string v10, "PaymentDefaultDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Component "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is already default."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 107
    :cond_7
    iput-object p1, p0, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->mNewDefault:Landroid/content/ComponentName;

    .line 109
    iget-object v5, p0, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 110
    .local v5, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v11, 0x7f0e0d6c

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 111
    if-nez v1, :cond_8

    .line 112
    const v11, 0x7f0e0d6d

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "formatString":Ljava/lang/String;
    new-array v11, v10, [Ljava/lang/Object;

    iget-object v12, v6, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "msg":Ljava/lang/String;
    iput-object v4, v5, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 123
    :goto_2
    const v9, 0x7f0e00b8

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 124
    const v9, 0x7f0e00b9

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 125
    iput-object p0, v5, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    iput-object p0, v5, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->setupAlert()V

    move v9, v10

    .line 129
    goto/16 :goto_0

    .line 117
    .end local v2    # "formatString":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_8
    const v11, 0x7f0e0d6e

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    .restart local v2    # "formatString":Ljava/lang/String;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v6, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    iget-object v9, v1, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v10

    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 121
    .restart local v4    # "msg":Ljava/lang/String;
    iput-object v4, v5, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_2
.end method

.method private sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x28

    const/16 v3, 0x20

    .line 133
    const/16 v1, 0xa

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "sanitizedString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 140
    .end local v0    # "sanitizedString":Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 60
    packed-switch p2, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    iget-object v1, p0, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->mNewDefault:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 63
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->setResult(I)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance v3, Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    .line 46
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 47
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "component"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 49
    .local v1, "component":Landroid/content/ComponentName;
    const-string v3, "category"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "category":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->setResult(I)V

    .line 52
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->buildDialog(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentDefaultDialog;->finish()V

    .line 56
    :cond_0
    return-void
.end method
