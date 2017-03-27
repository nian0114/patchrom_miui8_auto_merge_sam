.class public Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiConnectionHandlerActivity.java"


# instance fields
.field private mBeforeValue:Landroid/content/SharedPreferences;

.field private mDateConnectionDialog:Landroid/app/AlertDialog;

.field private mDoNotShow:Landroid/content/SharedPreferences;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsReceiverRegistered:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    .line 44
    new-instance v0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity$1;-><init>(Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mDateConnectionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mDoNotShow:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mBeforeValue:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private showdataConnectionDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 97
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 98
    iget-object v4, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400b6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "PopupView":Landroid/view/View;
    const v4, 0x7f0d00ec

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 100
    .local v3, "message":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e1394

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v4, 0x7f0d01fa

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 103
    .local v2, "mcheck":Landroid/widget/CheckBox;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e1393

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e1396

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity$2;

    invoke-direct {v5, p0, v2}, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity$2;-><init>(Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e1395

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity$3;

    invoke-direct {v5, p0, v2}, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity$3;-><init>(Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mDateConnectionDialog:Landroid/app/AlertDialog;

    .line 155
    iget-object v4, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mDateConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 156
    iget-object v4, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mDateConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 157
    iget-object v4, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mDateConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d2

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 158
    iget-object v4, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mDateConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 160
    return-void
.end method


# virtual methods
.method public OnOffData(Z)V
    .locals 3
    .param p1, "mButton"    # Z

    .prologue
    .line 206
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 207
    .local v0, "conn":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 209
    const-string v1, "WifiConnectionHandlerActivity"

    const-string v2, "The data service will be enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    const-string v1, "WifiConnectionHandlerActivity"

    const-string v2, "ConnectivityManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mDoNotShow:Landroid/content/SharedPreferences;

    .line 70
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mBeforeValue:Landroid/content/SharedPreferences;

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    .line 93
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->showdataConnectionDialog()V

    .line 95
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 198
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 203
    return-void
.end method
