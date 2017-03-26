.class public Lcom/android/nfc/NfcGsmaPopup;
.super Landroid/app/Activity;
.source "NfcGsmaPopup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcGsmaPopup"


# instance fields
.field private mEventDecision:Z

.field private mNfcEnablePopup:Landroid/app/AlertDialog;

.field private mPopup:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/nfc/NfcGsmaPopup;->mNfcEnablePopup:Landroid/app/AlertDialog;

    .line 29
    iput-object v0, p0, Lcom/android/nfc/NfcGsmaPopup;->mPopup:Landroid/app/AlertDialog$Builder;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcGsmaPopup;->mEventDecision:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/nfc/NfcGsmaPopup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcGsmaPopup;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/nfc/NfcGsmaPopup;->mEventDecision:Z

    return p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcGsmaPopup;->mPopup:Landroid/app/AlertDialog$Builder;

    .line 36
    iget-object v0, p0, Lcom/android/nfc/NfcGsmaPopup;->mPopup:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 37
    iget-object v0, p0, Lcom/android/nfc/NfcGsmaPopup;->mPopup:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07000d

    new-instance v2, Lcom/android/nfc/NfcGsmaPopup$1;

    invoke-direct {v2, p0}, Lcom/android/nfc/NfcGsmaPopup$1;-><init>(Lcom/android/nfc/NfcGsmaPopup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    iget-object v0, p0, Lcom/android/nfc/NfcGsmaPopup;->mPopup:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07002f

    new-instance v2, Lcom/android/nfc/NfcGsmaPopup$2;

    invoke-direct {v2, p0}, Lcom/android/nfc/NfcGsmaPopup$2;-><init>(Lcom/android/nfc/NfcGsmaPopup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    iget-object v0, p0, Lcom/android/nfc/NfcGsmaPopup;->mPopup:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcGsmaPopup;->mNfcEnablePopup:Landroid/app/AlertDialog;

    .line 54
    iget-object v0, p0, Lcom/android/nfc/NfcGsmaPopup;->mNfcEnablePopup:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 55
    iget-object v0, p0, Lcom/android/nfc/NfcGsmaPopup;->mNfcEnablePopup:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/nfc/NfcGsmaPopup$3;

    invoke-direct {v1, p0}, Lcom/android/nfc/NfcGsmaPopup$3;-><init>(Lcom/android/nfc/NfcGsmaPopup;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/nfc/NfcGsmaPopup;->mNfcEnablePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/nfc/NfcGsmaPopup;->mNfcEnablePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/nfc/NfcGsmaPopup;->mNfcEnablePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcGsmaPopup;->mNfcEnablePopup:Landroid/app/AlertDialog;

    .line 76
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 77
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/nfc/NfcGsmaPopup;->mNfcEnablePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 82
    iget-boolean v0, p0, Lcom/android/nfc/NfcGsmaPopup;->mEventDecision:Z

    if-nez v0, :cond_0

    .line 83
    const-string v0, "NfcGsmaPopup"

    const-string v1, "onPause- mEventDecision yet close popup"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcGsmaPopup;->mEventDecision:Z

    .line 85
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->sendGsmaPopup(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/nfc/NfcGsmaPopup;->finish()V

    .line 89
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 90
    return-void
.end method
