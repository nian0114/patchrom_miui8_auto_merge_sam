.class public Lcom/android/settings_ex/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;,
        Lcom/android/settings_ex/wifi/WifiConfigController$IpAddressTextWatcher;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final WAPI_PSK_TYPE_VALUES:[I

.field private static final mApMaskCheckVsie:[I

.field private static mCanceltoForget:Z

.field private static mForgetCheck:Z

.field private static final mIgnorableApMASK:[I

.field private static mSaved:Z

.field private static mVzwNegativeButton:I

.field private static mVzwNeutralButton:I

.field private static mVzwPositiveButton:I


# instance fields
.field private PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private WIFI_VZW_CANCEL:I

.field private WIFI_VZW_CONNECT:I

.field private WIFI_VZW_EDIT:I

.field private WIFI_VZW_FORGET:I

.field private WIFI_VZW_NONE:I

.field private WIFI_VZW_SAVE:I

.field private bIsChangedSecurity:Z

.field private bIsChangedSsid:Z

.field certListFromCCM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field certListFromUCM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field certListFromUCM_uri:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private eToast:Landroid/widget/Toast;

.field focusListener:Landroid/view/View$OnFocusChangeListener;

.field private isRequestHideKeyboard:Z

.field private mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

.field private mAutoGenFirstTime:Z

.field private mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

.field private mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

.field private mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

.field private mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mDns1View:Landroid/widget/EditText;

.field private mDns2View:Landroid/widget/EditText;

.field private mEapAnonymousView:Landroid/widget/EditText;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/EditText;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGateway:Ljava/lang/String;

.field private mGatewayView:Landroid/widget/EditText;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mInitIpAddress:Ljava/lang/String;

.field private mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIntranetOnlyCheckbox:Landroid/widget/CheckBox;

.field private mIntranetOnlyLayout:Landroid/widget/LinearLayout;

.field private mIntranetOnlyMode:Z

.field private mIpAddressView:Landroid/widget/EditText;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mIsCheckedCckm:Z

.field private mIsCheckedFt:Z

.field private mIsOwnerUser:Z

.field private mLevels:[Ljava/lang/String;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field public mPasswordErrorText:Landroid/widget/TextView;

.field public mPasswordView:Landroid/widget/EditText;

.field private mPhase1Spinner:Landroid/widget/Spinner;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mPrevInteranetUseOnlyMode:Z

.field private mProxyAuthId:Landroid/widget/TextView;

.field private mProxyAuthPassword:Landroid/widget/TextView;

.field private mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mRetry:Z

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mShowOnceFlagforSis:Z

.field private mShowPasswordLayout:Landroid/widget/LinearLayout;

.field private mSimNum:I

.field private mSsidErrorText:Landroid/widget/TextView;

.field private mSsidView:Landroid/widget/EditText;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field mTempSsid:Ljava/lang/String;

.field private mTextViewChangedHandler:Landroid/os/Handler;

.field private mTouchX:I

.field private mTouchY:I

.field private mView:Landroid/view/View;

.field private mWapiAsCert:Landroid/widget/Spinner;

.field private mWapiCertIndex:I

.field private mWapiPskType:Landroid/widget/Spinner;

.field private mWapiUserCert:Landroid/widget/Spinner;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field passwordWatcher:Landroid/text/TextWatcher;

.field simOperator:Ljava/lang/String;

.field simslot2only:Ljava/lang/String;

.field simstate:Ljava/lang/String;

.field ssidWatcher:Landroid/text/TextWatcher;

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    .line 160
    sput v3, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 161
    sput v3, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 162
    sput v3, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwNegativeButton:I

    .line 178
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    .line 270
    sput-boolean v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mForgetCheck:Z

    .line 271
    sput-boolean v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mCanceltoForget:Z

    .line 272
    sput-boolean v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mSaved:Z

    .line 1050
    new-array v0, v2, [I

    const v3, 0x2ba8c0

    aput v3, v0, v1

    sput-object v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIgnorableApMASK:[I

    .line 1051
    new-array v0, v2, [I

    const v2, 0xa14ac

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mApMaskCheckVsie:[I

    return-void

    :cond_0
    move v0, v2

    .line 138
    goto :goto_0

    .line 178
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/settings_ex/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V
    .locals 5
    .param p1, "parent"    # Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settings_ex/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "retry"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    .line 164
    iput v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    .line 165
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    .line 166
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    .line 167
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    .line 168
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    .line 194
    const-string v2, "unspecified"

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 223
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 224
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 225
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 226
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 227
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 240
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    .line 241
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedFt:Z

    .line 242
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedCckm:Z

    .line 244
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsOwnerUser:Z

    .line 247
    iput v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimNum:I

    .line 248
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    .line 249
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    .line 250
    const-string v0, "ril.MSIMM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    .line 253
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    .line 254
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->bIsChangedSsid:Z

    .line 255
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->bIsChangedSecurity:Z

    .line 273
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 274
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 276
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    .line 286
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    .line 287
    iput v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTouchX:I

    .line 288
    iput v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTouchY:I

    .line 960
    new-instance v0, Lcom/android/settings_ex/wifi/WifiConfigController$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$1;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 3333
    new-instance v0, Lcom/android/settings_ex/wifi/WifiConfigController$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$5;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    .line 3364
    new-instance v0, Lcom/android/settings_ex/wifi/WifiConfigController$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$6;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    .line 3729
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mShowOnceFlagforSis:Z

    .line 300
    sput-boolean v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mSaved:Z

    .line 301
    sput-boolean v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mCanceltoForget:Z

    .line 302
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ex/wifi/WifiConfigController;->initController(Lcom/android/settings_ex/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V

    .line 303
    return-void

    :cond_0
    move v0, v1

    .line 244
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/settings_ex/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings_ex/wifi/AccessPoint;ZZLandroid/net/LinkProperties;)V
    .locals 6
    .param p1, "parent"    # Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settings_ex/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "retry"    # Z
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    .line 164
    iput v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    .line 165
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    .line 166
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    .line 167
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    .line 168
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    .line 194
    const-string v1, "unspecified"

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 223
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 224
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 225
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 226
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 227
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 240
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    .line 241
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedFt:Z

    .line 242
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedCckm:Z

    .line 244
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsOwnerUser:Z

    .line 247
    iput v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimNum:I

    .line 248
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    .line 249
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    .line 250
    const-string v0, "ril.MSIMM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    .line 253
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    .line 254
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->bIsChangedSsid:Z

    .line 255
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->bIsChangedSecurity:Z

    .line 273
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 274
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 276
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    .line 286
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    .line 287
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTouchX:I

    .line 288
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTouchY:I

    .line 960
    new-instance v0, Lcom/android/settings_ex/wifi/WifiConfigController$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$1;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 3333
    new-instance v0, Lcom/android/settings_ex/wifi/WifiConfigController$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$5;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    .line 3364
    new-instance v0, Lcom/android/settings_ex/wifi/WifiConfigController$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$6;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    .line 3729
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mShowOnceFlagforSis:Z

    .line 316
    sput-boolean v5, Lcom/android/settings_ex/wifi/WifiConfigController;->mCanceltoForget:Z

    .line 317
    iput-object p6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 318
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->initController(Lcom/android/settings_ex/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V

    .line 319
    return-void

    :cond_0
    move v0, v5

    .line 244
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/settings_ex/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings_ex/wifi/AccessPoint;ZZZ)V
    .locals 6
    .param p1, "parent"    # Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settings_ex/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "retry"    # Z
    .param p6, "savedAP"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    .line 164
    iput v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    .line 165
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    .line 166
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    .line 167
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    .line 168
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    .line 194
    const-string v1, "unspecified"

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 223
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 224
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 225
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 226
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 227
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 240
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    .line 241
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedFt:Z

    .line 242
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedCckm:Z

    .line 244
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsOwnerUser:Z

    .line 247
    iput v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimNum:I

    .line 248
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    .line 249
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    .line 250
    const-string v0, "ril.MSIMM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    .line 253
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    .line 254
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->bIsChangedSsid:Z

    .line 255
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->bIsChangedSecurity:Z

    .line 273
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 274
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 276
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    .line 286
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    .line 287
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTouchX:I

    .line 288
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTouchY:I

    .line 960
    new-instance v0, Lcom/android/settings_ex/wifi/WifiConfigController$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$1;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 3333
    new-instance v0, Lcom/android/settings_ex/wifi/WifiConfigController$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$5;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    .line 3364
    new-instance v0, Lcom/android/settings_ex/wifi/WifiConfigController$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$6;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    .line 3729
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mShowOnceFlagforSis:Z

    .line 308
    sput-boolean p6, Lcom/android/settings_ex/wifi/WifiConfigController;->mSaved:Z

    .line 309
    sput-boolean v5, Lcom/android/settings_ex/wifi/WifiConfigController;->mCanceltoForget:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 310
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->initController(Lcom/android/settings_ex/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V

    .line 311
    return-void

    :cond_0
    move v0, v5

    .line 244
    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 127
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/wifi/WifiConfigController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyMode:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/wifi/WifiConfigController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyMode:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings_ex/wifi/WifiConfigController;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/wifi/WifiConfigController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mShowOnceFlagforSis:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/wifi/WifiConfigController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->restartFocusedViewInput()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->eToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings_ex/wifi/WifiConfigController;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->eToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiConfigController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTouchX:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/wifi/WifiConfigController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTouchX:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiConfigController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTouchY:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/wifi/WifiConfigController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTouchY:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/WifiConfigController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wifi/WifiConfigController;)Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/wifi/WifiConfigController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/wifi/WifiConfigController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiConfigController;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addCaptivePortalRow(Landroid/view/ViewGroup;I)V
    .locals 13
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f0d030f

    const/4 v10, 0x1

    .line 1158
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1159
    .local v0, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLoginUrl()Ljava/lang/String;

    move-result-object v5

    .line 1161
    .local v5, "url":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 1162
    const-string v7, "WifiConfigController"

    const-string v8, "Invalid URL for Captive portal login"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :goto_0
    return-void

    .line 1166
    :cond_0
    const-string v7, "\""

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1167
    move-object v2, v5

    .line 1169
    .local v2, "linkName":Ljava/lang/String;
    const-string v7, "//"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "//"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    if-le v7, v8, :cond_4

    .line 1170
    sget-boolean v7, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v7, :cond_1

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addCaptivePortalRow: indexof(//):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "//"

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_1
    const-string v7, "//"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v2, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1172
    .local v1, "front":Ljava/lang/String;
    const-string v7, "//"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1173
    .local v3, "rear":Ljava/lang/String;
    sget-boolean v7, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addCaptivePortalRow: front - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", rear - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_3

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1175
    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1177
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1179
    .end local v1    # "front":Ljava/lang/String;
    .end local v3    # "rear":Ljava/lang/String;
    :cond_4
    sget-boolean v7, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v7, :cond_5

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addCaptivePortalRow: url - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", linkName - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<a href=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</a>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1182
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04025d

    invoke-virtual {v7, v8, p1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1183
    .local v4, "row":Landroid/view/View;
    const v7, 0x7f0d01d0

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1184
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1186
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1187
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 1188
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1189
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1190
    invoke-virtual {v4, v10}, Landroid/view/View;->setClickable(Z)V

    .line 1191
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1192
    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 1193
    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->setClickable(Z)V

    goto/16 :goto_0
.end method

.method private addGatewayRow(Landroid/view/ViewGroup;I)V
    .locals 13
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I

    .prologue
    const v11, 0xffffff

    const v12, 0x7f0d030f

    .line 1053
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1056
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1057
    sget-boolean v9, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "WifiConfigController"

    const-string v10, "Gateway filtered as Metered Network"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1061
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings_ex/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 1062
    .local v4, "info":Landroid/net/wifi/WifiInfo;
    sget-object v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIgnorableApMASK:[I

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_4

    aget v6, v0, v3

    .line 1063
    .local v6, "mask":I
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v9

    and-int/2addr v9, v11

    if-ne v9, v6, :cond_3

    .line 1064
    sget-boolean v9, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "WifiConfigController"

    const-string v10, "Masked Android Hotspot"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1062
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1069
    .end local v6    # "mask":I
    :cond_4
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getCheckVsieForSns()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1070
    sget-object v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mApMaskCheckVsie:[I

    array-length v5, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_6

    aget v6, v0, v3

    .line 1071
    .restart local v6    # "mask":I
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v9

    and-int/2addr v9, v11

    if-ne v9, v6, :cond_5

    .line 1072
    sget-boolean v9, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "WifiConfigController"

    const-string v10, "This has a LO Gateway Address"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1070
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1078
    .end local v6    # "mask":I
    :cond_6
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v2

    .line 1079
    .local v2, "dhcpInfo":Landroid/net/DhcpInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    .local v8, "webpage":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_0

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v9, v10, :cond_0

    .line 1081
    iget v9, v2, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v9, :cond_0

    .line 1082
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v10}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    .line 1083
    const-string v9, "<u>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    const-string v9, "</u>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    sget-boolean v9, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_7

    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Go to Webpage: gateway : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_7
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v9}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f04025d

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1089
    .local v7, "row":Landroid/view/View;
    const v9, 0x7f0d01d0

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1090
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0108

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1092
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1094
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    new-instance v10, Lcom/android/settings_ex/wifi/WifiConfigController$2;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$2;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1105
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    new-instance v10, Lcom/android/settings_ex/wifi/WifiConfigController$3;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$3;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1113
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    new-instance v10, Lcom/android/settings_ex/wifi/WifiConfigController$4;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$4;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1144
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1044
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04025d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1045
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f0d01d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1046
    const v1, 0x7f0d030f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1048
    return-void
.end method

.method private checkIp4vAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2646
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2647
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_1

    .line 2656
    :cond_0
    :goto_1
    return v1

    .line 2651
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    .line 2652
    const/4 v1, 0x1

    goto :goto_1

    .line 2646
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private generateBlankFields(Ljava/net/Inet4Address;)V
    .locals 7
    .param p1, "inetAddr"    # Ljava/net/Inet4Address;

    .prologue
    .line 1812
    const-string v4, "WifiConfigController"

    const-string v5, "generateBlankFields"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    const/4 v3, -0x1

    .line 1815
    .local v3, "networkPrefixLength":I
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1817
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v5}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0471

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1819
    const/16 v3, 0x18

    .line 1831
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1834
    :try_start_0
    invoke-static {p1, v3}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v2

    .line 1835
    .local v2, "netPart":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1836
    .local v0, "addr":[B
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    aput-byte v5, v0, v4

    .line 1837
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1843
    .end local v0    # "addr":[B
    .end local v2    # "netPart":Ljava/net/InetAddress;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1845
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v5}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e046b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1847
    :cond_2
    return-void

    .line 1822
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 1823
    if-ltz v3, :cond_4

    const/16 v4, 0x20

    if-le v3, v4, :cond_0

    .line 1824
    :cond_4
    const/16 v3, 0x18

    goto :goto_0

    .line 1826
    :catch_0
    move-exception v1

    .line 1827
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/16 v3, 0x18

    goto :goto_0

    .line 1839
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v4

    goto :goto_1

    .line 1838
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1806
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1808
    :goto_0
    return-object v1

    .line 1807
    :catch_0
    move-exception v0

    .line 1808
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1807
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "ipv6Address"    # Ljava/lang/String;
    .param p2, "getType"    # I

    .prologue
    .line 2660
    const/4 v2, 0x0

    .line 2661
    .local v2, "ipv4Address":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2662
    .local v5, "startIdx":I
    const/4 v0, 0x0

    .line 2663
    .local v0, "endIdx":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2665
    .local v4, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 2666
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_0

    .line 2667
    add-int/lit8 v5, v1, 0x2

    .line 2668
    move v1, v5

    .line 2671
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_2

    if-eqz v5, :cond_2

    .line 2672
    move v0, v1

    .line 2673
    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    .line 2674
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v3, v2

    .line 2683
    .end local v2    # "ipv4Address":Ljava/lang/String;
    .local v3, "ipv4Address":Ljava/lang/String;
    :goto_2
    return-object v3

    .line 2676
    .end local v3    # "ipv4Address":Ljava/lang/String;
    .restart local v2    # "ipv4Address":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2665
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v3, v2

    .line 2683
    .end local v2    # "ipv4Address":Ljava/lang/String;
    .restart local v3    # "ipv4Address":Ljava/lang/String;
    goto :goto_2
.end method

.method private getSignalString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1197
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 1198
    .local v0, "level":I
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1199
    const-string v1, "WifiConfigController"

    const-string v2, "Force level of wifi signal"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 1202
    :cond_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 3971
    if-nez p1, :cond_1

    move v0, v1

    .line 3980
    :cond_0
    :goto_0
    return v0

    .line 3974
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3975
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3974
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 3980
    goto :goto_0
.end method

.method private initController(Lcom/android/settings_ex/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V
    .locals 35
    .param p1, "parent"    # Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settings_ex/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "retry"    # Z

    .prologue
    .line 321
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    .line 324
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 325
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 326
    if-nez p3, :cond_8

    const/16 v30, 0x0

    :goto_0
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 328
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    .line 329
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mRetry:Z

    .line 331
    new-instance v30, Landroid/os/Handler;

    invoke-direct/range {v30 .. v30}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 334
    .local v24, "res":Landroid/content/res/Resources;
    const/4 v7, 0x0

    .line 336
    .local v7, "bConnectingState":Z
    const v30, 0x7f110027

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string v31, "wifi"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 342
    new-instance v30, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f04027e

    const v33, 0x7f110033

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v30 .. v33}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v30, v0

    const v31, 0x1090009

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 347
    new-instance v30, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f04027e

    const v33, 0x7f110034

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v30 .. v33}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v30, v0

    const v31, 0x1090009

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f0e0406

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 354
    const v30, 0x7f0a008a

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    .line 356
    .local v27, "spinnerTintColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05e2

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Spinner;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const v31, 0x7f110035

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05eb

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Spinner;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const v31, 0x7f110036

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05f9

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/CheckBox;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyCheckbox:Landroid/widget/CheckBox;

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyCheckbox:Landroid/widget/CheckBox;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05f8

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyLayout:Landroid/widget/LinearLayout;

    .line 370
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->updateShowSisOption()V

    .line 372
    const-string v30, "VZW"

    sget-object v31, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d057c

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Spinner;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 377
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f04027e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f110016

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 378
    .local v4, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v30, 0x1090009

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 384
    .end local v4    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    if-nez v30, :cond_a

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e03b1

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d0579

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/EditText;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05c4

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidErrorText:Landroid/widget/TextView;

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const v31, 0x7f0e03e9

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setHint(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/EditText;->requestFocus()Z

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x6

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x9

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d057c

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Spinner;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 401
    sget-boolean v30, Lcom/android/settings_ex/Utils;->SUPPORT_WAPI:Z

    if-eqz v30, :cond_9

    .line 403
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f04027e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f110018

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 404
    .restart local v4    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v30, 0x1090009

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 430
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d036d

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    .line 433
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showIpConfigFields()V

    .line 434
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showProxyFields()V

    .line 437
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showKeyMgmtFields()V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05de

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05df

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/CheckBox;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05f3

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05f4

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/CheckBox;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 446
    const-string v30, "VZW"

    sget-object v31, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e043e

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 448
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 449
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 452
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0438

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 898
    .end local v4    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local p1    # "parent":Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    :cond_2
    :goto_2
    const-string v30, "VZW"

    sget-object v31, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_55

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    if-eqz v30, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_54

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    move/from16 v30, v0

    if-nez v30, :cond_54

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_3

    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v7, v0, :cond_50

    .line 901
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0545

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 902
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v30, v0

    if-eqz v30, :cond_4

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e043b

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 904
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 906
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwNegativeButton:I

    .line 907
    if-nez v7, :cond_4f

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6

    const-string v30, "VerizonWiFiAccess"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_6

    .line 909
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e03ce

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 910
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 954
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v30

    if-eqz v30, :cond_7

    sget-boolean v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mCanceltoForget:Z

    if-nez v30, :cond_7

    .line 955
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 957
    :cond_7
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mForgetCheck:Z

    .line 958
    return-void

    .line 326
    .end local v7    # "bConnectingState":Z
    .end local v24    # "res":Landroid/content/res/Resources;
    .end local v27    # "spinnerTintColor":I
    .restart local p1    # "parent":Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    :cond_8
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    move/from16 v30, v0

    goto/16 :goto_0

    .line 411
    .restart local v7    # "bConnectingState":Z
    .restart local v24    # "res":Landroid/content/res/Resources;
    .restart local v27    # "spinnerTintColor":I
    :cond_9
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f04027e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f110016

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 412
    .restart local v4    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v30, 0x1090009

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto/16 :goto_1

    .line 454
    .end local v4    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d039a

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .line 457
    .local v16, "group":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    .line 458
    .local v28, "state":Landroid/net/NetworkInfo$DetailedState;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getSignalString()Ljava/lang/String;

    move-result-object v26

    .line 461
    .local v26, "signalLevel":Ljava/lang/String;
    move-object/from16 v17, v16

    .line 462
    .local v17, "group2":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v18

    .line 463
    .local v18, "info":Landroid/net/wifi/WifiInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v21

    .line 465
    .local v21, "level":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d00ec

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 466
    .local v19, "infoMsg":Landroid/widget/TextView;
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_b

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_b

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_b

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_30

    .line 470
    :cond_b
    const/4 v7, 0x1

    .line 475
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v30, v0

    if-eqz v30, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mRetry:Z

    move/from16 v30, v0

    if-nez v30, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    move/from16 v30, v0

    if-nez v30, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_31

    .line 479
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05e0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17    # "group2":Landroid/view/ViewGroup;
    check-cast v17, Landroid/view/ViewGroup;

    .line 494
    .restart local v17    # "group2":Landroid/view/ViewGroup;
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    move/from16 v30, v0

    if-nez v30, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mRetry:Z

    move/from16 v30, v0

    if-nez v30, :cond_f

    .line 495
    sget-boolean v30, Lcom/android/settings_ex/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v30, :cond_d

    sget-boolean v30, Lcom/android/settings_ex/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v30, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_e

    .line 496
    :cond_d
    if-eqz v26, :cond_e

    if-eqz v18, :cond_e

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_e

    .line 497
    const v30, 0x7f0e03eb

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x28

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "Mbps"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x29

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 505
    :cond_e
    const v30, 0x7f0e03ea

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 509
    :cond_f
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_11

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 511
    .local v9, "config_details":Landroid/net/wifi/WifiConfiguration;
    if-eqz v9, :cond_11

    .line 512
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_10

    .line 513
    const v30, 0x7f0e034b

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 515
    :cond_10
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_11

    .line 516
    const v30, 0x7f0e034c

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 522
    .end local v9    # "config_details":Landroid/net/wifi/WifiConfiguration;
    :cond_11
    const/16 v25, 0x0

    .line 523
    .local v25, "showAdvancedFields":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1a

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 525
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v30

    sget-object v31, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_32

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setSelection(I)V

    .line 527
    const/16 v25, 0x1

    .line 529
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v29

    .line 530
    .local v29, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v29, :cond_12

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v30, v0

    if-eqz v30, :cond_12

    .line 531
    const v30, 0x7f0e03ef

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 543
    .end local v29    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_12
    :goto_6
    sget-boolean v30, Lcom/android/settings_ex/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v30, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    move/from16 v30, v0

    if-nez v30, :cond_17

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v11

    .line 545
    .local v11, "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v11, :cond_16

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_16

    .line 546
    iget v0, v11, Landroid/net/DhcpInfo;->netmask:I

    move/from16 v30, v0

    if-eqz v30, :cond_13

    .line 547
    const v30, 0x7f0e1391    # 1.8885197E38f

    iget v0, v11, Landroid/net/DhcpInfo;->netmask:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 548
    :cond_13
    iget v0, v11, Landroid/net/DhcpInfo;->gateway:I

    move/from16 v30, v0

    if-eqz v30, :cond_14

    .line 549
    const v30, 0x7f0e046e

    iget v0, v11, Landroid/net/DhcpInfo;->gateway:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 550
    :cond_14
    iget v0, v11, Landroid/net/DhcpInfo;->dns1:I

    move/from16 v30, v0

    if-eqz v30, :cond_15

    .line 551
    const v30, 0x7f0e046a

    iget v0, v11, Landroid/net/DhcpInfo;->dns1:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 552
    :cond_15
    iget v0, v11, Landroid/net/DhcpInfo;->dns2:I

    move/from16 v30, v0

    if-eqz v30, :cond_16

    .line 553
    const v30, 0x7f0e046c

    iget v0, v11, Landroid/net/DhcpInfo;->dns2:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 555
    :cond_16
    if-eqz v18, :cond_17

    .line 556
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    .line 557
    .local v5, "ap_mac":Ljava/lang/String;
    if-eqz v5, :cond_17

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_17

    .line 558
    const v30, 0x7f0e1392

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 561
    .end local v5    # "ap_mac":Ljava/lang/String;
    .end local v11    # "dhcpInfo":Landroid/net/DhcpInfo;
    :cond_17
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v30

    sget-object v31, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_33

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setSelection(I)V

    .line 563
    const/16 v25, 0x1

    .line 572
    :goto_7
    sget-boolean v30, Lcom/android/settings_ex/Utils;->DISABLE_AUTO_RECONNECT:Z

    if-eqz v30, :cond_19

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v30

    if-eqz v30, :cond_19

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d0600

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d0601

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/CheckBox;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    .line 577
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    move/from16 v30, v0

    if-nez v30, :cond_18

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 580
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 583
    :cond_19
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    move-object/from16 v30, v0

    const/16 v31, 0x3

    invoke-virtual/range {v30 .. v31}, Ljava/util/BitSet;->get(I)Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyMode:Z

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mPrevInteranetUseOnlyMode:Z

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyCheckbox:Landroid/widget/CheckBox;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPrevInteranetUseOnlyMode:Z

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 587
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    if-eqz v30, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_35

    sget-object v30, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_8
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 591
    const-string v30, "VZW"

    sget-object v31, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mRetry:Z

    move/from16 v30, v0

    if-nez v30, :cond_1c

    .line 592
    const/16 v30, -0x1

    move/from16 v0, v21

    move/from16 v1, v30

    if-eq v0, v1, :cond_1b

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_36

    .line 593
    :cond_1b
    const/16 v30, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 600
    :cond_1c
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mIsSharedAp:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1d

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mExpiration:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mExpiration:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 602
    .local v14, "expiration":J
    const-wide/16 v30, 0x0

    cmp-long v30, v14, v30

    if-nez v30, :cond_37

    .line 603
    const v30, 0x7f0e0532

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f0e0534

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 605
    sget-boolean v30, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v30, :cond_1d

    const-string v30, "WifiConfigController"

    const-string v31, "Shared network\nAccess Unlimited"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v14    # "expiration":J
    :cond_1d
    :goto_a
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v30

    const-string v31, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_AP_LINK"

    invoke-virtual/range {v30 .. v31}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_1e

    .line 616
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    move/from16 v30, v0

    if-nez v30, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mRetry:Z

    move/from16 v30, v0

    if-nez v30, :cond_1e

    check-cast p1, Lcom/android/settings_ex/wifi/WifiDialog;

    .end local p1    # "parent":Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiDialog;->isSetupWizard:Z

    move/from16 v30, v0

    if-nez v30, :cond_1e

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    .line 618
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1e

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mIsCaptivePortal:Z

    move/from16 v30, v0

    if-nez v30, :cond_38

    .line 620
    sget-boolean v30, Lcom/android/settings_ex/Utils;->REMOVABLE_DEFAULT_AP:Z

    if-nez v30, :cond_1e

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v30

    if-nez v30, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1e

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->secFlags:Ljava/util/BitSet;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Ljava/util/BitSet;->get(I)Z

    move-result v30

    if-nez v30, :cond_1e

    .line 623
    const v30, 0x7f0e03f6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->addGatewayRow(Landroid/view/ViewGroup;I)V

    .line 632
    :cond_1e
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    move/from16 v30, v0

    if-nez v30, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mRetry:Z

    move/from16 v30, v0

    if-eqz v30, :cond_20

    .line 633
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSecurityFields()V

    .line 634
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showIpConfigFields()V

    .line 635
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showProxyFields()V

    .line 638
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showKeyMgmtFields()V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05de

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05df

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/CheckBox;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05f3

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05f4

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/CheckBox;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 648
    if-eqz v25, :cond_20

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05df

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/CheckBox;

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05e0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    .line 654
    :cond_20
    const-string v30, "SIM_TGY"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_21

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    if-eqz v30, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    if-eqz v30, :cond_21

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const-string v31, "SIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v23

    .line 657
    .local v23, "pos":I
    if-ltz v23, :cond_21

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 661
    .end local v23    # "pos":I
    :cond_21
    const-string v30, "SIM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_23

    .line 662
    const-string v30, "SFR WiFi Mobile"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_23

    .line 663
    sget-boolean v30, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v30, :cond_22

    .line 664
    const-string v30, "WifiConfigController"

    const-string v31, "--Found access point SFR WiFi Mobile"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    if-eqz v30, :cond_23

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const-string v31, "SIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v23

    .line 668
    .restart local v23    # "pos":I
    if-ltz v23, :cond_23

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 674
    .end local v23    # "pos":I
    :cond_23
    const-string v30, "AKA"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_25

    .line 675
    const-string v30, "Orange Mobile Wi-Fi"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_25

    .line 676
    sget-boolean v30, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v30, :cond_24

    .line 677
    const-string v30, "WifiConfigController"

    const-string v31, "--Found access point Orange Mobile"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    if-eqz v30, :cond_25

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const-string v31, "AKA"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v23

    .line 681
    .restart local v23    # "pos":I
    if-ltz v23, :cond_25

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 687
    .end local v23    # "pos":I
    :cond_25
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_29

    const-string v30, "AKA"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_29

    .line 688
    const-string v30, "VerizonWiFiAccess"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_29

    .line 689
    sget-boolean v30, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v30, :cond_26

    .line 690
    const-string v30, "WifiConfigController"

    const-string v31, "--Found access point VerizonWiFiAccess"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    if-eqz v30, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_29

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    if-eqz v30, :cond_29

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const-string v31, "AKA"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v23

    .line 696
    .restart local v23    # "pos":I
    if-ltz v23, :cond_27

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 699
    :cond_27
    sget-boolean v30, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v30, :cond_28

    const-string v30, "WifiConfigController"

    const-string v31, "not saved VerizonWiFiAccess. default AKA selected"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 701
    const/16 v30, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 706
    .end local v23    # "pos":I
    :cond_29
    const-string v30, "AKA"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2b

    .line 707
    const-string v30, "0001docomo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2b

    .line 708
    sget-boolean v30, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v30, :cond_2a

    .line 709
    const-string v30, "WifiConfigController"

    const-string v31, "--Found access point 0001docomo"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2b

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const-string v31, "AKA"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v23

    .line 713
    .restart local v23    # "pos":I
    if-ltz v23, :cond_2b

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 719
    .end local v23    # "pos":I
    :cond_2b
    const/4 v6, 0x0

    .line 721
    .local v6, "bCCMode":Z
    const-string v30, "security.mdpp"

    const-string v31, "None"

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 722
    .local v22, "mdppProperty":Ljava/lang/String;
    const-string v30, "WifiConfigController"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mdpp"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v30, "Enabled"

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_2c

    const-string v30, "Enforcing"

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2e

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v30

    if-eqz v30, :cond_2e

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 725
    .local v13, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    if-eqz v13, :cond_2e

    .line 726
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v12

    .line 727
    .local v12, "eapMethod":I
    const/16 v30, 0x7

    move/from16 v0, v30

    if-eq v12, v0, :cond_2d

    const/16 v30, 0x8

    move/from16 v0, v30

    if-ne v12, v0, :cond_2e

    .line 728
    :cond_2d
    const/4 v6, 0x1

    .line 733
    .end local v12    # "eapMethod":I
    .end local v13    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    move/from16 v30, v0

    if-eqz v30, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mRetry:Z

    move/from16 v30, v0

    if-nez v30, :cond_3b

    .line 734
    const-string v30, "VZW"

    sget-object v31, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_3a

    .line 735
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v30, v0

    if-nez v30, :cond_39

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05c5

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2f

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x6

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/EditText;->requestFocus()Z

    .line 740
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    .line 760
    :cond_2f
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d036d

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d0579

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/EditText;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05c4

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidErrorText:Landroid/widget/TextView;

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const v31, 0x7f0e03e9

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setHint(I)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/text/Editable;->length()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setSelection(I)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d057c

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setSelection(I)V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d057c

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Spinner;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x9

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e043e

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0438

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 781
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 782
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwPositiveButton:I

    goto/16 :goto_2

    .line 472
    .end local v6    # "bCCMode":Z
    .end local v22    # "mdppProperty":Ljava/lang/String;
    .end local v25    # "showAdvancedFields":Z
    .restart local p1    # "parent":Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    :cond_30
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 481
    :cond_31
    move-object/from16 v17, v16

    goto/16 :goto_5

    .line 535
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v25    # "showAdvancedFields":Z
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setSelection(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v11

    .line 538
    .restart local v11    # "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v11, :cond_12

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_12

    .line 539
    iget v0, v11, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v30, v0

    if-eqz v30, :cond_12

    .line 540
    const v30, 0x7f0e03ef

    iget v0, v11, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 564
    .end local v11    # "dhcpInfo":Landroid/net/DhcpInfo;
    :cond_33
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v30

    sget-object v31, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_34

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setSelection(I)V

    .line 566
    const/16 v25, 0x1

    goto/16 :goto_7

    .line 568
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_7

    .line 587
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_35
    sget-object v30, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto/16 :goto_8

    .line 595
    :cond_36
    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_9

    .line 607
    .restart local v14    # "expiration":J
    :cond_37
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v31

    new-instance v32, Ljava/util/Date;

    move-object/from16 v0, v32

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v31 .. v32}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v31

    new-instance v32, Ljava/util/Date;

    move-object/from16 v0, v32

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v31 .. v32}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 609
    .local v10, "dateString":Ljava/lang/String;
    const v30, 0x7f0e0532

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f0e0535

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v10, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 611
    sget-boolean v30, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v30, :cond_1d

    const-string v30, "WifiConfigController"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Shared network\nExpires on "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 626
    .end local v10    # "dateString":Ljava/lang/String;
    .end local v14    # "expiration":J
    .end local p1    # "parent":Lcom/android/settings_ex/wifi/WifiConfigUiBase;
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mIsAuthenticated:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1e

    .line 627
    const v30, 0x7f0e03f6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->addCaptivePortalRow(Landroid/view/ViewGroup;I)V

    goto/16 :goto_b

    .line 748
    .restart local v6    # "bCCMode":Z
    .restart local v22    # "mdppProperty":Ljava/lang/String;
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2f

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x5

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/EditText;->requestFocus()Z

    .line 751
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_c

    .line 784
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e043e

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 786
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPasswordInvisible()V

    goto/16 :goto_2

    .line 790
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    .line 792
    if-nez v28, :cond_3c

    if-nez v26, :cond_3d

    :cond_3c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mRetry:Z

    move/from16 v30, v0

    if-eqz v30, :cond_44

    :cond_3d
    sget-boolean v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mSaved:Z

    if-nez v30, :cond_44

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0438

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 794
    const-string v30, "VZW"

    sget-object v31, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_3e

    .line 795
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 797
    :cond_3e
    const/16 v30, 0x1

    sput-boolean v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mForgetCheck:Z

    .line 798
    sget-boolean v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mCanceltoForget:Z

    if-eqz v30, :cond_3f

    .line 799
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mCanceltoForget:Z

    .line 801
    :cond_3f
    const-string v30, "VZW"

    sget-object v31, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_41

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    if-eqz v30, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    move/from16 v30, v0

    if-nez v30, :cond_41

    .line 803
    const/16 v30, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 804
    if-eqz v19, :cond_41

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_40

    .line 806
    const v30, 0x7f0e0549

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    move-object/from16 v0, v24

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    :cond_40
    const/16 v30, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 847
    :cond_41
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    .line 848
    const-string v30, "VZW"

    sget-object v31, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4b

    .line 849
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_4a

    .line 850
    :cond_42
    const-string v30, "VerizonWiFiAccess"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_49

    .line 851
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v30, v0

    if-eqz v30, :cond_43

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e043b

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 853
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 862
    :cond_43
    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwNeutralButton:I

    goto/16 :goto_2

    .line 813
    :cond_44
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_47

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mRetry:Z

    move/from16 v30, v0

    if-eqz v30, :cond_47

    .line 814
    const-string v30, "VZW"

    sget-object v31, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_46

    .line 815
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v30, v0

    if-eqz v30, :cond_45

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e043b

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 817
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 819
    :cond_45
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 821
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0438

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 840
    :cond_47
    const-string v30, "DCM"

    sget-object v31, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_48

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_48

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e03c2

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 844
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05e1

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 856
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e03ce

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 857
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v30, v0

    if-eqz v30, :cond_43

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e043b

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 859
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwPositiveButton:I

    goto/16 :goto_e

    .line 863
    :cond_4a
    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mRetry:Z

    move/from16 v30, v0

    if-nez v30, :cond_2

    .line 864
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e043b

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 866
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwPositiveButton:I

    goto/16 :goto_2

    .line 879
    :cond_4b
    const/16 v20, 0x0

    .line 880
    .local v20, "isVendorAp":Z
    sget-boolean v30, Lcom/android/settings_ex/Utils;->REMOVABLE_DEFAULT_AP:Z

    if-nez v30, :cond_4c

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v20

    .line 883
    :cond_4c
    const-string v30, "DCM"

    sget-object v31, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4d

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0438

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 885
    :cond_4d
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_2

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_4e

    .line 888
    const-string v30, "WifiConfigController"

    const-string v31, "PAsspoint AP does not have forget btn "

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 891
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e043b

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 913
    .end local v6    # "bCCMode":Z
    .end local v16    # "group":Landroid/view/ViewGroup;
    .end local v17    # "group2":Landroid/view/ViewGroup;
    .end local v18    # "info":Landroid/net/wifi/WifiInfo;
    .end local v19    # "infoMsg":Landroid/widget/TextView;
    .end local v20    # "isVendorAp":Z
    .end local v21    # "level":I
    .end local v22    # "mdppProperty":Ljava/lang/String;
    .end local v25    # "showAdvancedFields":Z
    .end local v26    # "signalLevel":Ljava/lang/String;
    .end local v28    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const-string v31, ""

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 914
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwNeutralButton:I

    goto/16 :goto_3

    .line 917
    :cond_50
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v30, v0

    if-eqz v30, :cond_51

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e043b

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 919
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwNegativeButton:I

    .line 921
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_53

    const-string v30, "VerizonWiFiAccess"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_53

    .line 922
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e03ce

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 923
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 925
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0438

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 926
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwPositiveButton:I

    goto/16 :goto_3

    .line 929
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0545

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 930
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwNegativeButton:I

    goto/16 :goto_3

    .line 933
    :cond_55
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    move/from16 v30, v0

    if-nez v30, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    if-eqz v30, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    if-nez v30, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_57

    :cond_56
    sget-boolean v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mSaved:Z

    if-nez v30, :cond_57

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0545

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 935
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_5a

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0545

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 937
    sget-boolean v30, Lcom/android/settings_ex/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    if-eqz v30, :cond_58

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e03c2

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e043c

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 940
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mCanceltoForget:Z

    .line 942
    :cond_58
    sget-boolean v30, Lcom/android/settings_ex/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v30, :cond_6

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e12bc

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 944
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v30, v0

    if-eqz v30, :cond_59

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e043b

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 947
    :cond_59
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/settings_ex/wifi/WifiConfigController;->mCanceltoForget:Z

    goto/16 :goto_3

    .line 950
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0545

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1739
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v13, :cond_0

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 1743
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v14, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v14, :cond_1

    .line 1744
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 1745
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v8

    .line 1746
    .local v8, "result":I
    if-eqz v8, :cond_1

    move v0, v12

    .line 1801
    .end local v8    # "result":I
    :goto_1
    return v0

    .line 1739
    :cond_0
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 1751
    :cond_1
    const/4 v9, 0x0

    .line 1752
    .local v9, "selectedPosition":I
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 1753
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    .line 1755
    :cond_2
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1756
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 1757
    if-ne v9, v13, :cond_9

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 1758
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1759
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1760
    .local v1, "host":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1761
    .local v7, "portStr":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1762
    .local v5, "exclusionList":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1763
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1765
    :cond_3
    const/4 v2, 0x0

    .line 1766
    .local v2, "port":I
    const/4 v8, 0x0

    .line 1768
    .restart local v8    # "result":I
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1769
    invoke-static {v1, v7, v5}, Lcom/android/settings_ex/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1773
    :goto_2
    if-nez v8, :cond_8

    .line 1774
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f0d05f4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1775
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1776
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1777
    .local v3, "user":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1778
    .local v4, "password":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v12

    .line 1779
    goto/16 :goto_1

    .line 1770
    .end local v3    # "user":Ljava/lang/String;
    .end local v4    # "password":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1771
    .local v6, "e":Ljava/lang/NumberFormatException;
    const v8, 0x7f0e0177

    goto :goto_2

    .line 1781
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "user":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    :cond_5
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct/range {v0 .. v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "user":Ljava/lang/String;
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v7    # "portStr":Ljava/lang/String;
    .end local v8    # "result":I
    :cond_6
    :goto_3
    move v0, v13

    .line 1801
    goto/16 :goto_1

    .line 1784
    .restart local v1    # "host":Ljava/lang/String;
    .restart local v2    # "port":I
    .restart local v5    # "exclusionList":Ljava/lang/String;
    .restart local v7    # "portStr":Ljava/lang/String;
    .restart local v8    # "result":I
    :cond_7
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v1, v2, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_3

    :cond_8
    move v0, v12

    .line 1787
    goto/16 :goto_1

    .line 1789
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v7    # "portStr":Ljava/lang/String;
    .end local v8    # "result":I
    :cond_9
    const/4 v0, 0x2

    if-ne v9, v0, :cond_6

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1790
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1791
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    .line 1792
    .local v11, "uriSequence":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v12

    .line 1793
    goto/16 :goto_1

    .line 1795
    :cond_a
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1796
    .local v10, "uri":Landroid/net/Uri;
    if-nez v10, :cond_b

    move v0, v12

    .line 1797
    goto/16 :goto_1

    .line 1799
    :cond_b
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v10}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_3
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 30
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 3180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 3182
    .local v10, "context":Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v27

    const/16 v28, 0x3f2

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 3183
    .local v9, "certs":[Ljava/lang/String;
    if-eqz v9, :cond_0

    array-length v0, v9

    move/from16 v27, v0

    if-nez v27, :cond_3

    .line 3184
    :cond_0
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v9, v0, [Ljava/lang/String;

    .end local v9    # "certs":[Ljava/lang/String;
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v9, v27

    .line 3209
    .restart local v9    # "certs":[Ljava/lang/String;
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3210
    .local v12, "finalCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v27, "WifiConfigController"

    const-string v28, "****Trying to Load certificates from CCM*****"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    const-string v27, "USRPKEY_"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 3213
    :try_start_0
    const-string v27, "knox_ccm_policy"

    invoke-static/range {v27 .. v27}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    .line 3214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v8

    .line 3215
    .local v8, "ccmVersion":Ljava/lang/String;
    :goto_1
    const-string v27, "3.0"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 3216
    const-string v27, "WifiConfigController"

    const-string v28, "Fetching WiFi aliases from CCM"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->getAliasesForWiFi()Ljava/util/List;

    move-result-object v7

    .line 3218
    .local v7, "ccmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v7, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 3219
    :cond_1
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    .line 3220
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3221
    .local v6, "ccmCertAlias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " [KNOX]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3225
    .end local v6    # "ccmCertAlias":Ljava/lang/String;
    .end local v7    # "ccmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "ccmVersion":Ljava/lang/String;
    .end local v15    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v11

    .line 3226
    .local v11, "e":Landroid/os/RemoteException;
    const-string v27, "WifiConfigController"

    const-string v28, "Failed at ClientCertificateManager API getAliasesForWiFi-Exception "

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3229
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "certs":[Ljava/lang/String;
    check-cast v9, [Ljava/lang/String;

    .line 3233
    .restart local v9    # "certs":[Ljava/lang/String;
    const-string v27, "USRPKEY_"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 3234
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->sawUcmPrivateKeyForWifi()Ljava/util/List;

    move-result-object v22

    .line 3235
    .local v22, "ucmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_a

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_a

    .line 3236
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v19

    .line 3237
    .local v19, "size":I
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    .line 3238
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    .line 3241
    :try_start_1
    invoke-static {}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v25

    .line 3242
    .local v25, "util":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    move/from16 v0, v19

    if-ge v14, v0, :cond_a

    .line 3243
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 3244
    .local v24, "uriTypeAlias":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3245
    .local v20, "source":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3246
    .local v18, "rawAlias":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3247
    .local v13, "friendlyName":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 3248
    .local v21, "tempAlias":Ljava/lang/String;
    const-string v27, "WifiConfigController"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "add UCM List : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3250
    .local v26, "wifiUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3242
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 3187
    .end local v12    # "finalCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "friendlyName":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v18    # "rawAlias":Ljava/lang/String;
    .end local v19    # "size":I
    .end local v20    # "source":Ljava/lang/String;
    .end local v21    # "tempAlias":Ljava/lang/String;
    .end local v22    # "ucmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "uriTypeAlias":Ljava/lang/String;
    .end local v25    # "util":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;
    .end local v26    # "wifiUri":Ljava/lang/String;
    :cond_3
    const-string v27, "USRPKEY_"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 3188
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3189
    .local v5, "aux":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v27

    const-string v28, "USRCERT_"

    const/16 v29, 0x3f2

    invoke-virtual/range {v27 .. v29}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v16

    .line 3190
    .local v16, "installedCerts":[Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 3191
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_5
    array-length v0, v9

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_6

    .line 3192
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_6
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 3193
    aget-object v27, v9, v14

    aget-object v28, v16, v17

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 3194
    aget-object v27, v9, v14

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3192
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 3191
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 3200
    .end local v14    # "i":I
    .end local v17    # "j":I
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "certs":[Ljava/lang/String;
    check-cast v9, [Ljava/lang/String;

    .line 3203
    .end local v5    # "aux":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "installedCerts":[Ljava/lang/String;
    .restart local v9    # "certs":[Ljava/lang/String;
    :cond_7
    array-length v0, v9

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    new-array v4, v0, [Ljava/lang/String;

    .line 3204
    .local v4, "array":[Ljava/lang/String;
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v4, v27

    .line 3205
    const/16 v27, 0x0

    const/16 v28, 0x1

    array-length v0, v9

    move/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v9, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3206
    move-object v9, v4

    goto/16 :goto_0

    .line 3214
    .end local v4    # "array":[Ljava/lang/String;
    .restart local v12    # "finalCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 3223
    .restart local v7    # "ccmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "ccmVersion":Ljava/lang/String;
    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 3253
    .end local v7    # "ccmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "ccmVersion":Ljava/lang/String;
    .end local v15    # "i$":Ljava/util/Iterator;
    .restart local v19    # "size":I
    .restart local v22    # "ucmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v11

    .line 3254
    .local v11, "e":Ljava/lang/Exception;
    const-string v27, "WifiConfigController"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "exception happened : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    .line 3256
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    .line 3257
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 3261
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v19    # "size":I
    .end local v22    # "ucmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    move-object/from16 v27, v0

    if-eqz v27, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_b

    .line 3262
    new-instance v23, Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3263
    .local v23, "ucmFinalCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3264
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "certs":[Ljava/lang/String;
    check-cast v9, [Ljava/lang/String;

    .line 3268
    .end local v23    # "ucmFinalCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "certs":[Ljava/lang/String;
    :cond_b
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v27, 0x7f04027e

    move/from16 v0, v27

    invoke-direct {v3, v10, v0, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 3270
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v27, 0x1090009

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 3271
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3272
    return-void
.end method

.method private makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "rawAlias"    # Ljava/lang/String;

    .prologue
    .line 3315
    new-instance v0, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v0, p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 3316
    .local v0, "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    const/16 v3, 0x3f2

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    .line 3317
    .local v1, "targetUri":Ljava/lang/String;
    return-object v1
.end method

.method private restartFocusedViewInput()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3134
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3135
    .local v0, "focusedView":Landroid/view/View;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 3136
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3137
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    .line 3166
    :cond_0
    :goto_0
    return-void

    .line 3138
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 3139
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3140
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto :goto_0

    .line 3141
    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    .line 3142
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3143
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto :goto_0

    .line 3144
    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 3145
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 3146
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto :goto_0

    .line 3147
    :cond_4
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 3148
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 3149
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto :goto_0

    .line 3150
    :cond_5
    if-eqz v0, :cond_0

    .line 3151
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3158
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->restartViewInput(Landroid/view/View;)V

    goto :goto_0

    .line 3160
    :cond_7
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3161
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3162
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_0
.end method

.method private restartViewInput(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3169
    if-eqz p1, :cond_0

    .line 3170
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 3171
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    .line 3177
    :cond_0
    return-void
.end method

.method private sawUcmPrivateKeyForWifi()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v12, 0x1

    .line 3275
    const/16 v5, 0x3e8

    .line 3276
    .local v5, "senderUid":I
    sget-boolean v9, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sawUcmPrivateKeyForWifi : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    :cond_0
    new-instance v9, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    const-string v10, "KNOX"

    invoke-direct {v9, v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v7

    .line 3278
    .local v7, "uri":Ljava/lang/String;
    sget-boolean v9, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uri : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    :cond_1
    invoke-static {}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v3

    .line 3281
    .local v3, "credMgr":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;
    if-nez v3, :cond_3

    .line 3282
    sget-boolean v9, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_2

    const-string v9, "WifiConfigController"

    const-string v10, "UniversalCredentialUtil is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    :cond_2
    :goto_0
    return-object v1

    .line 3286
    :cond_3
    invoke-virtual {v3, v7, v12}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->saw(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 3287
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 3291
    const-string v9, "stringarrayresponse"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 3292
    .local v8, "uris":[Ljava/lang/String;
    sget-boolean v9, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-ne v9, v12, :cond_6

    .line 3293
    if-eqz v8, :cond_7

    .line 3294
    array-length v9, v8

    if-eqz v9, :cond_5

    .line 3295
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v9, v8

    if-ge v4, v9, :cond_6

    .line 3296
    aget-object v6, v8, v4

    .line 3297
    .local v6, "tempUri":Ljava/lang/String;
    sget-boolean v9, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_4

    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tempUri : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3300
    .end local v4    # "i":I
    .end local v6    # "tempUri":Ljava/lang/String;
    :cond_5
    sget-boolean v9, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_6

    const-string v9, "WifiConfigController"

    const-string v10, "uris length is 0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    :cond_6
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3307
    .local v1, "aliasListFinal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v8, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 3309
    .local v0, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3310
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 3303
    .end local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "aliasListFinal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    sget-boolean v9, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_6

    const-string v9, "WifiConfigController"

    const-string v10, "uris is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3307
    .restart local v1    # "aliasListFinal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3
.end method

.method private setAdapterToSpinner(Landroid/widget/Spinner;I)V
    .locals 4
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "resId"    # I

    .prologue
    .line 3019
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v2, 0x7f04027e

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 3020
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 3021
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3022
    return-void
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2480
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2481
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2483
    :cond_0
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2470
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2471
    return-void
.end method

.method private setIdentityInvisible()V
    .locals 2

    .prologue
    .line 2486
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2487
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2488
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2490
    :cond_0
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2571
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2572
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2574
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2575
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2576
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2465
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2466
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 3321
    if-eqz p2, :cond_0

    .line 3323
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 3324
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3325
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3326
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 3331
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 3324
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 2474
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2475
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2476
    return-void
.end method

.method private setVisibility(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 3012
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3013
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3014
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3016
    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 11
    .param p1, "eapMethod"    # I

    .prologue
    const v10, 0x7f0d05cc

    const/4 v9, 0x5

    const v8, 0x7f0d05c8

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 2333
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v4, :cond_6

    const-string v4, "VerizonWiFiAccess"

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v5, v5, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    if-ne p1, v9, :cond_6

    .line 2334
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2336
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2337
    .local v1, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    if-eqz v1, :cond_0

    .line 2338
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    .line 2339
    .local v3, "selectedEapMethod":I
    if-ne v3, v9, :cond_0

    .line 2340
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2341
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05c7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2359
    .end local v1    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v3    # "selectedEapMethod":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05ce

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2360
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05d8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2361
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05da

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2364
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05ca

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2366
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2367
    .local v0, "context":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 2452
    :cond_1
    :goto_1
    sget-boolean v4, Lcom/android/settings_ex/Utils;->ENABLE_SIM_SELECTION_UI:Z

    if-eqz v4, :cond_3

    .line 2453
    const/4 v4, 0x4

    if-eq p1, v4, :cond_2

    if-ne p1, v9, :cond_d

    .line 2454
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSimCheckFields()V

    .line 2461
    :cond_3
    :goto_2
    return-void

    .line 2344
    .end local v0    # "context":Landroid/content/Context;
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 2346
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2347
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05c7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2349
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2350
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05d2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2354
    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2355
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05d2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2370
    .restart local v0    # "context":Landroid/content/Context;
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 2371
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 2372
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 2373
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setUserCertInvisible()V

    goto :goto_1

    .line 2376
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05d0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2377
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 2378
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 2379
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPasswordInvisible()V

    goto :goto_1

    .line 2383
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v4, v5, :cond_7

    .line 2384
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 2385
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2387
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2388
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05d4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2389
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 2390
    sget-boolean v4, Lcom/android/settings_ex/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v4, :cond_1

    .line 2391
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v4, :cond_1

    const-string v4, "CMCC"

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v5, v5, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2392
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 2393
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 2394
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    goto/16 :goto_1

    .line 2400
    :pswitch_3
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v4, v5, :cond_8

    .line 2401
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 2402
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2404
    :cond_8
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2405
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05d4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2406
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setUserCertInvisible()V

    goto/16 :goto_1

    .line 2411
    :pswitch_4
    const/4 v2, 0x0

    .line 2412
    .local v2, "immView":Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_b

    .line 2413
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v4, :cond_9

    .line 2414
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 2415
    .restart local v2    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_9

    .line 2416
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2419
    :cond_9
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v4, :cond_a

    .line 2420
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 2421
    .restart local v2    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_a

    .line 2422
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2425
    :cond_a
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v4, :cond_b

    .line 2426
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 2427
    .restart local v2    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_b

    .line 2428
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2432
    :cond_b
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 2433
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 2434
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 2435
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setIdentityInvisible()V

    .line 2436
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 2437
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setPasswordInvisible()V

    goto/16 :goto_1

    .line 2440
    .end local v2    # "immView":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_5
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05ca

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2442
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v4, v5, :cond_c

    .line 2443
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 2444
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2446
    :cond_c
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2447
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 2448
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    goto/16 :goto_1

    .line 2457
    :cond_d
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d0602

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2458
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d0602

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 2367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 30

    .prologue
    .line 2687
    const/16 v17, 0x0

    .line 2689
    .local v17, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05e1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 2692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v17

    .line 2695
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1e

    .line 2696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05e3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-nez v2, :cond_1

    .line 2698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05e4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    .line 2699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings_ex/wifi/WifiConfigController$IpAddressTextWatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/settings_ex/wifi/WifiConfigController$IpAddressTextWatcher;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 2703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05e5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    .line 2704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings_ex/wifi/WifiConfigController$IpAddressTextWatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/settings_ex/wifi/WifiConfigController$IpAddressTextWatcher;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 2708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05e6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 2710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05e7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    .line 2714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 2715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings_ex/wifi/WifiConfigController$IpAddressTextWatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/settings_ex/wifi/WifiConfigController$IpAddressTextWatcher;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05e8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    .line 2719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 2720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings_ex/wifi/WifiConfigController$IpAddressTextWatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/settings_ex/wifi/WifiConfigController$IpAddressTextWatcher;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2722
    :cond_1
    if-eqz v17, :cond_9

    .line 2723
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v29

    .line 2724
    .local v29, "staticConfig":Landroid/net/StaticIpConfiguration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v2, v4, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_18

    .line 2725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 2726
    .local v25, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    const/16 v27, 0x0

    .line 2727
    .local v27, "mIpv4SetupFlag":Z
    :cond_2
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2728
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/LinkAddress;

    .line 2729
    .local v26, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2730
    .local v15, "address":Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showIpConfigFields ip "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings_ex/wifi/WifiConfigController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2733
    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    .line 2734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2737
    const/16 v27, 0x1

    .line 2750
    .end local v15    # "address":Ljava/lang/String;
    .end local v26    # "linkAddress":Landroid/net/LinkAddress;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 2752
    const/16 v27, 0x0

    .line 2753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/RouteInfo;

    .line 2754
    .local v28, "route":Landroid/net/RouteInfo;
    invoke-virtual/range {v28 .. v28}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    .line 2755
    .restart local v15    # "address":Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showIpConfigFields gw "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    :cond_6
    invoke-virtual/range {v28 .. v28}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2758
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings_ex/wifi/WifiConfigController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v2, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2760
    const/16 v27, 0x1

    .line 2770
    .end local v15    # "address":Ljava/lang/String;
    .end local v28    # "route":Landroid/net/RouteInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 2771
    .local v19, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    const/16 v18, 0x0

    .line 2772
    .local v18, "dns":Ljava/net/InetAddress;
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2773
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "dns":Ljava/net/InetAddress;
    check-cast v18, Ljava/net/InetAddress;

    .line 2774
    .restart local v18    # "dns":Ljava/net/InetAddress;
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2786
    :cond_8
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2787
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "dns":Ljava/net/InetAddress;
    check-cast v18, Ljava/net/InetAddress;

    .line 2788
    .restart local v18    # "dns":Ljava/net/InetAddress;
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2874
    .end local v18    # "dns":Ljava/net/InetAddress;
    .end local v19    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v25    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v27    # "mIpv4SetupFlag":Z
    .end local v29    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_f

    .line 2875
    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2876
    .local v3, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 2877
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isEnterpriseNetwork"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 2879
    .local v20, "enterpriseCr":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const-string v10, "getAllowUserPolicyChanges"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 2881
    .local v16, "allowCr":Landroid/database/Cursor;
    if-eqz v20, :cond_d

    if-eqz v16, :cond_d

    .line 2883
    :try_start_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2884
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2885
    const-string v2, "isEnterpriseNetwork"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "getAllowUserPolicyChanges"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 2889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v2, :cond_d

    .line 2890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2892
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2893
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2894
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2901
    :cond_d
    if-eqz v20, :cond_e

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 2902
    :cond_e
    if-eqz v16, :cond_f

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2905
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v16    # "allowCr":Landroid/database/Cursor;
    .end local v20    # "enterpriseCr":Landroid/database/Cursor;
    :cond_f
    return-void

    .line 2739
    .restart local v15    # "address":Ljava/lang/String;
    .restart local v25    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .restart local v26    # "linkAddress":Landroid/net/LinkAddress;
    .restart local v27    # "mIpv4SetupFlag":Z
    .restart local v29    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_10
    if-nez v27, :cond_2

    .line 2740
    const/4 v13, 0x1

    .line 2741
    .local v13, "GET_IPV4_ADDR":I
    const/4 v14, 0x2

    .line 2742
    .local v14, "GET_PREFIX_LENGTH":I
    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2744
    .local v24, "ipv6Address":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v13}, Lcom/android/settings_ex/wifi/WifiConfigController;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    .line 2745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v14}, Lcom/android/settings_ex/wifi/WifiConfigController;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2762
    .end local v13    # "GET_IPV4_ADDR":I
    .end local v14    # "GET_PREFIX_LENGTH":I
    .end local v24    # "ipv6Address":Ljava/lang/String;
    .end local v26    # "linkAddress":Landroid/net/LinkAddress;
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v28    # "route":Landroid/net/RouteInfo;
    :cond_11
    if-nez v27, :cond_5

    .line 2763
    const/4 v13, 0x1

    .line 2764
    .restart local v13    # "GET_IPV4_ADDR":I
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/android/settings_ex/wifi/WifiConfigController;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 2765
    .local v23, "ipv4Address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2777
    .end local v13    # "GET_IPV4_ADDR":I
    .end local v15    # "address":Ljava/lang/String;
    .end local v23    # "ipv4Address":Ljava/lang/String;
    .end local v28    # "route":Landroid/net/RouteInfo;
    .restart local v18    # "dns":Ljava/net/InetAddress;
    .restart local v19    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    :cond_12
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    .line 2778
    .restart local v15    # "address":Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v2, :cond_13

    const-string v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showIpConfigFields dns1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings_ex/wifi/WifiConfigController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v2, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2782
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2791
    .end local v15    # "address":Ljava/lang/String;
    :cond_15
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    .line 2792
    .restart local v15    # "address":Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v2, :cond_16

    const-string v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showIpConfigFields dns2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings_ex/wifi/WifiConfigController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v2, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2796
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2801
    .end local v15    # "address":Ljava/lang/String;
    .end local v18    # "dns":Ljava/net/InetAddress;
    .end local v19    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v25    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v27    # "mIpv4SetupFlag":Z
    :cond_18
    if-eqz v29, :cond_9

    .line 2802
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v2, :cond_19

    .line 2803
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    .line 2804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 2806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2809
    :cond_19
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v2, :cond_1a

    .line 2810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2813
    :cond_1a
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 2814
    .restart local v19    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    const/16 v18, 0x0

    .line 2815
    .restart local v18    # "dns":Ljava/net/InetAddress;
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2816
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "dns":Ljava/net/InetAddress;
    check-cast v18, Ljava/net/InetAddress;

    .line 2817
    .restart local v18    # "dns":Ljava/net/InetAddress;
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2823
    :cond_1b
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2824
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "dns":Ljava/net/InetAddress;
    check-cast v18, Ljava/net/InetAddress;

    .line 2825
    .restart local v18    # "dns":Ljava/net/InetAddress;
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2820
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2828
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2835
    .end local v18    # "dns":Ljava/net/InetAddress;
    .end local v19    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v29    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_1e
    const/16 v22, 0x0

    .line 2836
    .local v22, "immView":Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-nez v2, :cond_23

    .line 2837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_23

    .line 2838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v2, :cond_1f

    .line 2839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v22, Landroid/view/inputmethod/InputMethodManager;

    .line 2840
    .restart local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v22, :cond_1f

    .line 2841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2844
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    if-eqz v2, :cond_20

    .line 2845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v22, Landroid/view/inputmethod/InputMethodManager;

    .line 2846
    .restart local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v22, :cond_20

    .line 2847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2850
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    if-eqz v2, :cond_21

    .line 2851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v22, Landroid/view/inputmethod/InputMethodManager;

    .line 2852
    .restart local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v22, :cond_21

    .line 2853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2856
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    if-eqz v2, :cond_22

    .line 2857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v22, Landroid/view/inputmethod/InputMethodManager;

    .line 2858
    .restart local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v22, :cond_22

    .line 2859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2862
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v2, :cond_23

    .line 2863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v22, Landroid/view/inputmethod/InputMethodManager;

    .line 2864
    .restart local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v22, :cond_23

    .line 2865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2870
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05e3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 2897
    .end local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v16    # "allowCr":Landroid/database/Cursor;
    .restart local v20    # "enterpriseCr":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method private showKeyMgmtFields()V
    .locals 8

    .prologue
    const v7, 0x7f0d05fc

    const v6, 0x7f0d05fa

    const v5, 0x7f0d05fd

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2579
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v0, :cond_4

    .line 2580
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2582
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2587
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2588
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2592
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2594
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2595
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2643
    :cond_1
    :goto_1
    return-void

    .line 2584
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2597
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2600
    :cond_4
    const-string v0, "WifiConfigController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessPoint.keyMgmts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2604
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2610
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2611
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2612
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedFt:Z

    .line 2615
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedFt:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2616
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    if-eqz v0, :cond_7

    .line 2617
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2618
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2624
    :cond_7
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 2626
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2627
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2628
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2630
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedFt:Z

    if-nez v0, :cond_1

    .line 2631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedCckm:Z

    .line 2632
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedCckm:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2633
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    if-eqz v0, :cond_1

    .line 2634
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2635
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_1

    .line 2606
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 2640
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private showProxyFields()V
    .locals 19

    .prologue
    .line 2908
    const/4 v13, 0x0

    .line 2910
    .local v13, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05e9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2912
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 2913
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    .line 2916
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    .line 2917
    const v1, 0x7f0d05ec

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 2918
    const v1, 0x7f0d05ef

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 2919
    const v1, 0x7f0d05ed

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 2920
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->updateShowProxyAuthenticationOptions()V

    .line 2921
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 2922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05f0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 2923
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2924
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2925
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2926
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05f1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 2927
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2928
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2929
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2930
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05f2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 2931
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2932
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2933
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 2934
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05f6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    .line 2935
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2936
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05f7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    .line 2937
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2940
    :cond_1
    if-eqz v13, :cond_2

    .line 2941
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v17

    .line 2942
    .local v17, "proxyProperties":Landroid/net/ProxyInfo;
    if-eqz v17, :cond_2

    .line 2943
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2944
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2945
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2946
    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v18

    .line 2947
    .local v18, "user":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v15

    .line 2948
    .local v15, "password":Ljava/lang/String;
    if-eqz v18, :cond_2

    if-eqz v15, :cond_2

    .line 2949
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2950
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2951
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05f4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2952
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05f5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2982
    .end local v15    # "password":Ljava/lang/String;
    .end local v17    # "proxyProperties":Landroid/net/ProxyInfo;
    .end local v18    # "user":Ljava/lang/String;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    .line 2983
    const-string v1, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2984
    .local v2, "uri":Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 2985
    .local v5, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "isEnterpriseNetwork"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2987
    .local v14, "enterpriseCr":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const-string v9, "getAllowUserPolicyChanges"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2989
    .local v12, "allowCr":Landroid/database/Cursor;
    if-eqz v14, :cond_6

    if-eqz v12, :cond_6

    .line 2991
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2992
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2993
    const-string v1, "isEnterpriseNetwork"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "getAllowUserPolicyChanges"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2996
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 2997
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2998
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2999
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3005
    :cond_6
    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3006
    :cond_7
    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3009
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v12    # "allowCr":Landroid/database/Cursor;
    .end local v14    # "enterpriseCr":Landroid/database/Cursor;
    :cond_8
    return-void

    .line 2956
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_c

    .line 2957
    const v1, 0x7f0d05ec

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 2958
    const v1, 0x7f0d05ef

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 2959
    const v1, 0x7f0d05ed

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 2960
    const v1, 0x7f0d05f5

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 2961
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05f4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2963
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-nez v1, :cond_a

    .line 2964
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05ee

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    .line 2965
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2967
    :cond_a
    if-eqz v13, :cond_b

    .line 2968
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v16

    .line 2969
    .local v16, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v16, :cond_b

    .line 2970
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual/range {v16 .. v16}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2973
    .end local v16    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_0

    .line 2975
    :cond_c
    const v1, 0x7f0d05ec

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 2976
    const v1, 0x7f0d05ef

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 2977
    const v1, 0x7f0d05ed

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    .line 2978
    const v1, 0x7f0d05f5

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;->setVisibility(II)V

    goto/16 :goto_0

    .line 3001
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v12    # "allowCr":Landroid/database/Cursor;
    .restart local v14    # "enterpriseCr":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    throw v1
.end method

.method private showSecurityFields()V
    .locals 35

    .prologue
    .line 1934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a008a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v33

    .line 1937
    .local v33, "spinnerTintColor":I
    const-string v2, "VZW"

    sget-object v4, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1938
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v2, :cond_2

    .line 1939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 1941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1944
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v24

    .line 1945
    .local v24, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v24, :cond_0

    .line 1946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1949
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    .line 2309
    .end local v24    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :goto_0
    return-void

    .line 1953
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    .line 1954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1956
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    .line 1996
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v2, :cond_7

    .line 1999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d0538

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    .line 2000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05d9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    .line 2001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v4, 0x7f0e03ff

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 2002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 2003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v2, :cond_4

    .line 2006
    const-string v2, "VZW"

    sget-object v4, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    if-nez v2, :cond_4

    .line 2007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 2011
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d0582

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/CheckBox;

    .line 2012
    .local v26, "mGetPasswordHidden":Landroid/widget/CheckBox;
    if-eqz v26, :cond_5

    .line 2014
    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2015
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getPasswordHidden"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 2017
    .local v18, "cr":Landroid/database/Cursor;
    if-eqz v18, :cond_5

    .line 2019
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2020
    const-string v2, "getPasswordHidden"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2021
    const/16 v2, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2022
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2027
    :goto_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 2035
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v18    # "cr":Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d0538

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    .line 2036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05d9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    .line 2037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v4, 0x7f0e03ff

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 2038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 2039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2041
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05da

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mShowPasswordLayout:Landroid/widget/LinearLayout;

    .line 2043
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d0582

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    .line 2046
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mRetry:Z

    if-eqz v2, :cond_6

    .line 2047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v17

    .line 2048
    .local v17, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const v4, 0x7f0e0b9b

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a007e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2053
    .end local v17    # "context":Landroid/content/Context;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v4, 0x7f0e0405

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 2057
    .end local v26    # "mGetPasswordHidden":Landroid/widget/CheckBox;
    :cond_7
    sget-boolean v2, Lcom/android/settings_ex/Utils;->SUPPORT_WAPI:Z

    if-eqz v2, :cond_9

    .line 2058
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_11

    .line 2059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05d6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2071
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x5

    if-eq v2, v4, :cond_12

    .line 2072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05db

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2086
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_13

    .line 2087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05d8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05da

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1960
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v2, :cond_e

    .line 1961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_c

    .line 1963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_d

    .line 1965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1969
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1971
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v24

    .line 1972
    .restart local v24    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v24, :cond_b

    .line 1973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1976
    :cond_b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    .line 1978
    .end local v24    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_c
    sget-boolean v2, Lcom/android/settings_ex/Utils;->SUPPORT_WAPI:Z

    if-eqz v2, :cond_1

    .line 1979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05db

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1967
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_5

    .line 1982
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_f

    .line 1983
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 1984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1986
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_1

    .line 1989
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 1990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1992
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_1

    .line 2024
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v18    # "cr":Landroid/database/Cursor;
    .restart local v26    # "mGetPasswordHidden":Landroid/widget/CheckBox;
    :cond_10
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 2027
    :catchall_0
    move-exception v2

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2061
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v18    # "cr":Landroid/database/Cursor;
    .end local v26    # "mGetPasswordHidden":Landroid/widget/CheckBox;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05d6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05d7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    .line 2063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    .line 2066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v16

    .line 2067
    .local v16, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    move-object/from16 v0, v16

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    .line 2074
    .end local v16    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05db

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05dc

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    .line 2077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05dd

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    .line 2079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    const-string v4, "WAPIAS_"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings_ex/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 2082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    const-string v4, "WAPIUSR_"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings_ex/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2092
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2094
    const/4 v15, 0x0

    .line 2096
    .local v15, "bCCMode":Z
    const-string v2, "security.mdpp"

    const-string v4, "None"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2097
    .local v29, "mdppProperty":Ljava/lang/String;
    const-string v2, "Enabled"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "Enforcing"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2098
    :cond_14
    const/4 v15, 0x1

    .line 2100
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_2f

    .line 2101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 2102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2103
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2104
    .local v25, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    sget-boolean v2, Lcom/android/settings_ex/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v4, "CMCC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2105
    const-string v2, "PEAP"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2107
    const-string v2, "SIM"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2124
    :cond_16
    :goto_6
    new-instance v13, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f04027e

    move-object/from16 v0, v25

    invoke-direct {v13, v2, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2125
    .local v13, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v13, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v13}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05cb

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    .line 2129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const v4, 0x7f110032

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 2131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05cd

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 2132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const v4, 0x7f110034

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings_ex/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 2134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05cf

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 2135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05d1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 2137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05d3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    .line 2139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 2140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05d5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    .line 2143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 2144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/settings_ex/wifi/WifiConfigController$WifiEapIdTextWatcher;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v4, "CACERT_"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings_ex/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 2150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v4, "USRPKEY_"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings_ex/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 2152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v2, :cond_17

    .line 2153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 2157
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_27

    .line 2158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v21, v0

    .line 2159
    .local v21, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v20

    .line 2160
    .local v20, "eapMethod":I
    move/from16 v19, v20

    .line 2161
    .local v19, "currentIndex":I
    sget-boolean v2, Lcom/android/settings_ex/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v4, "CMCC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2162
    const/4 v2, 0x4

    move/from16 v0, v19

    if-ne v0, v2, :cond_18

    const/16 v19, 0x1

    .line 2180
    :cond_18
    :goto_7
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v31

    .line 2181
    .local v31, "phase2Method":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2182
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 2184
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v30

    .line 2185
    .local v30, "phase1Value":Ljava/lang/String;
    if-eqz v30, :cond_19

    .line 2186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v4, "fast_provisioning="

    const-string v5, ""

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 2188
    :cond_19
    sparse-switch v20, :sswitch_data_0

    .line 2207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2210
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 2211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 2212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2215
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v32

    .line 2216
    .local v32, "position":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 2218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2281
    .end local v13    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v19    # "currentIndex":I
    .end local v20    # "eapMethod":I
    .end local v21    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v25    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v30    # "phase1Value":Ljava/lang/String;
    .end local v31    # "phase2Method":I
    .end local v32    # "position":I
    :cond_1a
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 2282
    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2283
    .restart local v3    # "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 2284
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isEnterpriseNetwork"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 2286
    .local v22, "enterpriseCr":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const-string v10, "getAllowUserPolicyChanges"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2288
    .local v14, "allowCr":Landroid/database/Cursor;
    if-eqz v22, :cond_1f

    if-eqz v14, :cond_1f

    .line 2290
    :try_start_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2291
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2292
    const-string v2, "isEnterpriseNetwork"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "getAllowUserPolicyChanges"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2294
    const-string v2, "WifiPolicy"

    const-string v4, "Enterprise Wifi settings not editable"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 2296
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 2297
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 2298
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 2299
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2305
    :cond_1f
    if-eqz v22, :cond_20

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 2306
    :cond_20
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2109
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v14    # "allowCr":Landroid/database/Cursor;
    .end local v22    # "enterpriseCr":Landroid/database/Cursor;
    .restart local v25    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_21
    const-string v2, "PEAP"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2110
    const-string v2, "TLS"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2111
    const-string v2, "TTLS"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2112
    const-string v2, "PWD"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2114
    const-string v2, "SIM"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2116
    const-string v2, "AKA"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2118
    const-string v2, "AKA\'"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2119
    if-nez v15, :cond_22

    .line 2120
    const-string v2, "FAST"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2121
    :cond_22
    if-nez v15, :cond_16

    .line 2122
    const-string v2, "LEAP"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 2164
    .restart local v13    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .restart local v19    # "currentIndex":I
    .restart local v20    # "eapMethod":I
    .restart local v21    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_23
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    sget-object v4, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v4, v4

    if-eq v2, v4, :cond_25

    .line 2171
    if-eqz v15, :cond_24

    .line 2172
    const/4 v2, 0x7

    move/from16 v0, v20

    if-le v0, v2, :cond_24

    add-int/lit8 v19, v19, -0x1

    .line 2173
    :cond_24
    if-eqz v15, :cond_18

    .line 2174
    const/16 v2, 0x8

    move/from16 v0, v20

    if-le v0, v2, :cond_18

    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_7

    .line 2176
    :cond_25
    const/4 v2, 0x6

    move/from16 v0, v20

    if-ne v0, v2, :cond_26

    add-int/lit8 v19, v19, -0x2

    goto/16 :goto_7

    .line 2177
    :cond_26
    const/4 v2, 0x5

    move/from16 v0, v20

    if-le v0, v2, :cond_18

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_7

    .line 2191
    .restart local v30    # "phase1Value":Ljava/lang/String;
    .restart local v31    # "phase2Method":I
    :sswitch_0
    packed-switch v31, :pswitch_data_0

    .line 2202
    :pswitch_0
    const-string v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid phase 2 method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2193
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_8

    .line 2196
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_8

    .line 2199
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_8

    .line 2222
    .end local v19    # "currentIndex":I
    .end local v20    # "eapMethod":I
    .end local v21    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v30    # "phase1Value":Ljava/lang/String;
    .end local v31    # "phase2Method":I
    :cond_27
    const/16 v23, 0x0

    .line 2224
    .local v23, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v2, :cond_2c

    .line 2225
    sget-object v2, Lcom/android/settings_ex/Utils;->EAPMETHOD_SETTING:Ljava/lang/String;

    const-string v4, "SIM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2226
    const/16 v27, 0x0

    .line 2227
    .local v27, "mIsAisSim":Z
    sget-object v2, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string v4, "AIS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, ","

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 2229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 2230
    .local v28, "mOperator":[Ljava/lang/String;
    const-string v2, ""

    const/4 v4, 0x0

    aget-object v4, v28, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    sget-object v2, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, v28, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_28
    const-string v2, ""

    const/4 v4, 0x1

    aget-object v4, v28, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    sget-object v2, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v28, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2232
    :cond_29
    const/16 v27, 0x1

    .line 2238
    .end local v28    # "mOperator":[Ljava/lang/String;
    :cond_2a
    :goto_a
    sget-object v2, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string v4, "SingTel"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    if-eqz v27, :cond_2c

    :cond_2b
    sget-object v2, Lcom/android/settings_ex/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2c

    .line 2240
    const/16 v23, 0x4

    .line 2254
    .end local v27    # "mIsAisSim":Z
    :cond_2c
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v4, "1"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings_ex/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 2256
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2234
    .restart local v27    # "mIsAisSim":Z
    :cond_2d
    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, ","

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    sget-object v2, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2235
    const/16 v27, 0x1

    goto :goto_a

    .line 2242
    .end local v27    # "mIsAisSim":Z
    :cond_2e
    sget-object v2, Lcom/android/settings_ex/Utils;->EAPMETHOD_SETTING:Ljava/lang/String;

    const-string v4, "AKA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2243
    sget-object v2, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string v4, "LGU"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v2, Lcom/android/settings_ex/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2c

    .line 2248
    const/16 v23, 0x5

    goto :goto_b

    .line 2259
    .end local v13    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v23    # "index":I
    .end local v25    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    .line 2260
    .local v34, "spinnerValue":Ljava/lang/String;
    const-string v2, "PEAP"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2261
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2262
    :cond_30
    const-string v2, "TLS"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2263
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2264
    :cond_31
    const-string v2, "TTLS"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2265
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2266
    :cond_32
    const-string v2, "PWD"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2267
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2268
    :cond_33
    const-string v2, "SIM"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2269
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2270
    :cond_34
    const-string v2, "AKA"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2271
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2272
    :cond_35
    const-string v2, "AKA\'"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2273
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2274
    :cond_36
    const-string v2, "FAST"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2275
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2276
    :cond_37
    const-string v2, "LEAP"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2277
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2301
    .end local v34    # "spinnerValue":Ljava/lang/String;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v14    # "allowCr":Landroid/database/Cursor;
    .restart local v22    # "enterpriseCr":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    throw v2

    .line 2188
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch

    .line 2191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showSimCheckFields()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const v12, 0x7f0d0603

    const v11, 0x7f0d0604

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 2493
    new-array v0, v13, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v0, v7

    const-string v6, "0"

    aput-object v6, v0, v8

    .line 2494
    .local v0, "currentOperator":[Ljava/lang/String;
    new-array v1, v13, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v1, v7

    const-string v6, "0"

    aput-object v6, v1, v8

    .line 2496
    .local v1, "currentSimState":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2497
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2498
    .local v5, "tempCurrentSimState":[Ljava/lang/String;
    aget-object v6, v5, v7

    aput-object v6, v1, v7

    .line 2499
    aget-object v6, v5, v8

    aput-object v6, v1, v8

    .line 2504
    .end local v5    # "tempCurrentSimState":[Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, ","

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2505
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2506
    .local v4, "tempCurrentOperator":[Ljava/lang/String;
    aget-object v6, v4, v7

    aput-object v6, v0, v7

    .line 2507
    aget-object v6, v4, v8

    aput-object v6, v0, v8

    .line 2512
    .end local v4    # "tempCurrentOperator":[Ljava/lang/String;
    :goto_1
    sget-boolean v6, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiConfigController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sim State : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Sim State2 : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " simslot2only : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    :cond_0
    sget-boolean v6, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "WifiConfigController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "operator_1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " operator_2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v9, 0x7f0d0602

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 2515
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v9, 0x7f0d0602

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2516
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2517
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2518
    const-string v6, "46000"

    aget-object v9, v0, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "46002"

    aget-object v9, v0, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "46007"

    aget-object v9, v0, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_2
    move v2, v8

    .line 2519
    .local v2, "isSim1CMCC":Z
    :goto_2
    const-string v6, "46000"

    aget-object v9, v0, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "46002"

    aget-object v9, v0, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "46007"

    aget-object v9, v0, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_3
    move v3, v8

    .line 2521
    .local v3, "isSim2CMCC":Z
    :goto_3
    const-string v6, "1"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2522
    const-string v6, "WifiConfigController"

    const-string v7, "Sim 2 only , QC 1CHIP DSDS project"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    if-eqz v2, :cond_4

    .line 2524
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2525
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2526
    iput v13, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimNum:I

    .line 2563
    :cond_4
    :goto_4
    const-string v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSimNum : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2566
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2568
    .end local v2    # "isSim1CMCC":Z
    .end local v3    # "isSim2CMCC":Z
    :cond_5
    return-void

    .line 2501
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    aput-object v6, v1, v7

    goto/16 :goto_0

    .line 2509
    :cond_7
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    aput-object v6, v0, v7

    goto/16 :goto_1

    :cond_8
    move v2, v7

    .line 2518
    goto/16 :goto_2

    .restart local v2    # "isSim1CMCC":Z
    :cond_9
    move v3, v7

    .line 2519
    goto :goto_3

    .line 2529
    .restart local v3    # "isSim2CMCC":Z
    :cond_a
    const-string v6, "0"

    aget-object v9, v1, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "0"

    aget-object v9, v1, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 2530
    const-string v6, "WifiConfigController"

    const-string v7, "Sim 2 only , 2CHIP/ 1CHIP DSDA "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    if-eqz v3, :cond_4

    .line 2532
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2533
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2534
    iput v13, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimNum:I

    goto :goto_4

    .line 2537
    :cond_b
    const-string v6, "0"

    aget-object v9, v1, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "0"

    aget-object v9, v1, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2538
    const-string v6, "WifiConfigController"

    const-string v7, "No Sim Card"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2540
    :cond_c
    const-string v6, "0"

    aget-object v9, v1, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "0"

    aget-object v9, v1, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 2541
    const-string v6, "WifiConfigController"

    const-string v9, "2 Sim Cards"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    if-eqz v2, :cond_d

    .line 2543
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2544
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2545
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2546
    iput v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimNum:I

    .line 2548
    :cond_d
    if-eqz v3, :cond_4

    .line 2549
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2550
    if-nez v2, :cond_4

    .line 2551
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2552
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2553
    iput v13, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimNum:I

    goto/16 :goto_4

    .line 2557
    :cond_e
    const-string v6, "WifiConfigController"

    const-string v7, "Sim 1 only"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    if-eqz v2, :cond_4

    .line 2559
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2560
    iput v8, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimNum:I

    goto/16 :goto_4
.end method

.method private showSisNotification()V
    .locals 4

    .prologue
    .line 3731
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0434

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0433

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e052c

    new-instance v3, Lcom/android/settings_ex/wifi/WifiConfigController$10;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$10;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e052b

    new-instance v3, Lcom/android/settings_ex/wifi/WifiConfigController$9;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$9;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3753
    .local v0, "builder":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3754
    return-void
.end method

.method private showSoftKeyboard(Z)V
    .locals 6
    .param p1, "isShowing"    # Z

    .prologue
    .line 3115
    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSoftKeyboard = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRequestHideKeyboard = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3118
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3119
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 3120
    .local v1, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    .line 3121
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v2

    .line 3122
    .local v2, "mKeyboard":I
    if-eqz v2, :cond_0

    .line 3123
    const/4 p1, 0x0

    .line 3125
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    if-nez v3, :cond_1

    .line 3126
    const-string v3, "WifiConfigController"

    const-string v4, "    **** showSoftKeyboard :: showSoftInput !!!*****"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 3131
    .end local v1    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "mKeyboard":I
    :cond_1
    return-void
.end method

.method private updatePasswordVisibility(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 4048
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 4049
    .local v0, "pos":I
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 4053
    if-ltz v0, :cond_0

    .line 4054
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 4056
    :cond_0
    return-void

    .line 4049
    :cond_1
    const/16 v1, 0x80

    goto :goto_0
.end method

.method private updateShowSisOption()V
    .locals 2

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1041
    return-void
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 13
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 1850
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 1930
    :goto_0
    return v10

    .line 1852
    :cond_0
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1853
    .local v7, "ipAddr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1854
    const v10, 0x7f0e0466

    goto :goto_0

    .line 1857
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 1858
    .local v6, "inetAddr":Ljava/net/Inet4Address;
    if-nez v6, :cond_2

    .line 1859
    const v10, 0x7f0e0466

    goto :goto_0

    .line 1863
    :cond_2
    :try_start_0
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    if-eqz v10, :cond_3

    .line 1864
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    .line 1865
    invoke-direct {p0, v6}, Lcom/android/settings_ex/wifi/WifiConfigController;->generateBlankFields(Ljava/net/Inet4Address;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1870
    :cond_3
    const/4 v9, -0x1

    .line 1871
    .local v9, "networkPrefixLength":I
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1872
    .local v8, "networkPrefix":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1873
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    if-eqz v10, :cond_6

    .line 1874
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0e0471

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1882
    :cond_4
    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1883
    if-ltz v9, :cond_5

    const/16 v10, 0x20

    if-le v9, v10, :cond_7

    .line 1884
    :cond_5
    const v10, 0x7f0e0469

    goto :goto_0

    .line 1867
    .end local v8    # "networkPrefix":Ljava/lang/String;
    .end local v9    # "networkPrefixLength":I
    :catch_0
    move-exception v3

    .line 1868
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0e0466

    goto :goto_0

    .line 1877
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "networkPrefix":Ljava/lang/String;
    .restart local v9    # "networkPrefixLength":I
    :cond_6
    const v10, 0x7f0e0469

    goto :goto_0

    .line 1886
    :cond_7
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v10, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1891
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1892
    .local v4, "gateway":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    const v10, 0x7f0e0467

    goto/16 :goto_0

    .line 1887
    .end local v4    # "gateway":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 1888
    .local v3, "e":Ljava/lang/NumberFormatException;
    const v10, 0x7f0e0469

    goto/16 :goto_0

    .line 1894
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "gateway":Ljava/lang/String;
    :cond_8
    const/4 v5, 0x0

    .line 1896
    .local v5, "gatewayAddr":Ljava/net/InetAddress;
    :try_start_2
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 1900
    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 1902
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1903
    .local v0, "dns1":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1905
    .local v1, "dns2":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1906
    const v10, 0x7f0e0468

    goto/16 :goto_0

    .line 1897
    .end local v0    # "dns1":Ljava/lang/String;
    .end local v1    # "dns2":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 1898
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0e0467

    goto/16 :goto_0

    .line 1909
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "dns1":Ljava/lang/String;
    .restart local v1    # "dns2":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    .line 1910
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1912
    :try_start_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 1916
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1921
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 1923
    :try_start_4
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    .line 1927
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1930
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1913
    :catch_3
    move-exception v3

    .line 1914
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0e0468

    goto/16 :goto_0

    .line 1918
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_b
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1924
    :catch_4
    move-exception v3

    .line 1925
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0e0468

    goto/16 :goto_0
.end method


# virtual methods
.method public OpenWebPage()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1150
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTouchX:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTouchY:I

    if-ne v1, v2, :cond_1

    .line 1151
    sget-boolean v1, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiConfigController"

    const-string v2, "Go to Webpage: open webpage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1153
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1155
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 3475
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ex/wifi/WifiConfigController$7;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$7;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3480
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 3485
    return-void
.end method

.method public dismissSpinnerPopup()V
    .locals 1

    .prologue
    .line 3984
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    .line 3985
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 3986
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    .line 3987
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 3988
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 3989
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 3990
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 3991
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 3992
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 3993
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 3994
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    .line 3995
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 3998
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    .line 3999
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 4000
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_5

    .line 4001
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 4002
    :cond_5
    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 14

    .prologue
    .line 1221
    sget-boolean v10, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_0

    const-string v10, "WifiConfigController"

    const-string v11, "enableSubmitIfAppropriate"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_0
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v10}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v8

    .line 1223
    .local v8, "submit":Landroid/widget/Button;
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v10}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getForgetButton()Landroid/widget/Button;

    move-result-object v3

    .line 1224
    .local v3, "forget":Landroid/widget/Button;
    if-nez v8, :cond_2

    .line 1385
    :cond_1
    :goto_0
    return-void

    .line 1227
    :cond_2
    const/4 v9, 0x0

    .line 1228
    .local v9, "trimedSsidLength":I
    const/4 v2, 0x1

    .line 1229
    .local v2, "enabled":Z
    const/4 v7, 0x0

    .line 1230
    .local v7, "passwordInvalid":Z
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v10, :cond_4

    .line 1231
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-nez v10, :cond_3

    .line 1232
    const/4 v2, 0x0

    .line 1234
    :cond_3
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    .line 1237
    :cond_4
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v10, :cond_1a

    .line 1238
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v5

    .line 1239
    .local v5, "passLen":I
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mRetry:Z

    if-eqz v10, :cond_f

    .line 1240
    iget v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    if-lez v5, :cond_5

    const/16 v10, 0x8

    if-ge v5, v10, :cond_5

    .line 1242
    const-string v10, "WifiConfigController"

    const-string v11, "password invalid (retry dialog)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const/4 v7, 0x1

    .line 1285
    .end local v5    # "passLen":I
    :cond_5
    :goto_1
    const-string v10, "VZW"

    sget-object v11, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1286
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v10, :cond_7

    .line 1287
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 1288
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1290
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v11, v11, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 1291
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->bIsChangedSsid:Z

    .line 1292
    if-eqz v0, :cond_6

    .line 1293
    const/4 v10, 0x0

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1301
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 1302
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v10, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 1307
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v10, :cond_23

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v10, :cond_23

    .line 1308
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    if-eqz v10, :cond_9

    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mRetry:Z

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-nez v10, :cond_9

    iget v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eq v10, v11, :cond_8

    iget v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v10, :cond_9

    .line 1310
    :cond_8
    const/4 v2, 0x1

    .line 1311
    const/4 v7, 0x0

    .line 1312
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->bIsChangedSsid:Z

    if-eqz v10, :cond_9

    iget v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v10, :cond_9

    .line 1313
    const/4 v2, 0x0

    .line 1314
    const/4 v7, 0x1

    .line 1317
    :cond_9
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_b

    .line 1318
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1319
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    iget v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-ne v10, v11, :cond_1c

    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->bIsChangedSsid:Z

    if-nez v10, :cond_1c

    .line 1320
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->bIsChangedSecurity:Z

    .line 1321
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v11, 0x7f0e0405

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setHint(I)V

    .line 1322
    if-eqz v0, :cond_a

    .line 1323
    const/4 v10, 0x0

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1343
    :cond_a
    :goto_3
    if-eqz v0, :cond_b

    .line 1344
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v10, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 1360
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_b
    :goto_4
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v10

    if-eqz v10, :cond_24

    .line 1361
    const/4 v2, 0x1

    .line 1365
    :goto_5
    sget-boolean v10, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_c

    const-string v10, "WifiConfigController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mRetry:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mRetry:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " password invalid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_c
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mRetry:Z

    if-eqz v10, :cond_25

    if-eqz v7, :cond_25

    .line 1367
    const/4 v2, 0x0

    .line 1373
    :cond_d
    :goto_6
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v10, :cond_e

    if-nez v9, :cond_e

    .line 1374
    const/4 v2, 0x0

    .line 1376
    :cond_e
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1377
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1379
    const-string v10, "VZW"

    sget-object v11, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1380
    if-eqz v3, :cond_1

    .line 1381
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1382
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setFocusable(Z)V

    goto/16 :goto_0

    .line 1245
    .restart local v5    # "passLen":I
    :cond_f
    iget v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    if-eqz v5, :cond_11

    const/16 v10, 0xd

    if-le v5, v10, :cond_10

    const/16 v10, 0x1a

    if-ne v5, v10, :cond_11

    :cond_10
    iget v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_17

    const/16 v10, 0x8

    if-ge v5, v10, :cond_17

    .line 1248
    :cond_11
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1249
    .local v6, "password":Ljava/lang/String;
    const-string v10, "[0-9A-Fa-f]*"

    invoke-virtual {v6, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    .line 1250
    .local v4, "isPasswordHex":Z
    iget v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_15

    if-eqz v5, :cond_15

    .line 1251
    if-nez v4, :cond_12

    .line 1252
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v10}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1253
    .local v1, "context":Landroid/content/Context;
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0xd

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/16 v11, 0xd

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_1

    .line 1256
    .end local v1    # "context":Landroid/content/Context;
    :cond_12
    const/16 v10, 0x1a

    if-le v5, v10, :cond_13

    .line 1257
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v10}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1258
    .restart local v1    # "context":Landroid/content/Context;
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const v11, 0x7f0e0094

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 1259
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a007e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1260
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1261
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0x1a

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/16 v11, 0x1a

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_1

    .line 1264
    .end local v1    # "context":Landroid/content/Context;
    :cond_13
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v10}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1265
    .restart local v1    # "context":Landroid/content/Context;
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1266
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a00d3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1267
    sget-boolean v10, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_14

    const-string v10, "WifiConfigController"

    const-string v11, "password invalid"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_14
    const/4 v7, 0x1

    .line 1269
    goto/16 :goto_1

    .line 1272
    .end local v1    # "context":Landroid/content/Context;
    :cond_15
    sget-boolean v10, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_16

    const-string v10, "WifiConfigController"

    const-string v11, "password invalid"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_16
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 1275
    .end local v4    # "isPasswordHex":Z
    .end local v6    # "password":Ljava/lang/String;
    :cond_17
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    iget v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    if-eqz v5, :cond_18

    if-lez v5, :cond_5

    const/16 v10, 0x8

    if-ge v5, v10, :cond_5

    .line 1278
    :cond_18
    sget-boolean v10, Lcom/android/settings_ex/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_19

    const-string v10, "WifiConfigController"

    const-string v11, "password invalid (saved ap)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_19
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 1282
    .end local v5    # "passLen":I
    :cond_1a
    const-string v10, "WifiConfigController"

    const-string v11, "mPasswordView is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1296
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1b
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->bIsChangedSsid:Z

    .line 1297
    if-eqz v0, :cond_6

    .line 1298
    const/4 v10, 0x1

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto/16 :goto_2

    .line 1326
    :cond_1c
    iget v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eq v10, v11, :cond_1d

    .line 1327
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->bIsChangedSecurity:Z

    .line 1328
    iget v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v10, :cond_1e

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-nez v10, :cond_1e

    .line 1329
    const/4 v7, 0x1

    .line 1338
    :cond_1d
    :goto_7
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1339
    if-eqz v0, :cond_a

    .line 1340
    const/4 v10, 0x1

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto/16 :goto_3

    .line 1330
    :cond_1e
    iget v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1f

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-eqz v10, :cond_20

    :cond_1f
    iget v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_21

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    const/16 v11, 0x8

    if-ge v10, v11, :cond_21

    .line 1332
    :cond_20
    const/4 v7, 0x1

    goto :goto_7

    .line 1333
    :cond_21
    iget v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1d

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-eqz v10, :cond_22

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-lez v10, :cond_1d

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    const/16 v11, 0x8

    if-ge v10, v11, :cond_1d

    .line 1335
    :cond_22
    const/4 v7, 0x1

    goto :goto_7

    .line 1347
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_23
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v10, :cond_b

    .line 1349
    iget v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-nez v10, :cond_b

    .line 1350
    const/4 v2, 0x0

    .line 1351
    const/4 v7, 0x1

    .line 1352
    iget v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_b

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->isNeededPasswordView()Z

    move-result v10

    if-nez v10, :cond_b

    .line 1353
    const/4 v2, 0x1

    .line 1354
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 1363
    :cond_24
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1368
    :cond_25
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v10, :cond_26

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_27

    :cond_26
    if-eqz v7, :cond_27

    .line 1369
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1370
    :cond_27
    const-string v10, "VZW"

    sget-object v11, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    if-eqz v10, :cond_d

    if-eqz v7, :cond_d

    .line 1371
    const/4 v2, 0x0

    goto/16 :goto_6
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 19

    .prologue
    .line 1456
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v14, v14, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    if-nez v14, :cond_0

    .line 1457
    const/4 v3, 0x0

    .line 1735
    :goto_0
    return-object v3

    .line 1460
    :cond_0
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1462
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v14, :cond_1

    .line 1463
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1466
    const/4 v14, 0x1

    iput-boolean v14, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1485
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v14, :pswitch_data_0

    .line 1703
    const/4 v3, 0x0

    goto :goto_0

    .line 1467
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v14, v14, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2

    .line 1468
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 1471
    :cond_2
    const-string v14, "VZW"

    sget-object v15, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1472
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mRetry:Z

    if-nez v14, :cond_3

    .line 1473
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0d0579

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    .line 1474
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0d05c4

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidErrorText:Landroid/widget/TextView;

    .line 1475
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const v15, 0x7f0e03e9

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setHint(I)V

    .line 1476
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/16 v15, 0x9

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1482
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v14, v14, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    iput v14, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto/16 :goto_1

    .line 1480
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_2

    .line 1487
    :pswitch_0
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1707
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/settings_ex/wifi/AccessPoint;->secFlags:Ljava/util/BitSet;

    if-eqz v14, :cond_7

    .line 1708
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1709
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/settings_ex/wifi/AccessPoint;->secFlags:Ljava/util/BitSet;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1710
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1712
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/settings_ex/wifi/AccessPoint;->secFlags:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1713
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1717
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_9

    .line 1720
    :cond_8
    const-string v14, "WifiConfigController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SamsungFlag : SEC_INTERANET_AP "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyMode:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyMode:Z

    if-eqz v14, :cond_28

    .line 1722
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1723
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1731
    :cond_9
    :goto_4
    new-instance v14, Landroid/net/IpConfiguration;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    move-object/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v3, v14}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto/16 :goto_0

    .line 1491
    :pswitch_1
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1492
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1493
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1494
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->length()I

    move-result v14

    if-eqz v14, :cond_5

    .line 1495
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->length()I

    move-result v7

    .line 1496
    .local v7, "length":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1498
    .local v8, "password":Ljava/lang/String;
    const/16 v14, 0xa

    if-eq v7, v14, :cond_a

    const/16 v14, 0x1a

    if-eq v7, v14, :cond_a

    const/16 v14, 0x3a

    if-ne v7, v14, :cond_b

    :cond_a
    const-string v14, "[0-9A-Fa-f]*"

    invoke-virtual {v8, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1500
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    goto/16 :goto_3

    .line 1502
    :cond_b
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x22

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x22

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    goto/16 :goto_3

    .line 1508
    .end local v7    # "length":I
    .end local v8    # "password":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedFt:Z

    if-eqz v14, :cond_c

    .line 1509
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1513
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->length()I

    move-result v14

    if-eqz v14, :cond_5

    .line 1514
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1515
    .restart local v8    # "password":Ljava/lang/String;
    const-string v14, "[0-9A-Fa-f]{64}"

    invoke-virtual {v8, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1516
    iput-object v8, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3

    .line 1511
    .end local v8    # "password":Ljava/lang/String;
    :cond_c
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    goto :goto_5

    .line 1518
    .restart local v8    # "password":Ljava/lang/String;
    :cond_d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x22

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3

    .line 1524
    .end local v8    # "password":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedFt:Z

    if-eqz v14, :cond_12

    .line 1525
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v15, 0x9

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1532
    :goto_6
    new-instance v14, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v14}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1533
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    .line 1534
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v15, ""

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1537
    .local v11, "spinnerValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 1538
    .local v4, "eapMethod":I
    sget-boolean v14, Lcom/android/settings_ex/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v15, "CMCC"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1539
    const/4 v14, 0x1

    if-ne v4, v14, :cond_e

    .line 1540
    const/4 v4, 0x4

    .line 1543
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    .line 1544
    .local v9, "phase1Method":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    .line 1545
    .local v10, "phase2Method":I
    const-string v14, "PEAP"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 1546
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1550
    packed-switch v10, :pswitch_data_1

    .line 1561
    const-string v14, "WifiConfigController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown phase2 method"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1628
    .local v1, "caCert":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    const-string v1, ""

    .line 1629
    :cond_f
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 1630
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1631
    .local v2, "clientCert":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    const-string v2, ""

    .line 1632
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    if-eqz v14, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 1633
    const-string v14, " [KNOX]"

    const-string v15, ""

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1634
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setCCMEnabled(Z)V

    .line 1643
    :cond_11
    :goto_8
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 1644
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 1645
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->isShown()Z

    move-result v14

    if-eqz v14, :cond_20

    .line 1651
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->length()I

    move-result v14

    if-lez v14, :cond_5

    .line 1652
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1526
    .end local v1    # "caCert":Ljava/lang/String;
    .end local v2    # "clientCert":Ljava/lang/String;
    .end local v4    # "eapMethod":I
    .end local v9    # "phase1Method":I
    .end local v10    # "phase2Method":I
    .end local v11    # "spinnerValue":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedCckm:Z

    if-eqz v14, :cond_13

    .line 1527
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_6

    .line 1529
    :cond_13
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1530
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_6

    .line 1552
    .restart local v4    # "eapMethod":I
    .restart local v9    # "phase1Method":I
    .restart local v10    # "phase2Method":I
    .restart local v11    # "spinnerValue":Ljava/lang/String;
    :pswitch_4
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_7

    .line 1555
    :pswitch_5
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_7

    .line 1558
    :pswitch_6
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_7

    .line 1564
    :cond_14
    const-string v14, "FAST"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 1565
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1566
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    .line 1567
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v15, "/data/misc/wifi/wpa_supplicant.pac"

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    .line 1569
    packed-switch v10, :pswitch_data_2

    .line 1580
    const-string v14, "WifiConfigController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown phase2 method"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1571
    :pswitch_7
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_7

    .line 1574
    :pswitch_8
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_7

    .line 1577
    :pswitch_9
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_7

    .line 1584
    :cond_15
    const-string v14, "TLS"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 1585
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1599
    :cond_16
    :goto_9
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_7

    .line 1586
    :cond_17
    const-string v14, "TTLS"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 1587
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_9

    .line 1588
    :cond_18
    const-string v14, "PWD"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 1589
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_9

    .line 1590
    :cond_19
    const-string v14, "SIM"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 1591
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_9

    .line 1592
    :cond_1a
    const-string v14, "AKA"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 1593
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_9

    .line 1594
    :cond_1b
    const-string v14, "AKA\'"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 1595
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_9

    .line 1596
    :cond_1c
    const-string v14, "LEAP"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 1597
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_9

    .line 1635
    .restart local v1    # "caCert":Ljava/lang/String;
    .restart local v2    # "clientCert":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 1636
    invoke-virtual {v2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1637
    .local v6, "index":I
    if-ltz v6, :cond_1e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-eq v14, v15, :cond_1f

    .line 1638
    :cond_1e
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1640
    :cond_1f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "clientCert":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1641
    .restart local v2    # "clientCert":Ljava/lang/String;
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setUCMEnabled(Z)V

    goto/16 :goto_8

    .line 1654
    .end local v6    # "index":I
    :cond_20
    sget-boolean v14, Lcom/android/settings_ex/Utils;->ENABLE_SIM_SELECTION_UI:Z

    if-eqz v14, :cond_21

    .line 1655
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimNum:I

    iput v14, v3, Landroid/net/wifi/WifiConfiguration;->sim_num:I

    goto/16 :goto_3

    .line 1658
    :cond_21
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1663
    .end local v1    # "caCert":Ljava/lang/String;
    .end local v2    # "clientCert":Ljava/lang/String;
    .end local v4    # "eapMethod":I
    .end local v9    # "phase1Method":I
    .end local v10    # "phase2Method":I
    .end local v11    # "spinnerValue":Ljava/lang/String;
    :pswitch_a
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->length()I

    move-result v14

    if-eqz v14, :cond_22

    .line 1665
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1666
    .restart local v8    # "password":Ljava/lang/String;
    const-string v14, "[0-9A-Fa-f]{64}"

    invoke-virtual {v8, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_23

    .line 1667
    iput-object v8, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1672
    .end local v8    # "password":Ljava/lang/String;
    :cond_22
    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    if-eqz v14, :cond_5

    .line 1673
    const-string v14, "WifiConfigController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mWapiPskType.getSelectedItemPosition() "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    sget-object v14, Lcom/android/settings_ex/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v15}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v15

    aget v5, v14, v15

    .line 1675
    .local v5, "iType":I
    iput v5, v3, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_3

    .line 1669
    .end local v5    # "iType":I
    .restart local v8    # "password":Ljava/lang/String;
    :cond_23
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x22

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_a

    .line 1680
    .end local v8    # "password":Ljava/lang/String;
    :pswitch_b
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1681
    new-instance v14, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v14}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1682
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiCertIndex:I

    .line 1683
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiCertIndex:I

    iput v14, v3, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 1684
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    if-eqz v14, :cond_5

    .line 1685
    const-string v14, "WifiConfigController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mWapiAsCert.getSelectedItemPosition() "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    const-string v14, "WifiConfigController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mWapiAsCert.getSelectedItem() "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1689
    .local v12, "wapiAsCert":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_24

    const-string v12, ""

    .line 1690
    :cond_24
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiASCertificateAlias()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 1691
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v14

    if-nez v14, :cond_26

    const-string v14, ""

    :goto_b
    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 1694
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1695
    .local v13, "wapiUserCert":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_25

    const-string v13, ""

    .line 1696
    :cond_25
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setWapiUserCertificateAlias(Ljava/lang/String;)V

    .line 1697
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificateAlias()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    .line 1698
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v14

    if-nez v14, :cond_27

    const-string v14, ""

    :goto_c
    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_3

    .line 1691
    .end local v13    # "wapiUserCert":Ljava/lang/String;
    :cond_26
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "keystore://WAPIAS_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_b

    .line 1698
    .restart local v13    # "wapiUserCert":Ljava/lang/String;
    :cond_27
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "keystore://WAPIUSR_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_c

    .line 1724
    .end local v12    # "wapiAsCert":Ljava/lang/String;
    .end local v13    # "wapiUserCert":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPrevInteranetUseOnlyMode:Z

    if-eqz v14, :cond_9

    .line 1725
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1726
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_4

    .line 1485
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 1550
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1569
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getDialogButton(I)Z
    .locals 2
    .param p1, "Position"    # I

    .prologue
    .line 980
    const/4 v0, 0x0

    .line 982
    .local v0, "ret":Z
    packed-switch p1, :pswitch_data_0

    .line 993
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 986
    :pswitch_1
    sget-boolean v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mCanceltoForget:Z

    if-eqz v1, :cond_0

    .line 987
    const/4 v0, 0x1

    .line 988
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings_ex/wifi/WifiConfigController;->mCanceltoForget:Z

    goto :goto_0

    .line 982
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVzwButton(I)I
    .locals 1
    .param p1, "Position"    # I

    .prologue
    .line 1434
    const/4 v0, -0x1

    .line 1436
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 1449
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    .line 1452
    :goto_0
    return v0

    .line 1438
    :pswitch_0
    sget v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 1439
    goto :goto_0

    .line 1442
    :pswitch_1
    sget v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 1443
    goto :goto_0

    .line 1446
    :pswitch_2
    sget v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mVzwNegativeButton:I

    .line 1447
    goto :goto_0

    .line 1436
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method hideForgetButton()V
    .locals 2

    .prologue
    .line 1206
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getForgetButton()Landroid/widget/Button;

    move-result-object v0

    .line 1207
    .local v0, "forget":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 1210
    :goto_0
    return-void

    .line 1209
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method hideSubmitButton()V
    .locals 2

    .prologue
    .line 1213
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ex/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings_ex/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    .line 1214
    .local v0, "submit":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 1217
    :goto_0
    return-void

    .line 1216
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 3429
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public isNeedToReconnect()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1420
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_1

    .line 1430
    :cond_0
    :goto_0
    return v1

    .line 1424
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1425
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1426
    .local v0, "newIpAddress":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1427
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNeedToReconnectNetwork()Z
    .locals 3

    .prologue
    .line 1410
    const/4 v0, 0x0

    .line 1411
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPrevInteranetUseOnlyMode:Z

    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyMode:Z

    if-eq v1, v2, :cond_1

    .line 1412
    const/4 v0, 0x1

    .line 1416
    :cond_0
    :goto_0
    return v0

    .line 1413
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    if-eq v1, v2, :cond_0

    .line 1414
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNeededPasswordView()Z
    .locals 3

    .prologue
    .line 1388
    const/4 v0, 0x1

    .line 1389
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_2

    .line 1390
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1391
    .local v1, "spinnerValue":Ljava/lang/String;
    const-string v2, "TLS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SIM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AKA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AKA\'"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1392
    :cond_0
    const/4 v0, 0x0

    .line 1397
    .end local v1    # "spinnerValue":Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 1395
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedtoForgetNetwork()Z
    .locals 2

    .prologue
    .line 1401
    const/4 v0, 0x0

    .line 1403
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->bIsChangedSsid:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->bIsChangedSecurity:Z

    if-eqz v1, :cond_1

    .line 1404
    :cond_0
    const/4 v0, 0x1

    .line 1406
    :cond_1
    return v0
.end method

.method public isRetryDialog()Z
    .locals 1

    .prologue
    .line 3433
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mRetry:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 19
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 3494
    const-string v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckedChanged, isChecked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    invoke-virtual/range {p1 .. p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 3727
    .end local p1    # "view":Landroid/widget/CompoundButton;
    :cond_0
    :goto_0
    return-void

    .line 3498
    .restart local p1    # "view":Landroid/widget/CompoundButton;
    :sswitch_0
    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3499
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getPasswordHidden"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3501
    .local v11, "cr":Landroid/database/Cursor;
    if-eqz v11, :cond_0

    .line 3503
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3504
    const-string v2, "getPasswordHidden"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v17

    .line 3506
    .local v17, "pos":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz p2, :cond_2

    const/16 v2, 0x90

    :goto_1
    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 3510
    if-ltz v17, :cond_1

    .line 3511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 3513
    :cond_1
    const-string v2, "WifiConfigController"

    const-string v4, "onCheckedChanged: EDM is called when the user clicks the show password"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3518
    .end local v17    # "pos":I
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3506
    .restart local v17    # "pos":I
    :cond_2
    const/16 v2, 0x80

    goto :goto_1

    .line 3515
    .end local v17    # "pos":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WifiConfigController;->updatePasswordVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 3518
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 3533
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v11    # "cr":Landroid/database/Cursor;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d0601

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    .line 3536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 3537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 3538
    .local v10, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    :goto_3
    iput v2, v10, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    .line 3539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2, v10}, Lcom/android/settings_ex/wifi/AccessPoint;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 3541
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 3542
    .local v15, "msg":Landroid/os/Message;
    const/16 v2, 0x47

    iput v2, v15, Landroid/os/Message;->what:I

    .line 3543
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 3544
    .local v8, "args":Landroid/os/Bundle;
    const-string v2, "netId"

    iget v4, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3545
    const-string v2, "autojoin"

    iget v4, v10, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3546
    iput-object v8, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v15}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 3549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 3550
    iget v2, v10, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    if-nez v2, :cond_0

    .line 3551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto/16 :goto_0

    .line 3538
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v15    # "msg":Landroid/os/Message;
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 3557
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2
    if-eqz p2, :cond_c

    .line 3558
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v4, :cond_8

    .line 3560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 3561
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v2

    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v2, v4, :cond_7

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v2

    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v2, v4, :cond_7

    .line 3563
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3574
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v12

    .line 3575
    .local v12, "focusedView":Landroid/view/View;
    if-eqz v12, :cond_a

    .line 3576
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodManager;

    .line 3577
    .local v14, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v14, :cond_6

    .line 3578
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    if-eqz v2, :cond_5

    .line 3579
    invoke-virtual {v12}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3581
    :cond_5
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/settings_ex/wifi/WifiConfigController$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/settings_ex/wifi/WifiConfigController$8;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    const-wide/16 v6, 0x96

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3588
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05e0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 3592
    .end local v14    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p2, :cond_b

    const-string v2, "ON"

    :goto_6
    invoke-static {v4, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->insertShowAdvancedOptionsLogging(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3565
    .end local v12    # "focusedView":Landroid/view/View;
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    goto :goto_4

    .line 3568
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    goto :goto_4

    .line 3571
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    goto :goto_4

    .line 3590
    .restart local v12    # "focusedView":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05e0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 3592
    :cond_b
    const-string v2, "OFF"

    goto :goto_6

    .line 3594
    .end local v12    # "focusedView":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_11

    .line 3596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 3598
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v14

    .line 3599
    .restart local v14    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v14, :cond_d

    .line 3600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v14, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3602
    :cond_d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    .line 3611
    .end local v14    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v12

    .line 3613
    .restart local v12    # "focusedView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_15

    .line 3614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3615
    .local v18, "spinnerValue":Ljava/lang/String;
    const-string v2, "SIM"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "AKA"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "AKA\'"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3616
    :cond_f
    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-nez v2, :cond_10

    .line 3617
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodManager;

    .line 3618
    .restart local v14    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v14, :cond_10

    .line 3619
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3620
    invoke-virtual {v12}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3656
    .end local v14    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v18    # "spinnerValue":Ljava/lang/String;
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05e0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 3604
    .end local v12    # "focusedView":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v2, :cond_12

    .line 3605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_7

    .line 3606
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v2, :cond_13

    .line 3607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_7

    .line 3608
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_e

    .line 3609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_7

    .line 3624
    .restart local v12    # "focusedView":Landroid/view/View;
    .restart local v18    # "spinnerValue":Ljava/lang/String;
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3625
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto :goto_8

    .line 3628
    .end local v18    # "spinnerValue":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v4, :cond_16

    .line 3631
    if-eqz v12, :cond_10

    .line 3632
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodManager;

    .line 3633
    .restart local v14    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v14, :cond_10

    .line 3634
    const-string v2, "WifiConfigController"

    const-string v4, "    **** [onClick] connected, uncheked hideSoftInputFromWindow *****"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3635
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3636
    invoke-virtual {v12}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_8

    .line 3640
    .end local v14    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v2, :cond_17

    .line 3643
    if-eqz v12, :cond_10

    .line 3644
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodManager;

    .line 3645
    .restart local v14    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v14, :cond_10

    .line 3646
    const-string v2, "WifiConfigController"

    const-string v4, "    **** [onClick] uncheked hideSoftInputFromWindow *****"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3648
    invoke-virtual {v12}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_8

    .line 3652
    .end local v14    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3653
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_8

    .line 3660
    .end local v12    # "focusedView":Landroid/view/View;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05fc

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 3661
    .local v13, "ftCheckbox":Landroid/widget/CheckBox;
    invoke-virtual {v13}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedFt:Z

    .line 3663
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedFt:Z

    if-eqz v2, :cond_0

    .line 3664
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedCckm:Z

    .line 3665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05fe

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 3669
    .end local v13    # "ftCheckbox":Landroid/widget/CheckBox;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05fe

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 3670
    .local v9, "cckmCheckbox":Landroid/widget/CheckBox;
    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedCckm:Z

    .line 3672
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedCckm:Z

    if-eqz v2, :cond_0

    .line 3673
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIsCheckedFt:Z

    .line 3674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05fc

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 3678
    .end local v9    # "cckmCheckbox":Landroid/widget/CheckBox;
    :sswitch_5
    if-eqz p2, :cond_18

    .line 3679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05f5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 3681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 3682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 3683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 3684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_0

    .line 3688
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05f5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 3690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_0

    .line 3695
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_19

    const/16 v16, 0x1

    .line 3696
    .local v16, "needSisConfirm":Z
    :goto_9
    if-eqz v16, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mShowOnceFlagforSis:Z

    if-nez v2, :cond_1a

    .line 3697
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSisNotification()V

    goto/16 :goto_0

    .line 3695
    .end local v16    # "needSisConfirm":Z
    :cond_19
    const/16 v16, 0x0

    goto :goto_9

    .line 3699
    .restart local v16    # "needSisConfirm":Z
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyMode:Z

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyMode:Z

    .line 3700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyCheckbox:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIntranetOnlyMode:Z

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 3699
    :cond_1b
    const/4 v2, 0x0

    goto :goto_a

    .line 3705
    .end local v16    # "needSisConfirm":Z
    :sswitch_7
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/widget/CompoundButton;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d0603

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d0604

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3708
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimNum:I

    .line 3709
    const-string v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(CheckBox) mSimNum : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3711
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d0603

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 3716
    .restart local p1    # "view":Landroid/widget/CompoundButton;
    :sswitch_8
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/widget/CompoundButton;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d0603

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d0604

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3719
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimNum:I

    .line 3720
    const-string v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(CheckBox) mSimNum : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSimNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3722
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d0604

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 3495
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0582 -> :sswitch_0
        0x7f0d05df -> :sswitch_2
        0x7f0d05f4 -> :sswitch_5
        0x7f0d05f9 -> :sswitch_6
        0x7f0d05fc -> :sswitch_3
        0x7f0d05fe -> :sswitch_4
        0x7f0d0601 -> :sswitch_1
        0x7f0d0603 -> :sswitch_7
        0x7f0d0604 -> :sswitch_8
    .end sparse-switch
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 3026
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3027
    .local v0, "focusedView":Landroid/view/View;
    const/4 v1, 0x5

    if-ne p2, v1, :cond_15

    .line 3028
    if-eqz v0, :cond_0

    .line 3029
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3030
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v1, :cond_3

    .line 3031
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05df

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3032
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 3033
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3034
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    :goto_0
    move v1, v2

    .line 3111
    :goto_1
    return v1

    .line 3035
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_0

    .line 3036
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 3037
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 3038
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3039
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .line 3040
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 3041
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3042
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .line 3047
    :cond_3
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 3048
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3049
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 3051
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3052
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 3054
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3055
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05d4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 3056
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 3058
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3059
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 3061
    :cond_7
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3062
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3063
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 3064
    :cond_8
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3065
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 3066
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3067
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 3069
    :cond_9
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 3070
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3071
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 3072
    :cond_a
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 3073
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3074
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 3077
    :cond_b
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3078
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3079
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 3080
    :cond_c
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3081
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3082
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 3083
    :cond_d
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3084
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3085
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 3086
    :cond_e
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3087
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3088
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 3089
    :cond_f
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3090
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    .line 3091
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 3092
    :cond_10
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3093
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 3095
    :cond_11
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3096
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3097
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 3098
    :cond_12
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3099
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3100
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 3101
    :cond_13
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3102
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3103
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 3104
    :cond_14
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3105
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3106
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 3111
    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3758
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_e

    .line 3759
    iput p3, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 3760
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSecurityFields()V

    .line 3761
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->updateShowSisOption()V

    .line 3762
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3765
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showKeyMgmtFields()V

    .line 3775
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_0

    .line 3776
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_11

    .line 3777
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3809
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_2

    .line 3811
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_18

    .line 3812
    const-string v4, "PEAP"

    .line 3816
    .local v4, "spinnerValue":Ljava/lang/String;
    :goto_2
    const-string v5, "SIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "AKA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "AKA\'"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 3817
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-nez v5, :cond_19

    .line 3818
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3832
    .end local v4    # "spinnerValue":Ljava/lang/String;
    :cond_2
    :goto_3
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v5, :cond_5

    .line 3833
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_5

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v5, :cond_5

    .line 3834
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v5, :cond_4

    .line 3835
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3836
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 3837
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_3

    .line 3838
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3840
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 3842
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_1b

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_1b

    .line 3844
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3850
    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0d05df

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3851
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1c

    .line 3852
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3853
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eq p1, v5, :cond_6

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_7

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-nez v5, :cond_7

    .line 3856
    :cond_6
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 3858
    :cond_7
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3859
    :cond_8
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    .line 3890
    :cond_9
    :goto_5
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_b

    .line 3891
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_23

    .line 3892
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_b

    .line 3894
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_21

    .line 3895
    const-string v4, "PEAP"

    .line 3899
    .restart local v4    # "spinnerValue":Ljava/lang/String;
    :goto_6
    const-string v5, "SIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "AKA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "AKA\'"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 3900
    :cond_a
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3901
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_b

    .line 3902
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 3903
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3936
    .end local v4    # "spinnerValue":Ljava/lang/String;
    :cond_b
    :goto_7
    iget-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    if-eqz v5, :cond_c

    .line 3938
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 3939
    .local v1, "focusedView":Landroid/view/View;
    if-eqz v1, :cond_29

    .line 3940
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 3941
    .local v3, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_c

    .line 3942
    const-string v5, "WifiConfigController"

    const-string v6, "    **** [onItemSelected] hideSoftInputFromWindow *****"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3943
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3954
    .end local v1    # "focusedView":Landroid/view/View;
    .end local v3    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_c
    :goto_8
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    if-nez v5, :cond_d

    .line 3956
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    new-instance v6, Lcom/android/settings_ex/wifi/WifiConfigController$11;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/wifi/WifiConfigController$11;-><init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 3962
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 3963
    return-void

    .line 3767
    :cond_e
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_f

    .line 3768
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSecurityFields()V

    .line 3769
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    goto/16 :goto_0

    .line 3770
    :cond_f
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_10

    .line 3771
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showProxyFields()V

    goto/16 :goto_0

    .line 3773
    :cond_10
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->showIpConfigFields()V

    goto/16 :goto_0

    .line 3779
    :cond_11
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3780
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_13

    .line 3781
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v5, :cond_12

    .line 3782
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_1

    .line 3783
    :cond_12
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 3784
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_1

    .line 3787
    :cond_13
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    if-eqz v5, :cond_14

    .line 3788
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_15

    .line 3789
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3794
    :cond_14
    :goto_9
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v5, :cond_17

    .line 3795
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0d05f4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 3796
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 3797
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 3798
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_1

    .line 3791
    :cond_15
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_9

    .line 3801
    :cond_16
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_1

    .line 3803
    :cond_17
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 3804
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_1

    .line 3814
    :cond_18
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "spinnerValue":Ljava/lang/String;
    goto/16 :goto_2

    .line 3820
    :cond_19
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3821
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_3

    .line 3824
    :cond_1a
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v5, :cond_2

    .line 3825
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0d05df

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3826
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3827
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_3

    .line 3846
    .end local v4    # "spinnerValue":Ljava/lang/String;
    :cond_1b
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_4

    .line 3861
    :cond_1c
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_20

    .line 3862
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-nez v5, :cond_1f

    .line 3863
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v5, :cond_1e

    .line 3864
    :cond_1d
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3882
    :cond_1e
    :goto_a
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v6, :cond_9

    .line 3883
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3884
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v5

    sget-object v6, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v5, v6, :cond_9

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v5

    sget-object v6, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v5, v6, :cond_9

    .line 3886
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    goto/16 :goto_5

    .line 3867
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1f
    iget v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v5, :cond_1e

    .line 3868
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_a

    .line 3878
    :cond_20
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v5, :cond_1e

    .line 3879
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_a

    .line 3897
    :cond_21
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "spinnerValue":Ljava/lang/String;
    goto/16 :goto_6

    .line 3907
    :cond_22
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v5, :cond_b

    .line 3908
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0d05df

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_b

    .line 3909
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3910
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_7

    .line 3915
    .end local v4    # "spinnerValue":Ljava/lang/String;
    :cond_23
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_26

    .line 3917
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3918
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v5, :cond_25

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eq p1, v5, :cond_24

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_25

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_25

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v5, :cond_25

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v6, :cond_24

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-nez v5, :cond_25

    .line 3921
    :cond_24
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestFocus()Z

    .line 3923
    :cond_25
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_7

    .line 3924
    :cond_26
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 3926
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3927
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v5, :cond_28

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eq p1, v5, :cond_27

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_28

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_28

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v5, :cond_28

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v6, :cond_27

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-nez v5, :cond_28

    .line 3930
    :cond_27
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestFocus()Z

    .line 3932
    :cond_28
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/settings_ex/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_7

    .line 3946
    .restart local v1    # "focusedView":Landroid/view/View;
    :cond_29
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 3947
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_c

    .line 3948
    const-string v5, "WifiConfigController"

    const-string v6, "    **** [onItemSelected] hideSoftInputFromWindow *****"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3949
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_8
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 3968
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 3490
    return-void
.end method

.method public updateShowAdvancedOptions()V
    .locals 3

    .prologue
    const v2, 0x7f0d05e0

    .line 1007
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    :goto_0
    return-void

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateShowPassword()V
    .locals 3

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 998
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d0582

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1002
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1004
    :cond_0
    return-void

    .line 998
    :cond_1
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public updateShowProxyAuthenticationOptions()V
    .locals 3

    .prologue
    const v2, 0x7f0d05f5

    .line 1015
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1020
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1021
    return-void

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
