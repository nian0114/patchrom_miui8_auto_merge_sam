.class public Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final DBG:Z


# instance fields
.field private final MHS_REQUEST:I

.field private customView:Landroid/view/View;

.field private customViewWifi:Landroid/view/View;

.field private extra_type:I

.field private isAirplaneMode:Z

.field private isHotspotOnWifiEnableWarningDoNotShowAgain:Z

.field private isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

.field private isWifiWarningDoNotShowAgain:Z

.field private mApDisableDialog:Landroid/app/AlertDialog;

.field private mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

.field private mApEnableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

.field private mCb:Landroid/widget/CheckBox;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

.field private mDialogType:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLightTheme:Z

.field private mIsTablet:Z

.field private mNaiMismatchDialog:Landroid/app/AlertDialog;

.field private mProvisionApp:[Ljava/lang/String;

.field private mProvisionType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

.field mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

.field private mWifiDisableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

.field private mWifiDisabledByEnablingHotspot:Z

.field private mWifiEnableWarnMessage:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private nevershowagain:Z

.field private req_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/settings_ex/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->DBG:Z

    .line 72
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 112
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->nevershowagain:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    .line 118
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    .line 126
    iput-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 128
    iput-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 141
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isWifiWarningDoNotShowAgain:Z

    .line 148
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isHotspotOnWifiEnableWarningDoNotShowAgain:Z

    .line 150
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

    .line 155
    iput v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->MHS_REQUEST:I

    .line 158
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 974
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$34;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$34;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->extra_type:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->preProvisioning()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->secSetSoftapEnabled(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->afterAttentionDialog()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->afterBatteryDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Lcom/android/settings_ex/wifi/WifiApDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->disableWifiDialog()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mCb:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->nevershowagain:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->nevershowagain:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->req_type:I

    return v0
.end method

.method private afterAttentionDialog()V
    .locals 2

    .prologue
    .line 947
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    .line 953
    :goto_0
    return-void

    .line 951
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->afterBatteryDialog()V

    goto :goto_0
.end method

.method private afterBatteryDialog()V
    .locals 3

    .prologue
    .line 956
    const/4 v0, 0x1

    .line 957
    .local v0, "setSoftapEnableFlag":Z
    const-string v1, "TMO"

    sget-object v2, Lcom/android/settings_ex/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NEWCO"

    sget-object v2, Lcom/android/settings_ex/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 958
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 959
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    .line 960
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v1, :cond_1

    .line 961
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v2, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 962
    const/4 v0, 0x0

    .line 963
    const-string v1, "WifiApWarning"

    const-string v2, "Dialog create during first time Mobile HotSpot at TMO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/16 v1, 0x1d

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    .line 969
    :cond_1
    if-eqz v0, :cond_2

    .line 970
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->disableWifiDialog()V

    .line 972
    :cond_2
    return-void
.end method

.method private disableWifiDialog()V
    .locals 11

    .prologue
    const/16 v10, 0x1f

    const/16 v9, 0x1e

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 999
    const-string v5, "TMO"

    sget-object v8, Lcom/android/settings_ex/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "NEWCO"

    sget-object v8, Lcom/android/settings_ex/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1001
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1002
    .local v3, "netInfo":Landroid/net/NetworkInfo;
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1003
    invoke-direct {p0, v9}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    .line 1057
    .end local v3    # "netInfo":Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return-void

    .line 1004
    .restart local v3    # "netInfo":Landroid/net/NetworkInfo;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isP2pConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1005
    const-string v5, "WifiApWarning"

    const-string v6, "WiFi p2p is connected. Create dailog"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    invoke-direct {p0, v10}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    .line 1008
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 1011
    .end local v3    # "netInfo":Landroid/net/NetworkInfo;
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    .line 1012
    .local v4, "wifiState":I
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiIBSSState()I

    move-result v2

    .line 1013
    .local v2, "ibssState":I
    if-eq v4, v6, :cond_8

    if-eqz v4, :cond_8

    const/4 v5, 0x4

    if-eq v4, v5, :cond_8

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1018
    const-string v5, "VZW"

    sget-object v8, Lcom/android/settings_ex/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1019
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v8, "SAMSUNG_HOTSPOT"

    invoke-virtual {v5, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1020
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v8, "WIFI_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_5

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isWifiWarningDoNotShowAgain:Z

    .line 1021
    iget-boolean v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isWifiWarningDoNotShowAgain:Z

    if-eqz v5, :cond_6

    .line 1023
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1024
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v5, "wifi_saved_state"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1025
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1027
    const-wide/16 v8, 0x258

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    :goto_2
    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_5
    move v5, v7

    .line 1020
    goto :goto_1

    .line 1028
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 1029
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1032
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_6
    iget-boolean v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isWifiWarningDoNotShowAgain:Z

    if-nez v5, :cond_1

    .line 1033
    invoke-direct {p0, v9}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    .line 1036
    :cond_7
    invoke-direct {p0, v9}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    .line 1038
    :cond_8
    const/4 v5, 0x2

    if-eq v2, v5, :cond_9

    const/4 v5, 0x3

    if-ne v2, v5, :cond_a

    .line 1040
    :cond_9
    const-string v5, "WifiApWarning"

    const-string v6, "WifiApWarning ibss is connected. Create dailog"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const/16 v5, 0x21

    invoke-direct {p0, v5}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_0

    .line 1042
    :cond_a
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isP2pEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1043
    const-string v5, "WifiApWarning"

    const-string v6, "WifiApWarning WiFi p2p is connected. Create dailog"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1046
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isP2pConnected()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1047
    invoke-direct {p0, v10}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_0

    .line 1049
    :cond_b
    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_0

    .line 1052
    :cond_c
    invoke-direct {p0, v10}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_0

    .line 1054
    :cond_d
    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_0
.end method

.method private dismissProgressDialog(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 1332
    const-string v1, "WifiApWarning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissProgressDialog, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 1334
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1335
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1336
    iput-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    .line 1337
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1339
    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 1340
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1341
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1342
    iput-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    .line 1343
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    .line 1344
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1345
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1347
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1348
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "called_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1349
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1350
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0
.end method

.method private getBooleanFromSharedPreference(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1557
    const-string v2, "MHSNoProvisionPreferences"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1558
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1559
    .local v0, "bValue":Z
    const-string v2, "WifiApWarning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBooleanFromSharedPreference - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    return v0
.end method

.method private getRvfMode()I
    .locals 3

    .prologue
    .line 1257
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1258
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1259
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 1261
    .local v0, "mRvfMode":I
    return v0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0xb

    const/4 v5, 0x1

    .line 1356
    const-string v2, "WifiApWarning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received intent to disable pop up and state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 1358
    :cond_0
    const/16 v2, 0xc

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isProvisioningNeeded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1359
    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    .line 1394
    :cond_1
    :goto_0
    return-void

    .line 1360
    :cond_2
    const/16 v2, 0xd

    if-ne p1, v2, :cond_1

    .line 1361
    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto :goto_0

    .line 1363
    :cond_3
    iget v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 1364
    if-ne p1, v6, :cond_1

    .line 1365
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    if-nez v2, :cond_4

    .line 1366
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1367
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_4

    .line 1368
    iget v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v2, v5, :cond_5

    .line 1369
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1375
    .end local v1    # "wm":Landroid/net/wifi/WifiManager;
    :cond_4
    :goto_1
    invoke-direct {p0, v6}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    .line 1377
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    .line 1370
    .restart local v1    # "wm":Landroid/net/wifi/WifiManager;
    :cond_5
    iget v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->req_type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v2, v5, :cond_4

    .line 1371
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiIBSSEnabled(Z)Z

    goto :goto_1

    .line 1379
    .end local v1    # "wm":Landroid/net/wifi/WifiManager;
    :cond_6
    iget v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/16 v3, 0x32

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1380
    const-string v2, "WifiApWarning"

    const-string v3, "Received intent to disable pop up DIALOG_WIFI_P2P_ENABLE_WARNING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    if-ne p1, v6, :cond_1

    .line 1383
    const-string v2, "WifiApWarning"

    const-string v3, "WIFI AP State disabled and p2p enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.intent.action.WIFI_P2P_LAUNCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1385
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1386
    invoke-direct {p0, v6}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    .line 1387
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1388
    .restart local v1    # "wm":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1389
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1391
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_0
.end method

.method private isLTEMode()Z
    .locals 5

    .prologue
    .line 934
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 935
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, "currentNetworkRat":Ljava/lang/String;
    const-string v2, "WifiApWarning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isLTEMode() network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const-string v2, "LTE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isMetroPCS()Z
    .locals 2

    .prologue
    .line 1579
    const-string v0, "MTR"

    sget-object v1, Lcom/android/settings_ex/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1580
    const/4 v0, 0x1

    .line 1582
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileApON()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1471
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_1

    .line 1472
    const-string v2, "WifiApWarning"

    const-string v3, "Wifi Manager is null so returning false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_0
    :goto_0
    return v1

    .line 1475
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 1476
    .local v0, "mWifiApState":I
    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    .line 1477
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isP2pConnected()Z
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    .line 1299
    const/4 v0, 0x0

    .line 1300
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    .line 1293
    const/4 v0, 0x0

    .line 1294
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isProvisioningCheck()Z
    .locals 2

    .prologue
    .line 1250
    sget-boolean v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Provisioning.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    const/4 v0, 0x0

    .line 1253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSimCheck()Z
    .locals 2

    .prologue
    .line 1397
    sget-boolean v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    const/4 v0, 0x0

    .line 1400
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTMO()Z
    .locals 2

    .prologue
    .line 1572
    const-string v0, "TMO"

    sget-object v1, Lcom/android/settings_ex/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1573
    const/4 v0, 0x1

    .line 1575
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1460
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_1

    .line 1467
    :cond_0
    :goto_0
    return v1

    .line 1462
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1463
    .local v0, "wifi":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1464
    const-string v1, "WifiApWarning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi is connected to AP and wifiInfo is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isWifiSharingEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1445
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_wifi_sharing"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 1446
    const-string v3, "WifiApWarning"

    const-string v4, "Returning true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :goto_0
    return v1

    .line 1448
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_wifi_sharing"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1449
    const-string v1, "WifiApWarning"

    const-string v3, "Returning false"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 1450
    goto :goto_0

    .line 1452
    :catch_0
    move-exception v0

    .line 1453
    .local v0, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "WifiApWarning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in getting provider value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    move v1, v2

    .line 1456
    goto :goto_0
.end method

.method private preProvisioning()V
    .locals 6

    .prologue
    .line 910
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 911
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 912
    .local v0, "isRoaming":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 914
    .local v1, "iso":Ljava/lang/String;
    const-string v3, "WifiApWarning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimCheck() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isSimCheck()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const-string v3, "MTR"

    sget-object v4, Lcom/android/settings_ex/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isLTEMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 917
    const/16 v3, 0x18

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    .line 931
    :goto_0
    return-void

    .line 918
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isSimCheck()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    const-string v3, "READY"

    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 922
    const/16 v3, 0x19

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    .line 924
    :cond_1
    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings_ex/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_2

    const-string v3, "us"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 927
    const/16 v3, 0x1a

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    .line 929
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->secSetSoftapEnabled(Z)V

    goto :goto_0
.end method

.method private putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strKey"    # Ljava/lang/String;
    .param p3, "bValue"    # Z

    .prologue
    .line 1564
    const-string v2, "MHSNoProvisionPreferences"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1565
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1566
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1567
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1568
    const-string v2, "WifiApWarning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putSharedPreference - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    return-void
.end method

.method private secSetSoftapEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 941
    if-eqz p1, :cond_0

    .line 942
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->afterAttentionDialog()V

    .line 944
    :cond_0
    return-void
.end method

.method private sendBroadcastEnablingHotspotCancel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1279
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    if-eqz v1, :cond_1

    .line 1280
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 1281
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1282
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1283
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    .line 1286
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1287
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "called_dialog"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1288
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1289
    return-void
.end method

.method private setRvfMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1265
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1266
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x1b

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1267
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1268
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "mode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1269
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1270
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1271
    return-void
.end method

.method private setSoftapEnabled(Z)V
    .locals 13
    .param p1, "enable"    # Z

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1060
    if-eqz p1, :cond_0

    .line 1061
    iput-boolean v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    .line 1063
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    .line 1064
    .local v4, "wifiApState":I
    if-eqz p1, :cond_4

    const/16 v6, 0xc

    if-eq v4, v6, :cond_1

    const/16 v6, 0xd

    if-ne v4, v6, :cond_4

    .line 1066
    :cond_1
    iget v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    .line 1067
    const-string v6, "WifiApWarning"

    const-string v7, "provisioning sucess"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    .line 1136
    :cond_3
    :goto_0
    return-void

    .line 1073
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1074
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "airplane_mode_on"

    invoke-static {v0, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    .line 1075
    const-string v6, "WifiApWarning"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSoftapEnabled(enable), isAirplaneMode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    if-eqz p1, :cond_6

    iget-boolean v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    if-eqz v6, :cond_6

    .line 1077
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    .line 1078
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    :cond_5
    move v6, v8

    .line 1074
    goto :goto_1

    .line 1088
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    .line 1089
    .local v5, "wifiState":I
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v6

    if-nez v6, :cond_a

    .line 1091
    if-eqz p1, :cond_a

    if-eq v5, v11, :cond_7

    if-eq v5, v12, :cond_7

    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1094
    :cond_7
    if-eq v5, v11, :cond_8

    if-ne v5, v12, :cond_9

    .line 1096
    :cond_8
    const-string v6, "wifi_saved_state"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1098
    :cond_9
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1100
    const-wide/16 v10, 0x258

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :cond_a
    :goto_2
    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->getRvfMode()I

    move-result v6

    if-lez v6, :cond_b

    .line 1108
    invoke-direct {p0, v8}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setRvfMode(I)V

    .line 1109
    const-string v6, "WifiApWarning"

    const-string v9, "setRvfMode(0) for Hotspot configuration"

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_b
    const-string v6, "WifiApWarning"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSoftapEnabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    if-eqz p1, :cond_e

    .line 1114
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v6, :cond_c

    .line 1115
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v9, "SAMSUNG_HOTSPOT"

    invoke-virtual {v6, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1118
    :cond_c
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v9, "PROVISIONING_RESULT"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1119
    .local v3, "tempProvisonResult":I
    const-string v6, "WifiApWarning"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "value of provisioning result is  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    sput-boolean v7, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 1122
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v6, :cond_d

    .line 1123
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v8, "SAMSUNG_HOTSPOT"

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1125
    :cond_d
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1127
    .local v2, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v6, "PROVISIONING_RESULT"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1128
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1129
    const-string v6, "WifiApWarning"

    const-string v7, "setting the value of provision result to 1"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    .end local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "tempProvisonResult":I
    :cond_e
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1132
    if-eqz p1, :cond_3

    .line 1133
    const/16 v6, 0xa

    invoke-direct {p0, v6}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto/16 :goto_0

    .line 1101
    :catch_0
    move-exception v1

    .line 1102
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private showFirstTimePoup(Landroid/content/Context;)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 1482
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1484
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v5, 0x7f040254

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1485
    .local v1, "customView":Landroid/view/View;
    const v4, 0x7f0d05b2

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1486
    .local v3, "layout":Landroid/widget/LinearLayout;
    const v4, 0x7f0d0565

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mCb:Landroid/widget/CheckBox;

    .line 1487
    new-instance v4, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$35;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$35;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1498
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1500
    const v4, 0x7f0e083a

    new-instance v5, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$36;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$36;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1532
    const v4, 0x7f0e083b

    new-instance v5, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$37;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$37;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1541
    new-instance v4, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$38;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$38;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1550
    const v4, 0x7f0e0449

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1551
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1552
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1554
    return-void
.end method

.method private showNextHotspotDialog(I)V
    .locals 24
    .param p1, "id"    # I

    .prologue
    .line 600
    packed-switch p1, :pswitch_data_0

    .line 905
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    .line 907
    :goto_1
    return-void

    .line 602
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    .line 607
    :pswitch_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 608
    .local v5, "HotspotWarningDialog":Landroid/app/AlertDialog$Builder;
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 612
    .local v15, "view":Landroid/widget/TextView;
    const v19, 0x7f0e0521

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 614
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a00e3

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 617
    :cond_1
    const/high16 v19, 0x41900000    # 18.0f

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 618
    const/16 v19, 0x1e

    const/16 v20, 0x1e

    const/16 v21, 0x1e

    const/16 v22, 0x1e

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 619
    const/high16 v19, 0x40000000    # 2.0f

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 620
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 621
    invoke-virtual {v5, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 622
    const v19, 0x7f0e050d

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$9;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 627
    const v19, 0x7f0e083b

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$10;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$10;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 633
    new-instance v19, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$11;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$11;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 639
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 640
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 643
    .end local v5    # "HotspotWarningDialog":Landroid/app/AlertDialog$Builder;
    .end local v15    # "view":Landroid/widget/TextView;
    :pswitch_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 644
    .local v4, "HotspotNoLTEWarningDialog":Landroid/app/AlertDialog$Builder;
    const v19, 0x7f0e0516

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 645
    const v19, 0x7f0e083a

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$12;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$12;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 651
    new-instance v19, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$13;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$13;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 657
    const v19, 0x7f0e04b4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 658
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 659
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 662
    .end local v4    # "HotspotNoLTEWarningDialog":Landroid/app/AlertDialog$Builder;
    :pswitch_4
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 663
    .local v12, "mNoSimDialog":Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaCTCModel()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 664
    const v19, 0x7f0e04b3

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 668
    :goto_2
    const v19, 0x7f0e083a

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$14;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$14;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 674
    new-instance v19, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$15;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$15;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 680
    const v19, 0x7f0e04b1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 681
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 682
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 666
    :cond_2
    const v19, 0x7f0e04b2

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 685
    .end local v12    # "mNoSimDialog":Landroid/app/AlertDialog$Builder;
    :pswitch_5
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 686
    .local v13, "mWarnRoamBulder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0e04e8

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "$20.48"

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 687
    const v19, 0x7f0e07ea

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$16;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$16;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 692
    new-instance v19, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$17;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$17;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 698
    const v19, 0x7f0e04e7

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 699
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 700
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 703
    .end local v13    # "mWarnRoamBulder":Landroid/app/AlertDialog$Builder;
    :pswitch_6
    const-string v7, "file:///android_asset/html/%y/tethering_attention.html"

    .line 704
    .local v7, "attention_url":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    .line 705
    .local v11, "locale":Ljava/util/Locale;
    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "ja"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const-string v10, "ja"

    .line 706
    .local v10, "language":Ljava/lang/String;
    :goto_3
    const-string v19, "%y"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 708
    .local v14, "url":Ljava/lang/String;
    new-instance v8, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 709
    .local v8, "attention_view":Landroid/webkit/WebView;
    invoke-virtual {v8, v14}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 711
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 712
    .local v6, "attentionDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 713
    const v19, 0x7f0e083a

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$18;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$18;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 718
    const v19, 0x7f0e083b

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$19;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$19;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 724
    new-instance v19, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$20;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$20;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 730
    const v19, 0x1040014

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 731
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 732
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 733
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 705
    .end local v6    # "attentionDialog":Landroid/app/AlertDialog$Builder;
    .end local v8    # "attention_view":Landroid/webkit/WebView;
    .end local v10    # "language":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    :cond_3
    const-string v10, "en"

    goto :goto_3

    .line 736
    .end local v7    # "attention_url":Ljava/lang/String;
    .end local v11    # "locale":Ljava/util/Locale;
    :pswitch_7
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 737
    .local v9, "batteryDialog":Landroid/app/AlertDialog$Builder;
    const v19, 0x7f0e050b

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 738
    const v19, 0x7f0e083a

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$21;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$21;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 743
    const v19, 0x7f0e083b

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$22;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$22;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 749
    new-instance v19, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$23;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$23;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 755
    const v19, 0x7f0e04b4

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 756
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 757
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 760
    .end local v9    # "batteryDialog":Landroid/app/AlertDialog$Builder;
    :pswitch_8
    const-string v19, "WifiApWarning"

    const-string v20, "DIALOG_FIRST_TIME_CONFIGURE create"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 762
    new-instance v19, Lcom/android/settings_ex/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$24;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$24;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings_ex/wifi/WifiApDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ex/wifi/WifiApDialog;->show()V

    goto/16 :goto_1

    .line 777
    :pswitch_9
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 779
    .local v17, "warnWifiDisable":Landroid/app/AlertDialog$Builder;
    const-string v19, "VZW"

    sget-object v20, Lcom/android/settings_ex/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f040256

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->customView:Landroid/view/View;

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->customView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d05be

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiDisableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->customView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d05bf

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->customView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 793
    :goto_4
    const v19, 0x7f0e083a

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$25;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$25;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 817
    const v19, 0x7f0e083b

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$26;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$26;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 823
    new-instance v19, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$27;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$27;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 830
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 831
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 791
    :cond_4
    const v19, 0x7f0e047a

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 834
    .end local v17    # "warnWifiDisable":Landroid/app/AlertDialog$Builder;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "dontshowmemhsfirsttime"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->getBooleanFromSharedPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 835
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showFirstTimePoup(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 838
    :cond_5
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_1

    .line 843
    :pswitch_b
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 844
    .local v18, "warnWifiP2PDisable":Landroid/app/AlertDialog$Builder;
    const v19, 0x7f0e0485

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 845
    const v19, 0x7f0e12bc

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$28;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$28;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 850
    const v19, 0x7f0e083b

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$29;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$29;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 856
    new-instance v19, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$30;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$30;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 863
    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 864
    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 867
    .end local v18    # "warnWifiP2PDisable":Landroid/app/AlertDialog$Builder;
    :pswitch_c
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 868
    .local v16, "warnIbssDisable":Landroid/app/AlertDialog$Builder;
    const v19, 0x7f0e044b

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 869
    const v19, 0x7f0e12bc

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$31;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$31;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 884
    const v19, 0x7f0e083b

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$32;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$32;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 890
    new-instance v19, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$33;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$33;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 897
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 898
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 901
    .end local v16    # "warnIbssDisable":Landroid/app/AlertDialog$Builder;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private showProgressDialog(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 1310
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 1311
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1312
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1315
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0443

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1316
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1317
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1329
    :cond_1
    :goto_0
    return-void

    .line 1319
    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 1320
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_3

    .line 1321
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    .line 1323
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1324
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0444

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1325
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1326
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 6
    .param p1, "choice"    # I

    .prologue
    const/4 v5, 0x0

    .line 1140
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isProvisioningNeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1141
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    .line 1142
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1143
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1144
    const-string v2, "TETHER_TYPE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1145
    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1146
    const-string v2, "WifiApWarning"

    const-string v3, "startActivityForResult"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1159
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1148
    :cond_0
    invoke-static {}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isTMO()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 1149
    :cond_2
    const/16 v2, 0xf

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "WifiApWarning"

    const-string v3, "received exception provision failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-direct {p0, v5}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    .line 1157
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    .line 1151
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    .line 1152
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(II)V
    .locals 6
    .param p1, "choice"    # I
    .param p2, "provision_type"    # I

    .prologue
    const/4 v5, 0x0

    .line 1163
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isProvisioningNeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1164
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1165
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    const-string v2, "TETHER_TYPE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1167
    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1168
    const-string v2, "WifiApWarning"

    const-string v3, "startActivityForResult"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1181
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1170
    :cond_0
    invoke-static {}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isTMO()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 1171
    :cond_2
    const/16 v2, 0xf

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1176
    :catch_0
    move-exception v0

    .line 1177
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "WifiApWarning"

    const-string v3, "received exception provision failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    invoke-direct {p0, v5}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    .line 1179
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    .line 1173
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    .line 1174
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1238
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isProvisioningCheck()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1246
    :cond_0
    :goto_0
    return v0

    .line 1239
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1240
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1241
    const-string v1, "WifiApWarning"

    const-string v2, "Wifi is connected so skip provisioning for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1244
    :cond_2
    const-string v1, "WifiApWarning"

    const-string v2, "Wifi is not connected so dont skip provisioning for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 1184
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/AlertActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1185
    const-string v0, "WifiApWarning"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    if-nez p1, :cond_1

    .line 1187
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 1188
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1189
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setProvisionSuccess(Z)Z

    .line 1191
    iget v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionType:I

    iget v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-eq v0, v1, :cond_0

    .line 1192
    const-string v0, "WifiApWarning"

    const-string v1, "Dismissing Progress Dialog DIALOG_PROGRESS_ENABLE_HOTSPOT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    .line 1195
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isMobileApON()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1196
    const-string v0, "WifiApWarning"

    const-string v1, "Wifi Sharing Mobile Ap already ON so return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    .line 1235
    :cond_1
    :goto_0
    return-void

    .line 1201
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    .line 1202
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    .line 1204
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1206
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1207
    iget v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionType:I

    iget v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-eq v0, v1, :cond_4

    .line 1208
    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    .line 1210
    :cond_4
    const-string v0, "WifiApWarning"

    const-string v1, "Wifi Sharing Provision failed but wifi connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isMobileApON()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1212
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    .line 1213
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    .line 1216
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    .line 1220
    :cond_6
    iget v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    .line 1221
    const-string v0, "WifiApWarning"

    const-string v1, "WifiAp is disabled: provisioning fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1223
    iget v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionType:I

    iget v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-eq v0, v1, :cond_7

    .line 1224
    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto :goto_0

    .line 1226
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    .line 1230
    :cond_8
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    .line 1231
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1405
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    .line 1406
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    const-string v7, "WifiApWarning"

    const-string v8, "onCreate"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 188
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    .line 189
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 190
    const-string v7, "wifip2p"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 191
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 192
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    .line 193
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    .line 194
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070015

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    .line 195
    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    .line 196
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 199
    :cond_0
    const-string v7, "WifiApWarning"

    const-string v8, "Error: this activity may be started only with intent"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    .line 597
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    const-string v7, "wifiap_warning_dialog_type"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    .line 204
    const-string v7, "req_type"

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->req_type:I

    .line 205
    const-string v7, "extra_type"

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->extra_type:I

    .line 206
    const-string v7, "wifiap_provision_dialog_type"

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionType:I

    .line 207
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 208
    .local v6, "p":Lcom/android/internal/app/AlertController$AlertParams;
    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    sparse-switch v7, :sswitch_data_0

    .line 594
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    .line 210
    :sswitch_0
    const-string v7, "WifiApWarning"

    const-string v8, "DIALOG_HOTSPOT_NO_DATA"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :sswitch_1
    const-string v7, "WifiApWarning"

    const-string v8, "DIALOG_NAI_MISMATCH"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :sswitch_2
    const-string v7, "WifiApWarning"

    const-string v8, "DIALOG_TETHERING_DENIED"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 218
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setupAlert()V

    .line 219
    const v7, 0x7f0f01c8

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setTheme(I)V

    .line 220
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    .local v0, "ad":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0e044f

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 222
    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 223
    const v7, 0x7f0e0453

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 233
    :goto_1
    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    .line 234
    const v7, 0x7f0e083b

    new-instance v8, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$2;

    invoke-direct {v8, p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$2;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 263
    :cond_3
    const v7, 0x104000a

    new-instance v8, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$3;

    invoke-direct {v8, p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 301
    new-instance v7, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$4;

    invoke-direct {v7, p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$4;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 329
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    .line 330
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 224
    :cond_4
    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 225
    const v7, 0x7f0e0451

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 227
    :cond_5
    const v7, 0x7f0e0452

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 333
    .end local v0    # "ad":Landroid/app/AlertDialog$Builder;
    .end local v2    # "cr":Landroid/content/ContentResolver;
    :sswitch_3
    const-string v7, "WifiApWarning"

    const-string v8, "Received intent to show DIALOG_WIFI_P2P_ENABLE_WARNING "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :sswitch_4
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 336
    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v9, 0x103012b

    invoke-direct {v7, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    .line 339
    :cond_6
    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 340
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setupAlert()V

    .line 341
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setVisible(Z)V

    .line 342
    move-object v1, p0

    .line 343
    .local v1, "av":Landroid/app/Activity;
    const v7, 0x7f0f01c8

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setTheme(I)V

    .line 345
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 349
    .local v5, "newDialog":Landroid/app/AlertDialog$Builder;
    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v7, :cond_a

    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 350
    const-string v7, "VZW"

    sget-object v8, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 351
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v8, 0x7f040257

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    .line 352
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v8, 0x7f0d05c1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    .line 353
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v8, 0x7f0d05c0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiEnableWarnMessage:Landroid/widget/TextView;

    .line 354
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiEnableWarnMessage:Landroid/widget/TextView;

    const v8, 0x7f0e053f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 355
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v8, 0x7f0d05c2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    .line 356
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 357
    const v7, 0x7f0e0542

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 393
    :cond_7
    :goto_2
    const v7, 0x104000a

    new-instance v8, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 478
    new-instance v7, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$7;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$7;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 500
    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$8;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$8;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 522
    const-string v7, "VZW"

    sget-object v8, Lcom/android/settings_ex/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 523
    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v7, :cond_12

    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_12

    .line 524
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v8, "SAMSUNG_HOTSPOT"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    .line 525
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v8, "HOTSPOT_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isHotspotOnWifiEnableWarningDoNotShowAgain:Z

    .line 526
    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isHotspotOnWifiEnableWarningDoNotShowAgain:Z

    if-eqz v7, :cond_11

    .line 527
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v8, 0x7f0e053b

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 528
    const/16 v7, 0xb

    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    .line 529
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v7, :cond_1

    .line 530
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 358
    :cond_8
    const-string v7, "MTR"

    sget-object v8, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 359
    const v7, 0x7f0e047a

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 361
    :cond_9
    const v7, 0x7f0e0442

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 363
    :cond_a
    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->req_type:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_b

    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->extra_type:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_b

    .line 365
    const v7, 0x7f0e0594

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 366
    const v7, 0x7f0e0595

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 367
    :cond_b
    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->req_type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_c

    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 368
    const v7, 0x7f0e044d

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 369
    :cond_c
    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v7, :cond_d

    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_d

    .line 370
    const v7, 0x7f0e044a

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 371
    :cond_d
    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->req_type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_e

    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->extra_type:I

    if-nez v7, :cond_e

    .line 372
    const v7, 0x7f0e044c

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 373
    :cond_e
    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v7, :cond_7

    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    .line 374
    const-string v7, "VZW"

    sget-object v8, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 375
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v8, 0x7f040257

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    .line 376
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v8, 0x7f0d05c1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    .line 377
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v8, 0x7f0d05c0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiEnableWarnMessage:Landroid/widget/TextView;

    .line 378
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiEnableWarnMessage:Landroid/widget/TextView;

    const v8, 0x7f0e0540

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 379
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v8, 0x7f0d05c2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    .line 380
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$5;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$5;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 387
    const v7, 0x7f0e0543

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 389
    :cond_f
    const v7, 0x7f0e047a

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 525
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 533
    :cond_11
    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isHotspotOnWifiEnableWarningDoNotShowAgain:Z

    if-nez v7, :cond_1

    .line 534
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    .line 535
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_1

    .line 536
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 539
    :cond_12
    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v7, :cond_17

    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_17

    .line 540
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v8, "SAMSUNG_HOTSPOT"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    .line 541
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v8, "USBTETHER_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_15

    const/4 v7, 0x1

    :goto_4
    iput-boolean v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

    .line 542
    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

    if-eqz v7, :cond_16

    .line 543
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v7, :cond_13

    .line 544
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 547
    :cond_13
    const-wide/16 v8, 0x258

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_5
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v7, :cond_14

    .line 552
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 554
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_0

    .line 541
    :cond_15
    const/4 v7, 0x0

    goto :goto_4

    .line 548
    :catch_0
    move-exception v3

    .line 549
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 556
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_16
    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

    if-nez v7, :cond_1

    .line 557
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    .line 558
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_1

    .line 559
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 563
    :cond_17
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    .line 564
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_1

    .line 565
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 569
    :cond_18
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    .line 570
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_1

    .line 571
    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 576
    .end local v1    # "av":Landroid/app/Activity;
    .end local v5    # "newDialog":Landroid/app/AlertDialog$Builder;
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setupAlert()V

    .line 577
    const v7, 0x7f0f01c8

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setTheme(I)V

    .line 578
    const-string v7, "USC"

    sget-object v8, Lcom/android/settings_ex/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 579
    const/16 v7, 0x17

    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_0

    .line 581
    :cond_19
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->preProvisioning()V

    goto/16 :goto_0

    .line 585
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setupAlert()V

    .line 586
    const v7, 0x7f0f01c8

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setTheme(I)V

    .line 587
    iget v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionType:I

    iget v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-ne v7, v8, :cond_1a

    .line 588
    const/4 v7, 0x0

    iget v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionType:I

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(II)V

    goto/16 :goto_0

    .line 590
    :cond_1a
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_0

    .line 208
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x32 -> :sswitch_3
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1435
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 1436
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1437
    iget v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1438
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    .line 1440
    :cond_0
    const-string v0, "WifiApWarning"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1411
    const-string v0, "WifiApWarning"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 1413
    iget v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1414
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1417
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    .line 1419
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1432
    :cond_2
    :goto_0
    return-void

    .line 1426
    :cond_3
    iget v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1427
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    if-eqz v0, :cond_2

    .line 1428
    const-string v0, "WifiApWarning"

    const-string v1, "mDialogConfigure.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiApDialog;->dismiss()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1305
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 1306
    const-string v0, "WifiApWarning"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    return-void
.end method

.method public saveIsShowPassword()V
    .locals 3

    .prologue
    .line 1273
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1274
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "wifi_ap_show_passwd"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1276
    return-void

    .line 1274
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
