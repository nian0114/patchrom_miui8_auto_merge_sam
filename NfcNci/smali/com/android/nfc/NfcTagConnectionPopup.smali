.class public Lcom/android/nfc/NfcTagConnectionPopup;
.super Landroid/app/Activity;
.source "NfcTagConnectionPopup.java"


# static fields
.field public static final PREF:Ljava/lang/String; = "NfcServicePrefs"

.field private static final TAG:Ljava/lang/String; = "NfcTagConnectionPopup"


# instance fields
.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcTagConnectionPopup:Landroid/app/AlertDialog;

.field private mPopup:Landroid/app/AlertDialog$Builder;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mNfcTagConnectionPopup:Landroid/app/AlertDialog;

    .line 46
    iput-object v0, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mPopup:Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/NfcTagConnectionPopup;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcTagConnectionPopup;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mNfcTagConnectionPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcTagConnectionPopup;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcTagConnectionPopup;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const-string v3, "NfcTagConnectionPopup"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v3, "NfcServicePrefs"

    invoke-virtual {p0, v3, v6}, Lcom/android/nfc/NfcTagConnectionPopup;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mPrefs:Landroid/content/SharedPreferences;

    .line 60
    iget-object v3, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 63
    invoke-virtual {p0}, Lcom/android/nfc/NfcTagConnectionPopup;->getApplicationContext()Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcTagConnectionPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 64
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030007

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, "v":Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mPopup:Landroid/app/AlertDialog$Builder;

    .line 67
    iget-object v3, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mPopup:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 68
    iget-object v3, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mPopup:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 70
    const v3, 0x7f09000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 71
    .local v1, "textview":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/nfc/NfcTagConnectionPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v3, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mPopup:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f070077

    new-instance v5, Lcom/android/nfc/NfcTagConnectionPopup$1;

    invoke-direct {v5, p0}, Lcom/android/nfc/NfcTagConnectionPopup$1;-><init>(Lcom/android/nfc/NfcTagConnectionPopup;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    iget-object v3, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mPopup:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f07000d

    new-instance v5, Lcom/android/nfc/NfcTagConnectionPopup$2;

    invoke-direct {v5, p0}, Lcom/android/nfc/NfcTagConnectionPopup$2;-><init>(Lcom/android/nfc/NfcTagConnectionPopup;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    iget-object v3, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mPopup:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/nfc/NfcTagConnectionPopup$3;

    invoke-direct {v4, p0}, Lcom/android/nfc/NfcTagConnectionPopup$3;-><init>(Lcom/android/nfc/NfcTagConnectionPopup;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    iget-object v3, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mPopup:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mNfcTagConnectionPopup:Landroid/app/AlertDialog;

    .line 102
    iget-object v3, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mNfcTagConnectionPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 103
    iget-object v3, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mNfcTagConnectionPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 104
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "NfcTagConnectionPopup"

    const-string v1, " onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mNfcTagConnectionPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mNfcTagConnectionPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcTagConnectionPopup;->mNfcTagConnectionPopup:Landroid/app/AlertDialog;

    .line 114
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 115
    return-void
.end method
