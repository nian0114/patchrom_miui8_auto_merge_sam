.class public Lcom/android/nfc/NfcTurnOnActivity;
.super Landroid/app/Activity;
.source "NfcTurnOnActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcTurnOnActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcTurnOnPopup:Landroid/app/AlertDialog;

.field private mPopup:Landroid/app/AlertDialog$Builder;

.field private mtextview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/nfc/NfcTurnOnActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;

    .line 45
    iput-object v0, p0, Lcom/android/nfc/NfcTurnOnActivity;->mPopup:Landroid/app/AlertDialog$Builder;

    .line 46
    iput-object v0, p0, Lcom/android/nfc/NfcTurnOnActivity;->mtextview:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/NfcTurnOnActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcTurnOnActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/nfc/NfcTurnOnActivity;->mtextview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcTurnOnActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcTurnOnActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/nfc/NfcTurnOnActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/nfc/NfcTurnOnActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcTurnOnActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/nfc/NfcTurnOnActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/nfc/NfcTurnOnActivity;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcTurnOnActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/nfc/NfcTurnOnActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string v4, "NfcTurnOnActivity"

    const-string v5, "onCreate() NfcTurnOnActivity"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-object p0, p0, Lcom/android/nfc/NfcTurnOnActivity;->mContext:Landroid/content/Context;

    .line 54
    iget-object v4, p0, Lcom/android/nfc/NfcTurnOnActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/NfcTurnOnActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 57
    invoke-virtual {p0}, Lcom/android/nfc/NfcTurnOnActivity;->getApplicationContext()Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/nfc/NfcTurnOnActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 58
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030008

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 60
    .local v3, "v":Landroid/view/View;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/nfc/NfcTurnOnActivity;->mPopup:Landroid/app/AlertDialog$Builder;

    .line 61
    iget-object v4, p0, Lcom/android/nfc/NfcTurnOnActivity;->mPopup:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 63
    iget-object v4, p0, Lcom/android/nfc/NfcTurnOnActivity;->mPopup:Landroid/app/AlertDialog$Builder;

    const v5, 0x7f07005b

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 65
    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/nfc/NfcTurnOnActivity;->mtextview:Landroid/widget/TextView;

    .line 66
    iget-object v4, p0, Lcom/android/nfc/NfcTurnOnActivity;->mtextview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/nfc/NfcTurnOnActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07007a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v4, 0x7f09000d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 70
    .local v2, "morelayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    new-instance v4, Lcom/android/nfc/NfcTurnOnActivity$1;

    invoke-direct {v4, p0}, Lcom/android/nfc/NfcTurnOnActivity$1;-><init>(Lcom/android/nfc/NfcTurnOnActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v4, p0, Lcom/android/nfc/NfcTurnOnActivity;->mPopup:Landroid/app/AlertDialog$Builder;

    const v5, 0x7f07002f

    new-instance v6, Lcom/android/nfc/NfcTurnOnActivity$2;

    invoke-direct {v6, p0}, Lcom/android/nfc/NfcTurnOnActivity$2;-><init>(Lcom/android/nfc/NfcTurnOnActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    iget-object v4, p0, Lcom/android/nfc/NfcTurnOnActivity;->mPopup:Landroid/app/AlertDialog$Builder;

    const v5, 0x7f07000d

    new-instance v6, Lcom/android/nfc/NfcTurnOnActivity$3;

    invoke-direct {v6, p0}, Lcom/android/nfc/NfcTurnOnActivity$3;-><init>(Lcom/android/nfc/NfcTurnOnActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    iget-object v4, p0, Lcom/android/nfc/NfcTurnOnActivity;->mPopup:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/nfc/NfcTurnOnActivity$4;

    invoke-direct {v5, p0}, Lcom/android/nfc/NfcTurnOnActivity$4;-><init>(Lcom/android/nfc/NfcTurnOnActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    iget-object v4, p0, Lcom/android/nfc/NfcTurnOnActivity;->mPopup:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/NfcTurnOnActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;

    .line 133
    iget-object v4, p0, Lcom/android/nfc/NfcTurnOnActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 134
    const-string v4, "NfcTurnOnActivity"

    const-string v5, "onCreate() mNfcTurnOnPopup create"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v4, p0, Lcom/android/nfc/NfcTurnOnActivity;->mContext:Landroid/content/Context;

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 137
    .local v1, "manager":Landroid/app/StatusBarManager;
    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 141
    :cond_0
    iget-object v4, p0, Lcom/android/nfc/NfcTurnOnActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 142
    const-string v4, "NfcTurnOnActivity"

    const-string v5, "onCreate() mNfcTurnOnPopup show"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    const-string v0, "NfcTurnOnActivity"

    const-string v1, " onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 152
    iget-object v0, p0, Lcom/android/nfc/NfcTurnOnActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/nfc/NfcTurnOnActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 154
    iput-object v2, p0, Lcom/android/nfc/NfcTurnOnActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;

    .line 156
    :cond_0
    iput-object v2, p0, Lcom/android/nfc/NfcTurnOnActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;

    .line 157
    invoke-virtual {p0}, Lcom/android/nfc/NfcTurnOnActivity;->finish()V

    .line 158
    return-void
.end method
