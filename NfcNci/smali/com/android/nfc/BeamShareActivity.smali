.class public Lcom/android/nfc/BeamShareActivity;
.super Landroid/app/Activity;
.source "BeamShareActivity.java"


# static fields
.field static final DBG:Z

.field public static final PREF:Ljava/lang/String; = "NfcServicePrefs"

.field public static final PREF_FIRST_ENABLE_BY_USER:Ljava/lang/String; = "first_enable_by_user"

.field static final TAG:Ljava/lang/String; = "BeamShareActivity"

.field public static isVzw:Z

.field public static mProductName:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsReceiverRegistered:Z

.field mLaunchIntent:Landroid/content/Intent;

.field mNdefMessage:Landroid/nfc/NdefMessage;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcTurnOnPopup:Landroid/app/AlertDialog;

.field private mPopup:Landroid/app/AlertDialog$Builder;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mRestrictionCr:Landroid/database/Cursor;

.field private mTextView:Landroid/widget/TextView;

.field mUri:Landroid/net/Uri;

.field mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    .line 91
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/BeamShareActivity;->mProductName:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/android/nfc/BeamShareActivity;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/nfc/BeamShareActivity;->mProductName:Ljava/lang/String;

    const-string v1, "vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/nfc/BeamShareActivity;->isVzw:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mPopup:Landroid/app/AlertDialog$Builder;

    .line 86
    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;

    .line 87
    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mTextView:Landroid/widget/TextView;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/BeamShareActivity;->mIsReceiverRegistered:Z

    .line 517
    new-instance v0, Lcom/android/nfc/BeamShareActivity$8;

    invoke-direct {v0, p0}, Lcom/android/nfc/BeamShareActivity$8;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/BeamShareActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/BeamShareActivity;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/nfc/BeamShareActivity;->mIsReceiverRegistered:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/nfc/BeamShareActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/BeamShareActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/nfc/BeamShareActivity;->mIsReceiverRegistered:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/nfc/BeamShareActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/BeamShareActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/BeamShareActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/BeamShareActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/BeamShareActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/nfc/BeamShareActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/nfc/BeamShareActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/BeamShareActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/nfc/BeamShareActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/BeamShareActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private showNfcDialogAndExit(I)V
    .locals 7
    .param p1, "msgId"    # I

    .prologue
    const/4 v4, 0x0

    .line 135
    const-string v0, "BeamShareActivity"

    const-string v1, "showNfcDialogAndExit."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 138
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/BeamShareActivity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/BeamShareActivity;->mIsReceiverRegistered:Z

    .line 141
    const-string v0, "BeamShareActivity"

    const-string v1, "showNfcDialogAndExit :: registerReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v6, Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x5

    invoke-direct {v6, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 146
    .local v6, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 148
    new-instance v0, Lcom/android/nfc/BeamShareActivity$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/BeamShareActivity$1;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    const v0, 0x1040013

    new-instance v1, Lcom/android/nfc/BeamShareActivity$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/BeamShareActivity$2;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    const v0, 0x1040009

    new-instance v1, Lcom/android/nfc/BeamShareActivity$3;

    invoke-direct {v1, p0}, Lcom/android/nfc/BeamShareActivity$3;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 223
    return-void
.end method

.method private showNfcDialogAndExitForVzw()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 227
    const-string v0, "BeamShareActivity"

    const-string v1, "showNfcDialogAndExitForVzw"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 230
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 231
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/BeamShareActivity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/BeamShareActivity;->mIsReceiverRegistered:Z

    .line 234
    const-string v0, "BeamShareActivity"

    const-string v1, "showNfcDialogAndExitForVzw :: registerReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 238
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f030008

    invoke-virtual {v6, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 240
    .local v8, "v":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mPopup:Landroid/app/AlertDialog$Builder;

    .line 241
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mPopup:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 243
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mPopup:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 245
    const v0, 0x7f09000b

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mTextView:Landroid/widget/TextView;

    .line 246
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    const v0, 0x7f09000d

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 249
    .local v7, "morelayout":Landroid/widget/LinearLayout;
    const-string v0, "BeamShareActivity"

    const-string v1, " create nfc_more_layout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 252
    new-instance v0, Lcom/android/nfc/BeamShareActivity$4;

    invoke-direct {v0, p0}, Lcom/android/nfc/BeamShareActivity$4;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mPopup:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07002f

    new-instance v2, Lcom/android/nfc/BeamShareActivity$5;

    invoke-direct {v2, p0}, Lcom/android/nfc/BeamShareActivity$5;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 333
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mPopup:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07000d

    new-instance v2, Lcom/android/nfc/BeamShareActivity$6;

    invoke-direct {v2, p0}, Lcom/android/nfc/BeamShareActivity$6;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 349
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mPopup:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/nfc/BeamShareActivity$7;

    invoke-direct {v1, p0}, Lcom/android/nfc/BeamShareActivity$7;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 362
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mPopup:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;

    .line 363
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 364
    const-string v0, "BeamShareActivity"

    const-string v1, "onCreate() mNfcTurnOnPopup create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 367
    const-string v0, "BeamShareActivity"

    const-string v1, "onCreate() mNfcTurnOnPopup show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    .line 99
    iput-object p0, p0, Lcom/android/nfc/BeamShareActivity;->mContext:Landroid/content/Context;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 101
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 102
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    .line 103
    const-string v0, "BeamShareActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 106
    const-string v0, "BeamShareActivity"

    const-string v1, "NFC adapter not present."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-boolean v0, p0, Lcom/android/nfc/BeamShareActivity;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    iput-boolean v2, p0, Lcom/android/nfc/BeamShareActivity;->mIsReceiverRegistered:Z

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    .line 130
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    const-string v0, "NfcServicePrefs"

    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/BeamShareActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 116
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 118
    sget-boolean v0, Lcom/android/nfc/BeamShareActivity;->isVzw:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "first_enable_by_user"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/android/nfc/BeamShareActivity;->showNfcDialogAndExitForVzw()V

    goto :goto_0

    .line 123
    :cond_2
    const v0, 0x7f070059

    invoke-direct {p0, v0}, Lcom/android/nfc/BeamShareActivity;->showNfcDialogAndExit(I)V

    goto :goto_0

    .line 126
    :cond_3
    const-string v0, "BeamShareActivity"

    const-string v1, " parseShareIntentAndFinish #1 "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public parseShareIntentAndFinish(Landroid/content/Intent;)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 393
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "android.intent.action.SEND"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    .line 399
    .local v4, "clipData":Landroid/content/ClipData;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v21

    if-lez v21, :cond_2

    .line 400
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    .line 403
    .local v9, "item_Check":Landroid/content/ClipData$Item;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 404
    .local v14, "plainText_Check":Ljava/lang/String;
    const-string v21, "dummy"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 405
    const-string v21, "BeamShareActivity"

    const-string v22, " clipData got dummy "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 406
    const/4 v4, 0x0

    .line 419
    .end local v9    # "item_Check":Landroid/content/ClipData$Item;
    .end local v14    # "plainText_Check":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v21

    if-lez v21, :cond_9

    .line 420
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v21

    move/from16 v0, v21

    if-ge v6, v0, :cond_b

    .line 421
    invoke-virtual {v4, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    .line 423
    .local v8, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v18

    .line 426
    .local v18, "uri":Landroid/net/Uri;
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 427
    .local v13, "plainText":Ljava/lang/String;
    if-eqz v18, :cond_6

    .line 428
    sget-boolean v21, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v21, :cond_3

    const-string v21, "BeamShareActivity"

    const-string v22, "Found uri in ClipData."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 420
    .end local v13    # "plainText":Ljava/lang/String;
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 408
    .end local v6    # "i":I
    .end local v8    # "item":Landroid/content/ClipData$Item;
    .end local v18    # "uri":Landroid/net/Uri;
    .restart local v9    # "item_Check":Landroid/content/ClipData$Item;
    .restart local v14    # "plainText_Check":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v21, "BeamShareActivity"

    const-string v22, " no dummy "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 410
    .end local v14    # "plainText_Check":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 411
    .local v5, "e":Ljava/lang/IllegalStateException;
    const-string v21, "BeamShareActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parseShareIntentAndFinish: IllegalStateException=["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v5}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 412
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v5

    .line 413
    .local v5, "e":Ljava/lang/Exception;
    const-string v21, "BeamShareActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parseShareIntentAndFinish: Exception=["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 430
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v9    # "item_Check":Landroid/content/ClipData$Item;
    .restart local v6    # "i":I
    .restart local v8    # "item":Landroid/content/ClipData$Item;
    .restart local v13    # "plainText":Ljava/lang/String;
    .restart local v18    # "uri":Landroid/net/Uri;
    :cond_6
    if-eqz v13, :cond_8

    .line 431
    :try_start_3
    sget-boolean v21, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v21, :cond_7

    const-string v21, "BeamShareActivity"

    const-string v22, "Found text in ClipData."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 436
    .end local v13    # "plainText":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 437
    .local v5, "e":Ljava/lang/IllegalStateException;
    const-string v21, "BeamShareActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parseShareIntentAndFinish: IllegalStateException2=["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v5}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 434
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    .restart local v13    # "plainText":Ljava/lang/String;
    :cond_8
    :try_start_4
    sget-boolean v21, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v21, :cond_4

    const-string v21, "BeamShareActivity"

    const-string v22, "Did not find any shareable data in ClipData."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3

    .line 438
    .end local v13    # "plainText":Ljava/lang/String;
    :catch_3
    move-exception v5

    .line 439
    .local v5, "e":Ljava/lang/Exception;
    const-string v21, "BeamShareActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parseShareIntentAndFinish: Exception2=["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 444
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "i":I
    .end local v8    # "item":Landroid/content/ClipData$Item;
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "android.intent.action.SEND"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 445
    const-string v21, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    .line 446
    .restart local v18    # "uri":Landroid/net/Uri;
    const-string v21, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 447
    .local v16, "text":Ljava/lang/CharSequence;
    if-eqz v18, :cond_d

    .line 448
    sget-boolean v21, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v21, :cond_a

    const-string v21, "BeamShareActivity"

    const-string v22, "Found uri in ACTION_SEND intent."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 477
    .end local v16    # "text":Ljava/lang/CharSequence;
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_b
    :goto_4
    const/4 v15, 0x0

    .line 478
    .local v15, "shareData":Landroid/nfc/BeamShareData;
    new-instance v10, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    move/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 479
    .local v10, "myUserHandle":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_19

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Landroid/net/Uri;

    move-object/from16 v19, v0

    .line 482
    .local v19, "uriArray":[Landroid/net/Uri;
    const/4 v11, 0x0

    .line 483
    .local v11, "numValidUris":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    .line 485
    .restart local v18    # "uri":Landroid/net/Uri;
    :try_start_5
    const-string v21, "com.android.nfc"

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/BeamShareActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4

    .line 486
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "numValidUris":I
    .local v12, "numValidUris":I
    :try_start_6
    aput-object v18, v19, v11

    .line 487
    sget-boolean v21, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v21, :cond_c

    const-string v21, "BeamShareActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Found uri: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_c
    move v11, v12

    .line 493
    .end local v12    # "numValidUris":I
    .restart local v11    # "numValidUris":I
    goto :goto_5

    .line 450
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "myUserHandle":Landroid/os/UserHandle;
    .end local v11    # "numValidUris":I
    .end local v15    # "shareData":Landroid/nfc/BeamShareData;
    .end local v19    # "uriArray":[Landroid/net/Uri;
    .restart local v16    # "text":Ljava/lang/CharSequence;
    :cond_d
    if-eqz v16, :cond_f

    .line 451
    sget-boolean v21, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v21, :cond_e

    const-string v21, "BeamShareActivity"

    const-string v22, "Found EXTRA_TEXT in ACTION_SEND intent."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_e
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 454
    :cond_f
    sget-boolean v21, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v21, :cond_b

    const-string v21, "BeamShareActivity"

    const-string v22, "Did not find any shareable data in ACTION_SEND intent."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 457
    .end local v16    # "text":Ljava/lang/CharSequence;
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_10
    const-string v21, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 458
    .local v20, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v21, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 461
    .local v17, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v20, :cond_12

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_12

    .line 462
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    .line 463
    .restart local v18    # "uri":Landroid/net/Uri;
    sget-boolean v21, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v21, :cond_11

    const-string v21, "BeamShareActivity"

    const-string v22, "Found uri in ACTION_SEND_MULTIPLE intent."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    goto :goto_6

    .line 466
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_12
    if-eqz v17, :cond_14

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_14

    .line 468
    sget-boolean v21, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v21, :cond_13

    const-string v21, "BeamShareActivity"

    const-string v22, "Found text in ACTION_SEND_MULTIPLE intent."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_13
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/CharSequence;

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 471
    :cond_14
    sget-boolean v21, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v21, :cond_b

    const-string v21, "BeamShareActivity"

    const-string v22, "Did not find any shareable data in ACTION_SEND_MULTIPLE intent."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 488
    .end local v17    # "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v20    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v10    # "myUserHandle":Landroid/os/UserHandle;
    .restart local v11    # "numValidUris":I
    .restart local v15    # "shareData":Landroid/nfc/BeamShareData;
    .restart local v18    # "uri":Landroid/net/Uri;
    .restart local v19    # "uriArray":[Landroid/net/Uri;
    :catch_4
    move-exception v5

    .line 489
    .local v5, "e":Ljava/lang/SecurityException;
    :goto_7
    const-string v21, "BeamShareActivity"

    const-string v22, "Security exception granting uri permission to NFC process."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v11, 0x0

    .line 494
    .end local v5    # "e":Ljava/lang/SecurityException;
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_15
    if-lez v11, :cond_18

    .line 495
    new-instance v15, Landroid/nfc/BeamShareData;

    .end local v15    # "shareData":Landroid/nfc/BeamShareData;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-direct {v15, v0, v1, v10, v2}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .line 508
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "numValidUris":I
    .end local v19    # "uriArray":[Landroid/net/Uri;
    .restart local v15    # "shareData":Landroid/nfc/BeamShareData;
    :cond_16
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/nfc/NfcAdapter;->invokeBeam(Landroid/nfc/BeamShareData;)Z

    .line 509
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/BeamShareActivity;->mIsReceiverRegistered:Z

    move/from16 v21, v0

    if-eqz v21, :cond_17

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 512
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/BeamShareActivity;->mIsReceiverRegistered:Z

    .line 514
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    goto/16 :goto_0

    .line 498
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v11    # "numValidUris":I
    .restart local v19    # "uriArray":[Landroid/net/Uri;
    :cond_18
    new-instance v15, Landroid/nfc/BeamShareData;

    .end local v15    # "shareData":Landroid/nfc/BeamShareData;
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v15, v0, v1, v10, v2}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .restart local v15    # "shareData":Landroid/nfc/BeamShareData;
    goto :goto_8

    .line 500
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "numValidUris":I
    .end local v19    # "uriArray":[Landroid/net/Uri;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1a

    .line 501
    new-instance v15, Landroid/nfc/BeamShareData;

    .end local v15    # "shareData":Landroid/nfc/BeamShareData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v15, v0, v1, v10, v2}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .line 502
    .restart local v15    # "shareData":Landroid/nfc/BeamShareData;
    sget-boolean v21, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v21, :cond_16

    const-string v21, "BeamShareActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Created NDEF message:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 504
    :cond_1a
    sget-boolean v21, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v21, :cond_1b

    const-string v21, "BeamShareActivity"

    const-string v22, "Could not find any data to parse."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_1b
    new-instance v15, Landroid/nfc/BeamShareData;

    .end local v15    # "shareData":Landroid/nfc/BeamShareData;
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v15, v0, v1, v10, v2}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .restart local v15    # "shareData":Landroid/nfc/BeamShareData;
    goto/16 :goto_8

    .line 488
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v12    # "numValidUris":I
    .restart local v18    # "uri":Landroid/net/Uri;
    .restart local v19    # "uriArray":[Landroid/net/Uri;
    :catch_5
    move-exception v5

    move v11, v12

    .end local v12    # "numValidUris":I
    .restart local v11    # "numValidUris":I
    goto/16 :goto_7
.end method

.method tryText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 386
    .local v0, "parsedUri":Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 390
    .end local v0    # "parsedUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 388
    :cond_0
    new-instance v1, Landroid/nfc/NdefMessage;

    const/4 v2, 0x0

    invoke-static {v2, p1}, Landroid/nfc/NdefRecord;->createTextRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    invoke-direct {v1, v2, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    iput-object v1, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    goto :goto_0
.end method

.method tryUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 373
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_1
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-static {p1}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    goto :goto_0
.end method
