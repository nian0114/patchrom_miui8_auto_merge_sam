.class public Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private static mContext:Landroid/content/Context;

.field private static mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private static mCurrentLeftMenuType:I

.field private static mCurrentRightMenuType:I

.field private static mIdleStartCnt:I

.field private static mInvited:Z

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private static mMultiConnectClicked:Z

.field private static mMultiConnectInProgress:Z

.field private static mMultiConnectionComplete:Z

.field private static mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private static mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

.field private static mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private static mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# instance fields
.field private btnBundle:Z

.field private dividerView:Landroid/view/View;

.field private isBtnEnabled:Z

.field private mAutoFinish:Z

.field private mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mCancelConnectDialog:Landroid/app/AlertDialog;

.field private mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectedGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mDeviceInfoDialog:Landroid/app/AlertDialog;

.field private mDeviceNameDialog:Landroid/app/AlertDialog;

.field private mDisableMulticonnect:Z

.field private mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEditDeviceName:Landroid/widget/EditText;

.field private mEndConnectDialog:Landroid/app/AlertDialog;

.field private mFullScanTimer:Landroid/os/CountDownTimer;

.field private mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mHaveSwitch:Z

.field private mIdleTimer:Landroid/os/CountDownTimer;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsEmerMode:Z

.field private mIsLandscape:Z

.field private mIsRegisteredMotionListener:Z

.field private mIsSetTimer:Z

.field private mIsTablet:Z

.field private mLastGroupFormed:Z

.field private mMaxClientSupportDialog:Landroid/app/AlertDialog;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMultiButOneDev:Z

.field private mMultiConnect:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mReceivedStickyEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanClicked:Z

.field private mScanDialog:Landroid/app/AlertDialog;

.field private mScanTimer:Landroid/os/CountDownTimer;

.field private mSelectAll:Lcom/android/settings_ex/wifi/p2p/WifiP2pCustomCheckBox;

.field private mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mTalkback:Z

.field mTempSsid:Ljava/lang/String;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private myDeviceCenterText:Landroid/widget/TextView;

.field private myDeviceText:Landroid/widget/TextView;

.field private myDeviceTextinNoDevice:Landroid/widget/TextView;

.field private noDeviceLayout:Landroid/widget/LinearLayout;

.field private progressBarItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 193
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    sput-object v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 194
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    sput-object v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 195
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    sput-object v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    .line 198
    sput-object v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 206
    sput-boolean v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 208
    sput-boolean v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    .line 209
    sput-boolean v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    .line 211
    sput-boolean v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 217
    sput v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    .line 244
    const/4 v0, 0x1

    sput v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCurrentLeftMenuType:I

    .line 245
    const/4 v0, 0x6

    sput v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    .line 275
    sput-object v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 280
    sput-object v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 282
    sput-object v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 164
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    .line 196
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 204
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    .line 207
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z

    .line 210
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    .line 223
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->btnBundle:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    .line 227
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    .line 229
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    .line 231
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDisableMulticonnect:Z

    .line 243
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 260
    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    .line 262
    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;

    .line 263
    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    .line 264
    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;

    .line 267
    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;

    .line 269
    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;

    .line 270
    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;

    .line 276
    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 277
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    .line 281
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    .line 296
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsEmerMode:Z

    .line 299
    new-instance v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/hardware/motion/MRListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z

    return p1
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    return v0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 134
    sput-boolean p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    return p0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 134
    sput-boolean p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    return p0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    return v0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 134
    sput-boolean p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    return p0
.end method

.method static synthetic access$1700()Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->addMyDeviceCenterText()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2200()Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    return v0
.end method

