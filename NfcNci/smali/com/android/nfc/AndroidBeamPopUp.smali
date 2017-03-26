.class public Lcom/android/nfc/AndroidBeamPopUp;
.super Landroid/app/Activity;
.source "AndroidBeamPopUp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[ABeam]"

.field private static final TAGClass:Ljava/lang/String; = "AndroidBeamPopUp: "


# instance fields
.field private mAlert_Message:Ljava/lang/String;

.field private mMode_Check:Ljava/lang/String;

.field private mPopup:Landroid/app/AlertDialog$Builder;

.field private mS_Beam_Popup:Landroid/app/AlertDialog;

.field private textView_Message:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/nfc/AndroidBeamPopUp;->mS_Beam_Popup:Landroid/app/AlertDialog;

    .line 25
    iput-object v0, p0, Lcom/android/nfc/AndroidBeamPopUp;->mPopup:Landroid/app/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method checkP2pSendState()Z
    .locals 2

    .prologue
    .line 29
    const-string v0, "nfc.p2p.sendstate"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const-string v1, "[ABeam]"

    const-string v2, "AndroidBeamPopUp:  onCreate "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lcom/android/nfc/AndroidBeamPopUp;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "POPUP_MODE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/AndroidBeamPopUp;->mMode_Check:Ljava/lang/String;

    .line 38
    const-string v1, "[ABeam]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AndroidBeamPopUp:  mMode_Check  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/AndroidBeamPopUp;->mMode_Check:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v1, p0, Lcom/android/nfc/AndroidBeamPopUp;->mMode_Check:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/nfc/AndroidBeamPopUp;->finish()V

    .line 43
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/nfc/AndroidBeamPopUp;->mPopup:Landroid/app/AlertDialog$Builder;

    .line 45
    const-string v1, "disk_full"

    iget-object v2, p0, Lcom/android/nfc/AndroidBeamPopUp;->mMode_Check:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    const v1, 0x7f070031

    invoke-virtual {p0, v1}, Lcom/android/nfc/AndroidBeamPopUp;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/AndroidBeamPopUp;->mAlert_Message:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/android/nfc/AndroidBeamPopUp;->mPopup:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f07002a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 55
    :goto_0
    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 56
    .local v0, "linear":Landroid/widget/LinearLayout;
    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/nfc/AndroidBeamPopUp;->textView_Message:Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lcom/android/nfc/AndroidBeamPopUp;->textView_Message:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/nfc/AndroidBeamPopUp;->mAlert_Message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lcom/android/nfc/AndroidBeamPopUp;->mPopup:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 59
    iget-object v1, p0, Lcom/android/nfc/AndroidBeamPopUp;->mPopup:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f07002f

    new-instance v3, Lcom/android/nfc/AndroidBeamPopUp$1;

    invoke-direct {v3, p0}, Lcom/android/nfc/AndroidBeamPopUp$1;-><init>(Lcom/android/nfc/AndroidBeamPopUp;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    iget-object v1, p0, Lcom/android/nfc/AndroidBeamPopUp;->mPopup:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/AndroidBeamPopUp;->mS_Beam_Popup:Landroid/app/AlertDialog;

    .line 67
    iget-object v1, p0, Lcom/android/nfc/AndroidBeamPopUp;->mS_Beam_Popup:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 68
    iget-object v1, p0, Lcom/android/nfc/AndroidBeamPopUp;->mS_Beam_Popup:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/nfc/AndroidBeamPopUp$2;

    invoke-direct {v2, p0}, Lcom/android/nfc/AndroidBeamPopUp$2;-><init>(Lcom/android/nfc/AndroidBeamPopUp;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 78
    :try_start_0
    const-string v1, "[ABeam]"

    const-string v2, "AndroidBeamPopUp:  PopUp show "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/android/nfc/AndroidBeamPopUp;->mS_Beam_Popup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_1
    return-void

    .line 48
    .end local v0    # "linear":Landroid/widget/LinearLayout;
    :cond_1
    const-string v1, "not_support_sbeam"

    iget-object v2, p0, Lcom/android/nfc/AndroidBeamPopUp;->mMode_Check:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    const v1, 0x7f07004b

    invoke-virtual {p0, v1}, Lcom/android/nfc/AndroidBeamPopUp;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/AndroidBeamPopUp;->mAlert_Message:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/android/nfc/AndroidBeamPopUp;->mPopup:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f07004c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/android/nfc/AndroidBeamPopUp;->finish()V

    goto :goto_0

    .line 80
    .restart local v0    # "linear":Landroid/widget/LinearLayout;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 87
    const-string v0, "[ABeam]"

    const-string v1, "AndroidBeamPopUp:  onDestroy "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/nfc/AndroidBeamPopUp;->mS_Beam_Popup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/nfc/AndroidBeamPopUp;->mS_Beam_Popup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 92
    :cond_0
    return-void
.end method
