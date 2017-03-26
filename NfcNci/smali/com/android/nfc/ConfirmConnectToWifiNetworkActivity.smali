.class public Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
.super Landroid/app/Activity;
.source "ConfirmConnectToWifiNetworkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field static final CONNECT_FAIL:Ljava/lang/String; = "wifi static handover fail"

.field static final CONNECT_WIFI:Ljava/lang/String; = "static handover wifi"

.field private static final CSC_WIFI_CONFIGENCODINGCHARSET:Ljava/lang/String;

.field static final DBG:Z

.field public static final ENABLE_WIFI_TIMEOUT_MILLIS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "ConfirmConnectToWifiNetworkActivity"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mEnableWifiInProgress:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->DBG:Z

    .line 51
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigEncodingCharSet"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->CSC_WIFI_CONFIGENCODINGCHARSET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 165
    new-instance v0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;-><init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    iput-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getAndClearEnableWifiInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->showFailToast()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->CSC_WIFI_CONFIGENCODINGCHARSET:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->doConnect(Landroid/net/wifi/WifiManager;)V

    return-void
.end method

.method private doConnect(Landroid/net/wifi/WifiManager;)V
    .locals 2
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 120
    .local v0, "networkId":I
    if-gez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->showFailToast()V

    .line 141
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v1, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;-><init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method private getAndClearEnableWifiInProgress()Z
    .locals 2

    .prologue
    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 200
    .local v0, "enableWifiInProgress":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 201
    monitor-exit p0

    .line 203
    return v0

    .line 201
    .end local v0    # "enableWifiInProgress":Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private showFailToast()V
    .locals 3

    .prologue
    .line 145
    const-string v1, "wifi static handover fail"

    invoke-virtual {p0, v1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->insertBigDataStaticHandover(Ljava/lang/String;)V

    .line 146
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f080000

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 147
    .local v0, "c":Landroid/view/ContextThemeWrapper;
    const v1, 0x7f070053

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 149
    return-void
.end method


# virtual methods
.method insertBigDataStaticHandover(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 208
    const-string v1, "ConfirmConnectToWifiNetworkActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BIGDATA] insertBigDataStaticHandover : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 213
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "EV_TYP"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    const-string v2, "SHOF"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/nfc/NfcService;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void

    .line 214
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 93
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 95
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 97
    iput-boolean v2, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 99
    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$1;

    invoke-direct {v2, p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$1;-><init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 115
    return-void

    .line 110
    :cond_0
    const-string v1, "static handover wifi"

    invoke-virtual {p0, v1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->insertBigDataStaticHandover(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0, v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->doConnect(Landroid/net/wifi/WifiManager;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 57
    iput-object p0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.android.nfc.WIFI_CONFIG_EXTRA"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iput-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 63
    iget-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "printableSsid":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f070055

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070052

    invoke-virtual {v3, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 74
    iput-boolean v6, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 75
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v3, "gbk"

    sget-object v4, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->CSC_WIFI_CONFIGENCODINGCHARSET:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    iget-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    iget-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 163
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->finish()V

    .line 156
    :cond_0
    return-void
.end method
