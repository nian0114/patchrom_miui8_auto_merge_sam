.class public Lcom/android/settings_ex/wifi/mobileap/PinDialog;
.super Landroid/app/AlertDialog;
.source "PinDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 81
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/PinDialog;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/settings_ex/wifi/mobileap/PinDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 83
    return-void
.end method


# virtual methods
.method public getPin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/PinDialog;->mView:Landroid/view/View;

    const v2, 0x7f0d0651

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 99
    .local v0, "wps_pin_box":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/PinDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040283

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/PinDialog;->mView:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/PinDialog;->mView:Landroid/view/View;

    const v2, 0x7f0d064e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    .local v0, "mTextView":Landroid/widget/TextView;
    const-string v1, "Enter Pin from Client"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v1, 0x7f0e03db

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/PinDialog;->setTitle(I)V

    .line 90
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/PinDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0548

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/PinDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings_ex/wifi/mobileap/PinDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 91
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/PinDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0545

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/PinDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings_ex/wifi/mobileap/PinDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 92
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/PinDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/PinDialog;->setView(Landroid/view/View;)V

    .line 93
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method
