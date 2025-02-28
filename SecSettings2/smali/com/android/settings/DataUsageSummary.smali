.class public Lcom/android/settings_ex/DataUsageSummary;
.super Lcom/android/settings_ex/HighlightingFragment;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;,
        Lcom/android/settings_ex/DataUsageSummary$PolicySet;,
        Lcom/android/settings_ex/DataUsageSummary$UidDetailTask;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmDataEnableFragment;,
        Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ChartFragment;,
        Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/settings_ex/DataUsageSummary$AppItem;,
        Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;,
        Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;,
        Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static bSupportRoamingReduction:Z

.field private static clickAppItem:Z

.field private static isATT:Z

.field public static isFromTrafficStings:Z

.field private static isMTR:Z

.field private static isSPR:Z

.field private static isTMB:Z

.field private static isVZW:Z

.field private static isVoWiFiProvisioned:Z

.field private static isVolteProvisioned:Z

.field private static mAttDeviceHealthEnabled:Z

.field private static mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field private static mIsIMSInitialized:Z

.field private static mLimitCheck:Z

.field private static mSMSKeyWork:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mSelectDisplayUnit:I

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private final DATA_COMPRESSION_ENABLE_KEY:Ljava/lang/String;

.field private final RESTRICTION_ALWAYS:I

.field private final RESTRICTION_DURING_ROAMING:I

.field private final RESTRICTION_NEVER:I

