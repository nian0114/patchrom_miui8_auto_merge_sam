.class public Lcom/android/settings_ex/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/android/settings_ex/ButtonBarHandler;
.implements Lcom/android/settings_ex/widget/CustomScrollView$ObservableScrollViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SettingsActivity$onEditButtonClicked;,
        Lcom/android/settings_ex/SettingsActivity$ViewPagerAdapter;,
        Lcom/android/settings_ex/SettingsActivity$AssistantReceiver;,
        Lcom/android/settings_ex/SettingsActivity$onKeyBackPressedListener;
    }
.end annotation


# static fields
.field public static final ENTRY_EXTRA_FOR_SEARCH:[Ljava/lang/String;

.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static final LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

.field private static bReDrawTab:Z

.field private static bReDrawTabAirplaneMode:Z

.field private static mContext:Landroid/content/Context;

.field private static sSalesCode:Ljava/lang/String;

.field private static sShowNoHomeNotice:Z


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private SETTINGS_FOR_T4R:[I

.field private addLayoutCount:I

.field private bEasymode:Z

.field private bEnableTab:Z

.field private bForceFocus:Z

.field private bOldShowDev:Z

.field private curOrientation:I

.field private fromActSearch:Z

.field private isKioskContainer:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessoriesMenuOpened:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mAddQuickSettings:Landroid/widget/TextView;

.field private mAddQuickSettingsContainer:Landroid/view/ViewGroup;

.field private mAirplaneObserver:Landroid/database/ContentObserver;

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/view/ViewGroup;

.field private mDashboardSummarySplit:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

.field private mDashboardTabcategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDisplayHomeAsUpEnabled:Z

.field private mDisplaySearch:Z

.field private final mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

.field private mEdit:Landroid/view/MenuItem;

.field private mEditQuickSettingExpanded:Z

.field private mFavorite:Lcom/android/settings_ex/dashboard/DashboardCategory;

.field private mFavoriteTilesCount:I

.field private mFontIndex:I

.field private mForceRedraw:Z

.field private mFotaUpdateStub:Landroid/view/ViewStub;

.field private mFragmentClass:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHomeActivitiesCount:I

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mIsEmerMode:Z

.field private mIsShortcut:Z

.field private mIsShowingDashboard:Z

.field private mKnoxCustomIsProKioskMode:Z

.field private mKnoxCustomProKioskSettingsItems:I

.field private mKnoxCustomProKioskSettingsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKnoxCustomSettingsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKnoxCustomSettingsState:I

.field private mNeedToRevertToInitialFragment:Z

.field private mNextButton:Landroid/widget/Button;

.field private mOnEditPressedListener:Lcom/android/settings_ex/SettingsActivity$onEditButtonClicked;

.field private mOnKeyBackPressedListener:Lcom/android/settings_ex/SettingsActivity$onKeyBackPressedListener;

.field mPagerAdapter:Lcom/android/settings_ex/SettingsActivity$ViewPagerAdapter;

.field private mQuickSettingsHeight:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResultIntentData:Landroid/content/Intent;

.field private mScrollView:Lcom/android/settings_ex/widget/CustomScrollView;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchMenuItemExpanded:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowFotaView:Z

.field private mSinglePane:Z

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTetheredData:I

.field private mTitleRedID:I

.field private mTopLevelDashboardId:I

.field private maxTabCnt:I

.field private pager:Landroid/support/v4/view/ViewPager;

.field private tabIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 283
    sput-boolean v3, Lcom/android/settings_ex/SettingsActivity;->sShowNoHomeNotice:Z

    .line 288
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    .line 416
    new-array v0, v5, [Ljava/lang/String;

    const-class v1, Lcom/android/settings_ex/IccLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    aput-object v1, v0, v4

    const-string v1, "com.android.settings.fingerprint.FingerprintEntry"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings_ex/SettingsActivity;->ENTRY_EXTRA_FOR_SEARCH:[Ljava/lang/String;

    .line 421
    const/16 v0, 0xa4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.settings.WirelessSettings"

    aput-object v1, v0, v3

    const-string v1, "com.android.settings.wifi.WifiSettings"

    aput-object v1, v0, v4

    const-string v1, "com.android.settings.wifi.mobileap.WifiApSettings"

    aput-object v1, v0, v2

    const-string v1, "com.android.settings.wifi.AdvancedWifiSettings"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "com.android.settings.wifi.WifiShareProfile"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.settings.wifi.SavedAccessPointsWifiSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.settings.bluetooth.BluetoothSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.settings.sim.SimSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.settings.mirrorlink.MirrorLink"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.settings.TetherSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.settings.wifi.p2p.WifiP2pSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.settings.vpn2.VpnSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.android.settings.vpn2.VpnSettingsForATT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.android.settings.DateTimeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.android.settings.LocalePicker"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.android.settings.inputmethod.InputMethodAndLanguageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.android.settings.handwritingsearch.HandwritingLanguagePreference"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.android.settings.inputmethod.SpellCheckersSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.android.settings.inputmethod.UserDictionaryList"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.android.settings.UserDictionarySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.android.settings.HomeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.android.settings.premiumwatch.PremiumWatchSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.android.settings.DisplaySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.android.settings.DeviceInfoSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.android.settings.applications.ManageApplications"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.android.settings.applications.ManageDefaultApps"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.android.settings.applications.ManageAssist"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.android.settings.applications.ProcessStatsUi"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.android.settings.applications.UsageAccessDetails"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.android.settings.notification.NotificationStation"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.android.settings.location.LocationSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.android.settings.SecuritySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.android.settings.PrivacySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.android.settings.activekey.ActiveKeySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.android.settings.DeviceAdminSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.android.settings.accessibility.AccessibilitySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.android.settings.accessibility.CaptionPropertiesFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.android.settings.accessibility.ToggleDaltonizerPreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.android.settings.accessibility.AccessibilitySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.android.settings.accessibility.AccessibilitySettingsHearing"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.android.settings.accessibility.AccessibilitySettingsVision"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "com.android.settings.accessibility.AccessibilitySettingsMobility"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "com.android.settings.AssistantMenuPreferenceFragmentActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "com.android.settings.accessibility.ToggleAccessibilityServicePreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "com.android.settings.accessibility.ToggleScreenMagnificationPreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "com.android.settings.accessibility.ToggleFeaturePreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "com.android.settings.accessibility.ToggleGlobalGesturePreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "com.android.settings.tts.TextToSpeechSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "com.android.settings.deviceinfo.StorageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "com.android.settings.deviceinfo.PrivateVolumeForget"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "com.android.settings.deviceinfo.PrivateVolumeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "com.android.settings.deviceinfo.PublicVolumeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "com.android.settings.DevelopmentSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "com.android.settings.nfc.AndroidBeam"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "com.android.settings.nfc.NfcCommonSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "com.android.settings.nfc.NfcSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "com.android.settings.nearby.NearbySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "com.android.settings.nfc.NfcOsaifukeitaiSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "com.android.settings.wfd.WifiDisplaySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "com.android.settings.fuelgauge.PowerUsageSummary"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "com.android.settings.accounts.AccountSyncSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "com.android.settings.accounts.AccountSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "com.android.settings.CryptKeeperSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "com.android.settings.CryptKeeperInterstitial"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "com.android.settings.encryption.CryptSDCardSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "com.android.settings.DataUsageSummary"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "com.android.settings.DreamSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "com.android.settings.users.UserSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "com.android.settings.notification.NotificationAccessSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "com.android.settings.notification.ZenAccessSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "com.android.settings.print.PrintSettingsFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "com.android.settings.print.PrintJobSettingsFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "com.android.settings.TrustedCredentialsSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "com.android.settings.UserCredentialsSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "com.android.settings.nfc.PaymentSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "com.android.settings.nfc.PaymentBaseSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "com.android.settings.safetycare.SafetyCareSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "com.android.settings.safetycare.SafetyCareEmergencyMode"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "com.android.settings.inputmethod.KeyboardLayoutPickerFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "com.android.settings.LockscreenMenuSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "com.android.settings.AirplaneModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "com.android.settings.DockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "com.android.settings.accessories.LedCoverCallerIDSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "com.android.settings.accessories.LedCoverCallerIDList"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "com.android.settings.accessories.LedCoverCallerIDSelectionList"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "com.android.settings.personalpage.PersonalPageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "com.android.settings.privatebox.PrivateBoxSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "com.android.settings.AirplaneModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "com.android.settings.AirplaneModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "com.nttdocomo.android.docomoset.DocomoServiceSetting"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "com.android.settings.DCMHomeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "com.android.settings.fingerprint.FingerprintSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "com.android.settings.fingerprint.PaypalFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "com.android.settings.notification.ZenModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "com.android.settings.notification.ZenModeDNDSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "com.android.settings.notification.NotificationSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "com.android.settings.notification.VolumeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "com.android.settings.ChooseLockPassword.ChooseLockPasswordFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "com.android.settings.ChooseLockPattern.ChooseLockPatternFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "com.android.settings.applications.InstalledAppDetails"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "com.android.settings.applications.ProcessStatsUi"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "com.android.settings.fuelgauge.BatterySaverSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "com.android.settings.notification.AppNotificationSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "com.android.settings.notification.BlockNotificationList"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "com.android.settings.notification.PriorityNotiAppList"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "com.android.settings.notification.OtherSoundSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "com.android.settings.notification.SoundEffectSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "com.android.settings.notification.VibrationsSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "com.android.settings.notification.VibrationIntensitySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "com.android.settings.notification.NotificationsSubSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "com.android.settings.quicklaunch.QuickLaunchSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "com.android.settings.ApnSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "com.android.settings.notification.ZenModePrioritySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "com.android.settings.notification.ZenModeAutomationSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "com.android.settings.notification.ZenModeScheduleRuleSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "com.android.settings.notification.ZenModeEventRuleSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "com.android.settings.notification.ZenModeExternalRuleSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "com.android.settings.applications.ProcessStatsUi"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "com.android.settings.fuelgauge.PowerUsageDetail"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "com.android.settings.applications.ProcessStatsSummary"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "com.android.settings.applications.DrawOverlayDetails"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "com.android.settings.applications.WriteSettingsDetails"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "com.android.settings.cpa.CpaAddmenu"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "com.android.settings.ApplicationsSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "com.android.settings.easymode.EasyModeApp"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "com.android.settings.TRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "com.android.settings.GlobalRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "com.android.settings.LGTRoamingEnv"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "com.android.settings.LGTCustomerService"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "com.android.settings.GlobalLteRoaming"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "com.android.settings.powersavingmode.GenericPowerSavingMode"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "com.android.settings.powersavingmode.PowerSavingModeUltra"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "com.android.settings.GlobalRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "com.android.settings.OtherSecuritySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "com.android.settings.fmm.FindMyMobileSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "com.android.settings.SoftwareUpdateSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "com.android.settings.usefulfeature.Usefulfeature"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "com.android.settings.usefulfeature.UsefulFeatureHub"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "com.android.settings.motion.MotionSettings2015"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "com.android.settings.nearbyscan.NearbyScanning"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "com.android.settings.spen.SPenSettingsMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "com.android.settings.spen.PenPointerHelp"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "com.android.settings.spen.AirButtonHelp"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "com.android.settings.spen.PenAirViewSettingsMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "com.android.settings.spen.DirectPenInputSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "com.android.settings.dualclock.DualClockSetting"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "com.android.settings.LteModeActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "com.android.settings.DataSlotChoice"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "com.android.settings.SmartStaySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "com.android.settings.ShowInfomationMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "com.android.settings.SecuredLockSettingsMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "com.android.settings.LockscreenNotificationApplist"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "com.android.settings.lockappshortcut.LockAppShortcutSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "com.android.settings.legal.LegalInfoSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "com.android.settings.deviceinfo.BatteryInfoSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "com.android.settings.deviceinfo.SoftwareInfoSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "com.android.settings.SwipeLockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "com.android.settings.spen.PenAirCmdSettingsMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "com.android.settings.GigaLteSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "com.android.settings.DomesticSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "com.android.settings.cloud.CloudSettingsMainFragment"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "com.android.settings.bluetooth.DeviceProfilesSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "com.android.settings.SecurityPolicySettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "com.android.settings.RedPacketModeSettings"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 598
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings_ex/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    .line 647
    sput-boolean v3, Lcom/android/settings_ex/SettingsActivity;->bReDrawTab:Z

    .line 648
    sput-boolean v3, Lcom/android/settings_ex/SettingsActivity;->bReDrawTabAirplaneMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 284
    iput v1, p0, Lcom/android/settings_ex/SettingsActivity;->mTopLevelDashboardId:I

    .line 291
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mForceRedraw:Z

    .line 292
    iput v1, p0, Lcom/android/settings_ex/SettingsActivity;->mTetheredData:I

    .line 293
    iput-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomProKioskSettingsMap:Ljava/util/HashMap;

    .line 317
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    .line 318
    iput v1, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsState:I

    .line 319
    iput v1, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    .line 322
    iput v3, p0, Lcom/android/settings_ex/SettingsActivity;->mTitleRedID:I

    .line 329
    const/16 v0, 0x33

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    .line 388
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->SETTINGS_FOR_T4R:[I

    .line 415
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->isKioskContainer:Z

    .line 619
    new-instance v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    invoke-direct {v0}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    .line 624
    iput-boolean v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    .line 629
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mIsEmerMode:Z

    .line 636
    iput v1, p0, Lcom/android/settings_ex/SettingsActivity;->mQuickSettingsHeight:I

    .line 640
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->bEasymode:Z

    .line 641
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->bEnableTab:Z

    .line 642
    iput v1, p0, Lcom/android/settings_ex/SettingsActivity;->mFontIndex:I

    .line 645
    iput v1, p0, Lcom/android/settings_ex/SettingsActivity;->addLayoutCount:I

    .line 646
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->bForceFocus:Z

    .line 649
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->bOldShowDev:Z

    .line 651
    iput v3, p0, Lcom/android/settings_ex/SettingsActivity;->mFavoriteTilesCount:I

    .line 656
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 657
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mEditQuickSettingExpanded:Z

    .line 658
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mAccessoriesMenuOpened:Z

    .line 662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 668
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings_ex/SettingsActivity;->maxTabCnt:I

    .line 671
    new-instance v0, Lcom/android/settings_ex/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SettingsActivity$1;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mHandler:Landroid/os/Handler;

    .line 684
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 685
    iput v4, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    .line 732
    iput-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings_ex/SettingsActivity$onKeyBackPressedListener;

    .line 738
    new-instance v0, Lcom/android/settings_ex/dashboard/DashboardCategory;

    invoke-direct {v0}, Lcom/android/settings_ex/dashboard/DashboardCategory;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mFavorite:Lcom/android/settings_ex/dashboard/DashboardCategory;

    .line 915
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->fromActSearch:Z

    .line 1026
    new-instance v0, Lcom/android/settings_ex/SettingsActivity$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/SettingsActivity$4;-><init>(Lcom/android/settings_ex/SettingsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mAirplaneObserver:Landroid/database/ContentObserver;

    .line 3730
    iput-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings_ex/SettingsActivity$onEditButtonClicked;

    return-void

    .line 329
    nop

    :array_0
    .array-data 4
        0x7f0d0660
        0x7f0d0662
        0x7f0d0661
        0x7f0d0663
        0x7f0d06b0
        0x7f0d0666
        0x7f0d066a
        0x7f0d0669
        0x7f0d0674
        0x7f0d067c
        0x7f0d067b
        0x7f0d067c
        0x7f0d0682
        0x7f0d06aa
        0x7f0d06ab
        0x7f0d068b
        0x7f0d0678
        0x7f0d06a9
        0x7f0d0690
        0x7f0d069e
        0x7f0d069a
        0x7f0d06a7
        0x7f0d068e
        0x7f0d06a2
        0x7f0d001a
        0x7f0d06a6
        0x7f0d06ad
        0x7f0d06b2
        0x7f0d06a1
        0x7f0d0675
        0x7f0d016b
        0x7f0d0667
        0x7f0d06ac
        0x7f0d0664
        0x7f0d0665
        0x7f0d066d
        0x7f0d066b
        0x7f0d06a4
        0x7f0d016b
        0x7f0d0670
        0x7f0d0687
        0x7f0d0689
        0x7f0d0692
        0x7f0d0695
        0x7f0d069d
        0x7f0d06a9
        0x7f0d069e
        0x7f0d069c
        0x7f0d0688
        0x7f0d0681
        0x7f0d0694
    .end array-data

    .line 388
    :array_1
    .array-data 4
        0x7f0d0660
        0x7f0d0662
        0x7f0d0666
        0x7f0d0668
        0x7f0d066a
        0x7f0d066e
        0x7f0d0670
        0x7f0d067b
        0x7f0d067c
        0x7f0d0682
        0x7f0d068b
        0x7f0d0678
        0x7f0d0690
        0x7f0d069a
        0x7f0d069d
        0x7f0d06a2
        0x7f0d001a
        0x7f0d06a3
        0x7f0d06a6
        0x7f0d06a7
        0x7f0d06aa
        0x7f0d06ab
        0x7f0d06ad
        0x7f0d06ae
        0x7f0d06b2
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings_ex/SettingsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/SettingsActivity;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 176
    iget v0, p0, Lcom/android/settings_ex/SettingsActivity;->tabIndex:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/SettingsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/SettingsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->invalidateCategories(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 176
    iget v0, p0, Lcom/android/settings_ex/SettingsActivity;->addLayoutCount:I

    return v0
.end method

.method static synthetic access$1510(Lcom/android/settings_ex/SettingsActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 176
    iget v0, p0, Lcom/android/settings_ex/SettingsActivity;->addLayoutCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings_ex/SettingsActivity;->addLayoutCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/SettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/android/settings_ex/SettingsActivity;->mShowFotaView:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/SettingsActivity;)Landroid/view/ViewStub;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mFotaUpdateStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->bEnableTab:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 176
    sget-boolean v0, Lcom/android/settings_ex/SettingsActivity;->bReDrawTabAirplaneMode:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 176
    sput-boolean p0, Lcom/android/settings_ex/SettingsActivity;->bReDrawTabAirplaneMode:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->drawDashboardTab()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 176
    iget v0, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/SettingsActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private clearBackStack()V
    .locals 2

    .prologue
    .line 1041
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1042
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1043
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 1045
    :cond_0
    return-void
.end method

.method private drawDashboardTab()V
    .locals 7

    .prologue
    const v6, 0x7f0d04ea

    .line 2239
    iget-boolean v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v4, :cond_0

    .line 2240
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v4, :cond_0

    .line 2241
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 2243
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setElevation(F)V

    .line 2244
    const v4, 0x7f04020f

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->setContentView(I)V

    .line 2245
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/settings_ex/SettingsActivity;->maxTabCnt:I

    .line 2246
    const v4, 0x7f0d00cd

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 2247
    const v4, 0x7f0d04e9

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/HorizontalScrollView;

    iput-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 2248
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->twUseRatioMaintainedImage()V

    .line 2249
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v5, Lcom/android/settings_ex/SettingsActivity$15;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/SettingsActivity$15;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2261
    const v4, 0x1020012

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    .line 2262
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 2263
    sget-object v4, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->rebuildTabContainer(Landroid/content/Context;)V

    .line 2264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 2265
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/dashboard/DashboardCategory;

    invoke-virtual {v4}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTilesCount()I

    move-result v4

    if-eqz v4, :cond_1

    .line 2266
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/dashboard/DashboardCategory;

    iget v4, v4, Lcom/android/settings_ex/dashboard/DashboardCategory;->titleRes:I

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 2268
    .local v2, "spec":Landroid/widget/TabHost$TabSpec;
    packed-switch v0, :pswitch_data_0

    .line 2285
    invoke-virtual {v2, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 2288
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2264
    .end local v2    # "spec":Landroid/widget/TabHost$TabSpec;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2270
    .restart local v2    # "spec":Landroid/widget/TabHost$TabSpec;
    :pswitch_0
    invoke-virtual {v2, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 2273
    :pswitch_1
    const v4, 0x7f0d04eb

    invoke-virtual {v2, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 2276
    :pswitch_2
    const v4, 0x7f0d04ec

    invoke-virtual {v2, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 2279
    :pswitch_3
    const v4, 0x7f0d04ed

    invoke-virtual {v2, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 2282
    :pswitch_4
    const v4, 0x7f0d04ee

    invoke-virtual {v2, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 2290
    .end local v2    # "spec":Landroid/widget/TabHost$TabSpec;
    :cond_1
    iget v4, p0, Lcom/android/settings_ex/SettingsActivity;->maxTabCnt:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/settings_ex/SettingsActivity;->maxTabCnt:I

    goto :goto_2

    .line 2293
    :cond_2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2294
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 2295
    .local v3, "w":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2311
    new-instance v4, Lcom/android/settings_ex/SettingsActivity$ViewPagerAdapter;

    invoke-direct {v4, p0, p0}, Lcom/android/settings_ex/SettingsActivity$ViewPagerAdapter;-><init>(Lcom/android/settings_ex/SettingsActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mPagerAdapter:Lcom/android/settings_ex/SettingsActivity$ViewPagerAdapter;

    .line 2312
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mPagerAdapter:Lcom/android/settings_ex/SettingsActivity$ViewPagerAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2313
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lcom/android/settings_ex/SettingsActivity$16;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/SettingsActivity$16;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2325
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget v5, p0, Lcom/android/settings_ex/SettingsActivity;->maxTabCnt:I

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 2326
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mPagerAdapter:Lcom/android/settings_ex/SettingsActivity$ViewPagerAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/SettingsActivity$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 2327
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 2328
    return-void

    .line 2268
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getEntryForSearch()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 589
    sget-object v2, Lcom/android/settings_ex/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v2

    sget-object v3, Lcom/android/settings_ex/SettingsActivity;->ENTRY_EXTRA_FOR_SEARCH:[Ljava/lang/String;

    array-length v3, v3

    add-int v1, v2, v3

    .line 590
    .local v1, "length":I
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEntryForSearch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 596
    :goto_0
    return-object v2

    .line 593
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 594
    .local v0, "both":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/settings_ex/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 595
    sget-object v2, Lcom/android/settings_ex/SettingsActivity;->ENTRY_EXTRA_FOR_SEARCH:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 596
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_0
.end method

.method private getHidedViewRatio()F
    .locals 3

    .prologue
    .line 3632
    const/4 v0, 0x0

    .line 3633
    .local v0, "hidedViewRatio":F
    iget v1, p0, Lcom/android/settings_ex/SettingsActivity;->mQuickSettingsHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mScrollView:Lcom/android/settings_ex/widget/CustomScrollView;

    invoke-virtual {v2}, Lcom/android/settings_ex/widget/CustomScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings_ex/SettingsActivity;->mQuickSettingsHeight:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 3634
    return v0
.end method

.method private getHomeActivitiesCount()I
    .locals 2

    .prologue
    .line 1580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1581
    .local v0, "homeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 1582
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method private getMetaData()V
    .locals 5

    .prologue
    .line 3415
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 3417
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 3428
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 3418
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/SettingsActivity;->mTopLevelDashboardId:I

    .line 3419
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 3420
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3421
    const-string v2, "com.android.settings.location.LocationSettings"

    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3422
    const v2, 0x7f0d069e

    iput v2, p0, Lcom/android/settings_ex/SettingsActivity;->mTopLevelDashboardId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3424
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 3426
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get Metadata for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSettingsActivityContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2519
    sget-object v0, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2520
    sget-object v0, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    .line 2522
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1982
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 1991
    :cond_0
    :goto_0
    return-object v0

    .line 1983
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1984
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 1985
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1989
    :cond_3
    const-class v1, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private invalidateCategories(Z)V
    .locals 3
    .param p1, "forceRefresh"    # Z

    .prologue
    const/4 v2, 0x1

    .line 797
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 798
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 799
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 800
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg_data_force_refresh"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 802
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "mCtx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 3674
    const-string v2, "isContainerOnlyMode"

    const-string v3, "isContainerOnlyMode()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3675
    if-nez p1, :cond_0

    .line 3676
    const-string v2, "isContainerOnlyMode"

    const-string v3, "null, false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    :goto_0
    return v1

    .line 3679
    :cond_0
    const-string v2, "isKioskModeEnabled"

    invoke-static {p1, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 3680
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v2, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3681
    const-string v1, "isContainerOnlyMode"

    const-string v2, "isContainerOnlyMode() true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    const/4 v1, 0x1

    goto :goto_0

    .line 3684
    :cond_1
    const-string v2, "isContainerOnlyMode"

    const-string v3, "isContainerOnlyMode() false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 984
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 991
    :cond_0
    :goto_0
    return v2

    .line 988
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lcom/android/settings_ex/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 989
    sget-object v3, Lcom/android/settings_ex/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 988
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 980
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 981
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "com.android.settings.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V
    .locals 30
    .param p0, "resid"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2356
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 2357
    .local v20, "start":J
    const/16 v18, 0x0

    .line 2359
    .local v18, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v18

    .line 2360
    invoke-static/range {v18 .. v18}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 2363
    .local v5, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v24

    .local v24, "type":I
    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 2366
    :cond_1
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 2367
    .local v16, "nodeName":Ljava/lang/String;
    const-string v25, "dashboard-categories"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 2368
    new-instance v25, Ljava/lang/RuntimeException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "XML document must start with <preference-categories> tag; found"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " at "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2501
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v16    # "nodeName":Ljava/lang/String;
    .end local v24    # "type":I
    :catch_0
    move-exception v10

    .line 2502
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v25, Ljava/lang/RuntimeException;

    const-string v26, "Error parsing categories"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2506
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v8, v26, v20

    .line 2507
    .local v8, "delta":J
    const-string v26, "SettingsActivity"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "loadCategoriesFromResource took: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ms"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    if-eqz v18, :cond_2

    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2509
    :cond_2
    throw v25

    .line 2372
    .end local v8    # "delta":J
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v16    # "nodeName":Ljava/lang/String;
    .restart local v24    # "type":I
    :cond_3
    const/4 v7, 0x0

    .line 2373
    .local v7, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    .line 2375
    .local v17, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1c

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_1c

    .line 2376
    :cond_5
    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    .line 2379
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 2380
    const-string v25, "dashboard-category"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1b

    .line 2381
    new-instance v6, Lcom/android/settings_ex/dashboard/DashboardCategory;

    invoke-direct {v6}, Lcom/android/settings_ex/dashboard/DashboardCategory;-><init>()V

    .line 2382
    .local v6, "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    sget-object v25, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 2384
    .local v19, "sa":Landroid/content/res/TypedArray;
    const/16 v25, 0x1

    const/16 v26, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v6, Lcom/android/settings_ex/dashboard/DashboardCategory;->id:J

    .line 2387
    const/16 v25, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v23

    .line 2389
    .local v23, "tv":Landroid/util/TypedValue;
    if-eqz v23, :cond_6

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 2390
    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 2391
    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v6, Lcom/android/settings_ex/dashboard/DashboardCategory;->titleRes:I

    .line 2396
    :cond_6
    :goto_1
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 2397
    sget-object v25, Lcom/android/internal/R$styleable;->Preference:[I

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 2399
    const/16 v25, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v23

    .line 2401
    if-eqz v23, :cond_7

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 2402
    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v25, v0

    if-eqz v25, :cond_10

    .line 2403
    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v6, Lcom/android/settings_ex/dashboard/DashboardCategory;->key:Ljava/lang/String;

    .line 2408
    :cond_7
    :goto_2
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 2409
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 2410
    .local v11, "innerDepth":I
    const/4 v15, 0x0

    .line 2412
    .local v15, "isGoogleSettingsAdded":Z
    :cond_8
    :goto_3
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1a

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v25

    move/from16 v0, v25

    if-le v0, v11, :cond_1a

    .line 2413
    :cond_9
    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    .line 2416
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2417
    .local v13, "innerNodeName":Ljava/lang/String;
    const-string v25, "dashboard-tile"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_19

    .line 2418
    new-instance v22, Lcom/android/settings_ex/dashboard/DashboardTile;

    invoke-direct/range {v22 .. v22}, Lcom/android/settings_ex/dashboard/DashboardTile;-><init>()V

    .line 2419
    .local v22, "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    sget-object v25, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 2421
    const/16 v25, 0x1

    const/16 v26, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    .line 2424
    const/16 v25, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v23

    .line 2426
    if-eqz v23, :cond_a

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 2427
    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v25, v0

    if-eqz v25, :cond_11

    .line 2428
    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->titleRes:I

    .line 2433
    :cond_a
    :goto_4
    const/16 v25, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v23

    .line 2435
    if-eqz v23, :cond_b

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 2436
    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v25, v0

    if-eqz v25, :cond_12

    .line 2437
    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->summaryRes:I

    .line 2442
    :cond_b
    :goto_5
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    .line 2444
    const/16 v25, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 2447
    sget-object v25, Lcom/android/settings_ex/R$styleable;->SettingsTile:[I

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2448
    .local v4, "SettingsTile_sa":Landroid/content/res/TypedArray;
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->categoryId:I

    .line 2449
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->removeTileapps:Ljava/lang/String;

    .line 2450
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2451
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 2452
    if-nez v7, :cond_c

    .line 2453
    new-instance v7, Landroid/os/Bundle;

    .end local v7    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2455
    .restart local v7    # "curBundle":Landroid/os/Bundle;
    :cond_c
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    .line 2457
    .local v12, "innerDepth2":I
    :cond_d
    :goto_6
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_15

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v25

    move/from16 v0, v25

    if-le v0, v12, :cond_15

    .line 2458
    :cond_e
    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_d

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_d

    .line 2461
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 2462
    .local v14, "innerNodeName2":Ljava/lang/String;
    const-string v25, "extra"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 2463
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const-string v26, "extra"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v5, v7}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2465
    invoke-static/range {v18 .. v18}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 2503
    .end local v4    # "SettingsTile_sa":Landroid/content/res/TypedArray;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v7    # "curBundle":Landroid/os/Bundle;
    .end local v11    # "innerDepth":I
    .end local v12    # "innerDepth2":I
    .end local v13    # "innerNodeName":Ljava/lang/String;
    .end local v14    # "innerNodeName2":Ljava/lang/String;
    .end local v15    # "isGoogleSettingsAdded":Z
    .end local v16    # "nodeName":Ljava/lang/String;
    .end local v17    # "outerDepth":I
    .end local v19    # "sa":Landroid/content/res/TypedArray;
    .end local v22    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    .end local v23    # "tv":Landroid/util/TypedValue;
    .end local v24    # "type":I
    :catch_1
    move-exception v10

    .line 2504
    .local v10, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v25, Ljava/lang/RuntimeException;

    const-string v26, "Error parsing categories"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2393
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .restart local v7    # "curBundle":Landroid/os/Bundle;
    .restart local v16    # "nodeName":Ljava/lang/String;
    .restart local v17    # "outerDepth":I
    .restart local v19    # "sa":Landroid/content/res/TypedArray;
    .restart local v23    # "tv":Landroid/util/TypedValue;
    .restart local v24    # "type":I
    :cond_f
    :try_start_4
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iput-object v0, v6, Lcom/android/settings_ex/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2405
    :cond_10
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v6, Lcom/android/settings_ex/dashboard/DashboardCategory;->key:Ljava/lang/String;

    goto/16 :goto_2

    .line 2430
    .restart local v11    # "innerDepth":I
    .restart local v13    # "innerNodeName":Ljava/lang/String;
    .restart local v15    # "isGoogleSettingsAdded":Z
    .restart local v22    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    :cond_11
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 2439
    :cond_12
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 2466
    .restart local v4    # "SettingsTile_sa":Landroid/content/res/TypedArray;
    .restart local v12    # "innerDepth2":I
    .restart local v14    # "innerNodeName2":Ljava/lang/String;
    :cond_13
    const-string v25, "intent"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 2467
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_6

    .line 2470
    :cond_14
    invoke-static/range {v18 .. v18}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 2473
    .end local v14    # "innerNodeName2":Ljava/lang/String;
    :cond_15
    invoke-virtual {v7}, Landroid/os/Bundle;->size()I

    move-result v25

    if-lez v25, :cond_16

    .line 2474
    move-object/from16 v0, v22

    iput-object v7, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 2475
    const/4 v7, 0x0

    .line 2479
    :cond_16
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x7f0d001a

    cmp-long v25, v26, v28

    if-nez v25, :cond_17

    .line 2480
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->updateExternalTiles(Landroid/content/Context;Lcom/android/settings_ex/dashboard/DashboardTile;)Z

    move-result v15

    .line 2481
    if-eqz v15, :cond_8

    .line 2487
    :cond_17
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x7f0d0669

    cmp-long v25, v26, v28

    if-nez v25, :cond_18

    invoke-static/range {p2 .. p2}, Lcom/android/settings_ex/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 2488
    :cond_18
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/settings_ex/dashboard/DashboardCategory;->addTile(Lcom/android/settings_ex/dashboard/DashboardTile;)V

    goto/16 :goto_3

    .line 2493
    .end local v4    # "SettingsTile_sa":Landroid/content/res/TypedArray;
    .end local v12    # "innerDepth2":I
    .end local v22    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    :cond_19
    invoke-static/range {v18 .. v18}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 2496
    .end local v13    # "innerNodeName":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2498
    .end local v6    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v11    # "innerDepth":I
    .end local v15    # "isGoogleSettingsAdded":Z
    .end local v19    # "sa":Landroid/content/res/TypedArray;
    .end local v23    # "tv":Landroid/util/TypedValue;
    :cond_1b
    invoke-static/range {v18 .. v18}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 2506
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v8, v26, v20

    .line 2507
    .restart local v8    # "delta":J
    const-string v25, "SettingsActivity"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "loadCategoriesFromResource took: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " ms"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    if-eqz v18, :cond_1d

    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2510
    :cond_1d
    return-void
.end method

.method private populateKnoxCustomProKioskSettingsMap()V
    .locals 3

    .prologue
    .line 3721
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomProKioskSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0662

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3722
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomProKioskSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0666

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3723
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomProKioskSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d069e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3724
    return-void
.end method

.method private populateKnoxCustomSettingsMap()V
    .locals 4

    .prologue
    const/16 v3, 0x200

    .line 3702
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0662

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3703
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0666

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3704
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0667

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3705
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0682

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3706
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d069a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3708
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d06a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3709
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d06a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3710
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d068e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3711
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d06af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3712
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d068b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3713
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d068c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3714
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d068d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3715
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d067a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3716
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0678

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3717
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d0679

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3718
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0d069e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3719
    return-void
.end method

.method private rebuildTabContainer(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 1508
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1509
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SettingsActivity;->getFavoriteCategories(Z)Lcom/android/settings_ex/dashboard/DashboardCategory;

    move-result-object v0

    .line 1510
    .local v0, "favorites":Lcom/android/settings_ex/dashboard/DashboardCategory;
    const-string v2, "main_mode"

    invoke-virtual {p0, v3, v2}, Lcom/android/settings_ex/SettingsActivity;->getDashboardCategories(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;

    .line 1511
    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTilesCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ConfigQuickSettings"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "HIDE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1512
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1514
    :cond_0
    return-void
.end method

.method public static requestHomeNotice()V
    .locals 1

    .prologue
    .line 3441
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/SettingsActivity;->sShowNoHomeNotice:Z

    .line 3442
    return-void
.end method

.method private revertToInitialFragment()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3507
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 3508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .line 3509
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 3510
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-nez v0, :cond_1

    .line 3512
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3526
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 3527
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 3529
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsActivity;->mainViewVisible(Z)V

    .line 3530
    return-void

    .line 3523
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    goto :goto_0

    .line 3513
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setAnimationSearchView(Z)V
    .locals 8
    .param p1, "expand"    # Z

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 3548
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v4, :cond_1

    .line 3570
    :cond_0
    :goto_0
    return-void

    .line 3550
    :cond_1
    const/4 v0, 0x0

    .line 3551
    .local v0, "a1":Landroid/view/animation/AlphaAnimation;
    if-eqz p1, :cond_3

    .line 3552
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "a1":Landroid/view/animation/AlphaAnimation;
    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3557
    .restart local v0    # "a1":Landroid/view/animation/AlphaAnimation;
    :goto_1
    if-eqz v0, :cond_2

    .line 3558
    const-wide/16 v4, 0x168

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3562
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "android:id/search_bar"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3563
    .local v3, "searchBarId":I
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v3}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 3564
    .local v2, "searchBar":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 3565
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3567
    .end local v2    # "searchBar":Landroid/widget/LinearLayout;
    .end local v3    # "searchBarId":I
    :catch_0
    move-exception v1

    .line 3568
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 3554
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "a1":Landroid/view/animation/AlphaAnimation;
    invoke-direct {v0, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v0    # "a1":Landroid/view/animation/AlphaAnimation;
    goto :goto_1

    .line 3567
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public static setSettingsActivityContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2512
    sput-object p0, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    .line 2514
    sget-object v0, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->checkSupportVolteSettings(Landroid/content/Context;)V

    .line 2515
    sget-object v0, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->checkVzwVoLTEFeatureEnabled(Landroid/content/Context;)V

    .line 2516
    return-void
.end method

.method private setTitleFromBackStack()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1650
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 1651
    .local v1, "count":I
    if-nez v1, :cond_2

    .line 1652
    iget v4, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    if-lez v4, :cond_1

    .line 1653
    iget v4, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->setTitle(I)V

    .line 1658
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_0

    iget v4, p0, Lcom/android/settings_ex/SettingsActivity;->mTitleRedID:I

    if-lez v4, :cond_0

    .line 1660
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.knox.containeragent2"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/SettingsActivity;->mTitleRedID:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    move v1, v3

    .line 1682
    .end local v1    # "count":I
    :goto_2
    return v1

    .line 1655
    .restart local v1    # "count":I
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1661
    :catch_0
    move-exception v2

    .line 1662
    .local v2, "e1":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1663
    .end local v2    # "e1":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v2

    .line 1664
    .local v2, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1670
    .end local v2    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-boolean v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-nez v4, :cond_3

    .line 1671
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1672
    if-ne v1, v5, :cond_4

    .line 1673
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1674
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1680
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 1681
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    goto :goto_2

    .line 1676
    .end local v0    # "bse":Landroid/app/FragmentManager$BackStackEntry;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1677
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_3
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 4
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 1686
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 1687
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 1688
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1692
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 1693
    iget-boolean v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_3

    .line 1694
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e151d    # 1.8886E38f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticKTTModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1695
    const v2, 0x7f0e128b

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsActivity;->setTitle(I)V

    .line 1703
    :cond_0
    :goto_1
    return-void

    .line 1690
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1697
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1700
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    .line 1586
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v7, 0x64

    if-lt v6, v7, :cond_0

    iget v6, p0, Lcom/android/settings_ex/SettingsActivity;->mTitleRedID:I

    if-lez v6, :cond_0

    .line 1588
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.knox.containeragent2"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/settings_ex/SettingsActivity;->mTitleRedID:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1596
    :cond_0
    :goto_0
    const-string v6, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1597
    .local v4, "initialTitleResId":I
    if-lez v4, :cond_2

    .line 1598
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1599
    iput v4, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    .line 1600
    const-string v6, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1602
    .local v5, "initialTitleResPackageName":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1604
    const/4 v6, 0x0

    :try_start_1
    new-instance v7, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/settings_ex/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 1606
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1607
    iget-object v6, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1608
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1622
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v5    # "initialTitleResPackageName":Ljava/lang/String;
    :goto_1
    return-void

    .line 1589
    .end local v4    # "initialTitleResId":I
    :catch_0
    move-exception v2

    .line 1590
    .local v2, "e1":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1591
    .end local v2    # "e1":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v2

    .line 1592
    .local v2, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1610
    .end local v2    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "initialTitleResId":I
    .restart local v5    # "initialTitleResPackageName":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 1611
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "SettingsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find package"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1614
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget v6, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsActivity;->setTitle(I)V

    goto :goto_1

    .line 1617
    .end local v5    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_2
    iput v8, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    .line 1618
    const-string v6, ":settings:show_fragment_title"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1619
    .local v3, "initialTitle":Ljava/lang/String;
    if-eqz v3, :cond_3

    .end local v3    # "initialTitle":Ljava/lang/String;
    :goto_2
    iput-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1620
    iget-object v6, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1619
    .restart local v3    # "initialTitle":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2
.end method

.method private showAndHandleFingerPrintDialog()V
    .locals 4

    .prologue
    .line 2036
    const v1, 0x7f0e029b

    const-string v2, "unlock_set_none"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(ILjava/lang/String;Z)Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    .line 2039
    .local v0, "dialog":Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "frp_warning_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2040
    return-void
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3486
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_0

    .line 3501
    :goto_0
    return-void

    .line 3489
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d049b

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 3490
    .local v8, "current":Landroid/app/Fragment;
    if-eqz v8, :cond_1

    instance-of v0, v8, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_1

    .line 3491
    check-cast v8, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .end local v8    # "current":Landroid/app/Fragment;
    iput-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .line 3497
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 3498
    iput-boolean v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 3499
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 3500
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SettingsActivity;->mainViewVisible(Z)V

    goto :goto_0

    .line 3493
    .restart local v8    # "current":Landroid/app/Fragment;
    :cond_1
    const-class v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f0e0de8

    move-object v0, p0

    move-object v6, v2

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings_ex/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    goto :goto_1
.end method

.method private updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings_ex/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "tile"    # Lcom/android/settings_ex/dashboard/DashboardTile;
    .param p4, "tileIcon"    # Landroid/widget/ImageView;
    .param p5, "tileTextView"    # Landroid/widget/TextView;
    .param p6, "categoryid"    # I

    .prologue
    const/4 v2, 0x0

    .line 1560
    iget v1, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    if-lez v1, :cond_0

    .line 1561
    iget v1, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1567
    :goto_0
    iget-wide v2, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    long-to-int v1, v2

    invoke-static {p6, v1}, Lcom/android/settings_ex/Utils;->getTileBackgroundId(II)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1568
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p4, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1570
    invoke-virtual {p3, p2}, Lcom/android/settings_ex/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1571
    invoke-virtual {p3, p2}, Lcom/android/settings_ex/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1578
    .local v0, "summary":Ljava/lang/CharSequence;
    return-void

    .line 1563
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1564
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public ScrollHorizontalScrollView(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    const/4 v1, 0x0

    .line 1478
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->bForceFocus:Z

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 1480
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->bForceFocus:Z

    .line 1484
    :goto_0
    return-void

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method

.method public buildDashboardCategories(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2335
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2337
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2338
    const v0, 0x7f0800cb

    sget-object v1, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/android/settings_ex/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V

    .line 2342
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/SettingsActivity;->updateTilesList(Ljava/util/List;Ljava/lang/String;)V

    .line 2343
    const-string v0, "main_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2344
    invoke-static {p0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/search/Index;->setCategories(Ljava/util/List;)V

    .line 2346
    :cond_0
    return-void

    .line 2340
    :cond_1
    const v0, 0x7f080030

    sget-object v1, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/android/settings_ex/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public centerTabItem(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1460
    iput p1, p0, Lcom/android/settings_ex/SettingsActivity;->tabIndex:I

    .line 1461
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 1462
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings_ex/SettingsActivity$13;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/SettingsActivity$13;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1476
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 996
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-nez v0, :cond_0

    .line 999
    const/4 v0, 0x1

    .line 1001
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public fingerprintEditBtnClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3736
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings_ex/SettingsActivity$onEditButtonClicked;

    if-eqz v0, :cond_0

    const v0, 0x7f0e11f6

    iget v1, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    if-ne v0, v1, :cond_0

    .line 3737
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings_ex/SettingsActivity$onEditButtonClicked;

    invoke-interface {v0}, Lcom/android/settings_ex/SettingsActivity$onEditButtonClicked;->editKeyPressed()V

    .line 3739
    :cond_0
    return-void
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 2134
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-nez v0, :cond_1

    .line 2136
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->onBackPressed()V

    .line 2137
    if-eqz p1, :cond_0

    .line 2138
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2139
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2147
    :cond_0
    :goto_0
    return-void

    .line 2144
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/android/settings_ex/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 2145
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    goto :goto_0
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 718
    invoke-super {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 719
    .local v0, "bar":Landroid/app/ActionBar;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings_ex/common/DummyActionBar;

    .end local v0    # "bar":Landroid/app/ActionBar;
    invoke-direct {v0}, Lcom/android/settings_ex/common/DummyActionBar;-><init>()V

    .line 720
    .restart local v0    # "bar":Landroid/app/ActionBar;
    :cond_0
    return-object v0
.end method

.method public getDashboardCategories(ZLjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 723
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p2}, Lcom/android/settings_ex/SettingsActivity;->buildDashboardCategories(Ljava/util/List;Ljava/lang/String;)V

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFavoriteCategories(Z)Lcom/android/settings_ex/dashboard/DashboardCategory;
    .locals 6
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 741
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v1, "tempCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/SettingsActivity;->bEasymode:Z

    .line 744
    iget-boolean v2, p0, Lcom/android/settings_ex/SettingsActivity;->bEasymode:Z

    if-eqz v2, :cond_1

    .line 745
    const v2, 0x7f080030

    sget-object v3, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/android/settings_ex/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V

    .line 746
    const-string v2, "easy_mode"

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/SettingsActivity;->updateTilesList(Ljava/util/List;Ljava/lang/String;)V

    .line 748
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mFavorite:Lcom/android/settings_ex/dashboard/DashboardCategory;

    iget-object v2, v2, Lcom/android/settings_ex/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 750
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 752
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/dashboard/DashboardCategory;

    iget-wide v2, v2, Lcom/android/settings_ex/dashboard/DashboardCategory;->id:J

    const-wide/32 v4, 0x7f0d06b6

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 753
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/dashboard/DashboardCategory;

    iput-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mFavorite:Lcom/android/settings_ex/dashboard/DashboardCategory;

    .line 750
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    .end local v0    # "i":I
    :cond_1
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mFavorite:Lcom/android/settings_ex/dashboard/DashboardCategory;

    iget-object v2, v2, Lcom/android/settings_ex/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 757
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_3

    .line 758
    sget-object v2, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/settings_ex/Utils;->loadFavorites(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 760
    :cond_3
    const-string v2, "favorite_mode"

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/SettingsActivity;->updateTilesList(Ljava/util/List;Ljava/lang/String;)V

    .line 761
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mFavorite:Lcom/android/settings_ex/dashboard/DashboardCategory;

    iget-object v2, v2, Lcom/android/settings_ex/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 762
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 763
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/dashboard/DashboardCategory;

    iput-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mFavorite:Lcom/android/settings_ex/dashboard/DashboardCategory;

    .line 765
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mFavorite:Lcom/android/settings_ex/dashboard/DashboardCategory;

    const-wide/32 v4, 0x7f0d000c

    iput-wide v4, v2, Lcom/android/settings_ex/dashboard/DashboardCategory;->id:J

    .line 766
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mFavorite:Lcom/android/settings_ex/dashboard/DashboardCategory;

    const v3, 0x7f0e008f

    iput v3, v2, Lcom/android/settings_ex/dashboard/DashboardCategory;->titleRes:I

    .line 767
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mFavorite:Lcom/android/settings_ex/dashboard/DashboardCategory;

    return-object v2
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 1955
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1956
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 1959
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1960
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1961
    .local v2, "modIntent":Landroid/content/Intent;
    const-string v5, ":settings:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1962
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1963
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1964
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 1968
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1969
    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1972
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 1966
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "modIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 1972
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 3434
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getResultIntentData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 3532
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public getSuperIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1975
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;
    .locals 2

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/DashboardSummarySplit;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 692
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/DashboardSummarySplit;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    .line 698
    :goto_0
    return-object v0

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-nez v0, :cond_1

    .line 696
    new-instance v0, Lcom/android/settings_ex/widget/SwitchBar;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    goto :goto_0
.end method

.method public getTopLevelDashboardId()J
    .locals 2

    .prologue
    .line 3653
    iget v0, p0, Lcom/android/settings_ex/SettingsActivity;->mTopLevelDashboardId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 3431
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHideQuickSettingsSupported()Z
    .locals 1

    .prologue
    .line 1926
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->bEnableTab:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 1948
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings_ex/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1949
    sget-object v1, Lcom/android/settings_ex/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1951
    :goto_1
    return v1

    .line 1948
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1951
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public mainViewVisible(Z)V
    .locals 9
    .param p1, "bVisible"    # Z

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const v6, 0x7f0d049c

    const v5, 0x7f0d00cd

    const v4, 0x1020012

    .line 3574
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3575
    .local v1, "fade_out":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3576
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3577
    .local v0, "fade_in":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3578
    iget-boolean v2, p0, Lcom/android/settings_ex/SettingsActivity;->bEnableTab:Z

    if-eqz v2, :cond_6

    .line 3579
    if-eqz p1, :cond_4

    .line 3580
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3581
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3582
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3584
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3585
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3586
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3588
    :cond_1
    iput-boolean v7, p0, Lcom/android/settings_ex/SettingsActivity;->mEditQuickSettingExpanded:Z

    .line 3589
    const v2, 0x7f0e01c3

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsActivity;->setTitle(I)V

    .line 3601
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mEdit:Landroid/view/MenuItem;

    if-eqz v2, :cond_3

    .line 3602
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mEdit:Landroid/view/MenuItem;

    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3617
    :cond_3
    :goto_1
    return-void

    .line 3592
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3593
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3594
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3596
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3597
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3598
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3605
    :cond_6
    if-eqz p1, :cond_7

    .line 3606
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3607
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3608
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 3611
    :cond_7
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3613
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public needToRevertToInitialFragment()V
    .locals 2

    .prologue
    .line 3503
    const-string v0, "Index"

    const-string v1, "needToRevertToInitialFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 3505
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 1996
    const/16 v4, 0x67

    if-ne p1, v4, :cond_1

    .line 1997
    if-ne p2, v5, :cond_0

    .line 1998
    new-instance v4, Lcom/android/settings_ex/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/accessibility/universallock/UniversalLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4}, Lcom/android/settings_ex/accessibility/universallock/UniversalLockSettingsHelper;->switchToSwipe()V

    .line 2033
    :cond_0
    :goto_0
    return-void

    .line 2001
    :cond_1
    const/16 v4, 0x65

    if-ne p1, v4, :cond_2

    .line 2002
    if-ne p2, v5, :cond_0

    .line 2003
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/android/settings_ex/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 2004
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 2006
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2007
    :catch_0
    move-exception v0

    .line 2008
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2014
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const/16 v4, 0x66

    if-ne p1, v4, :cond_4

    .line 2015
    if-ne p2, v5, :cond_0

    .line 2016
    const-string v4, "fingerprint"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 2017
    .local v3, "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2019
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->showAndHandleFingerPrintDialog()V

    goto :goto_0

    .line 2022
    :cond_3
    new-instance v4, Lcom/android/settings_ex/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/accessibility/universallock/UniversalLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4}, Lcom/android/settings_ex/accessibility/universallock/UniversalLockSettingsHelper;->switchToSwipe()V

    goto :goto_0

    .line 2026
    .end local v3    # "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    :cond_4
    const/16 v4, 0x1f7

    if-eq p1, v4, :cond_5

    const/16 v4, 0x1f6

    if-eq p1, v4, :cond_5

    const/16 v4, 0x1f5

    if-ne p1, v4, :cond_0

    .line 2029
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "main_content2"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 2030
    .local v1, "fragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 2031
    invoke-virtual {v1, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 1625
    iget-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-nez v1, :cond_2

    .line 1626
    iget-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 1627
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1644
    :goto_0
    return-void

    .line 1631
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings_ex/SettingsActivity$onKeyBackPressedListener;

    if-eqz v1, :cond_1

    .line 1632
    const-string v1, "SettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackPressed consume backKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings_ex/SettingsActivity$onKeyBackPressedListener;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings_ex/SettingsActivity$onKeyBackPressedListener;

    invoke-interface {v1}, Lcom/android/settings_ex/SettingsActivity$onKeyBackPressedListener;->onBackKey()V

    goto :goto_0

    .line 1636
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 1637
    .local v0, "count":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1638
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    goto :goto_0

    .line 1643
    .end local v0    # "count":I
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 1647
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromBackStack()I

    .line 1648
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 3462
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 13
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 805
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 806
    iget-boolean v10, p0, Lcom/android/settings_ex/SettingsActivity;->bEnableTab:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-nez v10, :cond_3

    iget-boolean v10, p0, Lcom/android/settings_ex/SettingsActivity;->mEditQuickSettingExpanded:Z

    if-nez v10, :cond_3

    .line 807
    iget-object v10, p0, Lcom/android/settings_ex/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz v10, :cond_1

    .line 808
    iget v10, p0, Lcom/android/settings_ex/SettingsActivity;->curOrientation:I

    iget v11, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v10, v11, :cond_0

    .line 809
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings_ex/SettingsActivity;->bForceFocus:Z

    .line 810
    :cond_0
    iget-object v10, p0, Lcom/android/settings_ex/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v8

    .line 811
    .local v8, "tabIndex":I
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/settings_ex/SettingsActivity;->addLayoutCount:I

    .line 812
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->drawDashboardTab()V

    .line 813
    iget-object v10, p0, Lcom/android/settings_ex/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v10, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 816
    .end local v8    # "tabIndex":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/android/settings_ex/SubSettings;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, ":settings:show_fragment_as_subsetting"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_2
    const/4 v1, 0x1

    .line 818
    .local v1, "bSubSettings":Z
    :goto_0
    if-nez v1, :cond_3

    iget-boolean v10, p0, Lcom/android/settings_ex/SettingsActivity;->mShowFotaView:Z

    if-eqz v10, :cond_3

    .line 819
    sget-object v10, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->getFotaBadgeCount(Landroid/content/Context;)I

    move-result v10

    if-lez v10, :cond_3

    .line 820
    const v10, 0x7f0d049e

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewStub;

    iput-object v10, p0, Lcom/android/settings_ex/SettingsActivity;->mFotaUpdateStub:Landroid/view/ViewStub;

    .line 821
    iget-object v10, p0, Lcom/android/settings_ex/SettingsActivity;->mFotaUpdateStub:Landroid/view/ViewStub;

    if-eqz v10, :cond_3

    .line 822
    iget-object v10, p0, Lcom/android/settings_ex/SettingsActivity;->mFotaUpdateStub:Landroid/view/ViewStub;

    invoke-virtual {v10}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 824
    const v10, 0x7f0d02e9

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 825
    .local v9, "view":Landroid/widget/LinearLayout;
    new-instance v10, Lcom/android/settings_ex/SettingsActivity$2;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/SettingsActivity$2;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    const v10, 0x7f0d00f8

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 838
    .local v2, "cancelView":Landroid/widget/ImageView;
    new-instance v10, Lcom/android/settings_ex/SettingsActivity$3;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/SettingsActivity$3;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 854
    .end local v1    # "bSubSettings":Z
    .end local v2    # "cancelView":Landroid/widget/ImageView;
    .end local v9    # "view":Landroid/widget/LinearLayout;
    :cond_3
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v10, :cond_6

    instance-of v10, p0, Lcom/android/settings_ex/SettingsActivityWrapper;

    if-nez v10, :cond_4

    instance-of v10, p0, Lcom/android/settings_ex/SubSettings;

    if-eqz v10, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->onIsHidingHeaders()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 857
    const v10, 0x7f0d04a3

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 858
    .local v3, "centerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 860
    .local v4, "clp":Landroid/widget/LinearLayout$LayoutParams;
    const v10, 0x7f0f01ab

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getThemeResId()I

    move-result v11

    if-ne v10, v11, :cond_5

    .line 861
    const/4 v10, -0x2

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 863
    :cond_5
    const v10, 0x7f0d04a2

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 864
    .local v5, "leftView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 866
    .local v6, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const v10, 0x7f0d04a4

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 867
    .local v0, "RightView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 869
    .local v7, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    iget v10, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    .line 870
    const/high16 v10, 0x40f00000    # 7.5f

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 871
    const/high16 v10, 0x3fa00000    # 1.25f

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 872
    const/high16 v10, 0x3fa00000    # 1.25f

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 873
    const v10, 0x7f0d04a2

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 874
    const v10, 0x7f0d04a4

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 882
    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 884
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 887
    .end local v0    # "RightView":Landroid/view/View;
    .end local v3    # "centerLayout":Landroid/widget/LinearLayout;
    .end local v4    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "leftView":Landroid/view/View;
    .end local v6    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget v10, p1, Landroid/content/res/Configuration;->orientation:I

    iput v10, p0, Lcom/android/settings_ex/SettingsActivity;->curOrientation:I

    .line 888
    instance-of v10, p0, Lcom/android/settings_ex/ChooseLockPassword;

    if-nez v10, :cond_7

    instance-of v10, p0, Lcom/android/settings_ex/ChooseLockAdditionalPin;

    if-nez v10, :cond_7

    instance-of v10, p0, Lcom/android/settings_ex/ConfirmLockPassword;

    if-nez v10, :cond_7

    .line 889
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/settings_ex/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 892
    :cond_7
    return-void

    .line 816
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 876
    .restart local v0    # "RightView":Landroid/view/View;
    .restart local v3    # "centerLayout":Landroid/widget/LinearLayout;
    .restart local v4    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v5    # "leftView":Landroid/view/View;
    .restart local v6    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v7    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    const/high16 v10, 0x41200000    # 10.0f

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 877
    const/4 v10, 0x0

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 878
    const/4 v10, 0x0

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 879
    const v10, 0x7f0d04a2

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 880
    const v10, 0x7f0d04a4

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 37
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 1154
    const-string v2, "settings"

    const-string v5, "onCreate()"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    sput-object p0, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    .line 1156
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1157
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->onIsHidingHeaders()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    .line 1158
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_15

    .line 1159
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    .line 1166
    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getInstance()Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-result-object v31

    .line 1167
    .local v31, "proKioskManager":Landroid/app/enterprise/knoxcustom/ProKioskManager;
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SettingsManager;->getInstance()Landroid/app/enterprise/knoxcustom/SettingsManager;

    move-result-object v28

    .line 1168
    .local v28, "knoxCustomSettingsManager":Landroid/app/enterprise/knoxcustom/SettingsManager;
    if-eqz v31, :cond_1

    if-eqz v28, :cond_1

    .line 1169
    invoke-virtual/range {v31 .. v31}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    .line 1170
    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/knoxcustom/SettingsManager;->getSettingsHiddenState()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsState:I

    .line 1171
    invoke-virtual/range {v31 .. v31}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getSettingsEnabledItems()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    .line 1174
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1175
    const-string v2, "accessibility"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1177
    const-string v2, "com.android.settings.Settings"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1178
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_2

    .line 1179
    const/16 p1, 0x0

    .line 1181
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1182
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->clearBackStack()V

    .line 1185
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 1186
    .local v34, "start":J
    sget-object v2, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->isKioskContainer:Z

    .line 1187
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings_ex/SettingsActivity;->sSalesCode:Ljava/lang/String;

    .line 1189
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getMetaData()V

    .line 1190
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v26

    .line 1191
    .local v26, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v5, 0x64

    if-lt v2, v5, :cond_4

    .line 1192
    const-string v2, ":settings:show_fragment_title_resid_knox"

    const/4 v5, -0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mTitleRedID:I

    .line 1194
    :cond_4
    const-string v2, "settings:ui_options"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1195
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v5, "settings:ui_options"

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 1197
    :cond_5
    const-string v2, "development"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/android/settings_ex/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 1199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v5, "show"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v7, "eng"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->bOldShowDev:Z

    .line 1203
    const-string v2, ":settings:show_fragment"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1204
    .local v3, "initialFragmentName":Ljava/lang/String;
    const-string v2, "Index"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate / initialFragmentName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-static/range {v26 .. v26}, Lcom/android/settings_ex/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static/range {v26 .. v26}, Lcom/android/settings_ex/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, ":settings:show_fragment_as_shortcut"

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_6
    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    .line 1207
    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    .line 1208
    .local v21, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    .line 1209
    .local v19, "className":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_7

    .line 1210
    const-class v2, Lcom/android/settings_ex/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    .line 1212
    :cond_7
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDashboardTab()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->bEnableTab:Z

    .line 1213
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "font_size"

    const/4 v6, 0x2

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mFontIndex:I

    .line 1215
    sget-object v2, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mAccessoriesMenuOpened:Z

    .line 1219
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/android/settings_ex/SubSettings;

    if-nez v2, :cond_8

    const-string v2, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_8
    const/16 v27, 0x1

    .line 1221
    .local v27, "isSubSettings":Z
    :goto_2
    sget-object v2, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v23

    .line 1222
    .local v23, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1223
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsEmerMode:Z

    .line 1224
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->bEnableTab:Z

    .line 1227
    :cond_9
    if-eqz v27, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_18

    .line 1229
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getThemeResId()I

    move-result v36

    .line 1230
    .local v36, "themeResId":I
    const v2, 0x7f0f0240

    move/from16 v0, v36

    if-eq v0, v2, :cond_a

    const v2, 0x7f0f0245

    move/from16 v0, v36

    if-eq v0, v2, :cond_a

    .line 1232
    const v2, 0x7f0f023b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->setTheme(I)V

    .line 1238
    .end local v36    # "themeResId":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 1240
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_1b

    .line 1242
    invoke-static/range {p0 .. p0}, Lcom/android/settings_ex/Utils;->isLowStorage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1247
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->bEnableTab:Z

    if-eqz v2, :cond_1a

    .line 1248
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings_ex/SettingsActivity;->bReDrawTab:Z

    .line 1296
    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 1300
    if-eqz p1, :cond_1e

    .line 1303
    const-string v2, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1304
    const-string v2, ":settings:search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1306
    const-string v2, ":settings:key_fragment_title_knox"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mTitleRedID:I

    .line 1308
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 1309
    const-string v2, ":settings:categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1311
    .local v17, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    if-eqz v17, :cond_c

    .line 1312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1314
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromBackStack()I

    .line 1316
    :cond_c
    const-string v2, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1317
    const-string v2, ":settings:show_search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    .line 1318
    const-string v2, ":settings:home_activities_count"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    .line 1320
    const-string v2, ":settings:need_to_revert_to_initial_fragment"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1321
    const-string v2, "Index"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate / mNeedToRevertToInitialFragment: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_d

    .line 1323
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v5, "setting_main_view"

    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v22

    .line 1324
    .local v22, "current":Landroid/app/Fragment;
    if-eqz v22, :cond_d

    move-object/from16 v0, v22

    instance-of v2, v0, Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    if-eqz v2, :cond_d

    .line 1325
    check-cast v22, Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    .end local v22    # "current":Landroid/app/Fragment;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    .line 1388
    .end local v17    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_e

    .line 1389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1393
    :cond_e
    const v2, 0x7f0d0184

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/widget/SwitchBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 1394
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/android/settings_ex/SettingsActivityWrapper;

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/android/settings_ex/SubSettings;

    if-eqz v2, :cond_10

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->onIsHidingHeaders()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v2, :cond_10

    .line 1397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0197

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0196

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/android/settings_ex/widget/SwitchBar;->setSwitchBarMargin(II)V

    .line 1400
    :cond_10
    const-string v2, "extra_prefs_show_button_bar"

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1401
    const v2, 0x7f0d00ee

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 1402
    .local v15, "buttonBar":Landroid/view/View;
    if-eqz v15, :cond_13

    .line 1403
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1404
    const v2, 0x7f0d03ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 1405
    .local v14, "backButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings_ex/SettingsActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings_ex/SettingsActivity$10;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v14, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1411
    const v2, 0x7f0d0400

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/Button;

    .line 1412
    .local v33, "skipButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings_ex/SettingsActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings_ex/SettingsActivity$11;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1418
    const v2, 0x7f0d0106

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 1419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings_ex/SettingsActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings_ex/SettingsActivity$12;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1426
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1427
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1428
    .local v16, "buttonText":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1435
    .end local v16    # "buttonText":Ljava/lang/String;
    :cond_11
    :goto_6
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1436
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1437
    .restart local v16    # "buttonText":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1438
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1444
    .end local v16    # "buttonText":Ljava/lang/String;
    :cond_12
    :goto_7
    const-string v2, "extra_prefs_show_skip"

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1445
    const/4 v2, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1449
    .end local v14    # "backButton":Landroid/widget/Button;
    .end local v15    # "buttonBar":Landroid/view/View;
    .end local v33    # "skipButton":Landroid/widget/Button;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->curOrientation:I

    .line 1450
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getHomeActivitiesCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    .line 1452
    sget-object v2, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1453
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/settings_ex/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1456
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v24, v6, v34

    .line 1457
    .local v24, "delta":J
    const-string v2, "SettingsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate took: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    .end local v24    # "delta":J
    :goto_8
    return-void

    .line 1161
    .end local v3    # "initialFragmentName":Ljava/lang/String;
    .end local v19    # "className":Ljava/lang/String;
    .end local v21    # "cn":Landroid/content/ComponentName;
    .end local v23    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v26    # "intent":Landroid/content/Intent;
    .end local v27    # "isSubSettings":Z
    .end local v28    # "knoxCustomSettingsManager":Landroid/app/enterprise/knoxcustom/SettingsManager;
    .end local v31    # "proKioskManager":Landroid/app/enterprise/knoxcustom/ProKioskManager;
    .end local v34    # "start":J
    :cond_15
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    .line 1162
    const v2, 0x7f0f0243

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->setTheme(I)V

    goto/16 :goto_0

    .line 1205
    .restart local v3    # "initialFragmentName":Ljava/lang/String;
    .restart local v26    # "intent":Landroid/content/Intent;
    .restart local v28    # "knoxCustomSettingsManager":Landroid/app/enterprise/knoxcustom/SettingsManager;
    .restart local v31    # "proKioskManager":Landroid/app/enterprise/knoxcustom/ProKioskManager;
    .restart local v34    # "start":J
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1219
    .restart local v19    # "className":Ljava/lang/String;
    .restart local v21    # "cn":Landroid/content/ComponentName;
    :cond_17
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 1234
    .restart local v23    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .restart local v27    # "isSubSettings":Z
    :cond_18
    const-class v2, Lcom/android/settings_ex/search/ValueTrackerActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1235
    const v2, 0x7f04022d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->setContentView(I)V

    goto :goto_8

    .line 1245
    :cond_19
    const-string v2, "SettingsActivity"

    const-string v5, "Cannot update the Indexer as we are running low on storage space!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1250
    :cond_1a
    const v2, 0x7f0401d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->setContentView(I)V

    .line 1251
    const v2, 0x7f0d02fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 1252
    const v2, 0x7f0d04a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mAddQuickSettings:Landroid/widget/TextView;

    .line 1253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mAddQuickSettings:Landroid/widget/TextView;

    new-instance v5, Lcom/android/settings_ex/SettingsActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings_ex/SettingsActivity$7;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1258
    const v2, 0x7f0d049f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    .line 1259
    const v2, 0x7f0d049d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/widget/CustomScrollView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mScrollView:Lcom/android/settings_ex/widget/CustomScrollView;

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mScrollView:Lcom/android/settings_ex/widget/CustomScrollView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/widget/CustomScrollView;->setScrollViewCallbacks(Lcom/android/settings_ex/widget/CustomScrollView$ObservableScrollViewCallbacks;)V

    .line 1261
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c01a8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mQuickSettingsHeight:I

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 1265
    :cond_1b
    const v2, 0x7f0401d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->setContentView(I)V

    .line 1266
    const v2, 0x7f0d02fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 1267
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mAddQuickSettings:Landroid/widget/TextView;

    .line 1268
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    .line 1270
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->onIsHidingHeaders()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/android/settings_ex/SettingsActivityWrapper;

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/android/settings_ex/SubSettings;

    if-nez v2, :cond_b

    .line 1272
    const v2, 0x7f0d04a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 1273
    .local v18, "centerLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout$LayoutParams;

    .line 1275
    .local v20, "clp":Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x7f0f01ab

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getThemeResId()I

    move-result v5

    if-eq v2, v5, :cond_1c

    const v2, 0x7f0f0240

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getThemeResId()I

    move-result v5

    if-eq v2, v5, :cond_1c

    const v2, 0x7f0f0245

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getThemeResId()I

    move-result v5

    if-ne v2, v5, :cond_1d

    .line 1278
    :cond_1c
    const/4 v2, -0x2

    move-object/from16 v0, v20

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1280
    :cond_1d
    const v2, 0x7f0d04a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 1281
    .local v29, "leftView":Landroid/view/View;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    .line 1283
    .local v30, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x7f0d04a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 1284
    .local v13, "RightView":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout$LayoutParams;

    .line 1286
    .local v32, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x41200000    # 10.0f

    move-object/from16 v0, v20

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1287
    const/4 v2, 0x0

    move-object/from16 v0, v30

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1288
    const/4 v2, 0x0

    move-object/from16 v0, v32

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1289
    const v2, 0x7f0d04a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1290
    const v2, 0x7f0d04a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1291
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1292
    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1293
    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 1329
    .end local v13    # "RightView":Landroid/view/View;
    .end local v18    # "centerLayout":Landroid/widget/LinearLayout;
    .end local v20    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v29    # "leftView":Landroid/view/View;
    .end local v30    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v32    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_23

    .line 1332
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    if-eqz v2, :cond_20

    .line 1333
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1334
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    .line 1342
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 1343
    const-string v2, ":settings:show_fragment_args"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1344
    .local v4, "initialArguments":Landroid/os/Bundle;
    if-nez v27, :cond_1f

    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1345
    :cond_1f
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings_ex/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_5

    .line 1335
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_20
    if-eqz v27, :cond_21

    .line 1336
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1337
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    goto :goto_9

    .line 1339
    :cond_21
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1340
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    goto :goto_9

    .line 1348
    .restart local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings_ex/SettingsActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3, v4}, Lcom/android/settings_ex/SettingsActivity$8;-><init>(Lcom/android/settings_ex/SettingsActivity;Ljava/lang/String;Landroid/os/Bundle;)V

    const-wide/16 v6, 0x32

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 1355
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_24

    .line 1356
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1357
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    .line 1358
    const v2, 0x7f0e01c3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    .line 1360
    const-class v2, Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/settings_ex/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    goto/16 :goto_5

    .line 1362
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->bEnableTab:Z

    if-nez v2, :cond_26

    .line 1364
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1366
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    .line 1368
    const v2, 0x7f0e01c3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    .line 1369
    if-eqz v27, :cond_25

    .line 1370
    const-class v2, Lcom/android/settings_ex/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/settings_ex/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_5

    .line 1374
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings_ex/SettingsActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings_ex/SettingsActivity$9;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    const-wide/16 v6, 0x32

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 1382
    :cond_26
    const v2, 0x7f0e01c3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    .line 1383
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    goto/16 :goto_5

    .line 1432
    .restart local v14    # "backButton":Landroid/widget/Button;
    .restart local v15    # "buttonBar":Landroid/view/View;
    .restart local v16    # "buttonText":Ljava/lang/String;
    .restart local v33    # "skipButton":Landroid/widget/Button;
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 1441
    :cond_28
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 903
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->bEasymode:Z

    .line 906
    iget-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->bEasymode:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    if-eqz v1, :cond_1

    .line 908
    :cond_0
    const/4 v1, 0x0

    .line 912
    :goto_0
    return v1

    .line 910
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 911
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f140009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 912
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->updateOptionMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1940
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1941
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1943
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1944
    return-void
.end method

.method public onIsHidingHeaders()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3743
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 3745
    .local v0, "isSettingWizard":Z
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_0

    if-ne v0, v1, :cond_2

    .line 3749
    :cond_0
    :goto_1
    return v1

    .end local v0    # "isSettingWizard":Z
    :cond_1
    move v0, v2

    .line 3743
    goto :goto_0

    .line 3749
    .restart local v0    # "isSettingWizard":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, ":android:no_headers"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3477
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3478
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 3479
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->setAnimationSearchView(Z)V

    .line 3480
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->revertToInitialFragment()V

    .line 3483
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 3467
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3468
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-nez v0, :cond_0

    .line 3469
    invoke-direct {p0, v2}, Lcom/android/settings_ex/SettingsActivity;->setAnimationSearchView(Z)V

    .line 3471
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 3473
    :cond_1
    return v2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 919
    if-eqz p1, :cond_1

    const-string v1, "SettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 922
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, "query":Ljava/lang/String;
    const-string v1, "SettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_2

    .line 925
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 929
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->fromActSearch:Z

    .line 931
    .end local v0    # "query":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 932
    :cond_1
    return-void

    .line 927
    .restart local v0    # "query":Ljava/lang/String;
    :cond_2
    const-string v1, "SettingsActivity"

    const-string v2, "mSearchView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1019
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d06e0

    if-ne v0, v1, :cond_0

    .line 1020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mEditQuickSettingExpanded:Z

    .line 1021
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->switchToEditFavoriteFragment()V

    .line 1024
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1930
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1931
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v0, :cond_0

    .line 1932
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 1935
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    invoke-virtual {v0}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->unregister()V

    .line 1936
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1937
    return-void
.end method

.method protected onPostResume()V
    .locals 5

    .prologue
    .line 1104
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 1106
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->mShowFotaView:Z

    .line 1108
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/settings_ex/Settings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1110
    .local v1, "isFirst":Z
    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mFotaUpdateStub:Landroid/view/ViewStub;

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->mShowFotaView:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1111
    sget-object v3, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->getFotaBadgeCount(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_1

    .line 1112
    const v3, 0x7f0d049e

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mFotaUpdateStub:Landroid/view/ViewStub;

    .line 1113
    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mFotaUpdateStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_0

    .line 1114
    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mFotaUpdateStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1116
    const v3, 0x7f0d02e9

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1117
    .local v2, "view":Landroid/widget/LinearLayout;
    new-instance v3, Lcom/android/settings_ex/SettingsActivity$5;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/SettingsActivity$5;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1129
    const v3, 0x7f0d00f8

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1130
    .local v0, "cancelView":Landroid/widget/ImageView;
    new-instance v3, Lcom/android/settings_ex/SettingsActivity$6;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/SettingsActivity$6;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1146
    .end local v0    # "cancelView":Landroid/widget/ImageView;
    .end local v2    # "view":Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    const-string v3, "SettingsActivity"

    const-string v4, "Fota is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 777
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 778
    .local v3, "titleRes":I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    const v3, 0x7f0e0601

    .line 788
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 790
    const/4 v0, 0x1

    return v0

    .line 780
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 783
    const v3, 0x7f0e01ff

    goto :goto_0

    .line 785
    :cond_2
    const v3, 0x7f0e01fd

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 794
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 3454
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 3455
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-nez v0, :cond_0

    .line 3456
    const/4 v0, 0x0

    .line 3458
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 3446
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 3447
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 3448
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 3449
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 3450
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1746
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1747
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 1748
    const-string v0, ":settings:key_fragment_title_knox"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/SettingsActivity;->mTitleRedID:I

    .line 1750
    :cond_0
    const-string v0, ":settings:need_to_revert_to_initial_fragment"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1751
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_1

    .line 1752
    const-string v0, "settings"

    const-string v1, "revertToInitialFragment called in onRestoreInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->revertToInitialFragment()V

    .line 1755
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1758
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1759
    iget-boolean v8, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v8, :cond_0

    .line 1760
    invoke-static {p0, v7}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 1762
    :cond_0
    sput-object p0, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    .line 1764
    iget-boolean v8, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    if-eqz v8, :cond_5

    .line 1766
    iget v8, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    if-nez v8, :cond_1

    .line 1767
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    .line 1770
    :cond_1
    iget v8, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsState:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_2

    iget v8, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_4

    :cond_2
    iget v8, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsState:I

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_3

    iget v8, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_4

    :cond_3
    iget v8, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsState:I

    and-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_15

    iget v8, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_15

    :cond_4
    move v1, v7

    .line 1777
    .local v1, "featuresAvailable":Z
    :goto_0
    if-nez v1, :cond_5

    .line 1778
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    .line 1782
    .end local v1    # "featuresAvailable":Z
    :cond_5
    iget-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    if-nez v8, :cond_6

    .line 1784
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    .line 1786
    :cond_6
    iget-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1788
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->populateKnoxCustomSettingsMap()V

    .line 1790
    :cond_7
    iget-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomProKioskSettingsMap:Ljava/util/HashMap;

    if-nez v8, :cond_8

    .line 1792
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomProKioskSettingsMap:Ljava/util/HashMap;

    .line 1794
    :cond_8
    iget-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomProKioskSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1796
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->populateKnoxCustomProKioskSettingsMap()V

    .line 1799
    :cond_9
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->getHomeActivitiesCount()I

    move-result v3

    .line 1800
    .local v3, "newHomeActivityCount":I
    iget v8, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    if-eq v3, v8, :cond_a

    .line 1801
    iput v3, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    .line 1802
    invoke-direct {p0, v7}, Lcom/android/settings_ex/SettingsActivity;->invalidateCategories(Z)V

    .line 1804
    :cond_a
    new-instance v8, Lcom/android/settings_ex/SettingsActivity$14;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/SettingsActivity$14;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    iput-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1810
    iget-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v9, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1813
    iget-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    invoke-virtual {v8, p0}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->register(Landroid/content/Context;)V

    .line 1820
    iget-boolean v8, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1821
    iget-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/SettingsActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 1824
    :cond_b
    iget-boolean v8, p0, Lcom/android/settings_ex/SettingsActivity;->mIsEmerMode:Z

    if-eqz v8, :cond_c

    .line 1828
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/SettingsActivity;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v8, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1831
    iget-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v9, "show"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v11, "eng"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1834
    .local v4, "showDev":Z
    iget-boolean v8, p0, Lcom/android/settings_ex/SettingsActivity;->bOldShowDev:Z

    if-eq v8, v4, :cond_e

    .line 1835
    invoke-direct {p0, v7}, Lcom/android/settings_ex/SettingsActivity;->invalidateCategories(Z)V

    .line 1836
    iget-boolean v8, p0, Lcom/android/settings_ex/SettingsActivity;->bEnableTab:Z

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz v8, :cond_d

    .line 1837
    iput-boolean v7, p0, Lcom/android/settings_ex/SettingsActivity;->bForceFocus:Z

    .line 1838
    iget-object v7, p0, Lcom/android/settings_ex/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v5

    .line 1839
    .local v5, "tabIndex":I
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->drawDashboardTab()V

    .line 1840
    iget-object v7, p0, Lcom/android/settings_ex/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1842
    .end local v5    # "tabIndex":I
    :cond_d
    iput-boolean v4, p0, Lcom/android/settings_ex/SettingsActivity;->bOldShowDev:Z

    .line 1844
    :cond_e
    sget-boolean v7, Lcom/android/settings_ex/SettingsActivity;->bReDrawTab:Z

    if-eqz v7, :cond_f

    .line 1845
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->drawDashboardTab()V

    .line 1846
    sput-boolean v6, Lcom/android/settings_ex/SettingsActivity;->bReDrawTab:Z

    .line 1848
    :cond_f
    const-string v7, "SettingsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onResume bReDrawTabAirplaneMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/settings_ex/SettingsActivity;->bReDrawTabAirplaneMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    const-string v7, "SettingsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onResume mIsShowingDashboard : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    sget-boolean v7, Lcom/android/settings_ex/SettingsActivity;->bReDrawTabAirplaneMode:Z

    if-eqz v7, :cond_10

    iget-boolean v7, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v7, :cond_10

    .line 1851
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->drawDashboardTab()V

    .line 1852
    sput-boolean v6, Lcom/android/settings_ex/SettingsActivity;->bReDrawTabAirplaneMode:Z

    .line 1855
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "font_size"

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1857
    .local v2, "fontIndex":I
    iget-boolean v7, p0, Lcom/android/settings_ex/SettingsActivity;->bEnableTab:Z

    if-eqz v7, :cond_11

    iget v7, p0, Lcom/android/settings_ex/SettingsActivity;->mFontIndex:I

    if-eq v7, v2, :cond_11

    iget-boolean v7, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v7, :cond_11

    .line 1858
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->drawDashboardTab()V

    .line 1859
    iput v2, p0, Lcom/android/settings_ex/SettingsActivity;->mFontIndex:I

    .line 1862
    :cond_11
    iget-boolean v7, p0, Lcom/android/settings_ex/SettingsActivity;->bEnableTab:Z

    if-eqz v7, :cond_12

    iget-boolean v7, p0, Lcom/android/settings_ex/SettingsActivity;->mAccessoriesMenuOpened:Z

    sget-object v8, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings_ex/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v8

    if-eq v7, v8, :cond_12

    .line 1864
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->drawDashboardTab()V

    .line 1865
    sget-object v7, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings_ex/SettingsActivity;->mAccessoriesMenuOpened:Z

    .line 1867
    :cond_12
    const-string v7, "SettingsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onResume fromActSearch : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings_ex/SettingsActivity;->fromActSearch:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    iget-boolean v7, p0, Lcom/android/settings_ex/SettingsActivity;->fromActSearch:Z

    if-nez v7, :cond_16

    .line 1869
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->invalidateOptionsMenu()V

    .line 1874
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v7, 0x64

    if-lt v6, v7, :cond_13

    iget v6, p0, Lcom/android/settings_ex/SettingsActivity;->mTitleRedID:I

    if-lez v6, :cond_13

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v6

    if-nez v6, :cond_13

    .line 1876
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.knox.containeragent2"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/settings_ex/SettingsActivity;->mTitleRedID:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1884
    :cond_13
    :goto_2
    iget-boolean v6, p0, Lcom/android/settings_ex/SettingsActivity;->mForceRedraw:Z

    if-eqz v6, :cond_14

    .line 1885
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->redrawFavorite()V

    .line 1889
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/settings_ex/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 1891
    const-string v6, "SettingsActivity"

    const-string v7, "onResume finished"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    return-void

    .end local v2    # "fontIndex":I
    .end local v3    # "newHomeActivityCount":I
    .end local v4    # "showDev":Z
    :cond_15
    move v1, v6

    .line 1770
    goto/16 :goto_0

    .line 1871
    .restart local v2    # "fontIndex":I
    .restart local v3    # "newHomeActivityCount":I
    .restart local v4    # "showDev":Z
    :cond_16
    iput-boolean v6, p0, Lcom/android/settings_ex/SettingsActivity;->fromActSearch:Z

    goto :goto_1

    .line 1877
    :catch_0
    move-exception v0

    .line 1878
    .local v0, "e1":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_2

    .line 1879
    .end local v0    # "e1":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 1880
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1715
    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1716
    const-string v3, ":settings:categories"

    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1718
    :cond_0
    const-string v3, ":settings:show_home_as_up"

    iget-boolean v4, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1719
    const-string v3, ":settings:show_search"

    iget-boolean v4, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1720
    const-string v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSaveInstanceState / mNeedToRevertToInitialFragment: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    const-string v3, ":settings:need_to_revert_to_initial_fragment"

    iget-boolean v4, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1722
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    .line 1723
    const-string v3, ":settings:key_fragment_title_knox"

    iget v4, p0, Lcom/android/settings_ex/SettingsActivity;->mTitleRedID:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1725
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    if-eqz v3, :cond_2

    .line 1731
    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 1732
    .local v1, "isExpanded":Z
    :goto_0
    const-string v3, ":settings:search_menu_expanded"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1733
    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1734
    .local v2, "query":Ljava/lang/String;
    :goto_1
    const-string v3, ":settings:search_query"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    .end local v1    # "isExpanded":Z
    .end local v2    # "query":Ljava/lang/String;
    :cond_2
    const-string v3, ":settings:home_activities_count"

    iget v4, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1738
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1743
    :goto_2
    return-void

    .line 1731
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 1733
    .restart local v1    # "isExpanded":Z
    :cond_4
    const-string v2, ""

    goto :goto_1

    .line 1740
    .end local v1    # "isExpanded":Z
    :catch_0
    move-exception v0

    .line 1741
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "Settings"

    const-string v4, "Failure saving state"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 895
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 896
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 897
    const-string v0, "Index"

    const-string v1, "revertToInitialFragment called in onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->revertToInitialFragment()V

    .line 900
    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabName"    # Ljava/lang/String;

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1487
    return-void
.end method

.method public openEditView()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mEdit:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mEdit:Landroid/view/MenuItem;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 714
    :cond_0
    return-void
.end method

.method public openSearchView()V
    .locals 1

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-nez v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/DashboardSummarySplit;->openSearchView()V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    goto :goto_0
.end method

.method public redrawFavorite()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2221
    iget-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->bEnableTab:Z

    if-nez v3, :cond_2

    .line 2222
    const-string v0, "main_content2"

    .line 2223
    .local v0, "Tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/dashboard/DashboardSummary;

    .line 2224
    .local v1, "fragment":Landroid/app/Fragment;
    instance-of v3, v1, Lcom/android/settings_ex/dashboard/DashboardSummary;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 2225
    check-cast v2, Lcom/android/settings_ex/dashboard/DashboardSummary;

    .line 2226
    .local v2, "summary":Lcom/android/settings_ex/dashboard/DashboardSummary;
    if-eqz v2, :cond_0

    .line 2227
    invoke-virtual {v2}, Lcom/android/settings_ex/dashboard/DashboardSummary;->redrawFavorite()V

    .line 2229
    :cond_0
    iput-boolean v4, p0, Lcom/android/settings_ex/SettingsActivity;->mForceRedraw:Z

    .line 2231
    .end local v2    # "summary":Lcom/android/settings_ex/dashboard/DashboardSummary;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->refreshQuickSettingsView()V

    .line 2237
    .end local v0    # "Tag":Ljava/lang/String;
    .end local v1    # "fragment":Landroid/app/Fragment;
    :goto_0
    return-void

    .line 2233
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings_ex/SettingsActivity;->mForceRedraw:Z

    .line 2234
    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 2235
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->drawDashboardTab()V

    goto :goto_0
.end method

.method public refreshQuickSettingsView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1894
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->isHideQuickSettingsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1895
    iget v0, p0, Lcom/android/settings_ex/SettingsActivity;->mFavoriteTilesCount:I

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigQuickSettings"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HIDE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_2

    .line 1898
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1899
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1908
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->isKioskContainer:Z

    if-eqz v0, :cond_1

    .line 1909
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1912
    :cond_1
    return-void

    .line 1902
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1903
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public registerAssistant()V
    .locals 5

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1064
    .local v1, "className":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->bEasymode:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_0

    const-class v3, Lcom/android/settings_ex/Settings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1081
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-eqz v3, :cond_0

    .line 1066
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1067
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "ActivityName"

    const-string v4, "com.android.settings.Settings"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_ConfigQuickSettings"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HIDE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1069
    :cond_2
    const-string v3, "IconName"

    const-string v4, "Search"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    :goto_1
    const-string v3, "register"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1074
    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 1076
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1077
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.android.settings.Favorite"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1078
    const-string v3, "com.android.settings.Search"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1079
    new-instance v3, Lcom/android/settings_ex/SettingsActivity$AssistantReceiver;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/SettingsActivity$AssistantReceiver;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    iput-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1080
    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/settings_ex/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 1071
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_3
    const-string v3, "IconName"

    const-string v4, "Search;Edit quick settings;"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public releaseView()V
    .locals 2

    .prologue
    .line 3620
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mScrollView:Lcom/android/settings_ex/widget/CustomScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mScrollView:Lcom/android/settings_ex/widget/CustomScrollView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/CustomScrollView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/android/settings_ex/SettingsActivity;->mQuickSettingsHeight:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mAddQuickSettingsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 3630
    :cond_0
    :goto_0
    return-void

    .line 3625
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->getHidedViewRatio()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 3626
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mScrollView:Lcom/android/settings_ex/widget/CustomScrollView;

    iget v1, p0, Lcom/android/settings_ex/SettingsActivity;->mQuickSettingsHeight:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/CustomScrollView;->setScrollY(I)V

    goto :goto_0

    .line 3628
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mScrollView:Lcom/android/settings_ex/widget/CustomScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/CustomScrollView;->setScrollY(I)V

    goto :goto_0
.end method

.method public scrollToHide()V
    .locals 2

    .prologue
    .line 1914
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->refreshQuickSettingsView()V

    .line 1915
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->isHideQuickSettingsSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1916
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mScrollView:Lcom/android/settings_ex/widget/CustomScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mScrollView:Lcom/android/settings_ex/widget/CustomScrollView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/CustomScrollView;->getIsFirstLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1917
    iget v0, p0, Lcom/android/settings_ex/SettingsActivity;->mFavoriteTilesCount:I

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1918
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mScrollView:Lcom/android/settings_ex/widget/CustomScrollView;

    iget v1, p0, Lcom/android/settings_ex/SettingsActivity;->mQuickSettingsHeight:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/CustomScrollView;->setScrollY(I)V

    .line 1919
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mScrollView:Lcom/android/settings_ex/widget/CustomScrollView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/CustomScrollView;->invalidate()V

    .line 1921
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mScrollView:Lcom/android/settings_ex/widget/CustomScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/CustomScrollView;->setIsFirstLoading(Z)V

    .line 1924
    :cond_1
    return-void
.end method

.method public setFavoriteCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 772
    iput p1, p0, Lcom/android/settings_ex/SettingsActivity;->mFavoriteTilesCount:I

    .line 773
    return-void
.end method

.method public setOnEditPressedListener(Lcom/android/settings_ex/SettingsActivity$onEditButtonClicked;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/SettingsActivity$onEditButtonClicked;

    .prologue
    .line 3732
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings_ex/SettingsActivity$onEditButtonClicked;

    .line 3733
    return-void
.end method

.method public setRedrawTab()V
    .locals 1

    .prologue
    .line 1150
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/SettingsActivity;->bReDrawTab:Z

    .line 1151
    return-void
.end method

.method public setResultIntentData(Landroid/content/Intent;)V
    .locals 0
    .param p1, "resultIntentData"    # Landroid/content/Intent;

    .prologue
    .line 3535
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    .line 3536
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1707
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1708
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-nez v0, :cond_0

    .line 1709
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1711
    :cond_0
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 3438
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 2156
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 2157
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f0d02fc

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2158
    if-eqz p2, :cond_0

    .line 2159
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 2160
    const-string v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2164
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2165
    return-void

    .line 2162
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 18
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 2064
    const/4 v7, 0x0

    .line 2065
    .local v7, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 2066
    if-eqz p4, :cond_2

    .line 2067
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2073
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-eqz v1, :cond_3

    .line 2074
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p3

    invoke-static/range {v1 .. v8}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 2082
    :cond_1
    :goto_1
    return-void

    .line 2070
    :cond_2
    const-string v7, ""

    goto :goto_0

    .line 2077
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    if-eqz v1, :cond_1

    .line 2078
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/SettingsActivity;->mDashboardSummarySplit:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    invoke-virtual/range {v8 .. v17}, Lcom/android/settings_ex/dashboard/DashboardSummarySplit;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;ZLandroid/app/Fragment;I)V

    goto :goto_1
.end method

.method public startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 2107
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2108
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2123
    :goto_0
    return-void

    .line 2110
    :cond_0
    const/4 v4, 0x0

    .line 2111
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_1

    .line 2112
    if-eqz p4, :cond_2

    .line 2113
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2120
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    goto :goto_0

    .line 2116
    :cond_2
    const-string v4, ""

    goto :goto_1
.end method

.method public switchToEditFavoriteFragment()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 3538
    sget-object v0, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.android.settings"

    const-string v2, "CQST"

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3539
    sput-wide v6, Lcom/android/settings_ex/Utils;->focusedFavoriteId:J

    .line 3540
    sput-wide v6, Lcom/android/settings_ex/Utils;->focusedTileId:J

    .line 3541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mForceRedraw:Z

    .line 3543
    const-class v0, Lcom/android/settings_ex/dashboard/DashboardEditFavoriteSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget v3, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 3545
    return-void
.end method

.method public switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 8
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z

    .prologue
    const/4 v5, 0x0

    const v7, 0x7f0d02fc

    .line 2171
    if-nez p1, :cond_0

    move-object v0, v5

    .line 2217
    :goto_0
    return-object v0

    .line 2172
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2173
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid fragment for this activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2176
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 2177
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 2178
    .local v3, "transaction":Landroid/app/FragmentTransaction;
    const-class v4, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2179
    const-string v2, "main_content"

    .line 2180
    .local v2, "tag":Ljava/lang/String;
    const/high16 v4, 0x10b0000

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 2181
    const v4, 0x7f0d049b

    invoke-virtual {v3, v4, v0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2203
    :goto_1
    if-eqz p4, :cond_2

    .line 2204
    const-string v4, ":settings:prefs"

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2206
    :cond_2
    if-lez p5, :cond_8

    .line 2207
    invoke-virtual {v3, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 2211
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2212
    const-string v4, "SettingsActivity"

    const-string v6, "activity has already destoryed"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 2213
    goto :goto_0

    .line 2186
    .end local v2    # "tag":Ljava/lang/String;
    :cond_4
    const-class v4, Lcom/android/settings_ex/dashboard/DashboardSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2187
    const-string v2, "main_content2"

    .line 2188
    .restart local v2    # "tag":Ljava/lang/String;
    invoke-virtual {v3, v7, v0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 2189
    .end local v2    # "tag":Ljava/lang/String;
    :cond_5
    const-class v4, Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2190
    const-string v2, "setting_main_view"

    .line 2191
    .restart local v2    # "tag":Ljava/lang/String;
    const v4, 0x7f0d049c

    invoke-virtual {v3, v4, v0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 2193
    .end local v2    # "tag":Ljava/lang/String;
    :cond_6
    const-string v2, "main_content2"

    .line 2194
    .restart local v2    # "tag":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2195
    .local v1, "main_content2":Landroid/view/ViewGroup;
    if-nez v1, :cond_7

    .line 2197
    const-string v4, "SettingsActivity"

    const-string v6, "switchToFragment(), set settings_main_prefs for main_content2"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    const v4, 0x7f0401d5

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->setContentView(I)V

    .line 2199
    const v4, 0x7f0d0184

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/widget/SwitchBar;

    iput-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 2201
    :cond_7
    invoke-virtual {v3, v7, v0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 2208
    .end local v1    # "main_content2":Landroid/view/ViewGroup;
    :cond_8
    if-eqz p6, :cond_3

    .line 2209
    invoke-virtual {v3, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_2

    .line 2215
    :cond_9
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2216
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto/16 :goto_0
.end method

.method public unregisterAssistant()V
    .locals 4

    .prologue
    .line 1084
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_0

    .line 1086
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1087
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ActivityName"

    const-string v3, "com.android.settings.Settings"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const-string v2, "register"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1089
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 1092
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1093
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1094
    :catch_0
    move-exception v1

    .line 1095
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateOptionMenu(Landroid/view/Menu;)Z
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v9, 0x7f0d06e0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 936
    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 937
    .local v3, "query":Ljava/lang/String;
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mEdit:Landroid/view/MenuItem;

    .line 938
    iget-boolean v5, p0, Lcom/android/settings_ex/SettingsActivity;->bEnableTab:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_Setting_ConfigQuickSettings"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "HIDE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 939
    :cond_0
    invoke-interface {p1, v9}, Landroid/view/Menu;->removeItem(I)V

    .line 942
    :goto_0
    const v5, 0x7f0d06df

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 943
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-nez v5, :cond_2

    move v5, v6

    .line 977
    :goto_1
    return v5

    .line 941
    :cond_1
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mEdit:Landroid/view/MenuItem;

    goto :goto_0

    .line 946
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SearchView;

    iput-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 947
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v5, :cond_3

    move v5, v6

    .line 948
    goto :goto_1

    .line 951
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "android:id/search_src_text"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 953
    .local v1, "et":Landroid/widget/EditText;
    new-instance v2, Lcom/android/settings_ex/Utils$LengthFilter;

    sget-object v5, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/settings_ex/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    .line 954
    .local v2, "lengthFilter":Lcom/android/settings_ex/Utils$LengthFilter;
    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/Utils$LengthFilter;->setMaxLength(I)V

    .line 955
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    aput-object v2, v5, v8

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 956
    const/16 v5, 0x81

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 960
    .end local v1    # "et":Landroid/widget/EditText;
    .end local v2    # "lengthFilter":Lcom/android/settings_ex/Utils$LengthFilter;
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0de9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 961
    const-string v5, "search"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    .line 962
    .local v4, "searchManager":Landroid/app/SearchManager;
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 964
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-eqz v5, :cond_4

    .line 965
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    iget-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v8}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 967
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 968
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 969
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 970
    iget-boolean v5, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v5, :cond_5

    .line 971
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5}, Landroid/view/MenuItem;->expandActionView()Z

    .line 972
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mEdit:Landroid/view/MenuItem;

    if-eqz v5, :cond_5

    .line 973
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mEdit:Landroid/view/MenuItem;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 976
    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v3, v7}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    move v5, v7

    .line 977
    goto/16 :goto_1

    .line 957
    .end local v4    # "searchManager":Landroid/app/SearchManager;
    :catch_0
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 957
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method public updateTabTileView(Lcom/android/settings_ex/dashboard/DashboardCategory;Landroid/content/Context;)Landroid/view/View;
    .locals 12
    .param p1, "category"    # Lcom/android/settings_ex/dashboard/DashboardCategory;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1544
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1545
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 1546
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040090

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1547
    .local v8, "categoryView":Landroid/view/View;
    const v0, 0x7f0d0173

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1548
    .local v7, "categoryContent":Landroid/view/ViewGroup;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTilesCount()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 1549
    invoke-virtual {p1, v9}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings_ex/dashboard/DashboardTile;

    move-result-object v3

    .line 1550
    .local v3, "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    new-instance v11, Lcom/android/settings_ex/dashboard/DashboardTileView;

    iget-wide v0, v3, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    long-to-int v0, v0

    invoke-direct {v11, p2, v0}, Lcom/android/settings_ex/dashboard/DashboardTileView;-><init>(Landroid/content/Context;I)V

    .line 1551
    .local v11, "tileView":Lcom/android/settings_ex/dashboard/DashboardTileView;
    invoke-virtual {v11}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v11}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v5

    iget v6, v3, Lcom/android/settings_ex/dashboard/DashboardTile;->categoryId:I

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings_ex/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    .line 1553
    invoke-virtual {v11, v3}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setTile(Lcom/android/settings_ex/dashboard/DashboardTile;)V

    .line 1554
    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1548
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1556
    .end local v3    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    .end local v11    # "tileView":Lcom/android/settings_ex/dashboard/DashboardTileView;
    :cond_0
    return-object v8
.end method

.method public updateTilesList(Ljava/util/List;Ljava/lang/String;)V
    .locals 58
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2526
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v53, v0

    if-nez v53, :cond_0

    .line 2527
    const-string v53, "development"

    const/16 v54, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 2530
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v53, v0

    const-string v54, "show"

    sget-object v55, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v56, "eng"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    invoke-interface/range {v53 .. v55}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    .line 2533
    .local v39, "showDev":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    .line 2534
    .local v44, "start":J
    const-string v53, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/UserManager;

    .line 2537
    .local v49, "um":Landroid/os/UserManager;
    const/4 v15, 0x0

    .line 2538
    .local v15, "defaultMenuIdlist":[Ljava/lang/String;
    const/16 v48, 0x0

    .line 2539
    .local v48, "tileIndex":I
    const/16 v47, 0x0

    .line 2540
    .local v47, "tileId":I
    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v53

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/SettingsActivity;->isKioskContainer:Z

    .line 2541
    invoke-static {}, Lcom/android/settings_ex/Utils;->isT4RModel()Z

    move-result v29

    .line 2542
    .local v29, "isT4RMode":Z
    const-string v53, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 2543
    .local v6, "activityManager":Landroid/app/ActivityManager;
    new-instance v32, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v32 .. v32}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 2545
    .local v32, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    const/16 v27, 0x0

    .line 2547
    .local v27, "isMassProduct":Z
    if-eqz v6, :cond_1

    .line 2548
    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 2550
    if-eqz v32, :cond_7

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    move-wide/from16 v54, v0

    const-wide/32 v56, 0x3b9aca00

    cmp-long v53, v54, v56

    if-gtz v53, :cond_7

    const/16 v27, 0x1

    .line 2552
    :goto_0
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "updateTilesList(): memoryInfo.totalMem ="

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v54

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "updateTilesList(): isMassProduct ="

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    :cond_1
    new-instance v33, Landroid/util/DisplayMetrics;

    invoke-direct/range {v33 .. v33}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2556
    .local v33, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v51

    .line 2558
    .local v51, "w":Landroid/view/WindowManager;
    if-eqz v51, :cond_3

    .line 2559
    invoke-interface/range {v51 .. v51}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2560
    if-eqz v33, :cond_3

    .line 2562
    move-object/from16 v0, v33

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v53, v0

    const/16 v54, 0xf0

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_8

    move-object/from16 v0, v33

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v53, v0

    const/16 v54, 0x1e0

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v53, v0

    const/16 v54, 0x1e0

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_8

    :cond_2
    const/16 v27, 0x1

    .line 2567
    :cond_3
    :goto_1
    const-string v53, "TMB"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_9

    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    const-string v54, "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-static/range {v53 .. v54}, Lcom/android/settings_ex/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_9

    const/16 v26, 0x1

    .line 2570
    .local v26, "isForTmoEdge":Z
    :goto_2
    const-string v53, "ATT"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_a

    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    const-string v54, "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-static/range {v53 .. v54}, Lcom/android/settings_ex/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_a

    const/16 v25, 0x1

    .line 2573
    .local v25, "isForAttEdge":Z
    :goto_3
    const-string v53, "default_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_5

    .line 2574
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v53

    const-string v54, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_DEF_QUICK_SETTINGS"

    invoke-virtual/range {v53 .. v54}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2575
    .local v14, "defaultMenuId":Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 2576
    const-string v53, ";"

    move-object/from16 v0, v53

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2579
    :cond_4
    array-length v0, v15

    move/from16 v53, v0

    add-int/lit8 v48, v53, -0x1

    .line 2581
    .end local v14    # "defaultMenuId":Ljava/lang/String;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v42

    .line 2582
    .local v42, "size":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v42

    if-ge v0, v1, :cond_b0

    .line 2583
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/dashboard/DashboardCategory;

    .line 2585
    .local v10, "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    iget-wide v0, v10, Lcom/android/settings_ex/dashboard/DashboardCategory;->id:J

    move-wide/from16 v54, v0

    move-wide/from16 v0, v54

    long-to-int v0, v0

    move/from16 v20, v0

    .line 2587
    .local v20, "id":I
    const-string v53, "default_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_b

    .line 2588
    const v53, 0x7f0d06b5

    move/from16 v0, v20

    move/from16 v1, v53

    if-eq v0, v1, :cond_c

    .line 2582
    :cond_6
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 2550
    .end local v10    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v19    # "i":I
    .end local v20    # "id":I
    .end local v25    # "isForAttEdge":Z
    .end local v26    # "isForTmoEdge":Z
    .end local v33    # "metrics":Landroid/util/DisplayMetrics;
    .end local v42    # "size":I
    .end local v51    # "w":Landroid/view/WindowManager;
    :cond_7
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 2562
    .restart local v33    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v51    # "w":Landroid/view/WindowManager;
    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 2567
    :cond_9
    const/16 v26, 0x0

    goto :goto_2

    .line 2570
    .restart local v26    # "isForTmoEdge":Z
    :cond_a
    const/16 v25, 0x0

    goto :goto_3

    .line 2591
    .restart local v10    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .restart local v19    # "i":I
    .restart local v20    # "id":I
    .restart local v25    # "isForAttEdge":Z
    .restart local v42    # "size":I
    :cond_b
    const-string v53, "easy_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_17

    .line 2592
    const v53, 0x7f0d06b6

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_6

    .line 2604
    :cond_c
    invoke-virtual {v10}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTilesCount()I

    move-result v53

    add-int/lit8 v35, v53, -0x1

    .line 2605
    .local v35, "n":I
    :goto_6
    if-ltz v35, :cond_af

    .line 2606
    move/from16 v0, v35

    invoke-virtual {v10, v0}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings_ex/dashboard/DashboardTile;

    move-result-object v46

    .line 2607
    .local v46, "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    const/16 v38, 0x0

    .line 2608
    .local v38, "removeTile":Z
    const/16 v43, 0x0

    .line 2609
    .local v43, "skipCheck":Z
    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    move-wide/from16 v54, v0

    move-wide/from16 v0, v54

    long-to-int v0, v0

    move/from16 v20, v0

    .line 2611
    const-string v53, "default_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-eqz v53, :cond_f

    .line 2612
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v53

    aget-object v54, v15, v48

    const-string v55, "id"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v53 .. v56}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v47

    .line 2613
    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    move-wide/from16 v56, v0

    cmp-long v53, v54, v56

    if-nez v53, :cond_1c

    .line 2614
    if-ltz v48, :cond_1b

    .line 2615
    if-lez v48, :cond_d

    .line 2616
    add-int/lit8 v48, v48, -0x1

    .line 2617
    :cond_d
    const v53, 0x7f0d06ae

    move/from16 v0, v47

    move/from16 v1, v53

    if-ne v0, v1, :cond_1a

    invoke-static {}, Lcom/android/settings_ex/Utils;->isPHNModel()Z

    move-result v53

    if-nez v53, :cond_e

    invoke-static {}, Lcom/android/settings_ex/Utils;->isTPDModel()Z

    move-result v53

    if-eqz v53, :cond_1a

    .line 2618
    :cond_e
    const/16 v38, 0x1

    .line 2619
    const/16 v43, 0x1

    .line 2636
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    move/from16 v53, v0

    if-eqz v53, :cond_1f

    .line 2637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomProKioskSettingsMap:Ljava/util/HashMap;

    move-object/from16 v53, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 2638
    .local v17, "element":Ljava/lang/Integer;
    if-nez v17, :cond_1d

    .line 2640
    const/16 v38, 0x1

    .line 2641
    const/16 v43, 0x1

    .line 2674
    .end local v17    # "element":Ljava/lang/Integer;
    :cond_10
    :goto_8
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->removeTileapps:Ljava/lang/String;

    move-object/from16 v53, v0

    if-eqz v53, :cond_11

    .line 2675
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->removeTileapps:Ljava/lang/String;

    move-object/from16 v53, v0

    const-string v54, "MAIN"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-eqz v53, :cond_20

    const-string v53, "edit_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_20

    const-string v53, "favorite_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_20

    .line 2676
    const/16 v38, 0x1

    .line 2677
    const/16 v43, 0x1

    .line 2684
    :cond_11
    :goto_9
    if-nez v43, :cond_13

    .line 2685
    const v53, 0x7f0d066c

    move/from16 v0, v20

    move/from16 v1, v53

    if-eq v0, v1, :cond_12

    const v53, 0x7f0d068f

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_21

    .line 2686
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/android/settings_ex/dashboard/DashboardTile;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2687
    const/16 v38, 0x1

    .line 3293
    :cond_13
    :goto_a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v53

    if-eqz v53, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v53

    if-nez v53, :cond_14

    .line 3295
    const/16 v38, 0x1

    .line 3297
    :cond_14
    if-eqz v29, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SettingsActivity;->SETTINGS_FOR_T4R:[I

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v53

    if-nez v53, :cond_15

    .line 3299
    const/16 v38, 0x1

    .line 3301
    :cond_15
    if-eqz v38, :cond_16

    invoke-virtual {v10}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTilesCount()I

    move-result v53

    move/from16 v0, v35

    move/from16 v1, v53

    if-ge v0, v1, :cond_16

    .line 3302
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "remove : "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3303
    move/from16 v0, v35

    invoke-virtual {v10, v0}, Lcom/android/settings_ex/dashboard/DashboardCategory;->removeTile(I)V

    .line 3305
    :cond_16
    add-int/lit8 v35, v35, -0x1

    .line 3306
    goto/16 :goto_6

    .line 2595
    .end local v35    # "n":I
    .end local v38    # "removeTile":Z
    .end local v43    # "skipCheck":Z
    .end local v46    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    :cond_17
    const-string v53, "main_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_18

    const-string v53, "edit_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_18

    const-string v53, "favorite_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_c

    .line 2596
    :cond_18
    const v53, 0x7f0d06b5

    move/from16 v0, v20

    move/from16 v1, v53

    if-eq v0, v1, :cond_19

    const v53, 0x7f0d06b6

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_c

    .line 2597
    :cond_19
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2598
    add-int/lit8 v19, v19, -0x1

    .line 2599
    add-int/lit8 v42, v42, -0x1

    .line 2600
    goto/16 :goto_5

    .line 2621
    .restart local v35    # "n":I
    .restart local v38    # "removeTile":Z
    .restart local v43    # "skipCheck":Z
    .restart local v46    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    :cond_1a
    const/16 v43, 0x1

    goto/16 :goto_7

    .line 2624
    :cond_1b
    const/16 v38, 0x1

    .line 2625
    const/16 v43, 0x1

    goto/16 :goto_7

    .line 2628
    :cond_1c
    const/16 v38, 0x1

    .line 2629
    const/16 v43, 0x1

    goto/16 :goto_7

    .line 2643
    .restart local v17    # "element":Ljava/lang/Integer;
    :cond_1d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v50

    .line 2645
    .local v50, "val":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    move/from16 v53, v0

    and-int v53, v53, v50

    if-nez v53, :cond_1e

    .line 2647
    const/16 v38, 0x1

    .line 2648
    const/16 v43, 0x1

    goto/16 :goto_8

    .line 2650
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v53, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsState:I

    move/from16 v54, v0

    and-int v53, v53, v54

    if-eqz v53, :cond_10

    .line 2652
    const/16 v38, 0x1

    .line 2653
    const/16 v43, 0x1

    goto/16 :goto_8

    .line 2658
    .end local v17    # "element":Ljava/lang/Integer;
    .end local v50    # "val":I
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsState:I

    move/from16 v53, v0

    if-eqz v53, :cond_10

    .line 2659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v53, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 2660
    .restart local v17    # "element":Ljava/lang/Integer;
    if-eqz v17, :cond_10

    .line 2661
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v50

    .line 2663
    .restart local v50    # "val":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomSettingsState:I

    move/from16 v53, v0

    and-int v53, v53, v50

    if-eqz v53, :cond_10

    .line 2665
    const/16 v38, 0x1

    .line 2666
    const/16 v43, 0x1

    goto/16 :goto_8

    .line 2678
    .end local v17    # "element":Ljava/lang/Integer;
    .end local v50    # "val":I
    :cond_20
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->removeTileapps:Ljava/lang/String;

    move-object/from16 v53, v0

    const-string v54, "KIOSKCONTAINER"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-eqz v53, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SettingsActivity;->isKioskContainer:Z

    move/from16 v53, v0

    if-eqz v53, :cond_11

    .line 2679
    const/16 v38, 0x1

    .line 2680
    const/16 v43, 0x1

    goto/16 :goto_9

    .line 2689
    :cond_21
    const v53, 0x7f0d06a9

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_26

    .line 2690
    const-string v53, "easy_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-eqz v53, :cond_24

    .line 2691
    invoke-static {}, Lcom/android/settings_ex/Utils;->isJapanKDIModel()Z

    move-result v53

    if-nez v53, :cond_22

    invoke-static {}, Lcom/android/settings_ex/Utils;->isJapanModel()Z

    move-result v53

    if-nez v53, :cond_23

    .line 2692
    :cond_22
    const/16 v38, 0x1

    .line 2702
    :cond_23
    :goto_b
    const v53, 0x7f020151

    move/from16 v0, v53

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    .line 2703
    const/16 v53, 0x0

    move-object/from16 v0, v53

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    goto/16 :goto_a

    .line 2695
    :cond_24
    invoke-static/range {p0 .. p0}, Lcom/android/settings_ex/Utils;->useGEDBattery(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_25

    .line 2696
    const-string v53, "com.android.settings.fuelgauge.PowerUsageSummary"

    move-object/from16 v0, v53

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 2697
    const/16 v53, 0x0

    move-object/from16 v0, v53

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto :goto_b

    .line 2698
    :cond_25
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/android/settings_ex/dashboard/DashboardTile;)Z

    move-result v53

    if-nez v53, :cond_23

    .line 2699
    const/16 v38, 0x1

    goto :goto_b

    .line 2704
    :cond_26
    const v53, 0x7f0d06ae

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_2f

    .line 2705
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "CscFeature_Setting_ConfigTypeHelp: "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v55

    const-string v56, "CscFeature_Setting_ConfigTypeHelp"

    invoke-virtual/range {v55 .. v56}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, "[0:dont support, 1:online, 2:ondevice]"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Setting_ConfigTypeHelp"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v53

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_2a

    .line 2707
    invoke-static/range {p0 .. p0}, Lcom/android/settings_ex/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_29

    .line 2708
    const-string v53, "SettingsActivity"

    const-string v54, "isSupportOfflineHelpMenu"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v53

    const-string v54, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_MANAGE_ACCESSIBILITY"

    invoke-virtual/range {v53 .. v54}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_27

    .line 2710
    const-string v53, "SettingsActivity"

    const-string v54, "non mass"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    new-instance v23, Landroid/content/Intent;

    const-string v53, "com.samsung.helphub.HELP"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2712
    .local v23, "intent":Landroid/content/Intent;
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 2714
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_27
    const-string v53, "SettingsActivity"

    const-string v54, "mass"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    const-string v53, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_28

    .line 2716
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "is mass. "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    new-instance v23, Landroid/content/Intent;

    const-string v53, "com.samsung.helphub.HELP"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2718
    .restart local v23    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 2720
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_28
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "remove online help - is mass "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2725
    :cond_29
    const-string v53, "SettingsActivity"

    const-string v54, "remove online help -  is not SupportOfflineHelpMenu."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2728
    :cond_2a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Setting_ConfigTypeHelp"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v53

    if-nez v53, :cond_2b

    .line 2729
    const-string v53, "SettingsActivity"

    const-string v54, "remove online help -  help csc feature is 0"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2732
    :cond_2b
    const-string v53, "SettingsActivity"

    const-string v54, "help csc feature is 1"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    move-object/from16 v53, v0

    if-nez v53, :cond_2d

    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 2735
    .restart local v23    # "intent":Landroid/content/Intent;
    :goto_c
    const-string v5, "com.sec.android.app.sbrowser"

    .line 2736
    .local v5, "SBROWSER_PKG":Ljava/lang/String;
    const-string v4, "com.sec.android.app.sbrowser.SBrowserMainActivity"

    .line 2738
    .local v4, "SBROWSER_CLASS":Ljava/lang/String;
    const-string v53, "com.sec.android.app.sbrowser"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_2c

    .line 2739
    const-string v53, "SettingsActivity"

    const-string v54, "browser is exist on device."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    new-instance v12, Landroid/content/ComponentName;

    const-string v53, "com.sec.android.app.sbrowser"

    const-string v54, "com.sec.android.app.sbrowser.SBrowserMainActivity"

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    .local v12, "component":Landroid/content/ComponentName;
    const/16 v31, 0x0

    .line 2744
    .local v31, "manualURL":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string v54, "online_manual_url"

    invoke-static/range {v53 .. v54}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v31

    .line 2748
    :goto_d
    if-eqz v31, :cond_2e

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v53

    if-lez v53, :cond_2e

    .line 2749
    invoke-static/range {v31 .. v31}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v53

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2753
    :goto_e
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2754
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 2756
    .end local v12    # "component":Landroid/content/ComponentName;
    .end local v31    # "manualURL":Ljava/lang/String;
    :cond_2c
    invoke-static {}, Lcom/android/settings_ex/Utils;->getResIdForUserManual()I

    move-result v53

    move/from16 v0, v53

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->titleRes:I

    .line 2757
    const v53, 0x7f020190

    move/from16 v0, v53

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    .line 2758
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2759
    const-string v53, "SettingsActivity"

    const-string v54, "do not support browser."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2733
    .end local v4    # "SBROWSER_CLASS":Ljava/lang/String;
    .end local v5    # "SBROWSER_PKG":Ljava/lang/String;
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_2d
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    goto :goto_c

    .line 2745
    .restart local v4    # "SBROWSER_CLASS":Ljava/lang/String;
    .restart local v5    # "SBROWSER_PKG":Ljava/lang/String;
    .restart local v12    # "component":Landroid/content/ComponentName;
    .restart local v23    # "intent":Landroid/content/Intent;
    .restart local v31    # "manualURL":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 2746
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 2751
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_2e
    const-string v53, "http://www.samsung.com/m-manual/common"

    invoke-static/range {v53 .. v53}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v53

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_e

    .line 2763
    .end local v4    # "SBROWSER_CLASS":Ljava/lang/String;
    .end local v5    # "SBROWSER_PKG":Ljava/lang/String;
    .end local v12    # "component":Landroid/content/ComponentName;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v31    # "manualURL":Ljava/lang/String;
    :cond_2f
    const v53, 0x7f0d0662

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_30

    .line 2765
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string v54, "android.hardware.wifi"

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2766
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2769
    :cond_30
    const v53, 0x7f0d0661

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_32

    .line 2770
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_31

    .line 2771
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2775
    :cond_31
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string v54, "com.sec.sprint.wfc"

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 2776
    .local v7, "appState":I
    const/16 v53, 0x2

    move/from16 v0, v53

    if-ne v7, v0, :cond_13

    .line 2777
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2779
    .end local v7    # "appState":I
    :catch_1
    move-exception v21

    .line 2780
    .local v21, "ie":Ljava/lang/IllegalArgumentException;
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Check to see if target device support Native VOWIFI: + "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string v54, "com.oem.smartwifisupport"

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    .line 2783
    .restart local v7    # "appState":I
    const/16 v53, 0x2

    move/from16 v0, v53

    if-ne v7, v0, :cond_13

    .line 2784
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2786
    .end local v7    # "appState":I
    :catch_2
    move-exception v22

    .line 2787
    .local v22, "ieWfc":Ljava/lang/IllegalArgumentException;
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Check to see if target device support VOWIFI: + "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2793
    .end local v21    # "ie":Ljava/lang/IllegalArgumentException;
    .end local v22    # "ieWfc":Ljava/lang/IllegalArgumentException;
    :cond_32
    const v53, 0x7f0d0663

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_34

    .line 2794
    invoke-static/range {p0 .. p0}, Lcom/android/settings_ex/Utils;->isNotSupportOpenWifiCalling(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_33

    .line 2795
    const/16 v38, 0x1

    .line 2797
    :cond_33
    const-string v53, "ATT"

    sget-object v54, Lcom/android/settings_ex/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2799
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string v54, "com.sec.vowifispg"

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v7

    .line 2800
    .restart local v7    # "appState":I
    const/16 v53, 0x2

    move/from16 v0, v53

    if-eq v7, v0, :cond_13

    .line 2801
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 2802
    .restart local v23    # "intent":Landroid/content/Intent;
    const-string v53, "android.intent.action.ACTIVATE_WIFI_CALLING"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2803
    new-instance v12, Landroid/content/ComponentName;

    const-string v53, "com.sec.vowifispg"

    const-string v54, "com.sec.vowifispg.VoWifiCheckActivity"

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    .restart local v12    # "component":Landroid/content/ComponentName;
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2806
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2807
    const/16 v38, 0x0

    goto/16 :goto_a

    .line 2809
    .end local v7    # "appState":I
    .end local v12    # "component":Landroid/content/ComponentName;
    .end local v23    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v21

    .line 2810
    .restart local v21    # "ie":Ljava/lang/IllegalArgumentException;
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Check to see if target device support VOWIFI: + "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    const/16 v38, 0x1

    .line 2812
    goto/16 :goto_a

    .line 2814
    .end local v21    # "ie":Ljava/lang/IllegalArgumentException;
    :cond_34
    const v53, 0x7f0d0664

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_35

    .line 2815
    const-string v53, "CTC"

    sget-object v54, Lcom/android/settings_ex/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2816
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2818
    :cond_35
    const v53, 0x7f0d0665

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_36

    .line 2819
    const-string v53, "CTC"

    sget-object v54, Lcom/android/settings_ex/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2820
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2822
    :cond_36
    const v53, 0x7f0d066b

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_39

    .line 2823
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMultisimModel()Z

    move-result v53

    if-eqz v53, :cond_37

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v53

    if-nez v53, :cond_37

    invoke-static {}, Lcom/android/settings_ex/Utils;->isLDUModel()Z

    move-result v53

    if-eqz v53, :cond_38

    .line 2824
    :cond_37
    const/16 v38, 0x1

    .line 2826
    :cond_38
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaCTCModel()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2827
    const v53, 0x7f0e1431

    move/from16 v0, v53

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->titleRes:I

    goto/16 :goto_a

    .line 2829
    :cond_39
    const v53, 0x7f0d0666

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_3a

    .line 2831
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string v54, "android.hardware.bluetooth"

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2832
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2834
    :cond_3a
    const v53, 0x7f0d0668

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_43

    .line 2835
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v53

    if-eqz v53, :cond_42

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SettingsActivity;->isKioskContainer:Z

    move/from16 v53, v0

    if-nez v53, :cond_42

    const/16 v28, 0x1

    .line 2837
    .local v28, "isSecondaryUser":Z
    :goto_f
    const-string v53, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 2839
    .local v11, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/android/settings_ex/Utils;->isJapanModel()Z

    move-result v53

    if-eqz v53, :cond_3b

    .line 2840
    const v53, 0x7f0e075b

    move/from16 v0, v53

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->titleRes:I

    .line 2842
    :cond_3b
    if-nez v28, :cond_3e

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v53

    if-eqz v53, :cond_3e

    invoke-static/range {p0 .. p0}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_3e

    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v53

    if-eqz v53, :cond_3c

    const-string v53, "AIO"

    sget-object v54, Lcom/android/settings_ex/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_3e

    :cond_3c
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v53

    if-eqz v53, :cond_3d

    const-string v53, "ATT"

    sget-object v54, Lcom/android/settings_ex/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_3e

    :cond_3d
    const-string v53, "SBM"

    sget-object v54, Lcom/android/settings_ex/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_3f

    .line 2844
    :cond_3e
    const/16 v38, 0x1

    .line 2846
    :cond_3f
    const-string v53, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/wifi/WifiManager;

    .line 2847
    .local v52, "wm":Landroid/net/wifi/WifiManager;
    new-instance v34, Landroid/os/Message;

    invoke-direct/range {v34 .. v34}, Landroid/os/Message;-><init>()V

    .line 2848
    .local v34, "msg":Landroid/os/Message;
    const/16 v53, 0x15

    move/from16 v0, v53

    move-object/from16 v1, v34

    iput v0, v1, Landroid/os/Message;->what:I

    .line 2849
    move-object/from16 v0, v52

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v53

    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/SettingsActivity;->mTetheredData:I

    .line 2850
    const-string v53, "SettingsActivity"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "mTetheredData: "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SettingsActivity;->mTetheredData:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSprModel()Z

    move-result v53

    if-eqz v53, :cond_41

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SettingsActivity;->mTetheredData:I

    move/from16 v53, v0

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ge v0, v1, :cond_41

    .line 2853
    :cond_40
    const/16 v38, 0x1

    .line 2856
    :cond_41
    const-string v53, "no_config_tethering"

    move-object/from16 v0, v49

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2857
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2835
    .end local v11    # "cm":Landroid/net/ConnectivityManager;
    .end local v28    # "isSecondaryUser":Z
    .end local v34    # "msg":Landroid/os/Message;
    .end local v52    # "wm":Landroid/net/wifi/WifiManager;
    :cond_42
    const/16 v28, 0x0

    goto/16 :goto_f

    .line 2859
    :cond_43
    const v53, 0x7f0d0667

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_44

    .line 2860
    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2861
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2863
    :cond_44
    const v53, 0x7f0d0691

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_45

    .line 2864
    const-string v53, "com.samsung.app.jansky"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2865
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2867
    :cond_45
    const v53, 0x7f0d066a

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_46

    .line 2869
    const-string v53, "network_management"

    invoke-static/range {v53 .. v53}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v36

    .line 2872
    .local v36, "netManager":Landroid/os/INetworkManagementService;
    :try_start_4
    invoke-interface/range {v36 .. v36}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_6

    move-result v53

    if-nez v53, :cond_13

    .line 2873
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2878
    .end local v36    # "netManager":Landroid/os/INetworkManagementService;
    :cond_46
    const v53, 0x7f0d066e

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_4b

    .line 2879
    const-string v53, "edit_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2880
    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isHideMobileNetworks(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_47

    .line 2881
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2882
    :cond_47
    const-string v53, "CDMA"

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2883
    const-string v53, "gsm.sim.currentcardstatus"

    const/16 v54, 0x0

    const-string v55, "9"

    invoke-static/range {v53 .. v55}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2884
    .local v8, "cardStatus1":Ljava/lang/String;
    const-string v53, "gsm.sim.currentcardstatus"

    const/16 v54, 0x1

    const-string v55, "9"

    invoke-static/range {v53 .. v55}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2885
    .local v9, "cardStatus2":Ljava/lang/String;
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 2886
    .restart local v23    # "intent":Landroid/content/Intent;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    .line 2887
    .local v40, "simState1":I
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    .line 2890
    .local v41, "simState2":I
    const/16 v53, 0x3

    move/from16 v0, v40

    move/from16 v1, v53

    if-ne v0, v1, :cond_48

    const/16 v53, 0x3

    move/from16 v0, v41

    move/from16 v1, v53

    if-ne v0, v1, :cond_48

    .line 2891
    const-string v53, "com.android.phone"

    const-string v54, "com.android.phone.MobileNetworkSettingsTab"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2899
    :goto_10
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 2892
    :cond_48
    const/16 v53, 0x3

    move/from16 v0, v40

    move/from16 v1, v53

    if-eq v0, v1, :cond_49

    const/16 v53, 0x3

    move/from16 v0, v41

    move/from16 v1, v53

    if-eq v0, v1, :cond_49

    .line 2893
    const/16 v38, 0x1

    goto :goto_10

    .line 2895
    :cond_49
    const-string v53, "com.android.phone"

    const-string v54, "com.android.phone.MobileNetworkSettings"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2896
    const/16 v53, 0x3

    move/from16 v0, v41

    move/from16 v1, v53

    if-ne v0, v1, :cond_4a

    const/16 v30, 0x1

    .line 2897
    .local v30, "mExtra":I
    :goto_11
    const-string v53, "sim_id"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_10

    .line 2896
    .end local v30    # "mExtra":I
    :cond_4a
    const/16 v30, 0x0

    goto :goto_11

    .line 2902
    .end local v8    # "cardStatus1":Ljava/lang/String;
    .end local v9    # "cardStatus2":Ljava/lang/String;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v40    # "simState1":I
    .end local v41    # "simState2":I
    :cond_4b
    const v53, 0x7f0d0674

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_4d

    .line 2904
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SettingsActivity;->isKioskContainer:Z

    move/from16 v53, v0

    if-eqz v53, :cond_4c

    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportSmartBonding()Z

    move-result v53

    if-nez v53, :cond_4c

    .line 2905
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2906
    :cond_4c
    const-string v53, "edit_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2907
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2910
    :cond_4d
    const v53, 0x7f0d0670

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_4f

    .line 2912
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string v54, "android.hardware.nfc"

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_4e

    .line 2913
    const/16 v38, 0x1

    .line 2926
    :cond_4e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_NFC_EnableFelica"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2927
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2930
    :cond_4f
    const v53, 0x7f0d0669

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_50

    .line 2932
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2939
    :cond_50
    const v53, 0x7f0d066d

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_51

    .line 2940
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaCTCModel()Z

    move-result v53

    if-nez v53, :cond_13

    .line 2941
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2943
    :cond_51
    const v53, 0x7f0d0692

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_53

    .line 2944
    const-string v53, "DCM"

    sget-object v54, Lcom/android/settings_ex/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_52

    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isDocomoSettingsDisabled(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2945
    :cond_52
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2947
    :cond_53
    const v53, 0x7f0d0693

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_55

    .line 2948
    invoke-static {}, Lcom/android/settings_ex/Utils;->isJapanKDIModel()Z

    move-result v53

    if-eqz v53, :cond_54

    .line 2949
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 2950
    .restart local v23    # "intent":Landroid/content/Intent;
    const-string v53, "com.kddi.android.au_setting_menu"

    const-string v54, "com.kddi.android.au_setting_menu.MainActivity"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2951
    const-string v53, "mode"

    const-string v54, "Start"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2952
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 2954
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_54
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2956
    :cond_55
    const v53, 0x7f0d068e

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_58

    .line 2957
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_56

    .line 2958
    const/16 v38, 0x1

    .line 2963
    :cond_56
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v53

    if-eqz v53, :cond_57

    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_57

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2967
    :cond_57
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2969
    :cond_58
    const v53, 0x7f0d0698

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_5a

    .line 2970
    const-string v53, "com.samsung.android.myeventcenter"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_59

    .line 2971
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2972
    :cond_59
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2973
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2975
    :cond_5a
    const v53, 0x7f0d0684

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_5b

    .line 2976
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2977
    :cond_5b
    const v53, 0x7f0d06a0

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_5e

    .line 2978
    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_5d

    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v53

    if-nez v53, :cond_5d

    if-eqz v27, :cond_5c

    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_5d

    :cond_5c
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v53

    const-string v54, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-virtual/range {v53 .. v54}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2980
    :cond_5d
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2982
    :cond_5e
    const v53, 0x7f0d06ac

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_5f

    .line 2983
    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 2984
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2988
    :cond_5f
    const v53, 0x7f0d067c

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_60

    .line 2989
    const v53, 0x7f0e1399

    move/from16 v0, v53

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->titleRes:I

    goto/16 :goto_a

    .line 2990
    :cond_60
    const v53, 0x7f0d067f

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_61

    .line 2991
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 2992
    :cond_61
    const v53, 0x7f0d004d

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_62

    .line 2993
    const-string v53, "com.android.settings.notification.NotificationSettings"

    move-object/from16 v0, v53

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    goto/16 :goto_a

    .line 2994
    :cond_62
    const v53, 0x7f0d0681

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_63

    .line 2995
    invoke-static {}, Lcom/android/settings_ex/Utils;->isAllNAVendor()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 2996
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3002
    :cond_63
    const v53, 0x7f0d068b

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_64

    .line 3003
    invoke-static {}, Lcom/android/settings_ex/Utils;->isEnabledSmartManager()Z

    move-result v53

    if-eqz v53, :cond_13

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDashboardTab()Z

    move-result v53

    if-nez v53, :cond_13

    .line 3004
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3006
    :cond_64
    const v53, 0x7f0d0677

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_66

    .line 3007
    invoke-static {}, Lcom/android/settings_ex/Utils;->isEnabledSmartManager()Z

    move-result v53

    if-eqz v53, :cond_65

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDashboardTab()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3008
    :cond_65
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3010
    :cond_66
    const v53, 0x7f0d068a

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_68

    .line 3011
    invoke-static {}, Lcom/android/settings_ex/Utils;->isEnabledSmartManager()Z

    move-result v53

    if-eqz v53, :cond_67

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDashboardTab()Z

    move-result v53

    if-nez v53, :cond_13

    .line 3012
    :cond_67
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3014
    :cond_68
    const v53, 0x7f0d0678

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_6a

    .line 3015
    invoke-static {}, Lcom/android/settings_ex/Utils;->isEnabledSmartManager()Z

    move-result v53

    if-eqz v53, :cond_69

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDashboardTab()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3016
    :cond_69
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3018
    :cond_6a
    const v53, 0x7f0d068c

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_6b

    .line 3019
    invoke-static {}, Lcom/android/settings_ex/Utils;->isEnabledSmartManager()Z

    move-result v53

    if-eqz v53, :cond_13

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDashboardTab()Z

    move-result v53

    if-nez v53, :cond_13

    .line 3020
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3022
    :cond_6b
    const v53, 0x7f0d0679

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_6d

    .line 3023
    invoke-static {}, Lcom/android/settings_ex/Utils;->isEnabledSmartManager()Z

    move-result v53

    if-eqz v53, :cond_6c

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDashboardTab()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3024
    :cond_6c
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3026
    :cond_6d
    const v53, 0x7f0d068d

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_6e

    .line 3027
    invoke-static {}, Lcom/android/settings_ex/Utils;->isEnabledSmartManager()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3028
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3030
    :cond_6e
    const v53, 0x7f0d06ab

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_6f

    .line 3031
    invoke-static {}, Lcom/android/settings_ex/Utils;->isEnabledSmartManager()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3032
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3036
    :cond_6f
    const v53, 0x7f0d067a

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_71

    .line 3037
    invoke-static {}, Lcom/android/settings_ex/Utils;->isEnabledSmartManager()Z

    move-result v53

    if-eqz v53, :cond_70

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDashboardTab()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3038
    :cond_70
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3040
    :cond_71
    const v53, 0x7f0d06ac

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_72

    .line 3041
    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 3042
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3044
    :cond_72
    const v53, 0x7f0d06a4

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_73

    .line 3045
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 3046
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3048
    :cond_73
    const v53, 0x7f0d06af

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_76

    .line 3049
    if-nez v39, :cond_74

    const-string v53, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_75

    const-string v53, "ro.boot_recovery"

    const/16 v54, 0x0

    invoke-static/range {v53 .. v54}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v53

    const/16 v54, 0x4

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_75

    :cond_74
    const-string v53, "no_debugging_features"

    move-object/from16 v0, v49

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3051
    :cond_75
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3053
    :cond_76
    const v53, 0x7f0d06b1

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_79

    .line 3054
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_77

    .line 3055
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3056
    :cond_77
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Setting_EnableMultipleSWUpdate"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_78

    .line 3057
    const-string v53, "SettingsActivity"

    const-string v54, "Sprint Samsung FOTA devices"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    const-string v53, "com.android.settings.SoftwareUpdateSettings"

    move-object/from16 v0, v53

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    goto/16 :goto_a

    .line 3060
    :cond_78
    const-string v53, "SettingsActivity"

    const-string v54, "Sprint Samsung non-FOTA devices"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 3062
    .restart local v23    # "intent":Landroid/content/Intent;
    const-string v53, "com.samsung.intent.action.OMADM.SPRINTUPDATE"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3063
    const/high16 v53, 0x10200000

    move-object/from16 v0, v23

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3064
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 3066
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_79
    const v53, 0x7f0d06b0

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_7a

    .line 3067
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 3068
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3069
    :cond_7a
    const v53, 0x7f0d067d

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_7b

    .line 3074
    invoke-static {}, Lcom/android/settings_ex/Utils;->isAllNAVendor()Z

    move-result v53

    if-nez v53, :cond_13

    .line 3075
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3077
    :cond_7b
    const v53, 0x7f0d067e

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_7c

    .line 3079
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3081
    :cond_7c
    const v53, 0x7f0d06b3

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_7e

    .line 3082
    const-string v53, "VZW"

    sget-object v54, Lcom/android/settings_ex/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_7d

    const-string v53, "LRA"

    sget-object v54, Lcom/android/settings_ex/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_7d

    .line 3083
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3086
    :cond_7d
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string v54, "com.wssyncmldm"

    const/16 v55, 0x0

    invoke-virtual/range {v53 .. v55}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 3087
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3088
    :catch_4
    move-exception v16

    .line 3089
    .local v16, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v53, "SettingsActivity"

    const-string v54, "Verizon OMADM devices"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 3091
    .restart local v23    # "intent":Landroid/content/Intent;
    const-string v53, "android.intent.action.OMADM.UPDATE"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3092
    const/high16 v53, 0x10200000

    move-object/from16 v0, v23

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3093
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 3096
    .end local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_7e
    const v53, 0x7f0d06b4

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_80

    .line 3097
    const-string v53, "TFN"

    sget-object v54, Lcom/android/settings_ex/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_7f

    .line 3098
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3101
    :cond_7f
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string v54, "com.wssyncmldm"

    const/16 v55, 0x0

    invoke-virtual/range {v53 .. v55}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    .line 3102
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3103
    :catch_5
    move-exception v16

    .line 3104
    .restart local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v53, "SettingsActivity"

    const-string v54, "Verizon OMADM devices"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 3106
    .restart local v23    # "intent":Landroid/content/Intent;
    const-string v53, "android.intent.action.OMADM.UPDATE"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3107
    const/high16 v53, 0x10200000

    move-object/from16 v0, v23

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3108
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 3111
    .end local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_80
    const v53, 0x7f0d0672

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_85

    .line 3112
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticSKTModel()Z

    move-result v53

    if-nez v53, :cond_81

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticKTTModel()Z

    move-result v53

    if-nez v53, :cond_81

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticOPENModel()Z

    move-result v53

    if-eqz v53, :cond_82

    invoke-static/range {p0 .. p0}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_82

    :cond_81
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDisasterSafetyModel()Z

    move-result v53

    if-eqz v53, :cond_83

    .line 3114
    :cond_82
    const/16 v38, 0x1

    .line 3116
    :cond_83
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticKTTModel()Z

    move-result v53

    if-nez v53, :cond_84

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticOPENModel()Z

    move-result v53

    if-eqz v53, :cond_13

    invoke-static/range {p0 .. p0}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 3117
    :cond_84
    const v53, 0x7f0e128b

    move/from16 v0, v53

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->titleRes:I

    goto/16 :goto_a

    .line 3119
    :cond_85
    const v53, 0x7f0d0694

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_87

    .line 3120
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_86

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticKTTModel()Z

    move-result v53

    if-nez v53, :cond_13

    .line 3122
    :cond_86
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3124
    :cond_87
    const v53, 0x7f0d069c

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_89

    .line 3125
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticSKTModel()Z

    move-result v53

    if-eqz v53, :cond_88

    const-string v53, "com.skt.t_smart_charge"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 3127
    :cond_88
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3129
    :cond_89
    const v53, 0x7f0d0673

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_8a

    .line 3130
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticLGTModel()Z

    move-result v53

    if-nez v53, :cond_13

    .line 3131
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3133
    :cond_8a
    const v53, 0x7f0d001b

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_8c

    .line 3134
    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_8b

    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v53

    if-nez v53, :cond_13

    .line 3135
    :cond_8b
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3137
    :cond_8c
    const v53, 0x7f0d0686

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_8d

    .line 3138
    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    const-string v54, "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-static/range {v53 .. v54}, Lcom/android/settings_ex/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 3139
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3141
    :cond_8d
    const v53, 0x7f0d069e

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_8f

    .line 3146
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    move/from16 v53, v0

    if-eqz v53, :cond_8e

    .line 3147
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    move/from16 v53, v0

    and-int/lit8 v53, v53, 0x4

    if-nez v53, :cond_13

    .line 3148
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3152
    :cond_8e
    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isSupportPrivacyAndSafetyMenu(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_13

    const-string v53, "VZW"

    sget-object v54, Lcom/android/settings_ex/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SettingsActivity;->mIsEmerMode:Z

    move/from16 v53, v0

    if-nez v53, :cond_13

    const-string v53, "favorite_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-nez v53, :cond_13

    const-string v53, "edit_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 3153
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3158
    :cond_8f
    const v53, 0x7f0d0688

    move/from16 v0, v20

    move/from16 v1, v53

    if-eq v0, v1, :cond_13

    .line 3162
    const v53, 0x7f0d0689

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_90

    .line 3164
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3166
    :cond_90
    const v53, 0x7f0d069d

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_94

    .line 3167
    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isSupportPrivacyAndSafetyMenu(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_91

    .line 3168
    const/16 v38, 0x1

    .line 3170
    :cond_91
    const-string v53, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_93

    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v53

    if-eqz v53, :cond_93

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v53

    if-nez v53, :cond_92

    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_93

    .line 3172
    :cond_92
    const/16 v38, 0x1

    .line 3174
    :cond_93
    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->getPrivacyAndSafetyTitle(Landroid/content/Context;)I

    move-result v53

    move/from16 v0, v53

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->titleRes:I

    goto/16 :goto_a

    .line 3175
    :cond_94
    const v53, 0x7f0d06a3

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_96

    .line 3176
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaCMCCModel()Z

    move-result v53

    if-nez v53, :cond_95

    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_13

    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3178
    :cond_95
    const v53, 0x7f0e155b

    move/from16 v0, v53

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->titleRes:I

    goto/16 :goto_a

    .line 3180
    :cond_96
    const v53, 0x7f0d06a5

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_97

    .line 3181
    invoke-static {}, Lcom/android/settings_ex/Utils;->hasActiveKey()Z

    move-result v53

    if-nez v53, :cond_13

    .line 3182
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3184
    :cond_97
    const v53, 0x7f0d0687

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_98

    .line 3185
    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_13

    invoke-static {}, Lcom/android/settings_ex/Utils;->isPenAirViewSupported()Z

    move-result v53

    if-nez v53, :cond_13

    .line 3186
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3190
    :cond_98
    const v53, 0x7f0d0685

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_9c

    .line 3191
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Common_EnableAirMessage"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_99

    .line 3192
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3195
    :cond_99
    new-instance v23, Landroid/content/Intent;

    const-string v53, "android.intent.action.MAIN"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3196
    .restart local v23    # "intent":Landroid/content/Intent;
    new-instance v53, Landroid/content/ComponentName;

    const-string v54, "com.bst.airmessage"

    const-string v55, "com.bst.airmessage.settings.AirMessageSettings"

    invoke-direct/range {v53 .. v55}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3199
    const/16 v24, 0x1

    .line 3201
    .local v24, "isCoverAttached":Z
    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_9a

    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v53

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_9b

    .line 3202
    :cond_9a
    const/16 v24, 0x0

    .line 3205
    :cond_9b
    const-string v53, "S View cover attached"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3206
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 3210
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v24    # "isCoverAttached":Z
    :cond_9c
    const v53, 0x7f0d0696

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_9f

    .line 3211
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v53

    if-nez v53, :cond_9d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v53

    if-eqz v53, :cond_9e

    .line 3214
    :cond_9d
    const/16 v38, 0x1

    .line 3217
    :cond_9e
    const-string v53, "edit_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 3218
    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3219
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3222
    :cond_9f
    const v53, 0x7f0d0697

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_a2

    .line 3223
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v53

    const-string v54, "SEC_FLOATING_FEATURE_COMMON_CONFIG_CHANGEABLE_UI"

    const-string v55, "none"

    invoke-virtual/range {v53 .. v55}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    const-string v54, "theme"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-eqz v53, :cond_a1

    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v53

    if-nez v53, :cond_a0

    invoke-static {}, Lcom/android/settings_ex/Utils;->isPreloadedThemeSupported()Z

    move-result v53

    if-eqz v53, :cond_a1

    :cond_a0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v53

    const-string v54, "easy_mode_switch"

    const/16 v55, 0x0

    invoke-static/range {v53 .. v55}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v53

    if-nez v53, :cond_13

    .line 3226
    :cond_a1
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3230
    :cond_a2
    const v53, 0x7f0d066f

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_a4

    .line 3232
    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isVzwVoLTEFeatureEnabled(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_a3

    const-string v53, "edit_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3233
    :cond_a3
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3235
    :cond_a4
    const v53, 0x7f0d069b

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_a6

    .line 3236
    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_a5

    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_a5

    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3237
    :cond_a5
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3239
    :cond_a6
    const v53, 0x7f0d069f

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_a8

    .line 3240
    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_a7

    invoke-static {}, Lcom/android/settings_ex/Utils;->isLDUModel()Z

    move-result v53

    if-nez v53, :cond_a7

    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_a7

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDisasterSafetyModel()Z

    move-result v53

    if-nez v53, :cond_a7

    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v53 .. v53}, Lcom/android/settings_ex/Utils;->isSupportPrivateBoxInSettings(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3241
    :cond_a7
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3243
    :cond_a8
    const v53, 0x7f0d06a2

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_a9

    .line 3244
    const-string v53, "no_modify_accounts"

    move-object/from16 v0, v49

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3245
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3249
    :cond_a9
    const v53, 0x7f0d0671

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_aa

    .line 3250
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_NFC_EnableFelica"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_13

    .line 3251
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3256
    :cond_aa
    const v53, 0x7f0d06a1

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_ac

    .line 3257
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDisasterSafetyModel()Z

    move-result v53

    if-eqz v53, :cond_ab

    .line 3258
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3259
    :cond_ab
    const-string v53, "easy_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 3260
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v53

    const-string v54, "CscFeature_Setting_ConfigTypeHelp"

    invoke-virtual/range {v53 .. v54}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v53

    if-eqz v53, :cond_13

    .line 3261
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3264
    :cond_ac
    const v53, 0x7f0d0699

    move/from16 v0, v20

    move/from16 v1, v53

    if-ne v0, v1, :cond_13

    .line 3265
    const-string v53, "VZW"

    sget-object v54, Lcom/android/settings_ex/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_ad

    .line 3266
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3268
    :cond_ad
    const-string v53, "ro.product.name"

    invoke-static/range {v53 .. v53}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 3270
    .local v37, "productName":Ljava/lang/String;
    new-instance v18, Landroid/content/Intent;

    const-string v53, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3271
    .local v18, "homeIntent":Landroid/content/Intent;
    const-string v53, "android.intent.category.HOME"

    move-object/from16 v0, v18

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3272
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const/high16 v54, 0x10000

    move-object/from16 v0, v53

    move-object/from16 v1, v18

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v53

    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3274
    .local v13, "currentLauncherPackageName":Ljava/lang/String;
    const-string v53, "Current launcher Package Name:"

    move-object/from16 v0, v53

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    new-instance v23, Landroid/content/Intent;

    const-string v53, "android.intent.action.MAIN"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3277
    .restart local v23    # "intent":Landroid/content/Intent;
    new-instance v53, Landroid/content/ComponentName;

    const-string v54, "com.sec.android.app.launcher"

    const-string v55, "com.android.launcher2.Launcher"

    invoke-direct/range {v53 .. v55}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3279
    const-string v53, "android.intent.category.HOME"

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3280
    const/high16 v53, 0x10000000

    move-object/from16 v0, v23

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3281
    const-string v53, "StartEdit"

    const/16 v54, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3283
    const-string v53, "com.sec.android.app.launcher"

    move-object/from16 v0, v53

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_ae

    sget-object v53, Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, v53

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v53

    if-eqz v53, :cond_ae

    .line 3286
    move-object/from16 v0, v23

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_a

    .line 3288
    :cond_ae
    const/16 v38, 0x1

    goto/16 :goto_a

    .line 3308
    .end local v13    # "currentLauncherPackageName":Ljava/lang/String;
    .end local v18    # "homeIntent":Landroid/content/Intent;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v37    # "productName":Ljava/lang/String;
    .end local v38    # "removeTile":Z
    .end local v43    # "skipCheck":Z
    .end local v46    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    :cond_af
    invoke-virtual {v10}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTilesCount()I

    move-result v53

    if-nez v53, :cond_6

    .line 3309
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3310
    add-int/lit8 v19, v19, -0x1

    .line 3311
    add-int/lit8 v42, v42, -0x1

    goto/16 :goto_5

    .line 2875
    .restart local v36    # "netManager":Landroid/os/INetworkManagementService;
    .restart local v38    # "removeTile":Z
    .restart local v43    # "skipCheck":Z
    .restart local v46    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    :catch_6
    move-exception v53

    goto/16 :goto_a

    .line 3314
    .end local v10    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v20    # "id":I
    .end local v35    # "n":I
    .end local v36    # "netManager":Landroid/os/INetworkManagementService;
    .end local v38    # "removeTile":Z
    .end local v43    # "skipCheck":Z
    .end local v46    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    :cond_b0
    return-void
.end method