.method static synthetic access$3002(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 134
    sput-object p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    return p1
.end method

.method static synthetic access$3100()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIdleTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->hideProgressBar(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->triggerFullScan(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->addNoDeviceLayout()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$500()Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 134
    sput-object p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 134
    sput-boolean p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    return-void
.end method

.method static synthetic access$800()Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    return p1
.end method

.method private addMyDeviceCenterText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x8

    .line 1593
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->myDeviceText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1594
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->dividerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1595
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->noDeviceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1597
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->myDeviceCenterText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1598
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0593

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getMyDeviceName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1599
    .local v0, "mSummaryMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->myDeviceCenterText:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1600
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->myDeviceCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1602
    .end local v0    # "mSummaryMessage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private addMyDeviceDescriptionPreference(Z)V
    .locals 8
    .param p1, "divider"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1565
    sget-object v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 1566
    new-instance v1, Landroid/preference/Preference;

    sget-object v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1567
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 1568
    const v2, 0x7f04026e

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 1569
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0593

    new-array v4, v7, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getMyDeviceName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1570
    .local v0, "mSummaryMessage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1571
    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1572
    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 1573
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1576
    .end local v0    # "mSummaryMessage":Ljava/lang/String;
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private addNoDeviceLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x8

    .line 1580
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->myDeviceText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1581
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->dividerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1582
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->myDeviceCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1584
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->noDeviceLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->myDeviceTextinNoDevice:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1585
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0593

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getMyDeviceName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1586
    .local v0, "mSummaryMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->myDeviceTextinNoDevice:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1587
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->noDeviceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1589
    .end local v0    # "mSummaryMessage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private cancelConnect()V
    .locals 3

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 1975
    const-string v0, "WifiP2pSettings"

    const-string v1, "cancelConnect ====> cancelConnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    .line 1977
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$20;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$20;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1988
    :cond_0
    return-void
.end method

.method private changeActionBar()V
    .locals 0

    .prologue
    .line 1893
    return-void
.end method

.method private convertDevAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0xe

    const/16 v10, 0xc

    const/4 v9, 0x0

    .line 1527
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    .line 1528
    .local v3, "partialMacAddr":Ljava/util/Formatter;
    const-string v2, ""

    .line 1529
    .local v2, "macAddrStr":Ljava/lang/String;
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1530
    .local v4, "subString":Ljava/lang/String;
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1533
    .local v1, "enable":I
    xor-int/lit16 v1, v1, 0x80

    .line 1534
    :try_start_0
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1535
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1539
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 1542
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1536
    :catch_0
    move-exception v0

    .line 1537
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1539
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    throw v5
.end method

.method private dp2px(Landroid/content/Context;I)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dp"    # I

    .prologue
    .line 1163
    const/4 v0, 0x1

    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private endConnection()V
    .locals 4

    .prologue
    .line 1947
    sget-object v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1948
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_0

    .line 1949
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 1950
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$18;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$18;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeClient(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1971
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_0
    :goto_0
    return-void

    .line 1960
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_0

    .line 1961
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$19;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$19;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private getMyDeviceName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1546
    sget-object v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1547
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1548
    sget-object v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1550
    :cond_0
    if-nez v0, :cond_1

    .line 1551
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1552
    if-nez v0, :cond_1

    .line 1555
    sget-object v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1557
    .local v1, "id":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1561
    .end local v1    # "id":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1560
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1561
    .local v2, "mDeviceName":Ljava/lang/String;
    goto :goto_0
.end method

.method private getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/4 v2, 0x0

    .line 1623
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 1624
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1626
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1627
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1635
    :goto_0
    return-object v0

    .line 1628
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1629
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1630
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1631
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1633
    :cond_2
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0
.end method

.method private getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x11

    .line 1900
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1903
    .end local p1    # "mac":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private hideProgressBar(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1991
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1992
    if-eqz p1, :cond_1

    .line 1993
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1994
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1995
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2009
    :cond_0
    :goto_0
    return-void

    .line 1998
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1999
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    const v1, 0x7f040274

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 2000
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2002
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2003
    if-eqz p1, :cond_0

    .line 2004
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2005
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 2006
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private isP2pConnected()Z
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    return v0
.end method

.method private isP2pEnabled()Z
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pEnabled()Z

    move-result v0

    return v0
.end method

.method private sendP2pSettingsStartedBroadcast(Z)V
    .locals 2
    .param p1, "started"    # Z

    .prologue
    .line 1941
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.p2p.SETTINGS_STRATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1942
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "started"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1943
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1944
    return-void
.end method

.method private setP2pMenu(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1897
    return-void
.end method

.method private setScanTimer(ZZ)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "doListen"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1640
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScanTimer - scan : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", listen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    if-eqz p1, :cond_1

    .line 1644
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1645
    const/4 v0, 0x1

    sput v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    .line 1646
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/16 v2, 0x64b

    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$15;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$15;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1684
    :cond_0
    :goto_0
    return-void

    .line 1668
    :cond_1
    sget-boolean v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1669
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1670
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    if-eqz v0, :cond_2

    .line 1671
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const v1, 0x7f0e0546

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1675
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1676
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1677
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIdleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1680
    if-eqz p2, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private showConnectingDevices(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 14
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 1745
    sget-object v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    if-eqz v11, :cond_2

    sget-object v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pConfigList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    sget-object v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1746
    sget-object v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigList()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1747
    .local v1, "cc":Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1748
    .local v8, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v11, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v12, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1749
    sget-object v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v11, v8}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0

    .line 1755
    .end local v1    # "cc":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 1756
    .local v9, "preferenceScreen":Landroid/preference/PreferenceScreen;
    iget-boolean v11, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v11, :cond_3

    .line 1758
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    const v12, 0x7f0e054a

    invoke-virtual {v11, v12}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1761
    :cond_3
    iget-object v11, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings_ex/wifi/p2p/WifiP2pCustomCheckBox;

    if-eqz v11, :cond_4

    .line 1762
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1764
    :cond_4
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1767
    const/4 v0, 0x0

    .local v0, "availableCount":I
    const/4 v4, 0x0

    .local v4, "failedCount":I
    const/4 v2, 0x0

    .line 1769
    .local v2, "connectedCount":I
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1770
    .restart local v8    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    sget-object v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    .line 1771
    .local v3, "devices":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    new-instance v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    sget-object v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1773
    .local v10, "temp":Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;
    invoke-interface {v3, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1774
    iget-object v11, v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v12, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput v12, v11, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1775
    iget v11, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_6

    iget v11, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 1776
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 1777
    iget-object v11, v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v12, 0x1

    iput v12, v11, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1778
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 1779
    :cond_7
    iget v11, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 1780
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1781
    :cond_8
    iget v11, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v11, :cond_5

    .line 1782
    add-int/lit8 v2, v2, 0x1

    .line 1783
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 1787
    :cond_9
    iget v11, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v11, :cond_5

    .line 1788
    iget-object v11, v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v12, 0x0

    iput v12, v11, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1789
    add-int/lit8 v2, v2, 0x1

    .line 1790
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 1795
    .end local v3    # "devices":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    .end local v8    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v10    # "temp":Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;
    :cond_a
    sget-object v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v7

    .line 1796
    .local v7, "numSelectedPeers":I
    const-string v11, "WifiP2pSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "available : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", failed : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", connected : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", selected : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    if-eqz v0, :cond_b

    sget-boolean v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    if-eqz v11, :cond_c

    .line 1802
    :cond_b
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1804
    :cond_c
    add-int v11, v2, v4

    if-ne v11, v7, :cond_11

    .line 1805
    sget-boolean v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    if-eqz v11, :cond_d

    if-ne v4, v7, :cond_d

    .line 1807
    iget-object v11, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v12, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v13, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$17;

    invoke-direct {v13, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$17;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1816
    :cond_d
    if-lez v2, :cond_e

    .line 1817
    const/4 v11, 0x5

    invoke-direct {p0, v11}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1819
    :cond_e
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1820
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    .line 1822
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    .line 1824
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v11

    if-eqz v11, :cond_f

    iget-boolean v11, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    if-eqz v11, :cond_f

    .line 1825
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    .line 1826
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    .line 1827
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->finish()V

    .line 1837
    :cond_f
    :goto_2
    sget-boolean v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-nez v11, :cond_10

    sget-boolean v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    if-nez v11, :cond_10

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 1838
    :cond_10
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 1843
    :goto_3
    return-void

    .line 1831
    :cond_11
    sget-boolean v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    if-nez v11, :cond_f

    .line 1832
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1833
    const/4 v11, 0x4

    invoke-direct {p0, v11}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    goto :goto_2

    .line 1842
    :cond_12
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    goto :goto_3
.end method

.method private showMultiConnectDevices()V
    .locals 0

    .prologue
    .line 1741
    return-void
.end method

.method private triggerFullScan(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1687
    if-eqz p1, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1689
    sget v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    .line 1690
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$16;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$16;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1703
    :goto_0
    return-void

    .line 1699
    :cond_0
    sput v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    .line 1700
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1701
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 1397
    const/16 v0, 0x6d

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 563
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 564
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 565
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    .line 567
    new-instance v3, Landroid/view/ContextThemeWrapper;

    sget-object v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sput-object v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    .line 569
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 570
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020378

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 575
    :goto_0
    if-eqz p1, :cond_0

    const-string v3, "PEER_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 576
    const-string v3, "PEER_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 577
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    sget-object v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    .line 580
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$2;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 596
    const-string v3, "AUTO_FINISH"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    .line 597
    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    if-eqz v3, :cond_1

    .line 598
    const-string v3, "AUTO_FINISH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 599
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setForcedClick(Z)V

    .line 601
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setHasOptionsMenu(Z)V

    .line 602
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 603
    return-void

    .line 572
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020377

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1168
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1169
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    const-wide/16 v4, 0x3e8

    .line 621
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 622
    if-eqz p1, :cond_0

    .line 623
    const-string v0, "isBtnEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    .line 624
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    if-eqz v0, :cond_0

    .line 625
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->btnBundle:Z

    .line 629
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 631
    .local v8, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    .line 633
    const v0, 0x7f0800e5

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->addPreferencesFromResource(I)V

    .line 635
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 644
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SAMSUNG_P2P"

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 645
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 646
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 647
    .local v9, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v0, "IS_IN_MULTICONNECT"

    sget-boolean v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 648
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 650
    new-instance v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;

    const-wide/16 v2, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    .line 670
    new-instance v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$4;

    move-object v3, p0

    move-wide v6, v4

    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$4;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    .line 689
    new-instance v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;

    const-wide/16 v2, 0x1388

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIdleTimer:Landroid/os/CountDownTimer;

    .line 711
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_2

    .line 749
    :cond_2
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 750
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_4

    .line 751
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v8, v1, v10}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 752
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_3

    .line 754
    const-string v0, "WifiP2pSettings"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iput-object v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 763
    :cond_3
    :goto_0
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 764
    new-instance v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 778
    new-instance v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 811
    new-instance v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 847
    return-void

    .line 758
    :cond_4
    const-string v0, "WifiP2pSettings"

    const-string v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const v4, 0x7f0e083b

    const/4 v0, 0x0

    const v7, 0x7f0e083a

    .line 1217
    if-ne p1, v5, :cond_1

    .line 1218
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0566

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0577

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1225
    .local v0, "dialog":Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;

    .line 1380
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-object v0

    .line 1228
    :cond_1
    if-ne p1, v6, :cond_2

    .line 1229
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0565

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0586

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1236
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1240
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 1241
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e055d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0571

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1247
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1249
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_3
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    .line 1250
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0560

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e057c

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1255
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1275
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 1293
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0552

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0e10e5

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0e10e7

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$14;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$14;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$13;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$13;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1323
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1337
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1377
    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f040274

    const/4 v1, 0x0

    .line 1021
    const v0, 0x7f140011

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1022
    const v0, 0x7f0d00bb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    .line 1023
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 1025
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1027
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1039
    :goto_0
    return-void

    .line 1030
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1031
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1032
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1036
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 608
    const v1, 0x7f040269

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 609
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0d060f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->myDeviceText:Landroid/widget/TextView;

    .line 610
    const v1, 0x7f0d060e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->dividerView:Landroid/view/View;

    .line 611
    const v1, 0x7f0d0610

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->myDeviceCenterText:Landroid/widget/TextView;

    .line 612
    const v1, 0x7f0d0611

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->noDeviceLayout:Landroid/widget/LinearLayout;

    .line 613
    const v1, 0x7f0d0612

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->myDeviceTextinNoDevice:Landroid/widget/TextView;

    .line 614
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 616
    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 940
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 941
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 942
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "SAMSUNG_P2P"

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 943
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "IS_IN_MULTICONNECT"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 944
    sput-boolean v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 945
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 946
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IS_IN_MULTICONNECT"

    sget-boolean v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 947
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 949
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 950
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 951
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIdleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 952
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 953
    return-void
.end method

.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 1401
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1404
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1048
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1057
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_1
    return v1

    .line 1051
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    const/4 v1, 0x1

    goto :goto_1

    .line 1053
    :catch_0
    move-exception v0

    .line 1054
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "WifiP2pSettings"

    const-string v2, "IllegalStateException: Can not perform this action after onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1048
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 957
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 959
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 960
    .local v9, "pm":Landroid/os/PowerManager;
    invoke-virtual {v9}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    .line 962
    .local v8, "isScreenOn":Z
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause - LCD on? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 965
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 966
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 969
    :cond_0
    if-eqz v8, :cond_1

    sget-boolean v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    if-eqz v0, :cond_1

    .line 970
    sput-boolean v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 973
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SAMSUNG_P2P"

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 974
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 975
    .local v7, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v0, "IS_INVITED"

    sget-boolean v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 976
    const-string v0, "IS_MULTICONNECT"

    sget-boolean v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 977
    const-string v0, "IS_IN_MULTICONNECT"

    sget-boolean v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 978
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 980
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 982
    if-eqz v8, :cond_5

    .line 983
    invoke-direct {p0, v10, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 985
    sput-boolean v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 987
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    if-eqz v0, :cond_3

    .line 988
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_3

    .line 989
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 990
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 1007
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1008
    sput-boolean v10, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 1010
    invoke-direct {p0, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->sendP2pSettingsStartedBroadcast(Z)V

    .line 1012
    sget-object v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    if-eqz v0, :cond_4

    .line 1014
    sget-object v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 1015
    iput-boolean v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    .line 1017
    :cond_4
    return-void

    .line 993
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 996
    invoke-direct {p0, v10, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 997
    sget-object v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 998
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/16 v3, 0x1f4

    const/16 v4, 0x1388

    const/4 v5, 0x6

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/p2p/WifiP2pManager;->setListenOffloading(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IIIILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1000
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setListenOffloadingTimer(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V

    .line 1005
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    goto :goto_0
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 13
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 1407
    const-string v10, "WifiP2pSettings"

    const-string v11, "onPeersAvailable"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isAdded()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1410
    :cond_1
    const-string v10, "WifiP2pSettings"

    const-string v11, "Return, P2P is not enabled or peer list is empty"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :goto_0
    return-void

    .line 1414
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 1415
    .local v8, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 1417
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1418
    iget-object v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 1420
    iget-object v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->myDeviceCenterText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1421
    iget-object v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->noDeviceLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1423
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    if-nez v10, :cond_3

    sget-boolean v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    if-eqz v10, :cond_4

    .line 1424
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->showConnectingDevices(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_0

    .line 1428
    :cond_4
    sget-object v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v10, :cond_5

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v10

    if-nez v10, :cond_e

    .line 1429
    :cond_5
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->addMyDeviceDescriptionPreference(Z)V

    .line 1436
    const/4 v0, 0x0

    .local v0, "av_cnt":I
    const/4 v1, 0x0

    .line 1437
    .local v1, "busy_cnt":I
    const/4 v5, 0x0

    .line 1438
    .local v5, "hasInvited":Z
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1439
    .local v7, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v10, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v10, :cond_7

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    :cond_7
    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1441
    sget-object v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v11, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1442
    new-instance v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    sget-object v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v10, v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1443
    .local v2, "busy_temp":Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    invoke-virtual {v2, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->setTalkback(Z)V

    .line 1444
    add-int/lit8 v1, v1, 0x1

    .line 1454
    .end local v2    # "busy_temp":Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;
    :cond_8
    :goto_2
    iget v10, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 1455
    const/4 v5, 0x1

    goto :goto_1

    .line 1447
    :cond_9
    new-instance v9, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    sget-object v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1448
    .local v9, "temp":Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;
    add-int/lit8 v0, v0, 0x1

    .line 1449
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->setTalkback(Z)V

    .line 1450
    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1451
    iget-object v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v11, v9, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v10, v11}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_2

    .line 1459
    .end local v7    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v9    # "temp":Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;
    :cond_a
    sget-boolean v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v10, :cond_b

    .line 1460
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->showMultiConnectDevices()V

    .line 1462
    :cond_b
    if-eqz v5, :cond_d

    .line 1463
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1464
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 1465
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->hideProgressBar(Z)V

    .line 1467
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1468
    sget-boolean v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v10, :cond_c

    .line 1469
    iget-object v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v11, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v10, v11, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 1470
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 1472
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 1473
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 1521
    .end local v0    # "av_cnt":I
    .end local v1    # "busy_cnt":I
    .end local v5    # "hasInvited":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_c
    :goto_3
    sput-object p1, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    goto/16 :goto_0

    .line 1476
    .restart local v0    # "av_cnt":I
    .restart local v1    # "busy_cnt":I
    .restart local v5    # "hasInvited":Z
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_d
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1481
    sget-boolean v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v10, :cond_c

    .line 1482
    const/4 v10, 0x6

    invoke-direct {p0, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    goto :goto_3

    .line 1485
    .end local v0    # "av_cnt":I
    .end local v1    # "busy_cnt":I
    .end local v5    # "hasInvited":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_e
    const-string v10, "WifiP2pSettings"

    const-string v11, "show connected devices"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1490
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->addMyDeviceDescriptionPreference(Z)V

    .line 1492
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->hideProgressBar(Z)V

    .line 1494
    sget-object v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v10, :cond_c

    .line 1495
    sget-object v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1496
    const-string v10, "WifiP2pSettings"

    const-string v11, "I am GO"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    sget-object v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1499
    .local v3, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    const/4 v10, 0x0

    iput v10, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1500
    new-instance v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    sget-object v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 1503
    .end local v3    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_f
    sget-object v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1504
    iget-object v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->convertDevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1505
    .local v4, "convertedAddr":Ljava/lang/String;
    if-nez v4, :cond_10

    const-string v4, ""

    .line 1506
    :cond_10
    const-string v10, "WifiP2pSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "I am GC, my GO addr : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v12, v12, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", converted : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1510
    .restart local v7    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v11, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1512
    :cond_12
    const/4 v10, 0x0

    iput v10, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1513
    new-instance v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    sget-object v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 20
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1062
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v17, p2

    .line 1063
    check-cast v17, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 1065
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->endConnection()V

    .line 1116
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v9, p2

    .line 1117
    check-cast v9, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;

    .line 1118
    .local v9, "peer":Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    invoke-virtual {v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1119
    sget-object v17, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->size()I

    move-result v17

    sget v18, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    .line 1120
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 1121
    const/16 v17, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    .line 1134
    :cond_1
    :goto_1
    const-string v17, "WifiP2pSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "# of Selected Peers : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    .end local v9    # "peer":Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings_ex/wifi/p2p/WifiP2pCustomCheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings_ex/wifi/p2p/WifiP2pCustomCheckBox;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/wifi/p2p/WifiP2pCustomCheckBox;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    sget v18, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_d

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings_ex/wifi/p2p/WifiP2pCustomCheckBox;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings_ex/wifi/p2p/WifiP2pCustomCheckBox;->setChecked(Z)V

    .line 1139
    const/16 v17, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    .line 1159
    :cond_3
    :goto_2
    invoke-super/range {p0 .. p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v17

    return v17

    .line 1066
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1067
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->cancelConnect()V

    goto/16 :goto_0

    .line 1068
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_7

    .line 1069
    :cond_6
    sget-object v17, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1070
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0e0562

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1073
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    .line 1074
    .local v4, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1076
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0e055e

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    .line 1077
    .local v13, "toast":Landroid/widget/Toast;
    invoke-virtual {v13}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v17

    const v18, 0x102000b

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1079
    .local v14, "tv":Landroid/widget/TextView;
    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1080
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 1081
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1082
    .local v5, "displayMetrics":Landroid/util/DisplayMetrics;
    sget-object v17, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    const-string v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 1083
    .local v16, "windowManager":Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1084
    iget v15, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1085
    .local v15, "width":I
    sget-object v17, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    sget-object v18, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0017

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->dp2px(Landroid/content/Context;I)I

    move-result v17

    sub-int v7, v15, v17

    .line 1086
    .local v7, "maxWidth":I
    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1088
    .end local v5    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v7    # "maxWidth":I
    .end local v15    # "width":I
    .end local v16    # "windowManager":Landroid/view/WindowManager;
    :cond_8
    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 1091
    sget-object v17, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    const-string v18, "wifi"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 1092
    .local v10, "tWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v10, :cond_9

    .line 1093
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 1094
    .local v8, "msg":Landroid/os/Message;
    const/16 v17, 0x4d

    move/from16 v0, v17

    iput v0, v8, Landroid/os/Message;->what:I

    .line 1095
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1096
    .local v3, "args":Landroid/os/Bundle;
    const-string v17, "feature"

    const-string v18, "WDCR"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    const-string v17, "extra"

    const-string v18, "Settings"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iput-object v3, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1099
    invoke-virtual {v10, v8}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1100
    const-string v17, "WifiP2pSettings"

    const-string v18, "Logging - WiFi Direct Connection Request from Settings"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    .end local v3    # "args":Landroid/os/Bundle;
    .end local v8    # "msg":Landroid/os/Message;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$10;

    invoke-direct/range {v19 .. v20}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$10;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v4, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0

    .line 1123
    .end local v4    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v10    # "tWifiManager":Landroid/net/wifi/WifiManager;
    .end local v13    # "toast":Landroid/widget/Toast;
    .end local v14    # "tv":Landroid/widget/TextView;
    .restart local v9    # "peer":Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    :cond_a
    sget-object v17, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v9, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1124
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    sget-object v18, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings_ex/wifi/p2p/WifiP2pCustomCheckBox;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings_ex/wifi/p2p/WifiP2pCustomCheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 1130
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings_ex/wifi/p2p/WifiP2pCustomCheckBox;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/wifi/p2p/WifiP2pCustomCheckBox;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings_ex/wifi/p2p/WifiP2pCustomCheckBox;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings_ex/wifi/p2p/WifiP2pCustomCheckBox;->setChecked(Z)V

    .line 1132
    :cond_c
    sget-object v17, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v9, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto/16 :goto_1

    .line 1142
    .end local v9    # "peer":Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 1143
    .local v11, "targetScreen":Landroid/preference/PreferenceScreen;
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_3
    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_10

    .line 1144
    invoke-virtual {v11, v6}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v12

    .line 1145
    .local v12, "temp":Landroid/preference/Preference;
    instance-of v0, v12, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;

    move/from16 v17, v0

    if-eqz v17, :cond_e

    move-object v9, v12

    .line 1146
    check-cast v9, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;

    .line 1147
    .restart local v9    # "peer":Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings_ex/wifi/p2p/WifiP2pCustomCheckBox;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/wifi/p2p/WifiP2pCustomCheckBox;->isChecked()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 1148
    invoke-virtual {v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1149
    sget-object v17, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v9, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1143
    .end local v9    # "peer":Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    :cond_e
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1151
    .restart local v9    # "peer":Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    :cond_f
    sget-object v17, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v9, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto :goto_4

    .line 1155
    .end local v9    # "peer":Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    .end local v12    # "temp":Landroid/preference/Preference;
    :cond_10
    const-string v17, "WifiP2pSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SelectAll, # of Selected Peers : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1043
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1044
    return-void
.end method

.method public onResume()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v2, 0x0

    const/4 v13, 0x0

    .line 852
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 853
    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isWifiDirectAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 855
    .local v10, "cr":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 857
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 858
    const-string v0, "isWifiDirectAllowed"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 866
    :cond_1
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 868
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_5

    .line 869
    const-string v0, "WifiP2pSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume(), mAutoFinish : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", p2p enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", p2p connected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 874
    sget-object v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 875
    .local v12, "tWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v3, 0xc

    if-eq v0, v3, :cond_7

    .line 877
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 882
    .end local v12    # "tWifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isInactiveState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 883
    sput-boolean v13, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 885
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    if-eqz v0, :cond_4

    .line 887
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->finish()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 894
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    if-eqz v0, :cond_5

    .line 896
    const-string v0, "WifiP2pSettings"

    const-string v3, "Stop listen offloading timmer & Cancel listen offloading"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v3, v13}, Landroid/net/wifi/p2p/WifiP2pManager;->setListenOffloadingTimer(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V

    .line 898
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move v5, v13

    move v6, v13

    move v7, v13

    move v8, v13

    move-object v9, v2

    invoke-virtual/range {v3 .. v9}, Landroid/net/wifi/p2p/WifiP2pManager;->setListenOffloading(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IIIILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 902
    iput-boolean v13, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    .line 906
    :cond_5
    invoke-direct {p0, v14}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->sendP2pSettingsStartedBroadcast(Z)V

    .line 907
    sput-boolean v14, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 909
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 911
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 914
    iput-boolean v13, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    .line 915
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 916
    iput-boolean v14, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    .line 918
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$9;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$9;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-direct {v0, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 936
    :cond_6
    return-void

    .line 862
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 879
    .restart local v12    # "tWifiManager":Landroid/net/wifi/WifiManager;
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->finish()V

    goto :goto_0

    .line 889
    .end local v12    # "tWifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v11

    .line 890
    .local v11, "e":Ljava/lang/IllegalStateException;
    const-string v0, "WifiP2pSettings"

    const-string v3, "IllegalStateException: Recursive entry to executePendingTransactions during calling finish method to close the fragment."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1385
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1386
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    .line 1387
    const-string v0, "PEER_STATE"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 1390
    const-string v0, "DEV_NAME"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    :cond_1
    const-string v0, "isBtnEnabled"

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1393
    return-void
.end method