.field private bg_Restriction_resId:[I

.field private dataUsed:Ljava/lang/String;

.field private handler_loading:Landroid/os/Handler;

.field private isKnoxmode:Z

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

.field private mAirplanemodeObserver:Landroid/database/ContentObserver;

.field private mAlertAtWarning:Landroid/widget/Switch;

.field private mAlertAtWarningListener:Landroid/view/View$OnClickListener;

.field private mAlertAtWarningView:Landroid/view/View;

.field private mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

.field private mAlertTotalSentListener:Landroid/view/View$OnClickListener;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDataRestriction:Landroid/view/View;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppRestrcitSpinner:Landroid/widget/Spinner;

.field private mAppRestrict:Landroid/widget/Switch;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSavedTV:Landroid/widget/TextView;

.field private mAppSavedTVContainer:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mAppTotal:Landroid/widget/TextView;

.field private mAutoCalibration:Landroid/widget/Button;

.field private mBinding:Z

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mBound:Z

.field private mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/settings_ex/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settings_ex/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

.field private mChartSavedTV:Landroid/widget/TextView;

.field private mCheckphonebalance:Landroid/view/View;

.field private mCheckphonebalanceListener:Landroid/view/View$OnClickListener;

.field private mCleaningProgress:Landroid/widget/ProgressBar;

.field private mConfirmAtBoot:Landroid/widget/Switch;

.field private mConfirmAtBootListener:Landroid/view/View$OnClickListener;

.field private mConfirmAtBootView:Landroid/view/View;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleSummary:Landroid/widget/TextView;

.field private mCycleSwitch:Landroid/widget/LinearLayout;

.field private mCycleView:Landroid/view/View;

.field private mDataCompressionEnableListener:Landroid/view/View$OnClickListener;

.field private mDataCompressionSwitchContainer:Landroid/view/View;

.field private mDataCompressionSwitchView:Landroid/widget/Switch;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/view/View$OnClickListener;

.field private mDataEnabledSupported:Z

.field private mDataEnabledView:Landroid/view/View;

.field private mDataEnabledVolteListener:Landroid/view/View$OnClickListener;

.field private mDataMonitoring:Landroid/view/View;

.field private mDataMonitoringListener:Landroid/view/View$OnClickListener;

.field private mDataRoamingView:Landroid/view/View;

.field private mDataRoamingVolteListener:Landroid/view/View$OnClickListener;

.field private mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

.field public mDataUsedEditorFragment:Lcom/android/settings_ex/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;

.field private mDetailedSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

.field private mDialog:Landroid/app/DialogFragment;

.field private mDisableAtLimit:Landroid/widget/Switch;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitSupported:Z

.field private mDisableAtLimitView:Landroid/view/View;

.field private mDisclaimer:Landroid/view/View;

.field private mDisplayUnitDialog:Landroid/app/AlertDialog;

.field private mDividerView:Landroid/view/View;

.field private mDividerView_land:Landroid/view/View;

.field private mDonut:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

.field private mDonut_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mEnterChartListener:Landroid/view/View$OnClickListener;

.field private mFileParser:Lcom/android/settings_ex/trafficmanager/XmlParser;

.field private mGraphFreeColor:I

.field private mGraphLineColor:I

.field private mGraphOccupiedColor:I

.field private mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/view/ViewGroup;

.field private mIndexNum:I

.field private mInsetSide:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentTab:Ljava/lang/String;

.field mIsChartFragment:Z

.field private mIsDataCompressionEnabled:Z

.field private mIsSupportDataCompression:Z

.field private mLifedata_menu:Landroid/view/View;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mLoadFinihsed:Z

.field private mManualCalibration:Landroid/widget/Button;

.field private mManualCalibrationListener:Landroid/view/View$OnClickListener;

.field private mManualCalibrationView:Landroid/view/View;

.field private mMenuCellularNetworks:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMenuShowEthernet:Landroid/view/MenuItem;

.field private mMenuShowWifi:Landroid/view/MenuItem;

.field private mMenuSimCards:Landroid/view/MenuItem;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMobileTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMobilepolicyforwifiVZW:Landroid/net/NetworkPolicy;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mOccupiedRam:Landroid/widget/TextView;

.field private mOccupiedRam_land:Landroid/widget/TextView;

.field private mOperatorSet:Landroid/view/View;

.field private mOperatorSetListener:Landroid/view/View$OnClickListener;

.field private mPCOSettingObserver:Landroid/database/ContentObserver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPieChartInfoLayout:Landroid/view/View;

.field private mPieChartInfoLayout_land:Landroid/view/View;

.field private mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRamFree:Landroid/widget/TextView;

.field private mRamFreePercent:Landroid/widget/TextView;

.field private mRamFreePercent_land:Landroid/widget/TextView;

.field private mRamFree_land:Landroid/widget/TextView;

.field private mReceiver:Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;

.field private mRelativeLayoutRaminfo:Landroid/view/View;

.field private mRelativeLayoutRaminfo_land:Landroid/view/View;

.field private mResInstance:Landroid/content/res/Resources;

.field private mRestrcitAppDataListener:Landroid/view/View$OnClickListener;

.field private mRestrcitNetwork:Landroid/view/View;

.field private mRestrcitNetworkListener:Landroid/view/View$OnClickListener;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSMSCatchReceiver:Lcom/android/settings_ex/trafficmanager/settings/SMSCatchReceiver;

.field private mSSCListener:Lcom/android/settings_ex/datasaving/DataSavingHelper$SavingServiceConnectionListener;

.field private mSavedDataCircleView:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

.field private mSavedDataCircleViewLand:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

.field private mSavedIDlist:[Ljava/lang/String;

.field private mSavedTV:Landroid/widget/TextView;

.field private mSavedTVLand:Landroid/widget/TextView;

.field private mSavingServiceStateListener:Lcom/opera/max/sdk/saving/IStateListener;

.field private mSavingStateHandler:Landroid/os/Handler;

.field private mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

.field private mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mShowAppImmediatePkg:Ljava/lang/String;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStupidPadding:Landroid/view/View;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTSCListener:Lcom/android/settings_ex/datasaving/DataSavingHelper$TrafficServiceConnectionListener;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mTemplate:Landroid/net/NetworkTemplate;

.field private mTickImage:Landroid/widget/ImageView;

.field private mTickImageBg:Landroid/widget/ImageView;

.field private mToddlermodeObserver:Landroid/database/ContentObserver;

.field private mTopupphonebalance:Landroid/view/View;

.field private mTopupphonebalanceListener:Landroid/view/View$OnClickListener;

.field private mTotalReceive_icon:Landroid/widget/ImageView;

.field private mTotalReceive_menu:Landroid/view/View;

.field private mTotalSent_icon:Landroid/widget/ImageView;

.field private mTotalSent_menu:Landroid/view/View;

.field private mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

.field private mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

.field private mUpdateSavingStateRunnable:Ljava/lang/Runnable;

.field private mUsageSummary:Landroid/widget/TextView;

.field private mUseDataTotalPercent:Landroid/widget/TextView;

.field private mUseDataTotalPercent_land:Landroid/widget/TextView;

.field private mUsedText:Landroid/widget/TextView;

.field private mUsedText_land:Landroid/widget/TextView;

.field private mVertifyTraffic:Landroid/widget/Button;

.field private mVertifyTrafficHandler:Landroid/os/Handler;

.field private mVertifyTrafficListener:Landroid/view/View$OnClickListener;

.field private mVertifyTraffic_land:Landroid/widget/Button;

.field private mlifetimeMessenger:Landroid/os/Messenger;

.field private mtvTotalRam:Landroid/widget/TextView;

.field private mtvTotalRam_land:Landroid/widget/TextView;

.field private rilHandler:Landroid/os/Handler;

.field private wifiCycleDuration:J

.field private wifiCycleEnd:J

.field private wificyclestart:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 347
    sput-object v2, Lcom/android/settings_ex/DataUsageSummary;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 348
    sput-boolean v1, Lcom/android/settings_ex/DataUsageSummary;->isVolteProvisioned:Z

    .line 349
    sput-boolean v1, Lcom/android/settings_ex/DataUsageSummary;->isVoWiFiProvisioned:Z

    .line 350
    sput-boolean v1, Lcom/android/settings_ex/DataUsageSummary;->mIsIMSInitialized:Z

    .line 369
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->mLimitCheck:Z

    .line 532
    sput-boolean v1, Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z

    .line 535
    sput-boolean v1, Lcom/android/settings_ex/DataUsageSummary;->isSPR:Z

    .line 538
    sput-boolean v1, Lcom/android/settings_ex/DataUsageSummary;->isTMB:Z

    .line 541
    sput-boolean v1, Lcom/android/settings_ex/DataUsageSummary;->isMTR:Z

    .line 543
    sput-boolean v1, Lcom/android/settings_ex/DataUsageSummary;->isATT:Z

    .line 546
    sput-boolean v1, Lcom/android/settings_ex/DataUsageSummary;->mAttDeviceHealthEnabled:Z

    .line 550
    sput v1, Lcom/android/settings_ex/DataUsageSummary;->mSelectDisplayUnit:I

    .line 554
    sput-boolean v1, Lcom/android/settings_ex/DataUsageSummary;->bSupportRoamingReduction:Z

    .line 557
    sput-boolean v1, Lcom/android/settings_ex/DataUsageSummary;->clickAppItem:Z

    .line 571
    sput-boolean v1, Lcom/android/settings_ex/DataUsageSummary;->isFromTrafficStings:Z

    .line 617
    sput-object v2, Lcom/android/settings_ex/DataUsageSummary;->mSMSKeyWork:Ljava/util/HashMap;

    .line 4217
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 4218
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    .line 5908
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$41;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageSummary$41;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 289
    invoke-direct {p0}, Lcom/android/settings_ex/HighlightingFragment;-><init>()V

    .line 382
    iput v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    .line 396
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartSavedTV:Landroid/widget/TextView;

    .line 397
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedTV:Landroid/widget/TextView;

    .line 398
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedTVLand:Landroid/widget/TextView;

    .line 401
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportDataCompression()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z

    .line 402
    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z

    .line 403
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    .line 404
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSavedTVContainer:Landroid/view/View;

    .line 405
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSavedTV:Landroid/widget/TextView;

    .line 406
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    .line 407
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    .line 408
    const-string v0, "data_compression_enable_key"

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->DATA_COMPRESSION_ENABLE_KEY:Ljava/lang/String;

    .line 421
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedIDlist:[Ljava/lang/String;

    .line 424
    const-wide v0, 0x90321000L

    iput-wide v0, p0, Lcom/android/settings_ex/DataUsageSummary;->wifiCycleDuration:J

    .line 425
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/DataUsageSummary;->wifiCycleEnd:J

    .line 426
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/settings_ex/DataUsageSummary;->wificyclestart:J

    .line 440
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;

    .line 445
    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mBound:Z

    .line 473
    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    .line 474
    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    .line 479
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .line 485
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 486
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 505
    iput v3, p0, Lcom/android/settings_ex/DataUsageSummary;->RESTRICTION_NEVER:I

    .line 506
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/DataUsageSummary;->RESTRICTION_ALWAYS:I

    .line 507
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/DataUsageSummary;->RESTRICTION_DURING_ROAMING:I

    .line 508
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->bg_Restriction_resId:[I

    .line 524
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 525
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 529
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    .line 568
    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->isKnoxmode:Z

    .line 606
    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mLoadFinihsed:Z

    .line 613
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->dataUsed:Ljava/lang/String;

    .line 618
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mFileParser:Lcom/android/settings_ex/trafficmanager/XmlParser;

    .line 619
    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mReceiver:Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;

    .line 620
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$1;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mVertifyTrafficHandler:Landroid/os/Handler;

    .line 730
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/DataUsageSummary$2;-><init>(Lcom/android/settings_ex/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 740
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/DataUsageSummary$3;-><init>(Lcom/android/settings_ex/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAirplanemodeObserver:Landroid/database/ContentObserver;

    .line 749
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/DataUsageSummary$4;-><init>(Lcom/android/settings_ex/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPCOSettingObserver:Landroid/database/ContentObserver;

    .line 788
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/DataUsageSummary$5;-><init>(Lcom/android/settings_ex/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mToddlermodeObserver:Landroid/database/ContentObserver;

    .line 795
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$6;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 824
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$7;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->handler_loading:Landroid/os/Handler;

    .line 2101
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$13;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 2125
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$14;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$14;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 3124
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$17;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$17;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledVolteListener:Landroid/view/View$OnClickListener;

    .line 3139
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$18;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$18;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataRoamingVolteListener:Landroid/view/View$OnClickListener;

    .line 3154
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$19;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$19;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    .line 3271
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$20;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$20;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootListener:Landroid/view/View$OnClickListener;

    .line 3285
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$21;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$21;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 3320
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$22;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$22;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mVertifyTrafficListener:Landroid/view/View$OnClickListener;

    .line 3470
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$23;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$23;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mEnterChartListener:Landroid/view/View$OnClickListener;

    .line 3478
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$24;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$24;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrcitNetworkListener:Landroid/view/View$OnClickListener;

    .line 3492
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$25;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$25;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mManualCalibrationListener:Landroid/view/View$OnClickListener;

    .line 3513
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$26;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$26;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataMonitoringListener:Landroid/view/View$OnClickListener;

    .line 3541
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$27;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$27;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mOperatorSetListener:Landroid/view/View$OnClickListener;

    .line 3571
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$28;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$28;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarningListener:Landroid/view/View$OnClickListener;

    .line 3590
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$29;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$29;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTopupphonebalanceListener:Landroid/view/View$OnClickListener;

    .line 3599
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$30;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$30;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCheckphonebalanceListener:Landroid/view/View$OnClickListener;

    .line 3609
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$31;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$31;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

    .line 3631
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$32;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$32;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAlertTotalSentListener:Landroid/view/View$OnClickListener;

    .line 3654
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$33;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$33;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 3670
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$34;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$34;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrcitAppDataListener:Landroid/view/View$OnClickListener;

    .line 3710
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$35;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$35;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 3725
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$36;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$36;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 4001
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$37;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$37;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 4054
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$38;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$38;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 4148
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$39;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$39;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    .line 4678
    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsChartFragment:Z

    .line 6058
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$42;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$42;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 6139
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$43;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$43;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    .line 6170
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$44;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$44;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->rilHandler:Landroid/os/Handler;

    .line 6203
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mlifetimeMessenger:Landroid/os/Messenger;

    .line 6801
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$48;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$48;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionEnableListener:Landroid/view/View$OnClickListener;

    .line 6894
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavingStateHandler:Landroid/os/Handler;

    .line 6895
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$49;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$49;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUpdateSavingStateRunnable:Ljava/lang/Runnable;

    .line 6935
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$50;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$50;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavingServiceStateListener:Lcom/opera/max/sdk/saving/IStateListener;

    .line 6964
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$51;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$51;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSSCListener:Lcom/android/settings_ex/datasaving/DataSavingHelper$SavingServiceConnectionListener;

    .line 6992
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$52;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$52;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTSCListener:Lcom/android/settings_ex/datasaving/DataSavingHelper$TrafficServiceConnectionListener;

    return-void

    .line 508
    nop

    :array_0
    .array-data 4
        0x7f0e172d
        0x7f0e172e
        0x7f0e172f
    .end array-data
.end method

.method private static SMSKeyWordParse()V
    .locals 7

    .prologue
    .line 6671
    const-string v4, "DataUsage/LPF"

    const-string v5, "SMSKeyWordParse()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6672
    const-string v3, "/system/csc/trafficmanager.xml"

    .line 6673
    .local v3, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 6675
    .local v1, "mFileParser":Lcom/android/settings_ex/trafficmanager/XmlParser;
    :try_start_0
    new-instance v2, Lcom/android/settings_ex/trafficmanager/XmlParser;

    invoke-direct {v2, v3}, Lcom/android/settings_ex/trafficmanager/XmlParser;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6676
    .end local v1    # "mFileParser":Lcom/android/settings_ex/trafficmanager/XmlParser;
    .local v2, "mFileParser":Lcom/android/settings_ex/trafficmanager/XmlParser;
    if-eqz v2, :cond_0

    .line 6677
    :try_start_1
    invoke-virtual {v2}, Lcom/android/settings_ex/trafficmanager/XmlParser;->ParserFile()V

    .line 6678
    invoke-virtual {v2}, Lcom/android/settings_ex/trafficmanager/XmlParser;->getXmlValue()Ljava/util/HashMap;

    move-result-object v4

    sput-object v4, Lcom/android/settings_ex/DataUsageSummary;->mSMSKeyWork:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v1, v2

    .line 6683
    .end local v2    # "mFileParser":Lcom/android/settings_ex/trafficmanager/XmlParser;
    .restart local v1    # "mFileParser":Lcom/android/settings_ex/trafficmanager/XmlParser;
    :goto_0
    return-void

    .line 6680
    :catch_0
    move-exception v0

    .line 6681
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v4, "DataUsage/LPF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6680
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mFileParser":Lcom/android/settings_ex/trafficmanager/XmlParser;
    .restart local v2    # "mFileParser":Lcom/android/settings_ex/trafficmanager/XmlParser;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "mFileParser":Lcom/android/settings_ex/trafficmanager/XmlParser;
    .restart local v1    # "mFileParser":Lcom/android/settings_ex/trafficmanager/XmlParser;
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;)Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/ChartData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/DataUsageSummary;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/net/ChartData;)Lcom/android/settings_ex/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings_ex/net/ChartData;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateSavedDataCircleView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/trafficmanager/settings/SMSCatchReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSMSCatchReceiver:Lcom/android/settings_ex/trafficmanager/settings/SMSCatchReceiver;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/trafficmanager/settings/SMSCatchReceiver;)Lcom/android/settings_ex/trafficmanager/settings/SMSCatchReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings_ex/trafficmanager/settings/SMSCatchReceiver;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSMSCatchReceiver:Lcom/android/settings_ex/trafficmanager/settings/SMSCatchReceiver;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings_ex/DataUsageSummary;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/DataUsageSummary;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/DataUsageSummary;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Z

    .prologue
    .line 289
    invoke-static {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceDisable(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/settings_ex/DataUsageSummary;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 289
    invoke-static {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings_ex/DataUsageSummary;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # I

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->changeRoamingPolicyIfNeeded(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings_ex/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings_ex/DataUsageSummary;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->bg_Restriction_resId:[I

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/NetworkPolicyEditor;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings_ex/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings_ex/DataUsageSummary;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->handler_loading:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings_ex/DataUsageSummary;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/settings_ex/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/DialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/settings_ex/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Landroid/app/DialogFragment;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/enterprise/RestrictionPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$4300()Z
    .locals 1

    .prologue
    .line 289
    sget-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z

    return v0
.end method

.method static synthetic access$4400()Z
    .locals 1

    .prologue
    .line 289
    sget-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->isSPR:Z

    return v0
.end method

.method static synthetic access$4500()Z
    .locals 1

    .prologue
    .line 289
    sget-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->isTMB:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoCalibration:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mManualCalibration:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/settings_ex/DataUsageSummary;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mVertifyTrafficHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4900()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary;->mSMSKeyWork:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mReceiver:Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;)Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mReceiver:Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/settings_ex/DataUsageSummary;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 289
    invoke-static {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/settings_ex/DataUsageSummary;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedIDlist:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/settings_ex/DataUsageSummary;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # I

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->resetTimeData(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/settings_ex/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/settings_ex/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$6100(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-static {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/UidDetailProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$6500()Z
    .locals 1

    .prologue
    .line 289
    sget-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->clickAppItem:Z

    return v0
.end method

.method static synthetic access$6502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 289
    sput-boolean p0, Lcom/android/settings_ex/DataUsageSummary;->clickAppItem:Z

    return p0
.end method

.method static synthetic access$6600(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/settings_ex/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/DataUsageSummary;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # F

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setColorOnStatus(F)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$AppItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/DataUsageSummary$AppItem;)Lcom/android/settings_ex/DataUsageSummary$AppItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/datasaving/DataSavingHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/settings_ex/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7800(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J

    .prologue
    .line 289
    invoke-static {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7900(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J

    .prologue
    .line 289
    invoke-static {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->setTrafficText()V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/settings_ex/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->backFromChart()V

    return-void
.end method

.method static synthetic access$8200()Z
    .locals 1

    .prologue
    .line 289
    sget-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->isVolteProvisioned:Z

    return v0
.end method

.method static synthetic access$8300(Lcom/android/settings_ex/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8402(Lcom/android/settings_ex/DataUsageSummary;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$8500(Lcom/android/settings_ex/DataUsageSummary;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->getTimeData(II)V

    return-void
.end method

.method static synthetic access$8602(Lcom/android/settings_ex/DataUsageSummary;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mBound:Z

    return p1
.end method

.method static synthetic access$8700(Lcom/android/settings_ex/DataUsageSummary;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # [B

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setSummaryfortimedata([B)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateSavingState()V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDataCompressionSwitchView()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/DataUsageSummary;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # F

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setDonut(F)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateSavedTvState()V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->updateChartSavedTV(Z)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->updateAppSavedTVContainer(Z)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/settings_ex/DataUsageSummary;)Lcom/opera/max/sdk/saving/IStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavingServiceStateListener:Lcom/opera/max/sdk/saving/IStateListener;

    return-object v0
.end method

.method private addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subInfo"    # Landroid/telephony/SubscriptionInfo;
    .param p3, "isMultiSim"    # Z

    .prologue
    const/4 v7, 0x0

    .line 6271
    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 6272
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {p1, v4}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6273
    if-eqz p3, :cond_1

    .line 6274
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    .line 6275
    .local v1, "num":I
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subInfo.getSimSlotIndex()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->toString()Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6276
    const/4 v2, 0x0

    .line 6277
    .local v2, "simIcon":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getSimName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 6278
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mIndexNum:I

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "simIcon":Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 6279
    .restart local v2    # "simIcon":Landroid/widget/ImageView;
    invoke-static {p1, v1}, Lcom/android/settings_ex/Utils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6280
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 6281
    .local v0, "SCALE":F
    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v4, v0

    float-to-int v3, v4

    .line 6282
    .local v3, "tab_icon_padding":I
    invoke-virtual {v2, v7, v7, v3, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 6283
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6284
    iget v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mIndexNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mIndexNum:I

    .line 6293
    .end local v0    # "SCALE":F
    .end local v1    # "num":I
    .end local v2    # "simIcon":Landroid/widget/ImageView;
    .end local v3    # "tab_icon_padding":I
    :cond_0
    :goto_0
    return-void

    .line 6286
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const v6, 0x7f0e0c90

    invoke-direct {p0, v4, v6}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0
.end method

.method private backFromChart()V
    .locals 2

    .prologue
    .line 4680
    const-string v0, "wifi"

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4681
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4682
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 4685
    :cond_0
    return-void
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 2040
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 2044
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 2045
    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "titleRes"    # I

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private changeRoamingPolicyIfNeeded(I)V
    .locals 8
    .param p1, "policy"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5759
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    iget v3, v4, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    .line 5760
    .local v3, "uid":I
    const/4 v4, 0x3

    new-array v1, v4, [Lcom/android/settings_ex/DataUsageSummary$PolicySet;

    .line 5761
    .local v1, "policy_set":[Lcom/android/settings_ex/DataUsageSummary$PolicySet;
    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$PolicySet;

    const/16 v5, 0x1001

    invoke-direct {v4, p0, v6, v5}, Lcom/android/settings_ex/DataUsageSummary$PolicySet;-><init>(Lcom/android/settings_ex/DataUsageSummary;II)V

    aput-object v4, v1, v6

    .line 5762
    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$PolicySet;

    invoke-direct {v4, p0, v7, v6}, Lcom/android/settings_ex/DataUsageSummary$PolicySet;-><init>(Lcom/android/settings_ex/DataUsageSummary;II)V

    aput-object v4, v1, v7

    .line 5763
    const/4 v4, 0x2

    new-instance v5, Lcom/android/settings_ex/DataUsageSummary$PolicySet;

    invoke-direct {v5, p0, v6, v6}, Lcom/android/settings_ex/DataUsageSummary$PolicySet;-><init>(Lcom/android/settings_ex/DataUsageSummary;II)V

    aput-object v5, v1, v4

    .line 5765
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v4, v3}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v4

    and-int/lit8 v0, v4, 0x1

    .line 5766
    .local v0, "bgDataPolicy_cur":I
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getRoamingReduction(I)I

    move-result v2

    .line 5767
    .local v2, "roamingPolicy_cur":I
    aget-object v4, v1, p1

    iget v4, v4, Lcom/android/settings_ex/DataUsageSummary$PolicySet;->bgDataPolicy:I

    if-eq v0, v4, :cond_0

    .line 5768
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    aget-object v5, v1, p1

    iget v5, v5, Lcom/android/settings_ex/DataUsageSummary$PolicySet;->bgDataPolicy:I

    invoke-virtual {v4, v3, v5}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 5769
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bgDataPolicy_cur policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " setUidPolicy("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, p1

    iget v6, v6, Lcom/android/settings_ex/DataUsageSummary$PolicySet;->bgDataPolicy:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5772
    :cond_0
    const/16 v4, 0x1002

    if-eq v2, v4, :cond_1

    aget-object v4, v1, p1

    iget v4, v4, Lcom/android/settings_ex/DataUsageSummary$PolicySet;->roamingPolicy:I

    if-eq v2, v4, :cond_1

    .line 5773
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    aget-object v5, v1, p1

    iget v5, v5, Lcom/android/settings_ex/DataUsageSummary$PolicySet;->roamingPolicy:I

    invoke-virtual {v4, v3, v5}, Landroid/net/ConnectivityManager;->setRoamingReduction(II)V

    .line 5774
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "roamingPolicy_cur policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " setRoamingReduction("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, p1

    iget v6, v6, Lcom/android/settings_ex/DataUsageSummary$PolicySet;->roamingPolicy:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5777
    :cond_1
    return-void
.end method

.method public static colorToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "color"    # I

    .prologue
    .line 6634
    const-string v0, "#%06X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0xffffff

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 5472
    const-string v3, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 5473
    .local v1, "template":Landroid/net/NetworkTemplate;
    if-nez v1, :cond_1

    .line 5474
    const-string v3, "subscription"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 5476
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5494
    .end local v0    # "subId":I
    :cond_0
    :goto_0
    return-object v2

    .line 5482
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 5488
    :pswitch_1
    const-string v2, "mobile"

    goto :goto_0

    .line 5484
    :pswitch_2
    const-string v2, "3g"

    goto :goto_0

    .line 5486
    :pswitch_3
    const-string v2, "4g"

    goto :goto_0

    .line 5490
    :pswitch_4
    const-string v2, "ent1"

    goto :goto_0

    .line 5492
    :pswitch_5
    const-string v2, "wifi"

    goto :goto_0

    .line 5482
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private connectToRilService_lifetime()V
    .locals 4

    .prologue
    .line 6091
    const-string v1, "DataUsage"

    const-string v2, "connect To Secphone service"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 6092
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6093
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6094
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 6095
    return-void
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    .line 2022
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2037
    :cond_0
    :goto_0
    return-void

    .line 2027
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2029
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 2030
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 2031
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 2033
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 2034
    .local v0, "chartTransition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 2035
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 2036
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 4222
    const v8, 0x10010

    .line 4224
    .local v8, "flags":I
    sget-object v9, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 4225
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4226
    sget-object v1, Lcom/android/settings_ex/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 4228
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # J

    .prologue
    const v10, 0x3c23d70a    # 0.01f

    const/high16 v5, 0x44800000    # 1024.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 3967
    long-to-float v1, p1

    .line 3968
    .local v1, "result":F
    const v2, 0x7f0e1087

    .line 3969
    .local v2, "suffix":I
    cmpl-float v4, v1, v7

    if-lez v4, :cond_0

    .line 3970
    div-float/2addr v1, v5

    .line 3971
    cmpl-float v4, v1, v7

    if-lez v4, :cond_0

    .line 3972
    div-float/2addr v1, v5

    .line 3973
    cmpl-float v4, v1, v7

    if-lez v4, :cond_0

    .line 3974
    div-float/2addr v1, v5

    .line 3979
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_4

    .line 3980
    const-string v4, "%.2f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3989
    .local v3, "value":Ljava/lang/String;
    :goto_0
    const-string v0, ""

    .line 3990
    .local v0, "lessthan":Ljava/lang/String;
    cmpl-float v4, v1, v7

    if-lez v4, :cond_1

    cmpg-float v4, v1, v10

    if-gez v4, :cond_1

    .line 3991
    const-string v0, "<"

    .line 3993
    :cond_1
    cmpg-float v4, v1, v10

    if-gez v4, :cond_2

    .line 3994
    const-string v3, "0.01"

    .line 3996
    :cond_2
    cmpl-float v4, v1, v7

    if-nez v4, :cond_3

    const-string v3, "0.00"

    .line 3997
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e108b

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v8

    aput-object v3, v6, v9

    const/4 v7, 0x2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3981
    .end local v0    # "lessthan":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_5

    .line 3982
    const-string v4, "%.2f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 3983
    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_6

    .line 3984
    const-string v4, "%.2f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 3986
    .end local v3    # "value":Ljava/lang/String;
    :cond_6
    const-string v4, "%.0f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private static formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # J

    .prologue
    const/high16 v11, 0x44800000    # 1024.0f

    const v10, 0x3c23d70a    # 0.01f

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3935
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3936
    long-to-float v1, p1

    .line 3937
    .local v1, "result":F
    const v2, 0x7f0e1088

    .line 3938
    .local v2, "suffix":I
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "suffix: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3939
    cmpl-float v4, v1, v9

    if-lez v4, :cond_0

    .line 3940
    div-float/2addr v1, v11

    .line 3941
    cmpl-float v4, v1, v9

    if-lez v4, :cond_0

    .line 3942
    div-float/2addr v1, v11

    .line 3944
    :cond_0
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_4

    .line 3947
    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3955
    .local v3, "value":Ljava/lang/String;
    :goto_0
    const-string v0, ""

    .line 3956
    .local v0, "lessthan":Ljava/lang/String;
    cmpl-float v4, v1, v9

    if-lez v4, :cond_1

    cmpg-float v4, v1, v10

    if-gez v4, :cond_1

    .line 3957
    const-string v0, "<"

    .line 3959
    :cond_1
    cmpg-float v4, v1, v10

    if-gez v4, :cond_2

    .line 3960
    const-string v3, "0.01"

    .line 3962
    :cond_2
    cmpl-float v4, v1, v9

    if-nez v4, :cond_3

    const-string v3, "0.00"

    .line 3963
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e108b

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    aput-object v3, v6, v8

    const/4 v7, 0x2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3948
    .end local v0    # "lessthan":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_5

    .line 3949
    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 3950
    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_6

    .line 3951
    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 3953
    .end local v3    # "value":Ljava/lang/String;
    :cond_6
    const-string v4, "%.0f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4129
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 4130
    .local v2, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 4131
    .local v0, "actualSubscriberId":Ljava/lang/String;
    const-string v3, "test.subscriberid"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4133
    .local v1, "retVal":Ljava/lang/String;
    return-object v1
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 4142
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 4143
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 4145
    .local v0, "retVal":Ljava/lang/String;
    return-object v0
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 2799
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    .line 2800
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 2801
    .local v1, "uidPolicy":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSMSKeyWordValue()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6686
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary;->mSMSKeyWork:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 6687
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary;->mSMSKeyWork:Ljava/util/HashMap;

    .line 6690
    :goto_0
    return-object v0

    .line 6689
    :cond_0
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->SMSKeyWordParse()V

    .line 6690
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary;->mSMSKeyWork:Ljava/util/HashMap;

    goto :goto_0
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 6260
    const/4 v0, 0x0

    .line 6262
    .local v0, "simName":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 6263
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6268
    :goto_0
    return-object v0

    .line 6265
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "subFeature"    # Ljava/lang/String;

    .prologue
    .line 3817
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3818
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSubId(Ljava/lang/String;)I
    .locals 6
    .param p1, "currentTab"    # Ljava/lang/String;

    .prologue
    .line 6384
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 6385
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 6386
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 6387
    .local v2, "subId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6388
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6393
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "subId":Ljava/lang/Integer;
    :goto_0
    return v3

    .line 6392
    :cond_1
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentTab = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " non mobile tab called this function"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6393
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private getTimeData(II)V
    .locals 6
    .param p1, "mainOemid"    # I
    .param p2, "subOemid"    # I

    .prologue
    .line 6098
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6099
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6101
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6102
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6103
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6104
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6106
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 6107
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6112
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getOemData with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6113
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/DataUsageSummary;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 6114
    :goto_0
    return-void

    .line 6108
    :catch_0
    move-exception v2

    .line 6109
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOemData(int, int).. exception occured during operation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasReadyEnt1Radio(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5616
    const/16 v0, 0x1c

    invoke-static {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyEnterpriseNetwork(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method private static hasReadyEnterpriseNetwork(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkType"    # I

    .prologue
    .line 5626
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    .line 5627
    .local v1, "slotId":I
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 5628
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 5630
    .local v2, "tele":Landroid/telephony/TelephonyManager;
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasReadyEnterpriseNetwork(): sim state for slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSplitBillingEnabled() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isSplitBillingEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5632
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isSplitBillingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 5567
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 5568
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 5570
    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 5573
    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_0

    .line 5590
    :goto_0
    return v9

    .line 5578
    :cond_0
    const/4 v2, 0x1

    .line 5579
    .local v2, "isReady":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 5580
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v10, 0x5

    if-ne v7, v10, :cond_1

    move v7, v8

    :goto_2
    and-int/2addr v2, v7

    .line 5582
    goto :goto_1

    :cond_1
    move v7, v9

    .line 5580
    goto :goto_2

    .line 5583
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    move v3, v8

    .local v3, "retVal":Z
    :goto_3
    move v9, v3

    .line 5590
    goto :goto_0

    .end local v3    # "retVal":Z
    :cond_3
    move v3, v9

    .line 5583
    goto :goto_3
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5601
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 5602
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 5603
    .local v4, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    .line 5604
    .local v3, "slotId":I
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    move v1, v5

    .line 5606
    .local v1, "isReady":Z
    :goto_0
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v1, :cond_1

    move v2, v5

    .line 5610
    .local v2, "retVal":Z
    :goto_1
    return v2

    .end local v1    # "isReady":Z
    .end local v2    # "retVal":Z
    :cond_0
    move v1, v6

    .line 5604
    goto :goto_0

    .restart local v1    # "isReady":Z
    :cond_1
    move v2, v6

    .line 5606
    goto :goto_1
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5666
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 5667
    .local v0, "conn":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateDropDownPreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 7
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "spinner"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 5731
    const v5, 0x7f040171

    invoke-virtual {p0, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 5732
    .local v3, "view":Landroid/view/View;
    const v5, 0x1020018

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 5734
    .local v4, "widgetFrame":Landroid/widget/LinearLayout;
    move-object v1, p2

    .local v1, "mSpinner":Landroid/view/View;
    move-object v2, v3

    .line 5735
    check-cast v2, Landroid/view/ViewGroup;

    .line 5736
    .local v2, "vg":Landroid/view/ViewGroup;
    const v5, 0x7f020289

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5737
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5738
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5739
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5740
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5741
    new-instance v5, Lcom/android/settings_ex/DataUsageSummary$40;

    invoke-direct {v5, v1}, Lcom/android/settings_ex/DataUsageSummary$40;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5747
    return-object v3
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 5713
    const v2, 0x7f040171

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 5714
    .local v0, "view":Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 5716
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5717
    const v2, 0x7f020289

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5718
    return-object v0
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "widget"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    .line 5703
    const v2, 0x7f040171

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 5704
    .local v0, "view":Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 5706
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5707
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5708
    const v2, 0x7f020289

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5709
    return-object v0
.end method

.method private initDonutLayout(Landroid/view/View;Landroid/content/Context;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 6401
    const-string v6, "DataUsage/LPF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initDonutLayout() orientation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6403
    const v6, 0x7f0d01b8

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mPieChartInfoLayout_land:Landroid/view/View;

    .line 6404
    const v6, 0x7f0d01bf

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mRelativeLayoutRaminfo_land:Landroid/view/View;

    .line 6405
    const v6, 0x7f0d01bd

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDividerView_land:Landroid/view/View;

    .line 6406
    const v6, 0x7f0d01be

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    .line 6407
    const v6, 0x7f0d01bc

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mRamFreePercent_land:Landroid/widget/TextView;

    .line 6408
    const v6, 0x7f0d01c3

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mRamFree_land:Landroid/widget/TextView;

    .line 6409
    const v6, 0x7f0d01c4

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mVertifyTraffic_land:Landroid/widget/Button;

    .line 6410
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mVertifyTraffic_land:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mEnterChartListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6411
    const v6, 0x7f0d01c1

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mOccupiedRam_land:Landroid/widget/TextView;

    .line 6412
    const v6, 0x7f0d01c5

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mtvTotalRam_land:Landroid/widget/TextView;

    .line 6413
    const v6, 0x7f0d01c0

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsedText_land:Landroid/widget/TextView;

    .line 6414
    const v6, 0x7f0d01b9

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDonut_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    .line 6416
    const v6, 0x7f0d01a6

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mPieChartInfoLayout:Landroid/view/View;

    .line 6417
    const v6, 0x7f0d01b1

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mRelativeLayoutRaminfo:Landroid/view/View;

    .line 6418
    const v6, 0x7f0d01ab

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDividerView:Landroid/view/View;

    .line 6419
    const v6, 0x7f0d01ac

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mUseDataTotalPercent:Landroid/widget/TextView;

    .line 6420
    const v6, 0x7f0d01aa

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mRamFreePercent:Landroid/widget/TextView;

    .line 6422
    const v6, 0x7f0d01b5

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mRamFree:Landroid/widget/TextView;

    .line 6423
    const v6, 0x7f0d01b6

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mVertifyTraffic:Landroid/widget/Button;

    .line 6424
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mVertifyTraffic:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mEnterChartListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6425
    const v6, 0x7f0d01b3

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mOccupiedRam:Landroid/widget/TextView;

    .line 6427
    const v6, 0x7f0d01b7

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mtvTotalRam:Landroid/widget/TextView;

    .line 6428
    const v6, 0x7f0d01b2

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsedText:Landroid/widget/TextView;

    .line 6429
    const v6, 0x7f0d01ae

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mCleaningProgress:Landroid/widget/ProgressBar;

    .line 6430
    const v6, 0x7f0d01b0

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mTickImage:Landroid/widget/ImageView;

    .line 6431
    const v6, 0x7f0d01af

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mTickImageBg:Landroid/widget/ImageView;

    .line 6432
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    .line 6435
    iget-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz v6, :cond_0

    .line 6436
    const v6, 0x7f0d01b4

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedTV:Landroid/widget/TextView;

    .line 6437
    const v6, 0x7f0d01a8

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    .line 6438
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v8, 0x7f0c0417

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v9, 0x7f0c0417

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings_ex/datasaving/SavedDataCircleView;->setCircleCenter(FF)V

    .line 6439
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v8, 0x7f0c0444

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/datasaving/SavedDataCircleView;->setStrokeWidth(F)V

    .line 6440
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v8, 0x7f0a0154

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/datasaving/SavedDataCircleView;->setPaintColor(I)V

    .line 6441
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v8, 0x7f0c0445

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/datasaving/SavedDataCircleView;->setRadius(F)V

    .line 6443
    const v6, 0x7f0d01c2

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedTVLand:Landroid/widget/TextView;

    .line 6444
    const v6, 0x7f0d01ba

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    .line 6445
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v8, 0x7f0c0417

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v9, 0x7f0c0417

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings_ex/datasaving/SavedDataCircleView;->setCircleCenter(FF)V

    .line 6446
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v8, 0x7f0c0444

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/datasaving/SavedDataCircleView;->setStrokeWidth(F)V

    .line 6447
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v8, 0x7f0a0154

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/datasaving/SavedDataCircleView;->setPaintColor(I)V

    .line 6448
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v8, 0x7f0c0445

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/datasaving/SavedDataCircleView;->setRadius(F)V

    .line 6451
    :cond_0
    const v6, 0x7f0d01a7

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDonut:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    .line 6452
    const v6, 0x7f0d01c9

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 6453
    const v6, 0x7f0d01ca

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoCalibration:Landroid/widget/Button;

    .line 6454
    const v6, 0x7f0d01cb

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mManualCalibration:Landroid/widget/Button;

    .line 6456
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->SMSKeyWordParse()V

    .line 6457
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v6

    if-lez v6, :cond_3

    .line 6458
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setVisibility(I)V

    .line 6459
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mRelativeLayoutRaminfo:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6460
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mRelativeLayoutRaminfo_land:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6461
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mRamFreePercent:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6462
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mRamFreePercent_land:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6463
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mRamFree:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6464
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mRamFree_land:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6465
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsedText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6466
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsedText_land:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6467
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 6468
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mPieChartInfoLayout_land:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6472
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v7, 0x7f0c0417

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 6473
    .local v4, "radius":I
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDonut:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v4}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDonut(III)V

    .line 6474
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDonut_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v4}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDonut(III)V

    .line 6475
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c041d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 6478
    .local v1, "donutLayoutHeight":I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 6480
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 6481
    .local v0, "display":Landroid/view/Display;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 6482
    .local v5, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 6483
    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0416

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sub-int v2, v6, v7

    .line 6490
    .end local v0    # "display":Landroid/view/Display;
    .end local v5    # "size":Landroid/graphics/Point;
    .local v2, "donutLayoutWidth":I
    :goto_1
    const-string v6, "DataUsage/LPF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "donutLayoutWidth:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "donutLayoutHeight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6491
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDonut:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v6, v1, v1}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setLayoutDimension(II)V

    .line 6492
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDonut_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v6, v1, v1}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setLayoutDimension(II)V

    .line 6493
    const/4 v3, 0x0

    .line 6494
    .local v3, "mIsDirectionRTL":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    const/4 v3, 0x1

    .line 6496
    :goto_2
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDonut:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v6, v3}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDirectionRTL(Z)V

    .line 6497
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDonut_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v6, v3}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDirectionRTL(Z)V

    .line 6498
    new-instance v6, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    invoke-direct {v6, v7, p2}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;-><init>(Lcom/android/settings_ex/net/ChartData;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    .line 6504
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v6, :cond_7

    .line 6505
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v6}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    .line 6509
    :goto_3
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    if-eqz v6, :cond_1

    .line 6510
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v6}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings_ex/DataUsageSummary;->setColorOnStatus(F)V

    .line 6512
    const/high16 v6, 0x42c80000    # 100.0f

    invoke-direct {p0, v6}, Lcom/android/settings_ex/DataUsageSummary;->setDonut(F)V

    .line 6514
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mBottomLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6515
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v6

    if-nez v6, :cond_2

    .line 6516
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoCalibration:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 6517
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mManualCalibration:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 6519
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoCalibration:Landroid/widget/Button;

    const v7, 0x7f0e16f7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 6520
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoCalibration:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mVertifyTrafficListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6521
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mManualCalibration:Landroid/widget/Button;

    const v7, 0x7f0e16f8

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 6522
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mManualCalibration:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mVertifyTrafficListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6523
    sget v6, Lcom/android/settings_ex/trafficmanager/settings/SMSCatchReceiver;->simCardStatus:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 6524
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAutoCalibration:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6525
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mManualCalibration:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6528
    .end local v1    # "donutLayoutHeight":I
    .end local v2    # "donutLayoutWidth":I
    .end local v3    # "mIsDirectionRTL":Z
    .end local v4    # "radius":I
    :cond_3
    return-void

    .line 6470
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mPieChartInfoLayout:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 6486
    .restart local v1    # "donutLayoutHeight":I
    .restart local v4    # "radius":I
    :cond_5
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0419

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0416

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .restart local v2    # "donutLayoutWidth":I
    goto/16 :goto_1

    .line 6494
    .restart local v3    # "mIsDirectionRTL":Z
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 6507
    :cond_7
    const-string v6, "DataUsage/LPF"

    const-string v7, "mChartData is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private initMobileTabTag(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6367
    .local p1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v1, 0x0

    .line 6368
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 6370
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6371
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 6372
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6373
    .local v2, "mobileTag":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6376
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "mobileTag":Ljava/lang/String;
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    return-object v1
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .param p0, "view"    # Landroid/widget/ListView;
    .param p1, "insetSide"    # I

    .prologue
    .line 5841
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5842
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5846
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 5847
    .local v2, "stub":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 5848
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 5850
    new-instance v3, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 5851
    new-instance v3, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 5852
    return-void
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 6155
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 6156
    .local v0, "req":Landroid/os/Bundle;
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 6158
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 6159
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mlifetimeMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 6162
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 6163
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 6168
    :goto_0
    return-void

    .line 6165
    :cond_0
    const-string v1, "DataUsage"

    const-string v2, "mServiceMessenger is null. Do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6166
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 2381
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 2751
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2754
    :goto_0
    return v1

    .line 2752
    :catch_0
    move-exception v0

    .line 2753
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMobileDataAvailable(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 6397
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 1

    .prologue
    .line 2685
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2687
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2689
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isMobilePolicySplit()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4110
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 4111
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4112
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 4113
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v2

    .line 4115
    .end local v1    # "tele":Landroid/telephony/TelephonyManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isMobileTab(Ljava/lang/String;)Z
    .locals 1
    .param p0, "currentTab"    # Ljava/lang/String;

    .prologue
    .line 6380
    if-eqz p0, :cond_0

    const-string v0, "mobile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 2745
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoamingArea()Z
    .locals 2

    .prologue
    .line 6052
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6053
    const-string v0, "oversea"

    const-string v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 6055
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportOnDeviceHelp()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1826
    const/4 v1, 0x0

    .line 1828
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1832
    :goto_0
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 1829
    :catch_0
    move-exception v0

    .line 1830
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private multiSimGetCurrentSub()I
    .locals 5

    .prologue
    .line 6249
    const/4 v0, -0x1

    .line 6250
    .local v0, "slotId":I
    const/4 v1, -0x1

    .line 6251
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "mobile"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 6252
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v3, "mobile"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 6253
    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getSlotId(I)I

    move-result v0

    .line 6255
    :cond_0
    const-string v2, "DataUsage/LPF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multiSimGetCurrentSub, subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6257
    return v0
.end method

.method private static removePreferenceSummary(Landroid/view/View;)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;

    .prologue
    .line 5893
    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5894
    .local v0, "summary":Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5895
    return-void
.end method

.method private resetTimeData(I)V
    .locals 7
    .param p1, "value"    # I

    .prologue
    const/16 v6, 0xb

    .line 6117
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6118
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6120
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v3, 0x51

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6121
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6122
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6123
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6124
    if-nez p1, :cond_0

    .line 6125
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6130
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 6131
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6135
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " resetTimeData with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6136
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/DataUsageSummary;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 6137
    :goto_1
    return-void

    .line 6127
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6132
    :catch_0
    move-exception v2

    .line 6133
    .local v2, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 2806
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    .line 2807
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 2809
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2810
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2811
    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/DataUsageSummary;->storeUserBackgroundSet(IZ)V

    .line 2813
    :cond_0
    return-void

    .line 2807
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setColorOnStatus(F)V
    .locals 3
    .param p1, "percentage"    # F

    .prologue
    const/4 v2, 0x0

    .line 6558
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6589
    :goto_0
    return-void

    .line 6563
    :cond_0
    cmpg-float v1, p1, v2

    if-gtz v1, :cond_1

    .line 6564
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0a013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 6579
    .local v0, "colorSet":I
    :goto_1
    iput v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mGraphOccupiedColor:I

    .line 6580
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0a0140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mGraphFreeColor:I

    .line 6581
    iput v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mGraphLineColor:I

    .line 6582
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mRamFreePercent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6584
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mRamFreePercent_land:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6586
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6587
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsedText_land:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6588
    iput v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mGraphLineColor:I

    goto :goto_0

    .line 6565
    .end local v0    # "colorSet":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getWarningValue()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getWarningValue()F

    move-result v1

    sub-float v1, p1, v1

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 6566
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0a013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "colorSet":I
    goto :goto_1

    .line 6568
    .end local v0    # "colorSet":I
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0a0139

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "colorSet":I
    goto :goto_1
.end method

.method private setDonut(F)V
    .locals 10
    .param p1, "percentage"    # F

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v6, 0x0

    .line 6533
    const-string v3, "DataUsage/LPF"

    const-string v4, "setDonut()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6534
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6556
    :goto_0
    return-void

    .line 6537
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6538
    .local v1, "pieInfoArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;>;"
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 6539
    .local v2, "position":[I
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 6540
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsedText_land:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 6541
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mResInstance:Landroid/content/res/Resources;

    const v5, 0x7f0c0428

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 6544
    .local v0, "lineFreeY":I
    new-instance v3, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    const/high16 v4, 0x42c80000    # 100.0f

    sub-float/2addr v4, p1

    iget v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mGraphOccupiedColor:I

    invoke-static {v5}, Lcom/android/settings_ex/DataUsageSummary;->colorToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;-><init>(FLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6546
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    .line 6547
    new-instance v3, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    iget v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mGraphFreeColor:I

    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->colorToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;-><init>(FLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6551
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDonut:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iget v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mGraphLineColor:I

    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->colorToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setPie(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 6552
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDonut:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v3, v6, v8, v9}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->detail(ZJ)V

    .line 6553
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDonut_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iget v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mGraphLineColor:I

    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->colorToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setPie(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 6554
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDonut_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v3, v6, v8, v9}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->detail(ZJ)V

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2695
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 2696
    if-eqz p1, :cond_0

    .line 2697
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const-string v4, "MDES"

    const/16 v5, 0x3e8

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2703
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 2708
    .local v0, "value":I
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 2709
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    .line 2710
    return-void

    .line 2699
    .end local v0    # "value":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const-string v4, "MDES"

    invoke-static {v2, v3, v4, v1}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2703
    goto :goto_1
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .param p1, "limitBytes"    # J

    .prologue
    .line 2672
    const-string v0, "DataUsage/LPF"

    const-string v1, "setPolicyLimitBytes()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 2675
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    .line 2676
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .param p1, "warningBytes"    # J

    .prologue
    .line 2667
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 2668
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    .line 2669
    return-void
.end method

.method private static setPreferenceDisable(Landroid/view/View;Z)V
    .locals 3
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "enable"    # Z

    .prologue
    .line 5864
    const v2, 0x1020016

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5865
    .local v0, "title":Landroid/widget/TextView;
    const v2, 0x1020018

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 5867
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5868
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 5869
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "string"    # Ljava/lang/CharSequence;

    .prologue
    .line 5887
    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5888
    .local v0, "summary":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5889
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5890
    return-void
.end method

.method private static setPreferenceSummaryColor(Landroid/view/View;Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 5
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "tf"    # Ljava/lang/Boolean;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 5897
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 5898
    const v2, 0x1020010

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5899
    .local v1, "summary":Landroid/widget/TextView;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 5900
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010434

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 5901
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez v2, :cond_0

    .line 5902
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5904
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local v1    # "summary":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "resId"    # I

    .prologue
    .line 5859
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5860
    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 5861
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "preferenceTitle"    # Ljava/lang/String;

    .prologue
    .line 5878
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5879
    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5880
    return-void
.end method

.method private static setPreferenceTitle(ZLandroid/view/View;I)V
    .locals 2
    .param p0, "tabChanged"    # Z
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    .line 5872
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5873
    .local v0, "title":Landroid/widget/TextView;
    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/settings_ex/DataUsageSummary;->mAttDeviceHealthEnabled:Z

    if-eqz v1, :cond_1

    .line 5874
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 5875
    :cond_1
    return-void
.end method

.method private setSummaryfortimedata([B)V
    .locals 14
    .param p1, "data"    # [B

    .prologue
    const-wide/16 v12, 0x0

    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x4

    .line 6215
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v9}, Lcom/android/settings_ex/DataUsageSummary;->byteToLong([BII)J

    move-result-wide v0

    .line 6216
    .local v0, "rx":J
    invoke-virtual {p0, p1, v9, v10}, Lcom/android/settings_ex/DataUsageSummary;->byteToLong([BII)J

    move-result-wide v6

    .line 6217
    .local v6, "tx":J
    invoke-virtual {p0, p1, v10, v11}, Lcom/android/settings_ex/DataUsageSummary;->byteToLong([BII)J

    move-result-wide v2

    .line 6218
    .local v2, "total_rx":J
    const/16 v8, 0x18

    invoke-virtual {p0, p1, v11, v8}, Lcom/android/settings_ex/DataUsageSummary;->byteToLong([BII)J

    move-result-wide v4

    .line 6219
    .local v4, "total_tx":J
    const-string v8, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSummaryfortimedata :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6220
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 6221
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 6222
    cmp-long v8, v2, v12

    if-lez v8, :cond_0

    cmp-long v8, v4, v12

    if-lez v8, :cond_0

    .line 6223
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    add-long v10, v2, v4

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 6225
    :cond_0
    return-void
.end method

.method private setTrafficText()V
    .locals 7

    .prologue
    const v3, 0x7f0e1082

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 6591
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6632
    :goto_0
    return-void

    .line 6595
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mtvTotalRam:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6596
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mtvTotalRam:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6597
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mtvTotalRam_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6598
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mtvTotalRam_land:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6603
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mRamFreePercent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getUsedTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6604
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mRamFreePercent_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getUsedTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6605
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6606
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUseDataTotalPercent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6607
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUseDataTotalPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6608
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6609
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6610
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6611
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDividerView_land:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6620
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getIsExceed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6621
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsedText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e16d1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6622
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsedText_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e16d1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6630
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mRamFree:Landroid/widget/TextView;

    const v1, 0x7f0e16cf

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getTodayused()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6631
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mRamFree_land:Landroid/widget/TextView;

    const v1, 0x7f0e16cf

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getTodayused()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 6613
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUseDataTotalPercent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6614
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUseDataTotalPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6615
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6616
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6617
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6618
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDividerView_land:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 6623
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getIsExceed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6624
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsedText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e16d0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6625
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsedText_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e16d0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 6626
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6627
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsedText:Landroid/widget/TextView;

    const v1, 0x7f0e16fa

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6628
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUsedText_land:Landroid/widget/TextView;

    const v1, 0x7f0e16fa

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private showRequestedAppIfNeeded(Landroid/view/View;)V
    .locals 10
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    .line 1404
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 1425
    :goto_0
    return-void

    .line 1408
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v4

    .line 1410
    .local v4, "uid":I
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    invoke-direct {v0, v4}, Lcom/android/settings_ex/DataUsageSummary$AppItem;-><init>(I)V

    .line 1411
    .local v0, "app":Lcom/android/settings_ex/DataUsageSummary$AppItem;
    invoke-virtual {v0, v4}, Lcom/android/settings_ex/DataUsageSummary$AppItem;->addUid(I)V

    .line 1413
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    iget v6, v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/settings_ex/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings_ex/net/UidDetail;

    move-result-object v1

    .line 1416
    .local v1, "detail":Lcom/android/settings_ex/net/UidDetail;
    const v5, 0x7f0d01c8

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 1417
    .local v3, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, v1, Lcom/android/settings_ex/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v7, v1, Lcom/android/settings_ex/net/UidDetail;->label:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8, v3}, Lcom/android/settings_ex/AppHeader;->createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/view/ViewGroup;)V

    .line 1418
    iget-object v5, v1, Lcom/android/settings_ex/net/UidDetail;->label:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {p0, v0, v5, v6}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->show(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/DataUsageSummary$AppItem;Ljava/lang/CharSequence;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1419
    .end local v0    # "app":Lcom/android/settings_ex/DataUsageSummary$AppItem;
    .end local v1    # "detail":Lcom/android/settings_ex/net/UidDetail;
    .end local v3    # "pinnedHeader":Landroid/widget/FrameLayout;
    .end local v4    # "uid":I
    :catch_0
    move-exception v2

    .line 1420
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "DataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1421
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0e0efc

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1423
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private storeUserBackgroundSet(IZ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "restrictBackground"    # Z

    .prologue
    .line 2816
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2817
    .local v3, "userRestrictUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_restrict_background_uidlist"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2818
    .local v4, "userRestrictUidsString":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 2819
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2820
    .local v1, "uidArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_1

    .line 2821
    const-string v5, ""

    aget-object v6, v1, v0

    if-eq v5, v6, :cond_0

    .line 2822
    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2820
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2826
    .end local v0    # "i":I
    .end local v1    # "uidArray":[Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2827
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2832
    :cond_2
    :goto_1
    const-string v4, ""

    .line 2833
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 2834
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2833
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2828
    .end local v0    # "i":I
    :cond_3
    if-nez p2, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2829
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 2830
    .local v2, "uidInteger":Ljava/lang/Integer;
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2836
    .end local v2    # "uidInteger":Ljava/lang/Integer;
    .restart local v0    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_restrict_background_uidlist"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2837
    return-void
.end method

.method private updateAppDetail()V
    .locals 38

    .prologue
    .line 2389
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 2390
    .local v9, "context":Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    .line 2391
    .local v28, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v18

    .line 2393
    .local v18, "inflater":Landroid/view/LayoutInflater;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v35

    if-eqz v35, :cond_2

    .line 2395
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v35

    if-eqz v35, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v35

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPieChartInfoLayout:Landroid/view/View;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPieChartInfoLayout_land:Landroid/view/View;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    .line 2396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPieChartInfoLayout:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 2397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPieChartInfoLayout_land:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 2398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v35

    if-nez v35, :cond_0

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSwitch:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2403
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 2404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 2408
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1

    .line 2409
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->updateAppSavedTVContainer(Z)V

    .line 2501
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 2504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    move/from16 v33, v0

    .line 2505
    .local v33, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v33

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings_ex/net/UidDetail;

    move-result-object v14

    .line 2506
    .local v14, "detail":Lcom/android/settings_ex/net/UidDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v35, v0

    iget-object v0, v14, Lcom/android/settings_ex/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2510
    const/16 v32, 0x0

    .line 2511
    .local v32, "title":Landroid/view/View;
    iget-object v0, v14, Lcom/android/settings_ex/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    if-eqz v35, :cond_14

    .line 2512
    iget-object v0, v14, Lcom/android/settings_ex/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v25, v0

    .line 2513
    .local v25, "n":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_15

    .line 2514
    iget-object v0, v14, Lcom/android/settings_ex/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    aget-object v20, v35, v16

    .line 2515
    .local v20, "label":Ljava/lang/CharSequence;
    iget-object v0, v14, Lcom/android/settings_ex/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    aget-object v8, v35, v16

    .line 2516
    .local v8, "contentDescription":Ljava/lang/CharSequence;
    const v35, 0x7f040093

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v35

    move-object/from16 v2, v36

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v32

    .line 2517
    const v35, 0x7f0d0188

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2518
    .local v6, "appTitle":Landroid/widget/TextView;
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2519
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2513
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 2413
    .end local v6    # "appTitle":Landroid/widget/TextView;
    .end local v8    # "contentDescription":Ljava/lang/CharSequence;
    .end local v14    # "detail":Lcom/android/settings_ex/net/UidDetail;
    .end local v16    # "i":I
    .end local v20    # "label":Ljava/lang/CharSequence;
    .end local v25    # "n":I
    .end local v32    # "title":Landroid/view/View;
    .end local v33    # "uid":I
    :cond_2
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v35

    if-eqz v35, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPieChartInfoLayout:Landroid/view/View;

    move-object/from16 v35, v0

    if-eqz v35, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPieChartInfoLayout_land:Landroid/view/View;

    move-object/from16 v35, v0

    if-eqz v35, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-object/from16 v35, v0

    if-eqz v35, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mBottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    if-eqz v35, :cond_5

    .line 2415
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsChartFragment:Z

    move/from16 v35, v0

    if-nez v35, :cond_3

    const-string v35, "wifi"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_8

    .line 2416
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPieChartInfoLayout:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 2417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPieChartInfoLayout_land:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 2418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setVisibility(I)V

    .line 2419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v35

    if-nez v35, :cond_4

    .line 2420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSwitch:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2422
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mBottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2488
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 2489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 2490
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v35

    if-eqz v35, :cond_6

    .line 2491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 2496
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 2663
    :cond_7
    :goto_2
    return-void

    .line 2424
    :cond_8
    const-string v35, "DataUsage/LPF"

    const-string v36, "Normal mode"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    move-object/from16 v35, v0

    if-eqz v35, :cond_12

    .line 2426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->setSimSlot(I)V

    .line 2427
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v35

    if-eqz v35, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_a

    .line 2428
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v36

    const/16 v37, 0x0

    aget v36, v36, v37

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->setSubId(I)V

    .line 2430
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->setChartData(Lcom/android/settings_ex/net/ChartData;)V

    .line 2431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    .line 2433
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z

    move/from16 v35, v0

    if-eqz v35, :cond_b

    .line 2434
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateSavedTvState()V

    .line 2435
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateSavedDataCircleView()V

    .line 2436
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsChartFragment:Z

    move/from16 v35, v0

    if-eqz v35, :cond_b

    .line 2437
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->updateChartSavedTV(Z)V

    .line 2440
    :cond_b
    new-instance v35, Landroid/text/format/Time;

    invoke-direct/range {v35 .. v35}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v35

    iget-object v12, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2442
    .local v12, "cycleTimezone":Ljava/lang/String;
    :try_start_0
    sget-boolean v35, Lcom/android/settings_ex/DataUsageSummary;->isFromTrafficStings:Z

    if-eqz v35, :cond_d

    .line 2443
    const-string v35, "DataUsage/LPF"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "isFromTrafficStings:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-boolean v37, Lcom/android/settings_ex/DataUsageSummary;->isFromTrafficStings:Z

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-object/from16 v35, v0

    if-eqz v35, :cond_c

    .line 2445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getStartDay()I

    move-result v37

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 2446
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    .line 2448
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getIsMonitorOn()Z

    move-result v35

    if-eqz v35, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getIsBlockData()Z

    move-result v35

    if-eqz v35, :cond_10

    .line 2449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getlimiValue()J

    move-result-wide v36

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V

    .line 2453
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getIsMonitorOn()Z

    move-result v35

    if-eqz v35, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getWarningValue()F

    move-result v35

    const/high16 v36, -0x40800000    # -1.0f

    cmpl-float v35, v35, v36

    if-lez v35, :cond_11

    .line 2454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getWarningByte()J

    move-result-wide v36

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->setPolicyWarningBytes(J)V

    .line 2458
    :goto_4
    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/settings_ex/DataUsageSummary;->isFromTrafficStings:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2465
    .end local v12    # "cycleTimezone":Ljava/lang/String;
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    if-eqz v35, :cond_e

    .line 2467
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->setColorOnStatus(F)V

    .line 2468
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->setTrafficText()V

    .line 2469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->setDonut(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2474
    :cond_e
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_13

    .line 2475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPieChartInfoLayout_land:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 2479
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setVisibility(I)V

    .line 2480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v35

    if-eqz v35, :cond_f

    .line 2481
    const-string v35, "DataUsage/LPF"

    const-string v36, "remove the mCycleView"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSwitch:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2484
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mBottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 2451
    .restart local v12    # "cycleTimezone":Ljava/lang/String;
    :cond_10
    const-wide/16 v36, -0x1

    :try_start_2
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V

    goto/16 :goto_3

    .line 2460
    :catch_0
    move-exception v35

    goto/16 :goto_5

    .line 2456
    :cond_11
    const-wide/16 v36, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->setPolicyWarningBytes(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 2463
    .end local v12    # "cycleTimezone":Ljava/lang/String;
    :cond_12
    const-string v35, "DataUsage/LPF"

    const-string v36, "mChartData11 is null"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2470
    :catch_1
    move-exception v15

    .line 2471
    .local v15, "e":Ljava/lang/Exception;
    const-string v35, "DataUsage/LPF"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Exception :"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2477
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPieChartInfoLayout:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 2523
    .restart local v14    # "detail":Lcom/android/settings_ex/net/UidDetail;
    .restart local v32    # "title":Landroid/view/View;
    .restart local v33    # "uid":I
    :cond_14
    const v35, 0x7f040093

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v35

    move-object/from16 v2, v36

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v32

    .line 2524
    const v35, 0x7f0d0188

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2525
    .restart local v6    # "appTitle":Landroid/widget/TextView;
    iget-object v0, v14, Lcom/android/settings_ex/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2526
    iget-object v0, v14, Lcom/android/settings_ex/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2531
    .end local v6    # "appTitle":Landroid/widget/TextView;
    :cond_15
    if-eqz v32, :cond_19

    .line 2532
    const v35, 0x7f0d0189

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    .line 2538
    :goto_8
    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v27

    .line 2539
    .local v27, "packageNames":[Ljava/lang/String;
    if-eqz v27, :cond_1b

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v35, v0

    if-lez v35, :cond_1b

    .line 2540
    new-instance v35, Landroid/content/Intent;

    const-string v36, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct/range {v35 .. v36}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 2541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v35, v0

    const-string v36, "android.intent.category.DEFAULT"

    invoke-virtual/range {v35 .. v36}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2544
    const/16 v24, 0x0

    .line 2545
    .local v24, "matchFound":Z
    move-object/from16 v7, v27

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_9
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_16

    aget-object v26, v7, v17

    .line 2546
    .local v26, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v35

    if-eqz v35, :cond_1a

    .line 2548
    const/16 v24, 0x1

    .line 2553
    .end local v26    # "packageName":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v35, v0

    new-instance v36, Lcom/android/settings_ex/DataUsageSummary$15;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary$15;-><init>(Lcom/android/settings_ex/DataUsageSummary;I)V

    invoke-virtual/range {v35 .. v36}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/Button;->setVisibility(I)V

    .line 2583
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v21    # "len$":I
    .end local v24    # "matchFound":Z
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    .line 2585
    const/16 v31, 0x0

    .line 2586
    .local v31, "support_uds":Z
    const/16 v34, 0x1

    .line 2587
    .local v34, "unhide_for_uds":Z
    const/16 v19, 0x0

    .line 2589
    .local v19, "isUDSEnable":Z
    const-string v35, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string v36, "UDS"

    invoke-static/range {v35 .. v36}, Lcom/android/settings_ex/DataUsageSummary;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_17

    .line 2590
    const/16 v31, 0x1

    .line 2591
    const/16 v34, 0x0

    .line 2592
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "udsState"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1c

    const/16 v19, 0x1

    .line 2593
    :goto_b
    if-nez v19, :cond_17

    .line 2594
    const/16 v34, 0x1

    .line 2597
    :cond_17
    if-eqz v31, :cond_1f

    if-eqz v19, :cond_1f

    .line 2598
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "UDS_Package_names"

    invoke-static/range {v35 .. v36}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2599
    .local v5, "active_app_list":Ljava/lang/String;
    const/16 v23, 0x0

    .line 2600
    .local v23, "mActiveAppsNum":I
    const/4 v10, 0x0

    .line 2601
    .local v10, "convertPackageString":Ljava/lang/String;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2605
    .local v22, "mActiveAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v35, ","

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2608
    .local v4, "activeApps":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v23, v0

    .line 2610
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_c
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_1d

    .line 2611
    aget-object v10, v4, v16

    .line 2612
    if-eqz v10, :cond_18

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_18

    const-string v35, "empty"

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_18

    .line 2613
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2614
    const-string v35, "DataUsage"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "mActiveAppList :  "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    :cond_18
    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    .line 2534
    .end local v4    # "activeApps":[Ljava/lang/String;
    .end local v5    # "active_app_list":Ljava/lang/String;
    .end local v10    # "convertPackageString":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v19    # "isUDSEnable":Z
    .end local v22    # "mActiveAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "mActiveAppsNum":I
    .end local v27    # "packageNames":[Ljava/lang/String;
    .end local v31    # "support_uds":Z
    .end local v34    # "unhide_for_uds":Z
    :cond_19
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    goto/16 :goto_8

    .line 2545
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v17    # "i$":I
    .restart local v21    # "len$":I
    .restart local v24    # "matchFound":Z
    .restart local v26    # "packageName":Ljava/lang/String;
    .restart local v27    # "packageNames":[Ljava/lang/String;
    :cond_1a
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_9

    .line 2578
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v21    # "len$":I
    .end local v24    # "matchFound":Z
    .end local v26    # "packageName":Ljava/lang/String;
    :cond_1b
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 2579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_a

    .line 2592
    .restart local v19    # "isUDSEnable":Z
    .restart local v31    # "support_uds":Z
    .restart local v34    # "unhide_for_uds":Z
    :cond_1c
    const/16 v19, 0x0

    goto/16 :goto_b

    .line 2618
    .restart local v4    # "activeApps":[Ljava/lang/String;
    .restart local v5    # "active_app_list":Ljava/lang/String;
    .restart local v10    # "convertPackageString":Ljava/lang/String;
    .restart local v16    # "i":I
    .restart local v22    # "mActiveAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23    # "mActiveAppsNum":I
    :cond_1d
    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v11

    .line 2619
    .local v11, "currentPackageNames":[Ljava/lang/String;
    if-eqz v11, :cond_1f

    array-length v0, v11

    move/from16 v35, v0

    if-lez v35, :cond_1f

    .line 2620
    const/16 v16, 0x0

    :goto_d
    array-length v0, v11

    move/from16 v35, v0

    move/from16 v0, v16

    move/from16 v1, v35

    if-ge v0, v1, :cond_1f

    .line 2621
    aget-object v35, v11, v16

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1e

    .line 2622
    const/16 v34, 0x1

    .line 2620
    :cond_1e
    add-int/lit8 v16, v16, 0x1

    goto :goto_d

    .line 2627
    .end local v4    # "activeApps":[Ljava/lang/String;
    .end local v5    # "active_app_list":Ljava/lang/String;
    .end local v10    # "convertPackageString":Ljava/lang/String;
    .end local v11    # "currentPackageNames":[Ljava/lang/String;
    .end local v16    # "i":I
    .end local v22    # "mActiveAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "mActiveAppsNum":I
    :cond_1f
    invoke-static {}, Lcom/android/settings_ex/Utils;->getAppDataRestrictionType()I

    move-result v35

    if-nez v35, :cond_23

    invoke-static/range {v33 .. v33}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v35

    if-eqz v35, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v35

    if-nez v35, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v35

    if-eqz v35, :cond_23

    invoke-static {v9}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_23

    if-eqz v34, :cond_23

    .line 2629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f0e0c9d

    invoke-static/range {v35 .. v36}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 2631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 2632
    sget-boolean v35, Lcom/android/settings_ex/DataUsageSummary;->bSupportRoamingReduction:Z

    if-eqz v35, :cond_22

    .line 2633
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v13

    .line 2634
    .local v13, "dataPolicy":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getRoamingReduction(I)I

    move-result v29

    .line 2635
    .local v29, "roamPolicy":I
    const/16 v30, 0x0

    .line 2636
    .local v30, "selection":I
    const-string v35, "DataUsage"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "updateAppDetail()  bg_policy : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    if-eqz v13, :cond_20

    .line 2638
    const/16 v30, 0x1

    .line 2644
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrcitSpinner:Landroid/widget/Spinner;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2660
    .end local v13    # "dataPolicy":Z
    .end local v29    # "roamPolicy":I
    .end local v30    # "selection":I
    :goto_f
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v35

    if-eqz v35, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v35

    if-eqz v35, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v35

    if-nez v35, :cond_7

    .line 2661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 2640
    .restart local v13    # "dataPolicy":Z
    .restart local v29    # "roamPolicy":I
    .restart local v30    # "selection":I
    :cond_20
    if-nez v29, :cond_21

    .line 2641
    const/16 v30, 0x2

    goto :goto_e

    .line 2642
    :cond_21
    const/16 v30, 0x0

    goto :goto_e

    .line 2646
    .end local v13    # "dataPolicy":Z
    .end local v29    # "roamPolicy":I
    .end local v30    # "selection":I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    move-object/from16 v35, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_f

    .line 2658
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f
.end method

.method private updateAppSavedTVContainer(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 6888
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSavedTVContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6889
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSavedTVContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6892
    :cond_0
    return-void

    .line 6889
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateBody()V
    .locals 33

    .prologue
    .line 2139
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    .line 2140
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2378
    :goto_0
    return-void

    .line 2142
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 2143
    .local v11, "context":Landroid/content/Context;
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 2144
    .local v19, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v12

    .line 2145
    .local v12, "currentTab":Ljava/lang/String;
    const-string v4, "DataUsage/LPF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "currentTab:"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v11}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const/16 v16, 0x1

    .line 2149
    .local v16, "isOwner":Z
    :goto_1
    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 2150
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 2153
    :cond_2
    if-nez v12, :cond_4

    .line 2154
    const-string v4, "DataUsage"

    const-string v5, "no tab selected; hiding body"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 2146
    .end local v16    # "isOwner":Z
    :cond_3
    const/16 v16, 0x0

    goto :goto_1

    .line 2158
    .restart local v16    # "isOwner":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const/16 v28, 0x1

    .line 2162
    .local v28, "tabChanged":Z
    :goto_2
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 2166
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledSupported:Z

    .line 2167
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 2168
    invoke-static {v11}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v4

    if-nez v4, :cond_d

    const/16 v17, 0x1

    .line 2169
    .local v17, "isVisible":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    if-eqz v17, :cond_e

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2170
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v22

    .line 2171
    .local v22, "simSlotId":I
    const/16 v27, 0x0

    .line 2172
    .local v27, "switchOn":I
    const-string v10, "switch_traffic_settings"

    .line 2174
    .local v10, "KEY_SWITCH_ON":Ljava/lang/String;
    if-eqz v17, :cond_5

    .line 2175
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2181
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz v4, :cond_7

    .line 2182
    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    if-eqz v4, :cond_6

    .line 2183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/settings_ex/datasaving/DataSavingHelper;->getIMSIBySoltId(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/datasaving/DataSavingHelper;->setCurrentIMSI(Ljava/lang/String;)V

    .line 2184
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateSavingState()V

    .line 2186
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsChartFragment:Z

    if-eqz v4, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings_ex/DataUsageSummary;->updateChartSavedTV(Z)V

    .line 2193
    :cond_7
    invoke-static {v12}, Lcom/android/settings_ex/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2196
    const-string v4, "DataUsage/LPF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "(MultiSimManager.getEnabledSimCount(getActivity()):"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    const-string v4, "DataUsage/LPF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "mIsChartFragment:"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsChartFragment:Z

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsChartFragment:Z

    if-eqz v4, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_10

    .line 2199
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledSupported:Z

    .line 2200
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 2201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2249
    :goto_6
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsChartFragment:Z

    if-nez v4, :cond_9

    .line 2250
    :cond_8
    if-eqz v16, :cond_1a

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings_ex/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings_ex/DataUsageSummary;->isMobileDataAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledSupported:Z

    .line 2255
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings_ex/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v4

    invoke-static {v11, v4}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 2256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 2323
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-virtual {v4}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->read()V

    .line 2324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v18

    .line 2325
    .local v18, "policy":Landroid/net/NetworkPolicy;
    if-eqz v18, :cond_a

    .line 2326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2327
    .local v14, "currentTime":J
    move-object/from16 v0, v18

    invoke-static {v14, v15, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 2328
    .local v6, "start":J
    move-wide v8, v14

    .line 2329
    .local v8, "end":J
    const-wide/16 v30, 0x0

    .line 2332
    .local v30, "totalBytes":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-interface/range {v4 .. v9}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v30

    .line 2337
    :goto_9
    move-object/from16 v0, v18

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object/from16 v0, v18

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_23

    .line 2338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v5, 0x7f0e0c80

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2354
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v14    # "currentTime":J
    .end local v30    # "totalBytes":J
    :cond_a
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/settings_ex/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings_ex/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v4, v5, v0, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 2358
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2360
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    .line 2362
    const v4, 0x7f0a010c

    invoke-virtual {v11, v4}, Landroid/content/Context;->getColor(I)I

    move-result v21

    .line 2363
    .local v21, "seriesColor":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "mobile"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v5, "ethernet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v5, "mobile"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 2366
    .local v24, "slotId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v23

    .line 2369
    .local v23, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v23, :cond_b

    .line 2370
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v21

    .line 2374
    .end local v23    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v24    # "slotId":I
    :cond_b
    const/16 v4, 0x7f

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->green(I)I

    move-result v29

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->blue(I)I

    move-result v32

    move/from16 v0, v29

    move/from16 v1, v32

    invoke-static {v4, v5, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v20

    .line 2376
    .local v20, "secondaryColor":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    const/high16 v5, -0x1000000

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setChartColor(III)V

    .line 2377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDetailedSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    const/high16 v5, -0x1000000

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setChartColor(III)V

    goto/16 :goto_0

    .line 2161
    .end local v10    # "KEY_SWITCH_ON":Ljava/lang/String;
    .end local v17    # "isVisible":Z
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    .end local v20    # "secondaryColor":I
    .end local v21    # "seriesColor":I
    .end local v22    # "simSlotId":I
    .end local v27    # "switchOn":I
    .end local v28    # "tabChanged":Z
    :cond_c
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 2168
    .restart local v28    # "tabChanged":Z
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 2169
    .restart local v17    # "isVisible":Z
    :cond_e
    const/16 v4, 0x8

    goto/16 :goto_4

    .line 2186
    .restart local v10    # "KEY_SWITCH_ON":Ljava/lang/String;
    .restart local v22    # "simSlotId":I
    .restart local v27    # "switchOn":I
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 2208
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v5, 0x7f0e0c97

    invoke-static {v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 2210
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticSKTModel()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticKTTModel()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticLGTModel()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {}, Lcom/android/settings_ex/Utils;->isAllNAVendor()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {}, Lcom/android/settings_ex/Utils;->isJapanModel()Z

    move-result v4

    if-nez v4, :cond_12

    .line 2211
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2212
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v5, 0x7f0e0cbc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2215
    :cond_12
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2219
    const/16 v25, -0x1

    .line 2220
    .local v25, "subId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v4

    if-eqz v4, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 2221
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v25, v4, v5

    .line 2224
    :cond_14
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v27

    .line 2229
    :goto_b
    if-nez v27, :cond_18

    .line 2230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    const v5, 0x7f0e16f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2235
    .end local v25    # "subId":I
    :cond_15
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const v5, 0x7f0e1531

    move/from16 v0, v28

    invoke-static {v0, v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    .line 2236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const v5, 0x7f0e1096

    move/from16 v0, v28

    invoke-static {v0, v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    .line 2238
    sget-boolean v4, Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z

    if-nez v4, :cond_16

    sget-boolean v4, Lcom/android/settings_ex/DataUsageSummary;->isSPR:Z

    if-eqz v4, :cond_19

    .line 2239
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v5, 0x7f0e108f

    move/from16 v0, v28

    invoke-static {v0, v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    .line 2243
    :goto_d
    sget-boolean v4, Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z

    if-nez v4, :cond_17

    .line 2244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v5, 0x7f0e0cad

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2246
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const v5, 0x7f0e108c

    move/from16 v0, v28

    invoke-static {v0, v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    goto/16 :goto_6

    .line 2225
    .restart local v25    # "subId":I
    :catch_0
    move-exception v13

    .line 2226
    .local v13, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "DataUsage"

    const-string v5, "switchOn SettingNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    const/16 v27, 0x0

    goto :goto_b

    .line 2232
    .end local v13    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->removePreferenceSummary(Landroid/view/View;)V

    goto :goto_c

    .line 2241
    .end local v25    # "subId":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v5, 0x7f0e0c8b

    move/from16 v0, v28

    invoke-static {v0, v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    goto :goto_d

    .line 2250
    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 2257
    :cond_1b
    const-string v4, "3g"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v5, 0x7f0e0c98

    invoke-static {v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 2260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const v5, 0x7f0e1096

    invoke-static {v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 2261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v5, 0x7f0e0c8d

    invoke-static {v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 2262
    sget-boolean v4, Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z

    if-nez v4, :cond_1c

    .line 2263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v5, 0x7f0e0cad

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2266
    :cond_1c
    invoke-static {v11}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_8

    .line 2268
    :cond_1d
    const-string v4, "4g"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v5, 0x7f0e0c99

    invoke-static {v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 2271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const v5, 0x7f0e1096

    invoke-static {v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 2272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v5, 0x7f0e0c8c

    invoke-static {v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 2273
    sget-boolean v4, Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z

    if-nez v4, :cond_1e

    .line 2274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v5, 0x7f0e0cad

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2277
    :cond_1e
    invoke-static {v11}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_8

    .line 2279
    :cond_1f
    const-string v4, "ent1"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2282
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledSupported:Z

    .line 2283
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 2284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2292
    invoke-static {v11}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobileEnt1(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_8

    .line 2294
    :cond_20
    const-string v4, "wifi"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2297
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledSupported:Z

    .line 2298
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 2299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2304
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_8

    .line 2306
    :cond_21
    const-string v4, "ethernet"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 2309
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledSupported:Z

    .line 2310
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 2311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2316
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_8

    .line 2320
    :cond_22
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "unknown tab: "

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2341
    .restart local v6    # "start":J
    .restart local v8    # "end":J
    .restart local v14    # "currentTime":J
    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    .restart local v30    # "totalBytes":J
    :cond_23
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticSKTModel()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticKTTModel()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticLGTModel()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-static {}, Lcom/android/settings_ex/Utils;->isAllNAVendor()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-static {}, Lcom/android/settings_ex/Utils;->isJapanModel()Z

    move-result v4

    if-nez v4, :cond_24

    .line 2342
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v5, 0x7f0e0cbc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 2344
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v5, 0x1020010

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 2346
    .local v26, "summary":Landroid/widget/TextView;
    const/16 v4, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 2334
    .end local v26    # "summary":Landroid/widget/TextView;
    :catch_1
    move-exception v4

    goto/16 :goto_9

    .line 2333
    :catch_2
    move-exception v4

    goto/16 :goto_9
.end method

.method private updateChartSavedTV(Z)V
    .locals 8
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v2, 0x0

    .line 6874
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartSavedTV:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz v1, :cond_0

    .line 6875
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartSavedTV:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6876
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    if-eqz v1, :cond_0

    .line 6878
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getStartTime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getEndTime()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/android/settings_ex/datasaving/DataSavingHelper;->getSavedBytesForAllUid(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/settings_ex/datasaving/DataSavingHelper;->getUsageText(J)Ljava/lang/String;

    move-result-object v0

    .line 6881
    .local v0, "savedString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartSavedTV:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    const v4, 0x7f0e1725

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6885
    .end local v0    # "savedString":Ljava/lang/String;
    :cond_0
    return-void

    .line 6875
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 29
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 2987
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    .line 2988
    .local v25, "previousItem":Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->clear()V

    .line 2990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 2991
    .local v11, "context":Landroid/content/Context;
    const/4 v10, 0x0

    .line 2993
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const-wide v22, 0x7fffffffffffffffL

    .line 2994
    .local v22, "historyStart":J
    const-wide/high16 v20, -0x8000000000000000L

    .line 2995
    .local v20, "historyEnd":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v4, :cond_0

    .line 2996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v4, v4, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v22

    .line 2997
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v4, v4, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v20

    .line 3000
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 3003
    .local v26, "now":J
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v24

    .line 3006
    .local v24, "mobileSplit":Z
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v22, v4

    if-nez v4, :cond_1

    move-wide/from16 v22, v26

    .line 3007
    :cond_1
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v20, v4

    if-nez v4, :cond_2

    const-wide/16 v4, 0x1

    add-long v20, v26, v4

    .line 3009
    :cond_2
    const/16 v18, 0x0

    .line 3010
    .local v18, "hasCycles":Z
    if-eqz p1, :cond_8

    .line 3012
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mMobilepolicyforwifiVZW:Landroid/net/NetworkPolicy;

    .line 3016
    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 3019
    .local v8, "cycleEnd":J
    if-nez v24, :cond_3

    invoke-static {v11}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3020
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings_ex/DataUsageSummary;->wifiCycleEnd:J

    .line 3025
    :cond_3
    :goto_0
    cmp-long v4, v8, v22

    if-lez v4, :cond_7

    .line 3026
    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 3027
    .local v6, "cycleStart":J
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generating cs="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " to ce="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " waiting for hs="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v4, :cond_6

    .line 3032
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v5, v4, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 3033
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v12

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_5

    const/16 v19, 0x1

    .line 3038
    .local v19, "includeCycle":Z
    :goto_1
    if-eqz v19, :cond_4

    .line 3039
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    move-object v5, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/settings_ex/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v4}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 3040
    const/16 v18, 0x1

    .line 3042
    :cond_4
    move-wide v8, v6

    .line 3043
    goto :goto_0

    .line 3033
    .end local v19    # "includeCycle":Z
    :cond_5
    const/16 v19, 0x0

    goto :goto_1

    .line 3035
    :cond_6
    const/16 v19, 0x1

    .restart local v19    # "includeCycle":Z
    goto :goto_1

    .line 3045
    .end local v6    # "cycleStart":J
    .end local v19    # "includeCycle":Z
    :cond_7
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings_ex/DataUsageSummary;->wificyclestart:J

    .line 3049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 3052
    .end local v8    # "cycleEnd":J
    :cond_8
    if-nez v18, :cond_10

    .line 3054
    sget-boolean v4, Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mMobilepolicyforwifiVZW:Landroid/net/NetworkPolicy;

    if-eqz v4, :cond_a

    .line 3055
    move-wide/from16 v8, v20

    .line 3056
    .restart local v8    # "cycleEnd":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/DataUsageSummary;->wifiCycleEnd:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-eqz v4, :cond_9

    .line 3057
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings_ex/DataUsageSummary;->wifiCycleEnd:J

    .line 3058
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/DataUsageSummary;->wificyclestart:J

    cmp-long v4, v8, v4

    if-lez v4, :cond_f

    .line 3059
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mMobilepolicyforwifiVZW:Landroid/net/NetworkPolicy;

    invoke-static {v8, v9, v4}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 3060
    .restart local v6    # "cycleStart":J
    const-string v4, "Varun"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generating cs="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " to ce="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    move-object v5, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/settings_ex/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v4}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 3062
    move-wide v8, v6

    .line 3063
    goto :goto_2

    .line 3067
    .end local v6    # "cycleStart":J
    .end local v8    # "cycleEnd":J
    :cond_a
    move-wide/from16 v8, v20

    .line 3069
    .restart local v8    # "cycleEnd":J
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "is wifi : "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "wifi"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ", end time : "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ", current time : "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3070
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "wifi"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v8, v4

    if-gez v4, :cond_b

    .line 3071
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3074
    :cond_b
    :goto_3
    cmp-long v4, v8, v22

    if-lez v4, :cond_f

    .line 3075
    const-wide v4, 0x90321000L

    sub-long v6, v8, v4

    .line 3078
    .restart local v6    # "cycleStart":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v4, :cond_e

    .line 3079
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v5, v4, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 3080
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v12

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_d

    const/16 v19, 0x1

    .line 3085
    .restart local v19    # "includeCycle":Z
    :goto_4
    if-eqz v19, :cond_c

    .line 3086
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    move-object v5, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/settings_ex/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v4}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 3088
    :cond_c
    move-wide v8, v6

    .line 3089
    goto :goto_3

    .line 3080
    .end local v19    # "includeCycle":Z
    :cond_d
    const/16 v19, 0x0

    goto :goto_4

    .line 3082
    :cond_e
    const/16 v19, 0x1

    .restart local v19    # "includeCycle":Z
    goto :goto_4

    .line 3092
    .end local v6    # "cycleStart":J
    .end local v19    # "includeCycle":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 3096
    .end local v8    # "cycleEnd":J
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_12

    .line 3097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/settings_ex/DataUsageSummary$CycleItem;)I

    move-result v15

    .line 3098
    .local v15, "position":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v15}, Landroid/widget/Spinner;->setSelection(I)V

    .line 3102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v15}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    .line 3103
    .local v28, "selectedItem":Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 3104
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-interface/range {v12 .. v17}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 3112
    .end local v15    # "position":I
    .end local v28    # "selectedItem":Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    :goto_5
    return-void

    .line 3107
    .restart local v15    # "position":I
    .restart local v28    # "selectedItem":Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    goto :goto_5

    .line 3110
    .end local v15    # "position":I
    .end local v28    # "selectedItem":Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    goto :goto_5
.end method

.method private updateDataCompressionSwitchContainer(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 6868
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6869
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6871
    :cond_0
    return-void

    .line 6869
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateDataCompressionSwitchView()V
    .locals 3

    .prologue
    .line 6835
    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataCompressionSwitchView mIsDataCompressionEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6836
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchView:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 6837
    const-string v0, "DataUsage"

    const-string v1, "mDataCompressionSwitchView != null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6838
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchView:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 6840
    :cond_0
    return-void
.end method

.method private updateDetailData()V
    .locals 31

    .prologue
    .line 3830
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v4}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v6

    .line 3831
    .local v6, "start":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v4}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v8

    .line 3832
    .local v8, "end":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 3834
    .local v10, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v21

    .line 3836
    .local v21, "context":Landroid/content/Context;
    const/4 v12, 0x0

    .line 3837
    .local v12, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v4, v4, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v4, :cond_7

    .line 3839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v5, v4, Lcom/android/settings_ex/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 3840
    iget-wide v4, v12, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v12, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v4, v14

    .line 3841
    .local v22, "defaultBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v5, v4, Lcom/android/settings_ex/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 3842
    iget-wide v4, v12, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v12, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v24, v4, v14

    .line 3843
    .local v24, "foregroundBytes":J
    add-long v28, v22, v24

    .line 3845
    .local v28, "totalBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 3846
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3848
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static/range {v21 .. v23}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3849
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3852
    sget-boolean v4, Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z

    if-eqz v4, :cond_1

    .line 3853
    sget v4, Lcom/android/settings_ex/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 3854
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static/range {v21 .. v23}, Lcom/android/settings_ex/DataUsageSummary;->formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3864
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v13, v4, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/16 v20, 0x0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    invoke-virtual/range {v13 .. v20}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 3866
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 3868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3882
    .end local v22    # "defaultBytes":J
    .end local v24    # "foregroundBytes":J
    .end local v28    # "totalBytes":J
    :goto_1
    if-eqz v12, :cond_a

    iget-wide v4, v12, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v12, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v28, v4, v14

    .line 3885
    .restart local v28    # "totalBytes":J
    :goto_2
    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v30

    .line 3887
    .local v30, "totalPhrase":Ljava/lang/String;
    sget-boolean v4, Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z

    if-eqz v4, :cond_2

    .line 3888
    sget v4, Lcom/android/settings_ex/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    .line 3889
    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v30

    .line 3895
    :cond_2
    :goto_3
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportKKLookChart()Z

    move-result v4

    if-nez v4, :cond_c

    .line 3896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3904
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "3g"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "4g"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v5, "mobile"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3906
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3907
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3920
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSavedTV:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    if-eqz v4, :cond_5

    .line 3922
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSavedTVContainer:Landroid/view/View;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSavedTVContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3923
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSavedTVContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3925
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSavedTV:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    iget v5, v5, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings_ex/datasaving/DataSavingHelper;->getSavedBytesByUid(IJJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/settings_ex/datasaving/DataSavingHelper;->getUsageText(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3930
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->ensureLayoutTransitions()V

    .line 3931
    return-void

    .line 3856
    .end local v30    # "totalPhrase":Ljava/lang/String;
    .restart local v22    # "defaultBytes":J
    .restart local v24    # "foregroundBytes":J
    :cond_6
    sget v4, Lcom/android/settings_ex/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 3857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static/range {v21 .. v23}, Lcom/android/settings_ex/DataUsageSummary;->formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3858
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3871
    .end local v22    # "defaultBytes":J
    .end local v24    # "foregroundBytes":J
    .end local v28    # "totalBytes":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v4, :cond_8

    .line 3872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v13, v4, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/16 v20, 0x0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    invoke-virtual/range {v13 .. v20}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 3874
    :cond_8
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportKKLookChart()Z

    move-result v4

    if-nez v4, :cond_9

    .line 3875
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3878
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v13, v6, v7, v8, v9}, Lcom/android/settings_ex/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v4, v5, v13, v14}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_1

    .line 3882
    :cond_a
    const-wide/16 v28, 0x0

    goto/16 :goto_2

    .line 3890
    .restart local v28    # "totalBytes":J
    .restart local v30    # "totalPhrase":Ljava/lang/String;
    :cond_b
    sget v4, Lcom/android/settings_ex/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 3891
    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_3

    .line 3898
    :cond_c
    move-object/from16 v0, v21

    invoke-static {v0, v6, v7, v8, v9}, Lcom/android/settings_ex/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v26

    .line 3900
    .local v26, "rangePhrase":Ljava/lang/String;
    const v27, 0x7f0e0cb6

    .line 3901
    .local v27, "summaryRes":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v30, v5, v13

    const/4 v13, 0x1

    aput-object v26, v5, v13

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Lcom/android/settings_ex/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 3909
    .end local v26    # "rangePhrase":Ljava/lang/String;
    .end local v27    # "summaryRes":I
    :cond_d
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsChartFragment:Z

    if-nez v4, :cond_e

    .line 3910
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 3912
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 3916
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method private updateMenuTitles()V
    .locals 2

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1807
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f0e0c76

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1812
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    if-eqz v0, :cond_1

    .line 1813
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f0e0c79

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1818
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    if-eqz v0, :cond_2

    .line 1819
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f0e0c7b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1823
    :goto_2
    return-void

    .line 1809
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f0e0c75

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1815
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f0e0c78

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 1821
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f0e0c7a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private updatePolicy(Z)V
    .locals 12
    .param p1, "refreshCycle"    # Z

    .prologue
    .line 2844
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledSupported:Z

    .line 2845
    .local v0, "dataEnabledVisible":Z
    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 2847
    .local v1, "disableAtLimitVisible":Z
    const/4 v2, 0x0

    .line 2848
    .local v2, "isAirplaneMode":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2850
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    const/4 v2, 0x1

    .line 2854
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 2856
    .local v4, "isToddlerMode":Z
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_TODDLER_MODE"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2857
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "toddler_mode_switch"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    const/4 v4, 0x1

    .line 2860
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v2, :cond_2

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isRoamingArea()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2863
    :cond_2
    const/4 v0, 0x0

    .line 2864
    const/4 v1, 0x0

    .line 2868
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings_ex/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2869
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    .line 2870
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2871
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    .line 2873
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2877
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2878
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "mobile_data_question"

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_8

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2883
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    if-nez v6, :cond_9

    .line 2884
    const-string v6, "DataUsage"

    const-string v7, "mPolicyEditor is null. stop update policy"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    :cond_5
    :goto_3
    return-void

    .line 2850
    .end local v4    # "isToddlerMode":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 2857
    .restart local v4    # "isToddlerMode":Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 2878
    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 2888
    :cond_9
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v5

    .line 2889
    .local v5, "policy":Landroid/net/NetworkPolicy;
    const-string v6, "DataUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePolicy :mPolicyEditor ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mTemplate ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    const-string v6, "DataUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePolicy :policy ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    invoke-direct {p0, v5}, Lcom/android/settings_ex/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/settings_ex/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings_ex/DataUsageSummary;->isMobileDataAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsChartFragment:Z

    if-nez v6, :cond_1d

    .line 2894
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v6}, Landroid/app/enterprise/RestrictionPolicy;->isUserMobileDataLimitAllowed()Z

    move-result v6

    if-nez v6, :cond_18

    .line 2895
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2896
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/settings_ex/trafficmanager/settings/TrafficSettingsActivity;->enableOfTrafficSettings:Z

    .line 2904
    :goto_4
    sget-boolean v6, Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z

    if-nez v6, :cond_a

    sget-boolean v6, Lcom/android/settings_ex/DataUsageSummary;->isSPR:Z

    if-eqz v6, :cond_1b

    .line 2905
    :cond_a
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2909
    :goto_5
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    if-eqz v5, :cond_1c

    iget-wide v8, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1c

    const/4 v6, 0x1

    :goto_6
    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2911
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v6

    if-nez v6, :cond_b

    .line 2912
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v6, v5}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 2924
    :cond_b
    :goto_7
    iget-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->isKnoxmode:Z

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 2925
    const/4 v0, 0x0

    .line 2926
    const/4 v1, 0x0

    .line 2930
    :cond_c
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v6, :cond_d

    .line 2931
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMultisimModel()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaCTCModel()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 2933
    const-string v6, "DataUsage"

    const-string v7, "updatePolicy(), mDataEnabledView.setVisibility(View.GONE) for CTC model"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2939
    :cond_d
    :goto_8
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 2940
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2945
    :cond_e
    :goto_9
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    if-eqz v6, :cond_f

    .line 2946
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    if-eqz v0, :cond_22

    const/4 v6, 0x0

    :goto_a
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2947
    :cond_f
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    if-eqz v6, :cond_10

    .line 2948
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    if-eqz v0, :cond_23

    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2949
    :cond_10
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    if-eqz v6, :cond_11

    .line 2950
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    if-eqz v0, :cond_24

    const/4 v6, 0x0

    :goto_c
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2952
    :cond_11
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrcitNetwork:Landroid/view/View;

    if-eqz v6, :cond_12

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v6

    if-eqz v6, :cond_12

    .line 2953
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrcitNetwork:Landroid/view/View;

    if-eqz v0, :cond_25

    const/4 v6, 0x0

    :goto_d
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2954
    :cond_12
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mManualCalibrationView:Landroid/view/View;

    if-eqz v6, :cond_13

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v6

    if-eqz v6, :cond_13

    .line 2955
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mManualCalibrationView:Landroid/view/View;

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v6

    if-nez v6, :cond_26

    const/4 v6, 0x0

    :goto_e
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2956
    :cond_13
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    if-eqz v6, :cond_14

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v6

    if-eqz v6, :cond_14

    .line 2957
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    if-eqz v0, :cond_27

    const/4 v6, 0x0

    :goto_f
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2958
    :cond_14
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mOperatorSet:Landroid/view/View;

    if-eqz v6, :cond_15

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v6

    if-eqz v6, :cond_15

    .line 2959
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mOperatorSet:Landroid/view/View;

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v6

    if-eqz v6, :cond_28

    const/4 v6, 0x0

    :goto_10
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2962
    :cond_15
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    if-eqz v6, :cond_16

    .line 2963
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_29

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v6}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_29

    const/4 v3, 0x1

    .line 2964
    .local v3, "isAppRestritEnable":Z
    :goto_11
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    if-eqz v0, :cond_2a

    const/4 v6, 0x0

    :goto_12
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2965
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2966
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v6}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v6

    if-nez v6, :cond_2b

    const v6, 0x7f0e0ea6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_13
    invoke-static {v7, v6}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2967
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    invoke-static {v6, v3}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceDisable(Landroid/view/View;Z)V

    .line 2969
    .end local v3    # "isAppRestritEnable":Z
    :cond_16
    if-eqz p1, :cond_17

    .line 2971
    invoke-direct {p0, v5}, Lcom/android/settings_ex/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 2975
    :cond_17
    iget-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz v6, :cond_5

    .line 2976
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->updateDataCompressionSwitchContainer(Z)V

    goto/16 :goto_3

    .line 2898
    :cond_18
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    if-eqz v5, :cond_19

    iget-wide v8, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    :goto_14
    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2899
    if-eqz v5, :cond_1a

    iget-wide v6, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1a

    const/4 v6, 0x1

    :goto_15
    sput-boolean v6, Lcom/android/settings_ex/DataUsageSummary;->mLimitCheck:Z

    .line 2900
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/settings_ex/trafficmanager/settings/TrafficSettingsActivity;->enableOfTrafficSettings:Z

    goto/16 :goto_4

    .line 2898
    :cond_19
    const/4 v6, 0x0

    goto :goto_14

    .line 2899
    :cond_1a
    const/4 v6, 0x0

    goto :goto_15

    .line 2907
    :cond_1b
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 2909
    :cond_1c
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 2917
    :cond_1d
    const/4 v1, 0x0

    .line 2919
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2921
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto/16 :goto_7

    .line 2936
    :cond_1e
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v0, :cond_1f

    const/4 v6, 0x0

    :goto_16
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    :cond_1f
    const/16 v6, 0x8

    goto :goto_16

    .line 2942
    :cond_20
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v6, :cond_e

    .line 2943
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v1, :cond_21

    const/4 v6, 0x0

    :goto_17
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_21
    const/16 v6, 0x8

    goto :goto_17

    .line 2946
    :cond_22
    const/16 v6, 0x8

    goto/16 :goto_a

    .line 2948
    :cond_23
    const/16 v6, 0x8

    goto/16 :goto_b

    .line 2950
    :cond_24
    const/16 v6, 0x8

    goto/16 :goto_c

    .line 2953
    :cond_25
    const/16 v6, 0x8

    goto/16 :goto_d

    .line 2955
    :cond_26
    const/16 v6, 0x8

    goto/16 :goto_e

    .line 2957
    :cond_27
    const/16 v6, 0x8

    goto/16 :goto_f

    .line 2959
    :cond_28
    const/16 v6, 0x8

    goto/16 :goto_10

    .line 2963
    :cond_29
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 2964
    .restart local v3    # "isAppRestritEnable":Z
    :cond_2a
    const/16 v6, 0x8

    goto/16 :goto_12

    .line 2966
    :cond_2b
    const v6, 0x7f0e0ea7

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_13
.end method

.method private updateSavedDataCircleView()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 6914
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    if-nez v1, :cond_1

    .line 6933
    :cond_0
    :goto_0
    return-void

    .line 6917
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z

    if-eqz v1, :cond_2

    .line 6918
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/datasaving/SavedDataCircleView;->setVisibility(I)V

    .line 6919
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/datasaving/SavedDataCircleView;->setVisibility(I)V

    .line 6920
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    if-eqz v1, :cond_0

    .line 6921
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getStartTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v4}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getEndTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings_ex/datasaving/DataSavingHelper;->getSavedBytesForAllUid(JJ)J

    move-result-wide v2

    long-to-float v1, v2

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getTotalData()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v1, v2

    .line 6924
    .local v0, "savedPercentage":F
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/datasaving/SavedDataCircleView;->setPercent(F)V

    .line 6925
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    invoke-virtual {v1}, Lcom/android/settings_ex/datasaving/SavedDataCircleView;->invalidate()V

    .line 6926
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/datasaving/SavedDataCircleView;->setPercent(F)V

    .line 6927
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    invoke-virtual {v1}, Lcom/android/settings_ex/datasaving/SavedDataCircleView;->invalidate()V

    goto :goto_0

    .line 6930
    .end local v0    # "savedPercentage":F
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleView:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/datasaving/SavedDataCircleView;->setVisibility(I)V

    .line 6931
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedDataCircleViewLand:Lcom/android/settings_ex/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/datasaving/SavedDataCircleView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSavedTvState()V
    .locals 9

    .prologue
    const v8, 0x7f0e1725

    const/16 v2, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6843
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedTV:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 6865
    :goto_0
    return-void

    .line 6847
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z

    if-eqz v1, :cond_2

    .line 6848
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedTV:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6849
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedTVLand:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6850
    const-string v0, ""

    .line 6852
    .local v0, "savedString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    if-eqz v1, :cond_1

    .line 6853
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getStartTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;

    invoke-virtual {v4}, Lcom/android/settings_ex/trafficmanager/TrafficDataSummary;->getEndTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings_ex/datasaving/DataSavingHelper;->getSavedBytesForAllUid(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/settings_ex/datasaving/DataSavingHelper;->getUsageText(J)Ljava/lang/String;

    move-result-object v0

    .line 6857
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedTV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6859
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedTVLand:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6862
    .end local v0    # "savedString":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedTV:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6863
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavedTVLand:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSavingState()V
    .locals 2

    .prologue
    .line 6909
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavingStateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mUpdateSavingStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6910
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavingStateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mUpdateSavingStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6911
    return-void
.end method

.method private updateTabs()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2054
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2055
    .local v0, "context":Landroid/content/Context;
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 2057
    iput v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mIndexNum:I

    .line 2059
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    .line 2060
    .local v4, "simCount":I
    const-string v7, "DataUsage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "simCount"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->toString()Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v6

    .line 2063
    .local v6, "sirs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v6, :cond_1

    .line 2064
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 2065
    .local v5, "sir":Landroid/telephony/SubscriptionInfo;
    if-le v4, v8, :cond_0

    move v7, v8

    :goto_1
    invoke-direct {p0, v0, v5, v7}, Lcom/android/settings_ex/DataUsageSummary;->addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V

    goto :goto_0

    :cond_0
    move v7, v9

    goto :goto_1

    .line 2068
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyEnt1Radio(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2069
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v10, "ent1"

    const v11, 0x7f0e0c94

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2071
    :cond_2
    iget-boolean v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    if-eqz v7, :cond_3

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2072
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v10, "wifi"

    const v11, 0x7f0e0c8e

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2075
    :cond_3
    iget-boolean v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2076
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v10, "ethernet"

    const v11, 0x7f0e0c8f

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2079
    :cond_4
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v7

    if-nez v7, :cond_6

    move v3, v8

    .line 2080
    .local v3, "noTabs":Z
    :goto_2
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v7

    if-le v7, v8, :cond_7

    move v2, v8

    .line 2081
    .local v2, "multipleTabs":Z
    :goto_3
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v2, :cond_8

    :goto_4
    invoke-virtual {v7, v9}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 2082
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 2083
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2085
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    .line 2089
    :goto_5
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 2096
    :cond_5
    :goto_6
    return-void

    .end local v2    # "multipleTabs":Z
    .end local v3    # "noTabs":Z
    :cond_6
    move v3, v9

    .line 2079
    goto :goto_2

    .restart local v3    # "noTabs":Z
    :cond_7
    move v2, v9

    .line 2080
    goto :goto_3

    .line 2081
    .restart local v2    # "multipleTabs":Z
    :cond_8
    const/16 v9, 0x8

    goto :goto_4

    .line 2087
    :cond_9
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_5

    .line 2090
    :cond_a
    if-eqz v3, :cond_5

    .line 2092
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    goto :goto_6
.end method


# virtual methods
.method byteToLong([BII)J
    .locals 10
    .param p1, "data"    # [B
    .param p2, "idx_from"    # I
    .param p3, "idx_to"    # I

    .prologue
    .line 6206
    const-wide/16 v2, 0x0

    .line 6207
    .local v2, "value":J
    array-length v1, p1

    if-ge v1, p3, :cond_0

    move-wide v4, v2

    .line 6212
    .end local v2    # "value":J
    .local v4, "value":J
    :goto_0
    return-wide v4

    .line 6209
    .end local v4    # "value":J
    .restart local v2    # "value":J
    :cond_0
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_1
    if-lt v0, p2, :cond_1

    .line 6210
    const/16 v1, 0x8

    shl-long v6, v2, v1

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    add-long v2, v6, v8

    .line 6209
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move-wide v4, v2

    .line 6212
    .end local v2    # "value":J
    .restart local v4    # "value":J
    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 520
    const/16 v0, 0x25

    return v0
.end method

.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5678
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 5679
    .local v6, "conn":Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 5682
    .local v10, "hasEthernet":Z
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 5684
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 5695
    .local v8, "ethernetBytes":J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 5687
    .end local v8    # "ethernetBytes":J
    :catch_0
    move-exception v7

    .line 5688
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5691
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8    # "ethernetBytes":J
    goto :goto_0

    .line 5695
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isVolte()Z
    .locals 2

    .prologue
    .line 1634
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1651
    invoke-super {p0, p1}, Lcom/android/settings_ex/HighlightingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1652
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsChartFragment:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wifi"

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1653
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1654
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPieChartInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1655
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPieChartInfoLayout_land:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1661
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1662
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    .line 1664
    :cond_2
    return-void

    .line 1657
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPieChartInfoLayout_land:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1658
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPieChartInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 841
    invoke-super {p0, p1}, Lcom/android/settings_ex/HighlightingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 842
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 843
    .local v1, "context":Landroid/content/Context;
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    .line 846
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v9, "CscFeature_ATT_Device_Health_Enabled"

    invoke-virtual {v6, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/settings_ex/DataUsageSummary;->mAttDeviceHealthEnabled:Z

    .line 849
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v9, "CscFeature_Setting_SupportRoamingReduction"

    invoke-virtual {v6, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/settings_ex/DataUsageSummary;->bSupportRoamingReduction:Z

    .line 852
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v6, :cond_0

    .line 853
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "enterprise_policy"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 856
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v6, :cond_1

    .line 857
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 861
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    .line 862
    .local v5, "sSalesCode":Ljava/lang/String;
    const-string v6, "VZW"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sput-boolean v7, Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z

    .line 865
    :cond_2
    const-string v6, "SPR"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "VMU"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "BST"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "XAS"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 866
    :cond_3
    sput-boolean v7, Lcom/android/settings_ex/DataUsageSummary;->isSPR:Z

    .line 870
    :cond_4
    const-string v6, "TMB"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "TMK"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    sput-boolean v7, Lcom/android/settings_ex/DataUsageSummary;->isTMB:Z

    .line 872
    :cond_6
    const-string v6, "ATT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    sput-boolean v7, Lcom/android/settings_ex/DataUsageSummary;->isATT:Z

    .line 875
    :cond_7
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMetroPCS()Z

    move-result v6

    if-eqz v6, :cond_8

    sput-boolean v7, Lcom/android/settings_ex/DataUsageSummary;->isMTR:Z

    .line 876
    :cond_8
    sget-boolean v6, Lcom/android/settings_ex/DataUsageSummary;->isMTR:Z

    if-eqz v6, :cond_9

    .line 877
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mHandler:Landroid/os/Handler;

    .line 878
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->connectToRilService_lifetime()V

    .line 882
    :cond_9
    const-string v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 884
    const-string v6, "netstats"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 886
    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 887
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 888
    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    .line 889
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 891
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "data_usage"

    invoke-virtual {v6, v9, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 893
    new-instance v6, Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v6, v9}, Lcom/android/settings_ex/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    .line 894
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-virtual {v6}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->read()V

    .line 896
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    .line 897
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/android/settings_ex/DataUsageSummary;->initMobileTabTag(Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    .line 900
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v6}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v6

    if-nez v6, :cond_a

    .line 901
    const-string v6, "DataUsage"

    const-string v9, "No bandwidth control; leaving"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    :cond_a
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v6}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 917
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v9, "show_wifi"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    .line 918
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v9, "show_ethernet"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    .line 921
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 922
    iput-boolean v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    .line 923
    iput-boolean v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    .line 926
    :cond_b
    new-instance v6, Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-direct {v6, v1}, Lcom/android/settings_ex/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    .line 928
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 929
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_c

    .line 930
    const-string v6, "showAppImmediatePkg"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    .line 934
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 935
    iput-boolean v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    .line 936
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v9, "show_wifi"

    iget-boolean v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 941
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "data_usage_display_unit"

    const/4 v10, 0x2

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/settings_ex/DataUsageSummary;->mSelectDisplayUnit:I

    .line 944
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 945
    .local v4, "intFltr":Landroid/content/IntentFilter;
    const-string v6, "com.android.settings.ACTION_DATA_KEY_NEGATIVE"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 946
    const-string v6, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 947
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v6, v4, v11, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 949
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 952
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v9, "CscFeature_Common_SupportHuxPco"

    invoke-virtual {v6, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 953
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "background_data_by_pco"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mPCOSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 958
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "airplane_mode_on"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mAirplanemodeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 960
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_TODDLER_MODE"

    invoke-virtual {v6, v9}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 961
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "toddler_mode_switch"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mToddlermodeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 965
    :cond_f
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v9, 0x64

    if-lt v6, v9, :cond_11

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->isKnoxmode:Z

    .line 969
    iget-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz v6, :cond_10

    .line 970
    const-string v6, "data compression"

    const-string v7, "data compression check state and binservice"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isDataCompressionEnabled(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z

    .line 972
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings_ex/datasaving/DataSavingHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/datasaving/DataSavingHelper;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    .line 973
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mSSCListener:Lcom/android/settings_ex/datasaving/DataSavingHelper$SavingServiceConnectionListener;

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mTSCListener:Lcom/android/settings_ex/datasaving/DataSavingHelper$TrafficServiceConnectionListener;

    invoke-virtual {v6, v7, v8}, Lcom/android/settings_ex/datasaving/DataSavingHelper;->registerServiceConnectionListener(Lcom/android/settings_ex/datasaving/DataSavingHelper$SavingServiceConnectionListener;Lcom/android/settings_ex/datasaving/DataSavingHelper$TrafficServiceConnectionListener;)V

    .line 974
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    invoke-virtual {v6}, Lcom/android/settings_ex/datasaving/DataSavingHelper;->bindServices()V

    .line 976
    :cond_10
    return-void

    .line 904
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v4    # "intFltr":Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .line 905
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "DataUsage"

    const-string v9, "No bandwidth control; leaving"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 911
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 912
    .restart local v2    # "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 913
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v3

    .line 914
    .local v3, "e1":Ljava/lang/IllegalStateException;
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_1

    .end local v3    # "e1":Ljava/lang/IllegalStateException;
    .restart local v0    # "arguments":Landroid/os/Bundle;
    .restart local v4    # "intFltr":Landroid/content/IntentFilter;
    :cond_11
    move v6, v8

    .line 965
    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1668
    const v0, 0x7f140003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1670
    sget-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z

    if-nez v0, :cond_0

    .line 1671
    const v0, 0x7f0d06d0

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 1673
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 30
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 982
    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 983
    .local v10, "context":Landroid/content/Context;
    const v24, 0x7f04009f

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, p2

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    .line 986
    .local v23, "view":Landroid/view/View;
    const v24, 0x1020012

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TabHost;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 987
    const v24, 0x7f0d01c7

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 988
    const v24, 0x1020013

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TabWidget;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 989
    const v24, 0x102000a

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ListView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 991
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 992
    .local v6, "ab":Landroid/app/ActionBar;
    if-eqz v6, :cond_0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setElevation(F)V

    .line 996
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v24

    const/high16 v25, 0x2000000

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    const/16 v21, 0x1

    .line 998
    .local v21, "shouldInset":Z
    :goto_0
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TabHost;->setup()V

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 1006
    const v24, 0x7f04009a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x1

    invoke-virtual/range {v24 .. v27}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1013
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    move/from16 v24, v0

    if-lez v24, :cond_1

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/android/settings_ex/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    move/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 1021
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d01a2

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d01a3

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d019e

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mCycleSwitch:Landroid/widget/LinearLayout;

    .line 1025
    new-instance v24, Landroid/widget/Switch;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setClickable(Z)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setDuplicateParentStateEnabled(Z)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d000a

    const-string v26, "data_usage_enable_mobile"

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1031
    invoke-static {v10}, Lcom/android/settings_ex/Utils;->isSupportVolteSettings(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledVolteListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1037
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataMonitoringListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e16f4

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e16f9

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1048
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v24

    if-eqz v24, :cond_2

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1052
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mRestrcitNetwork:Landroid/view/View;

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mRestrcitNetwork:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mRestrcitNetwork:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mRestrcitNetwork:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mRestrcitNetworkListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mRestrcitNetwork:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e1717

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 1057
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v24

    if-eqz v24, :cond_3

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mRestrcitNetwork:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1063
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 1064
    new-instance v24, Landroid/widget/Switch;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchView:Landroid/widget/Switch;

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchView:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setClickable(Z)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchView:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchView:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setDuplicateParentStateEnabled(Z)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchView:Landroid/widget/Switch;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d000a

    const-string v26, "data_compression_enable_key"

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionEnableListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e1723

    invoke-static/range {v24 .. v25}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e1724

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d019f

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mChartSavedTV:Landroid/widget/TextView;

    .line 1083
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataRoamingVolteListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d000a

    const-string v26, "data_roaming_enable_mobile"

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1088
    invoke-static {v10}, Lcom/android/settings_ex/Utils;->isSupportVolteSettings(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1092
    :cond_5
    invoke-static {}, Lcom/android/settings_ex/Utils;->getAppDataRestrictionType()I

    move-result v24

    if-eqz v24, :cond_6

    .line 1093
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v14

    .line 1094
    .local v14, "isAppRestritEnable":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d000a

    const-string v26, "app_data_restriction"

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mRestrcitAppDataListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v24

    if-nez v24, :cond_f

    const v24, 0x7f0e0ea6

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v24

    :goto_2
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummaryColor(Landroid/view/View;Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v14}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceDisable(Landroid/view/View;Z)V

    .line 1104
    invoke-static {}, Lcom/android/settings_ex/Utils;->getAppDataRestrictionType()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e16ae

    invoke-static/range {v24 .. v25}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1109
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1112
    .end local v14    # "isAppRestritEnable":Z
    :cond_6
    new-instance v24, Landroid/widget/Switch;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setClickable(Z)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d000a

    const-string v26, "data_usage_confirm_boot"

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e1096

    invoke-static/range {v24 .. v25}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1127
    :cond_7
    new-instance v24, Landroid/widget/Switch;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setClickable(Z)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d000a

    const-string v26, "data_usage_disable_mobile_limit"

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v24

    if-nez v24, :cond_8

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1143
    :cond_8
    new-instance v24, Landroid/widget/Switch;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setClickable(Z)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setDuplicateParentStateEnabled(Z)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarningListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1151
    sget-boolean v24, Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z

    if-nez v24, :cond_9

    sget-boolean v24, Lcom/android/settings_ex/DataUsageSummary;->isSPR:Z

    if-eqz v24, :cond_a

    .line 1152
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1158
    :cond_a
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v24

    if-eqz v24, :cond_13

    .line 1159
    const/4 v9, 0x0

    .line 1161
    .local v9, "category":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const-string v25, "com.samsung.android.app.sreminder"

    const/16 v26, 0x80

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 1163
    .local v7, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1164
    .local v8, "bundle":Landroid/os/Bundle;
    const-string v24, "lifeservice.category.OP"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1165
    const-string v24, "DataUsage"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "result:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1171
    .end local v7    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "bundle":Landroid/os/Bundle;
    :goto_4
    if-eqz v9, :cond_13

    .line 1172
    const/16 v17, 0x0

    .line 1173
    .local v17, "mSavedReadingModeNums":I
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 1174
    const-string v24, ","

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mSavedIDlist:[Ljava/lang/String;

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mSavedIDlist:[Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v17, v0

    .line 1177
    :cond_b
    const/16 v19, 0x0

    .line 1179
    .local v19, "res":Landroid/content/res/Resources;
    :try_start_1
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const-string v25, "com.samsung.android.app.sreminder"

    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v19

    .line 1185
    :goto_5
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1186
    .local v16, "mSavedLabel":[Ljava/lang/String;
    if-eqz v19, :cond_11

    .line 1187
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_6
    move/from16 v0, v17

    if-ge v12, v0, :cond_11

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mSavedIDlist:[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    const-string v25, "string"

    const-string v26, "com.samsung.android.app.sreminder"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 1190
    .local v13, "id":I
    if-eqz v13, :cond_c

    .line 1191
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v16, v12

    .line 1187
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 996
    .end local v9    # "category":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "id":I
    .end local v16    # "mSavedLabel":[Ljava/lang/String;
    .end local v17    # "mSavedReadingModeNums":I
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v21    # "shouldInset":Z
    :cond_d
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 1035
    .restart local v21    # "shouldInset":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1101
    .restart local v14    # "isAppRestritEnable":Z
    :cond_f
    const v24, 0x7f0e0ea7

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_2

    .line 1107
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e16ac

    invoke-static/range {v24 .. v25}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    goto/16 :goto_3

    .line 1166
    .end local v14    # "isAppRestritEnable":Z
    .restart local v9    # "category":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1167
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v24, "DataUsage"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Failed to load meta-data, NameNotFound: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1168
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v11

    .line 1169
    .local v11, "e":Ljava/lang/NullPointerException;
    const-string v24, "DataUsage"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Failed to load meta-data, NullPointer: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v11}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1181
    .end local v11    # "e":Ljava/lang/NullPointerException;
    .restart local v17    # "mSavedReadingModeNums":I
    .restart local v19    # "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v11

    .line 1183
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_5

    .line 1196
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v16    # "mSavedLabel":[Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTopupphonebalanceListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v25, v16, v25

    invoke-static/range {v24 .. v25}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTopupphonebalance:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCheckphonebalanceListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v25, v16, v25

    invoke-static/range {v24 .. v25}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 1208
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v24

    if-eqz v24, :cond_12

    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v24

    if-eqz v24, :cond_13

    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v24

    if-nez v24, :cond_13

    .line 1209
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCheckphonebalance:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1215
    .end local v9    # "category":Ljava/lang/String;
    .end local v16    # "mSavedLabel":[Ljava/lang/String;
    .end local v17    # "mSavedReadingModeNums":I
    .end local v19    # "res":Landroid/content/res/Resources;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mManualCalibrationView:Landroid/view/View;

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mManualCalibrationView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mManualCalibrationView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mManualCalibrationView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mManualCalibrationListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mManualCalibrationView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e16f8

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 1220
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v24

    if-eqz v24, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v24

    if-eqz v24, :cond_14

    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v24

    if-nez v24, :cond_14

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mManualCalibrationView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1223
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mOperatorSet:Landroid/view/View;

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mOperatorSet:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mOperatorSet:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mOperatorSet:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mOperatorSetListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mOperatorSet:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e16f5

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 1228
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v24

    if-eqz v24, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v24

    if-eqz v24, :cond_15

    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v24

    if-eqz v24, :cond_15

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mOperatorSet:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1234
    :cond_15
    new-instance v24, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f02013b

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e0cbd

    invoke-static/range {v24 .. v25}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1243
    sget-boolean v24, Lcom/android/settings_ex/DataUsageSummary;->isMTR:Z

    if-eqz v24, :cond_16

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1247
    :cond_16
    new-instance v24, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAlertTotalSentListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f02013b

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e0cbe

    invoke-static/range {v24 .. v25}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1256
    sget-boolean v24, Lcom/android/settings_ex/DataUsageSummary;->isMTR:Z

    if-eqz v24, :cond_17

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1260
    :cond_17
    const v24, 0x7f040171

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0e0cbf

    invoke-static/range {v24 .. v25}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1264
    sget-boolean v24, Lcom/android/settings_ex/DataUsageSummary;->isMTR:Z

    if-eqz v24, :cond_18

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1269
    :cond_18
    const v24, 0x7f040098

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSwitch:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d000a

    const-string v26, "data_usage_cycle"

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d0195

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Spinner;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    const v25, 0x7f0e0c72

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Spinner;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1273
    new-instance v24, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    const v25, 0x7f0a0158

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/content/Context;->getColor(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d0196

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSwitch:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1279
    const v24, 0x7f0d018d

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    .line 1280
    const v24, 0x7f0d018e

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mDetailedSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d018b

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    .line 1285
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v24

    if-eqz v24, :cond_19

    .line 1286
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10}, Lcom/android/settings_ex/DataUsageSummary;->initDonutLayout(Landroid/view/View;Landroid/content/Context;)V

    .line 1288
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setListener(Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-object/from16 v24, v0

    const-wide v26, 0x18fff00000L

    const-wide v28, 0x1900000000L

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    move-wide/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setMaximumSetableValue(JJ)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/settings_ex/widget/DataUsageListView;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setListView(Lcom/android/settings_ex/widget/DataUsageListView;)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d0197

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d00bc

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d0198

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d0199

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d019a

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d019d

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d00c4

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Button;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 1306
    sget-boolean v24, Lcom/android/settings_ex/DataUsageSummary;->bSupportRoamingReduction:Z

    if-eqz v24, :cond_20

    .line 1307
    new-instance v24, Landroid/widget/Spinner;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrcitSpinner:Landroid/widget/Spinner;

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrcitSpinner:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1309
    new-instance v15, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x1090009

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v15, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1311
    .local v15, "mRestrictAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->bg_Restriction_resId:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->bg_Restriction_resId:[I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->bg_Restriction_resId:[I

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrcitSpinner:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrcitSpinner:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    new-instance v25, Lcom/android/settings_ex/DataUsageSummary$8;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DataUsageSummary$8;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrcitSpinner:Landroid/widget/Spinner;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->inflateDropDownPreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 1334
    .end local v15    # "mRestrictAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setClickable(Z)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setFocusable(Z)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1338
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1a

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d019b

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppSavedTVContainer:Landroid/view/View;

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0d019c

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppSavedTV:Landroid/widget/TextView;

    .line 1345
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d01a0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d01a1

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    .line 1348
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v24

    if-eqz v24, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsChartFragment:Z

    move/from16 v24, v0

    if-nez v24, :cond_1b

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 1352
    :cond_1b
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportKKLookChart()Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1357
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x1020004

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d01a5

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d01a4

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 1360
    .local v18, "mUpgBtn":Landroid/widget/Button;
    new-instance v24, Lcom/android/settings_ex/DataUsageSummary$9;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DataUsageSummary$9;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1372
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    .line 1373
    .local v20, "sSalesCode":Ljava/lang/String;
    const-string v24, "TMB"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1d

    const-string v24, "TMK"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_21

    :cond_1d
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v24

    if-nez v24, :cond_21

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v24

    const/16 v25, 0x64

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_21

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d01a1

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const v25, 0x7f0e1084

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1379
    :goto_8
    sget-boolean v24, Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z

    if-eqz v24, :cond_1e

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const v25, 0x7f0d01a1

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const v25, 0x7f0e1085

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1383
    :cond_1e
    const-string v24, "user"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    .line 1384
    .local v22, "um":Landroid/os/UserManager;
    new-instance v24, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;-><init>(Landroid/os/UserManager;Lcom/android/settings_ex/net/UidDetailProvider;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    move-object/from16 v24, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    move-object/from16 v24, v0

    sget-boolean v25, Lcom/android/settings_ex/DataUsageSummary;->mLimitCheck:Z

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v26, "mobile_data_question"

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_22

    const/16 v24, 0x1

    :goto_9
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1391
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->showRequestedAppIfNeeded(Landroid/view/View;)V

    .line 1394
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DataUsageSummary;->isKnoxmode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1f

    invoke-static {v10}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_1f

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 1400
    :cond_1f
    return-object v23

    .line 1328
    .end local v18    # "mUpgBtn":Landroid/widget/Button;
    .end local v20    # "sSalesCode":Ljava/lang/String;
    .end local v22    # "um":Landroid/os/UserManager;
    :cond_20
    new-instance v24, Landroid/widget/Switch;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setClickable(Z)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 1376
    .restart local v18    # "mUpgBtn":Landroid/widget/Button;
    .restart local v20    # "sSalesCode":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const v26, 0x7f0d01a4

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_8

    .line 1389
    .restart local v22    # "um":Landroid/os/UserManager;
    :cond_22
    const/16 v24, 0x0

    goto/16 :goto_9
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1968
    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 1969
    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    .line 1970
    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 1971
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1972
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1973
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-virtual {v1}, Lcom/android/settings_ex/net/UidDetailProvider;->clearCache()V

    .line 1975
    :cond_0
    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    .line 1977
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 1978
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1979
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1980
    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    .line 1983
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v1}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 1985
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mAirplanemodeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1986
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1987
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1989
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_TODDLER_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1990
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mToddlermodeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1994
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportHuxPco"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1995
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPCOSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2000
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz v1, :cond_4

    .line 2001
    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchContainer:Landroid/view/View;

    .line 2002
    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataCompressionSwitchView:Landroid/widget/Switch;

    .line 2003
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mSSCListener:Lcom/android/settings_ex/datasaving/DataSavingHelper$SavingServiceConnectionListener;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTSCListener:Lcom/android/settings_ex/datasaving/DataSavingHelper$TrafficServiceConnectionListener;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/datasaving/DataSavingHelper;->unRegisterServiceConnectionListener(Lcom/android/settings_ex/datasaving/DataSavingHelper$SavingServiceConnectionListener;Lcom/android/settings_ex/datasaving/DataSavingHelper$TrafficServiceConnectionListener;)V

    .line 2004
    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    .line 2007
    :cond_4
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mReceiver:Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;

    if-eqz v1, :cond_5

    .line 2009
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mReceiver:Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2014
    :cond_5
    :goto_0
    invoke-super {p0}, Lcom/android/settings_ex/HighlightingFragment;->onDestroy()V

    .line 2015
    return-void

    .line 2010
    :catch_0
    move-exception v0

    .line 2011
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x1

    .line 1836
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    move v11, v6

    .line 1963
    :goto_1
    :sswitch_0
    return v11

    .line 1838
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1

    .line 1841
    :sswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    if-nez v1, :cond_1

    move v10, v11

    .line 1842
    .local v10, "restrictBackground":Z
    :goto_2
    const-string v1, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string v2, "UDS"

    invoke-static {v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "udsState"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v11, :cond_2

    .line 1843
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmUDSRestrict;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    goto :goto_1

    .end local v10    # "restrictBackground":Z
    :cond_1
    move v10, v6

    .line 1841
    goto :goto_2

    .line 1844
    .restart local v10    # "restrictBackground":Z
    :cond_2
    if-eqz v10, :cond_3

    .line 1845
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    goto :goto_1

    .line 1848
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_1

    .line 1853
    .end local v10    # "restrictBackground":Z
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    if-nez v1, :cond_4

    move v1, v11

    :goto_3
    iput-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    .line 1854
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_wifi"

    iget-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1855
    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    if-eqz v1, :cond_5

    .line 1856
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    const-string v2, "com.android.settings"

    const-string v3, "SHWI"

    const/16 v4, 0x3e8

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1860
    :goto_4
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateMenuTitles()V

    .line 1861
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    goto :goto_1

    :cond_4
    move v1, v6

    .line 1853
    goto :goto_3

    .line 1858
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    const-string v2, "com.android.settings"

    const-string v3, "SHWI"

    invoke-static {v1, v2, v3, v6}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    .line 1865
    :sswitch_4
    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    if-nez v1, :cond_6

    move v6, v11

    :cond_6
    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    .line 1866
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_ethernet"

    iget-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1867
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateMenuTitles()V

    .line 1868
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    goto/16 :goto_1

    .line 1904
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 1905
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e0cb7

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_1

    .line 1911
    .end local v0    # "sa":Lcom/android/settings_ex/SettingsActivity;
    :sswitch_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e108a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1100a0

    sget v3, Lcom/android/settings_ex/DataUsageSummary;->mSelectDisplayUnit:I

    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$12;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/DataUsageSummary$12;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    .line 1923
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 1931
    :sswitch_7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.helphub"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 1932
    .local v8, "info":Landroid/content/pm/PackageInfo;
    iget v1, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v1, v1, 0xa

    if-eq v1, v11, :cond_0

    .line 1936
    iget v1, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v1, v1, 0xa

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1941
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1942
    .local v9, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "data_usage_vzw_spr"

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1943
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/DataUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1956
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 1958
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1944
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "info":Landroid/content/pm/PackageInfo;
    :cond_7
    :try_start_1
    iget v1, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v1, v1, 0xa

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1952
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1953
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v1, "helphub:appid"

    const-string v2, "data_usage"

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1954
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/DataUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1836
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0d06ca -> :sswitch_2
        0x7f0d06cb -> :sswitch_3
        0x7f0d06cc -> :sswitch_4
        0x7f0d06cd -> :sswitch_5
        0x7f0d06ce -> :sswitch_0
        0x7f0d06d0 -> :sswitch_6
        0x7f0d06d1 -> :sswitch_7
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1614
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1615
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1616
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    .line 1620
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isVolte()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/settings_ex/DataUsageSummary;->isATT:Z

    if-nez v1, :cond_1

    .line 1621
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1623
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1626
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz v1, :cond_2

    .line 1627
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mSavingServiceStateListener:Lcom/opera/max/sdk/saving/IStateListener;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/datasaving/DataSavingHelper;->unregisterSavingStateListener(Lcom/opera/max/sdk/saving/IStateListener;)V

    .line 1630
    :cond_2
    invoke-super {p0}, Lcom/android/settings_ex/HighlightingFragment;->onPause()V

    .line 1631
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 14
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1677
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1678
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    .line 1679
    .local v0, "appDetailMode":Z
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    .line 1680
    .local v9, "sSalesCode":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    move v4, v11

    .line 1682
    .local v4, "isOwner":Z
    :goto_0
    if-nez v1, :cond_3

    .line 1683
    const-string v10, "DataUsage"

    const-string v11, "onPrepareOptionsMenu : context null "

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    :cond_1
    :goto_1
    return-void

    .end local v4    # "isOwner":Z
    :cond_2
    move v4, v12

    .line 1680
    goto :goto_0

    .line 1687
    .restart local v4    # "isOwner":Z
    :cond_3
    const v10, 0x7f0d06cb

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    .line 1689
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    if-eqz v10, :cond_4

    .line 1690
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1691
    iget-object v13, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    if-nez v0, :cond_14

    move v10, v11

    :goto_2
    invoke-interface {v13, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1697
    :cond_4
    :goto_3
    const v10, 0x7f0d06cc

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    .line 1698
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    if-eqz v10, :cond_5

    .line 1699
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 1700
    iget-object v13, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    if-nez v0, :cond_16

    move v10, v11

    :goto_4
    invoke-interface {v13, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1706
    :cond_5
    :goto_5
    const v10, 0x7f0d06ca

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 1707
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-eqz v10, :cond_6

    .line 1708
    invoke-static {}, Lcom/android/settings_ex/Utils;->getAppDataRestrictionType()I

    move-result v10

    if-ne v10, v11, :cond_18

    .line 1709
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1715
    :cond_6
    :goto_6
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v10

    if-eqz v10, :cond_7

    .line 1716
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1720
    :cond_7
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v10, :cond_8

    .line 1721
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v13, "enterprise_policy"

    invoke-virtual {v10, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1724
    :cond_8
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v10, :cond_9

    .line 1725
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    .line 1726
    .local v8, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v8, :cond_1a

    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-eqz v10, :cond_1a

    invoke-virtual {v8}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v10

    if-nez v10, :cond_1a

    .line 1727
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1728
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1737
    .end local v8    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_9
    :goto_7
    const v10, 0x7f0d06cd

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1738
    .local v5, "metered":Landroid/view/MenuItem;
    if-eqz v5, :cond_b

    .line 1739
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1c

    :cond_a
    iget-boolean v10, p0, Lcom/android/settings_ex/DataUsageSummary;->isKnoxmode:Z

    if-nez v10, :cond_1c

    .line 1740
    if-nez v0, :cond_1b

    move v10, v11

    :goto_8
    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1744
    :goto_9
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v10

    if-eqz v10, :cond_b

    .line 1745
    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1750
    :cond_b
    const v10, 0x7f0d06ce

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    .line 1751
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    if-eqz v10, :cond_c

    .line 1752
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1755
    :cond_c
    const v10, 0x7f0d06cf

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    .line 1756
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    if-eqz v10, :cond_d

    .line 1757
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1760
    :cond_d
    const v10, 0x7f0d06d1

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1762
    .local v2, "help":Landroid/view/MenuItem;
    if-eqz v2, :cond_e

    .line 1763
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f0e0d87

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "helpUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 1764
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v2, v3, v13}, Lcom/android/settings_ex/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1775
    .end local v3    # "helpUrl":Ljava/lang/String;
    :cond_e
    :goto_a
    iget-boolean v10, p0, Lcom/android/settings_ex/DataUsageSummary;->isKnoxmode:Z

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-eqz v10, :cond_f

    .line 1776
    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1777
    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 1778
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1779
    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1784
    :cond_f
    const-string v10, "TFN"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v5, :cond_10

    .line 1785
    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1787
    :cond_10
    const-string v10, "AIO"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    if-eqz v5, :cond_11

    .line 1788
    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1790
    :cond_11
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateMenuTitles()V

    .line 1793
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v13, "CscFeature_Common_SupportHuxPco"

    invoke-virtual {v10, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-eqz v10, :cond_1

    .line 1795
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "background_data_by_pco"

    invoke-static {v10, v13, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v11, :cond_21

    move v6, v11

    .line 1797
    .local v6, "restrictBackgroundbyPco":Z
    :goto_b
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "background_data_by_user"

    invoke-static {v10, v13, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v11, :cond_22

    move v7, v11

    .line 1799
    .local v7, "restrictBackgroundbyUser":Z
    :goto_c
    iget-object v13, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v10}, Landroid/view/MenuItem;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_23

    if-nez v6, :cond_23

    move v10, v11

    :goto_d
    invoke-interface {v13, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1800
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-nez v7, :cond_12

    iget-object v13, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v13}, Landroid/view/MenuItem;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_13

    :cond_12
    move v12, v11

    :cond_13
    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .end local v2    # "help":Landroid/view/MenuItem;
    .end local v5    # "metered":Landroid/view/MenuItem;
    .end local v6    # "restrictBackgroundbyPco":Z
    .end local v7    # "restrictBackgroundbyUser":Z
    :cond_14
    move v10, v12

    .line 1691
    goto/16 :goto_2

    .line 1693
    :cond_15
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_16
    move v10, v12

    .line 1700
    goto/16 :goto_4

    .line 1702
    :cond_17
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 1711
    :cond_18
    iget-object v13, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_19

    if-eqz v4, :cond_19

    if-nez v0, :cond_19

    move v10, v11

    :goto_e
    invoke-interface {v13, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    :cond_19
    move v10, v12

    goto :goto_e

    .line 1731
    .restart local v8    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_1a
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-eqz v10, :cond_9

    .line 1732
    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .end local v8    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .restart local v5    # "metered":Landroid/view/MenuItem;
    :cond_1b
    move v10, v12

    .line 1740
    goto/16 :goto_8

    .line 1742
    :cond_1c
    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_9

    .line 1765
    .restart local v2    # "help":Landroid/view/MenuItem;
    .restart local v3    # "helpUrl":Ljava/lang/String;
    :cond_1d
    invoke-static {}, Lcom/android/settings_ex/Utils;->isAllNAVendor()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isSupportOnDeviceHelp()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_1e

    .line 1766
    invoke-interface {v2, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a

    .line 1767
    :cond_1e
    sget-boolean v10, Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z

    if-nez v10, :cond_1f

    sget-boolean v10, Lcom/android/settings_ex/DataUsageSummary;->isSPR:Z

    if-eqz v10, :cond_20

    :cond_1f
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v13, "com.samsung.helphub"

    invoke-static {v10, v13}, Lcom/android/settings_ex/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_20

    .line 1768
    invoke-interface {v2, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a

    .line 1770
    :cond_20
    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a

    .end local v3    # "helpUrl":Ljava/lang/String;
    :cond_21
    move v6, v12

    .line 1795
    goto/16 :goto_b

    .restart local v6    # "restrictBackgroundbyPco":Z
    :cond_22
    move v7, v12

    .line 1797
    goto/16 :goto_c

    .restart local v7    # "restrictBackgroundbyUser":Z
    :cond_23
    move v10, v12

    .line 1799
    goto/16 :goto_d
.end method

.method public onResume()V
    .locals 23

    .prologue
    .line 1446
    invoke-super/range {p0 .. p0}, Lcom/android/settings_ex/HighlightingFragment;->onResume()V

    .line 1447
    const-string v19, "DataUsage"

    const-string v20, "onResume"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "mobile_data"

    invoke-static/range {v20 .. v20}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataObserver:Landroid/database/ContentObserver;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 1453
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string v20, "enterprise_policy"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1456
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v9

    .line 1458
    .local v9, "mPR":Landroid/app/enterprise/PhoneRestrictionPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v14

    .line 1459
    .local v14, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v14, :cond_3

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setEnabled(Z)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceDisable(Landroid/view/View;Z)V

    .line 1463
    invoke-virtual {v14}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v19

    if-nez v19, :cond_f

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setEnabled(Z)V

    .line 1471
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v15

    .line 1472
    .local v15, "simSlotId":I
    const-string v4, "switch_traffic_settings"

    .line 1473
    .local v4, "KEY_SWITCH_ON":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_1

    .line 1474
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1476
    :cond_1
    invoke-virtual {v14}, Landroid/app/enterprise/RestrictionPolicy;->isUserMobileDataLimitAllowed()Z

    move-result v19

    if-nez v19, :cond_10

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1478
    const-wide/16 v20, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V

    .line 1480
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setEnabled(Z)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ex/net/UidDetailProvider;->clearCache()V

    .line 1484
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 1485
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/settings_ex/trafficmanager/settings/TrafficSettingsActivity;->enableOfTrafficSettings:Z

    .line 1486
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v7, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1487
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1490
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1500
    .end local v4    # "KEY_SWITCH_ON":Ljava/lang/String;
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "mPR":Landroid/app/enterprise/PhoneRestrictionPolicy;
    .end local v14    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .end local v15    # "simSlotId":I
    :cond_3
    :goto_1
    sget-boolean v19, Lcom/android/settings_ex/DataUsageSummary;->isVZW:Z

    if-eqz v19, :cond_6

    sget-boolean v19, Lcom/android/settings_ex/DataUsageSummary;->mIsIMSInitialized:Z

    if-nez v19, :cond_6

    .line 1501
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 1503
    .local v5, "context":Landroid/content/Context;
    const/16 v19, 0x7

    move/from16 v0, v19

    invoke-static {v0, v5}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    sput-object v19, Lcom/android/settings_ex/DataUsageSummary;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 1504
    sget-object v19, Lcom/android/settings_ex/DataUsageSummary;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v19, :cond_5

    .line 1505
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v10, v0, [I

    const/16 v19, 0x0

    const/16 v20, 0x5d

    aput v20, v10, v19

    .line 1506
    .local v10, "reqFields":[I
    sget-object v19, Lcom/android/settings_ex/DataUsageSummary;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getIMSSettingValues([I)Landroid/util/SparseArray;

    move-result-object v12

    .line 1507
    .local v12, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v12, :cond_4

    const-string v19, "1"

    const/16 v20, 0x5d

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1508
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/settings_ex/DataUsageSummary;->isVolteProvisioned:Z

    .line 1511
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v11, v0, [I

    const/16 v19, 0x0

    const/16 v20, 0x84

    aput v20, v11, v19

    .line 1512
    .local v11, "reqFields_VoWiFi":[I
    sget-object v19, Lcom/android/settings_ex/DataUsageSummary;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getIMSSettingValues([I)Landroid/util/SparseArray;

    move-result-object v13

    .line 1513
    .local v13, "result_VoWiFi":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v13, :cond_5

    const-string v19, "1"

    const/16 v20, 0x84

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1514
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/settings_ex/DataUsageSummary;->isVoWiFiProvisioned:Z

    .line 1517
    .end local v10    # "reqFields":[I
    .end local v11    # "reqFields_VoWiFi":[I
    .end local v12    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v13    # "result_VoWiFi":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_5
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/settings_ex/DataUsageSummary;->mIsIMSInitialized:Z

    .line 1519
    .end local v5    # "context":Landroid/content/Context;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getView()Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/android/settings_ex/DataUsageSummary$10;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DataUsageSummary$10;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1527
    new-instance v19, Lcom/android/settings_ex/DataUsageSummary$11;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DataUsageSummary$11;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    sget-object v20, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/settings_ex/DataUsageSummary$11;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1548
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isVolte()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v19

    if-nez v19, :cond_7

    sget-boolean v19, Lcom/android/settings_ex/DataUsageSummary;->isATT:Z

    if-nez v19, :cond_7

    .line 1549
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string v20, "phone"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 1551
    .local v18, "telephonyManager":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    move-object/from16 v19, v0

    const/16 v20, 0x800

    invoke-virtual/range {v18 .. v20}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1555
    .end local v18    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Common_SupportHuxPco"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Common_SupportHuxPayg"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 1558
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    .line 1561
    :cond_8
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings_ex/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1563
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v15

    .line 1564
    .restart local v15    # "simSlotId":I
    const/16 v16, -0x1

    .line 1565
    .local v16, "subId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v19

    if-eqz v19, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 1566
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v19

    const/16 v20, 0x0

    aget v16, v19, v20

    .line 1568
    :cond_a
    const/16 v17, 0x0

    .line 1569
    .local v17, "switchOn":I
    const-string v4, "switch_traffic_settings"

    .line 1574
    .restart local v4    # "KEY_SWITCH_ON":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 1579
    :goto_2
    if-nez v17, :cond_11

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0e16f9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1586
    .end local v4    # "KEY_SWITCH_ON":Ljava/lang/String;
    .end local v15    # "simSlotId":I
    .end local v16    # "subId":I
    .end local v17    # "switchOn":I
    :cond_b
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mReceiver:Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 1587
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mReceiver:Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1590
    :cond_c
    new-instance v19, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;-><init>(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/DataUsageSummary$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mReceiver:Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;

    .line 1591
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 1592
    .local v8, "mFilter":Landroid/content/IntentFilter;
    const-string v19, "com.android.settings.trafficmanager.status"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1593
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mReceiver:Lcom/android/settings_ex/DataUsageSummary$StatusReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1600
    .end local v8    # "mFilter":Landroid/content/IntentFilter;
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mSavingServiceStateListener:Lcom/opera/max/sdk/saving/IStateListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings_ex/datasaving/DataSavingHelper;->registerSavingStateListener(Lcom/opera/max/sdk/saving/IStateListener;)V

    .line 1602
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDataCompressionSwitchView()V

    .line 1603
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsChartFragment:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 1604
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->updateChartSavedTV(Z)V

    .line 1611
    :cond_e
    :goto_5
    return-void

    .line 1467
    .restart local v9    # "mPR":Landroid/app/enterprise/PhoneRestrictionPolicy;
    .restart local v14    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1492
    .restart local v4    # "KEY_SWITCH_ON":Ljava/lang/String;
    .restart local v15    # "simSlotId":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setEnabled(Z)V

    .line 1493
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/settings_ex/trafficmanager/settings/TrafficSettingsActivity;->enableOfTrafficSettings:Z

    goto/16 :goto_1

    .line 1575
    .end local v9    # "mPR":Landroid/app/enterprise/PhoneRestrictionPolicy;
    .end local v14    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .restart local v16    # "subId":I
    .restart local v17    # "switchOn":I
    :catch_0
    move-exception v6

    .line 1576
    .local v6, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v19, "DataUsage"

    const-string v20, "switchOn SettingNotFoundException"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 1582
    .end local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataMonitoring:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings_ex/DataUsageSummary;->removePreferenceSummary(Landroid/view/View;)V

    goto/16 :goto_3

    .line 1594
    .end local v4    # "KEY_SWITCH_ON":Ljava/lang/String;
    .end local v15    # "simSlotId":I
    .end local v16    # "subId":I
    .end local v17    # "switchOn":I
    :catch_1
    move-exception v6

    .line 1595
    .local v6, "e":Ljava/lang/Exception;
    const-string v19, "DataUsage"

    const-string v20, "unregisterReceiver Exception"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1606
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_12
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->updateChartSavedTV(Z)V

    .line 1607
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateSavedDataCircleView()V

    goto :goto_5
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1639
    invoke-super {p0}, Lcom/android/settings_ex/HighlightingFragment;->onStop()V

    .line 1641
    sget-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->isMTR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 1642
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1643
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mBound:Z

    .line 1644
    const-string v0, "DataUsage"

    const-string v1, "onStop: unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1429
    invoke-super {p0, p1}, Lcom/android/settings_ex/HighlightingFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 1432
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1433
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 1437
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    .line 1439
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DATASLOT2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1440
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "mobile 2"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 1442
    :cond_0
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 9
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2759
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2760
    .local v0, "context":Landroid/content/Context;
    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2762
    .local v1, "mPhone":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticLGTModel()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2763
    const-string v7, "persist.sys.restrict_background"

    if-eqz p1, :cond_2

    const-string v4, "true"

    :goto_0
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2764
    :cond_0
    move v2, p1

    .line 2765
    .local v2, "mRestrictBackground":Z
    const-string v4, ""

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0160

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v4, v7, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    .line 2766
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2767
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_powersaving_mode"

    if-eqz p1, :cond_3

    move v4, v5

    :goto_1
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2768
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$16;

    invoke-direct {v4, p0, v2}, Lcom/android/settings_ex/DataUsageSummary$16;-><init>(Lcom/android/settings_ex/DataUsageSummary;Z)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2778
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2783
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2784
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v4, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 2796
    :cond_1
    return-void

    .line 2763
    .end local v2    # "mRestrictBackground":Z
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_2
    const-string v4, "false"

    goto :goto_0

    .restart local v2    # "mRestrictBackground":Z
    :cond_3
    move v4, v6

    .line 2767
    goto :goto_1
.end method

.method public showOnlineHelpDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 6311
    const-string v5, "DataUsage"

    const-string v6, "showOnlineHelpDialog"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6312
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    .line 6313
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04022b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 6315
    .local v1, "dialogLayout":Landroid/view/View;
    const v5, 0x7f0d051d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 6316
    .local v0, "checkboxView":Landroid/widget/CheckBox;
    const v5, 0x7f0d00ec

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 6317
    .local v4, "messageView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e1654

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e1723

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6318
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 6319
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 6320
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "onlinehelp_show_dialog"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 6321
    .local v2, "doNotShow":Z
    const-string v5, "DataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showOnlineHelpDialog doNotShow :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6322
    if-nez v2, :cond_0

    .line 6323
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e1653

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0f8c

    new-instance v7, Lcom/android/settings_ex/DataUsageSummary$47;

    invoke-direct {v7, p0, v0, v3}, Lcom/android/settings_ex/DataUsageSummary$47;-><init>(Lcom/android/settings_ex/DataUsageSummary;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e01ba

    new-instance v7, Lcom/android/settings_ex/DataUsageSummary$46;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/DataUsageSummary$46;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings_ex/DataUsageSummary$45;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/DataUsageSummary$45;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 6358
    :goto_0
    return-void

    .line 6350
    :cond_0
    const-string v5, "DataUsage"

    const-string v6, "showOnlineHelpDialog donnotShow ,Start Saving directly"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6351
    iput-boolean v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z

    .line 6352
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    if-eqz v5, :cond_1

    .line 6353
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;

    invoke-virtual {v5}, Lcom/android/settings_ex/datasaving/DataSavingHelper;->startSaving()V

    .line 6355
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "opera_max_china_state"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
