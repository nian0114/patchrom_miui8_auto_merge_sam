.class public final Lcom/android/settings_ex/bluetooth/BluetoothSettings;
.super Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static mInteractiveHelp:Z

.field private static mIsDeviceProfileShown:Z

.field public static mIsForegroundBtSettings:Z

.field private static mLocalAdapterName:Ljava/lang/String;


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private isHelpDialogHidden:Z

.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

.field private mEmptyView:Landroid/widget/TextView;

.field private mInitiateDiscoverable:Z

.field private mInitiateScan:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsBtScanDialog:Z

.field private mIsEmergencyMode:Z

.field private mMyDevicePreference:Landroid/preference/Preference;

.field private mNoDevicesPreference:Landroid/preference/Preference;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mPolicyEnabled:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScan:Landroid/view/MenuItem;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    sput-boolean v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 155
    sput-boolean v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    .line 157
    sput-boolean v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInteractiveHelp:Z

    .line 160
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 1041
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$7;

    invoke-direct {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$7;-><init>()V

    sput-object v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->dialog:Landroid/app/AlertDialog;

    .line 150
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 151
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateScan:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isHelpDialogHidden:Z

    .line 159
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    .line 163
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsEmergencyMode:Z

    .line 167
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    .line 170
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 854
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothSettings;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateContent(IZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings_ex/bluetooth/BluetoothSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isHelpDialogHidden:Z

    return p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 115
    sput-boolean p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    return p0
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "titleId"    # I
    .param p3, "filter"    # Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    .prologue
    .line 583
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 584
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 585
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setFilter(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 586
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 587
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 588
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 589
    return-void
.end method

.method private checkNoDeviceUi()V
    .locals 3

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1031
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 1032
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothNoDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/bluetooth/BluetoothNoDevicePreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const v1, 0x7f040048

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 1035
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1036
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 1037
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1039
    :cond_1
    return-void
.end method

.method public static isDeviceProfileShown()Z
    .locals 1

    .prologue
    .line 939
    sget-boolean v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    return v0
.end method

.method private setMyDevicePreference()Landroid/preference/Preference;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 549
    sget-object v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 553
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-nez v1, :cond_1

    .line 554
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    .line 556
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v1, :cond_3

    .line 557
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const v2, 0x7f040179

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 564
    :cond_1
    :goto_0
    const-string v0, ""

    .line 565
    .local v0, "mSummaryMessage":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    if-eqz v1, :cond_4

    .line 566
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0128

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 571
    :goto_1
    if-eqz v0, :cond_2

    .line 572
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 575
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 576
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 577
    const-string v1, "BluetoothSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMyDevicePreference :: my device name set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    return-object v1

    .line 560
    .end local v0    # "mSummaryMessage":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const v2, 0x7f04017a

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_0

    .line 568
    .restart local v0    # "mSummaryMessage":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0127

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setOffMessage()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 737
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    if-nez v6, :cond_0

    .line 780
    :goto_0
    return-void

    .line 740
    :cond_0
    const v6, 0x7f0e02f5

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 742
    .local v2, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 743
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v6, "ble_scan_always_enabled"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v0, :cond_2

    .line 746
    .local v0, "bleScanningMode":Z
    :goto_1
    if-nez v0, :cond_3

    .line 748
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 749
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 776
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 777
    .local v1, "boldSpan":Landroid/text/Spannable;
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0f01ed

    invoke-direct {v6, v7, v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-interface {v1, v6, v5, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .end local v0    # "bleScanningMode":Z
    .end local v1    # "boldSpan":Landroid/text/Spannable;
    :cond_2
    move v0, v5

    .line 743
    goto :goto_1

    .line 751
    .restart local v0    # "bleScanningMode":Z
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    .local v3, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 753
    const-string v6, "\n\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    const v6, 0x7f0e02f6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 755
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    new-instance v7, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    invoke-static {v6, v3, v7}, Lcom/android/settings_ex/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings_ex/LinkifyUtils$OnClickListener;)Z

    .line 764
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isGEDTalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 765
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    new-instance v7, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method private updateContent(IZ)V
    .locals 12
    .param p1, "bluetoothState"    # I
    .param p2, "mStartScan"    # Z

    .prologue
    const/4 v1, 0x5

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 592
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 593
    .local v11, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v8, 0x0

    .line 594
    .local v8, "messageId":I
    const-string v0, "BluetoothSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateContent : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mStartScan = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    packed-switch p1, :pswitch_data_0

    .line 722
    :cond_0
    :goto_0
    invoke-virtual {p0, v11}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 723
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 724
    if-eqz v8, :cond_1

    .line 725
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 727
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v0, :cond_3

    .line 728
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 731
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v0, :cond_4

    .line 732
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setProgressBarVisible(Z)V

    .line 734
    :cond_4
    :goto_1
    return-void

    .line 598
    :pswitch_0
    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 599
    invoke-virtual {v11, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 600
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 602
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 603
    const v8, 0x7f0e0126

    .line 604
    goto :goto_0

    .line 608
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateDeviceName()V

    .line 610
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setMyDevicePreference()Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 613
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_d

    .line 614
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz v0, :cond_c

    .line 615
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 616
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    check-cast v0, Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 625
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_f

    .line 626
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz v0, :cond_e

    .line 627
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 630
    :goto_3
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    .line 635
    :goto_4
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v2, 0x7f0e02ea

    sget-object v4, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v0, v2, v4}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 639
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v2, 0x7f0e02eb

    sget-object v4, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v0, v2, v4}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 642
    iput-boolean v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 644
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v10

    .line 645
    .local v10, "numberOfPairedDevices":I
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v9

    .line 647
    .local v9, "numberOfAvailableDevices":I
    if-gtz v10, :cond_6

    .line 648
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 651
    :cond_6
    if-nez v9, :cond_8

    if-nez p2, :cond_8

    .line 652
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    if-nez v0, :cond_7

    .line 653
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothNoDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v4

    invoke-direct {v0, v2, v4}, Lcom/android/settings_ex/bluetooth/BluetoothNoDevicePreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    .line 655
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const v2, 0x7f040048

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 656
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 657
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 658
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 662
    :cond_8
    if-eqz p2, :cond_9

    .line 663
    const-string v0, "BluetoothSettings"

    const-string v2, "updateContent :: startScanning()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->startScanning()V

    .line 665
    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateScan:Z

    .line 668
    :cond_9
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    if-nez v0, :cond_10

    .line 669
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v0, :cond_a

    .line 670
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v0, v2, v4}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    .line 671
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->resume(Landroid/content/Context;)V

    .line 673
    :cond_a
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_b

    .line 674
    const-string v0, "BluetoothSettings"

    const-string v2, "updateContent :: set Discoverable mode to SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->setDiscoverableTimeout(I)V

    .line 677
    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 682
    const-string v6, " User Interaction: User actionDiscoverable mode status has changed to discoverable succeeded"

    .line 683
    .local v6, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    move v2, v1

    invoke-static/range {v0 .. v7}, Lcom/android/settings_ex/bluetooth/Utils;->insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 698
    .end local v6    # "message":Ljava/lang/String;
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 619
    .end local v9    # "numberOfAvailableDevices":I
    .end local v10    # "numberOfPairedDevices":I
    :cond_c
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    goto/16 :goto_2

    .line 621
    :cond_d
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_2

    .line 629
    :cond_e
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    goto/16 :goto_3

    .line 632
    :cond_f
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_4

    .line 691
    .restart local v9    # "numberOfAvailableDevices":I
    .restart local v10    # "numberOfPairedDevices":I
    :cond_10
    const-string v0, "BluetoothSettings"

    const-string v2, "updateContent :: logging failed to enable discoverable mode by MDM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v6, " User Interaction: User actionDiscoverable mode status has changed to discoverable failed Reason: MDM policy"

    .line 693
    .restart local v6    # "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    move v2, v1

    invoke-static/range {v0 .. v7}, Lcom/android/settings_ex/bluetooth/Utils;->insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 702
    .end local v6    # "message":Ljava/lang/String;
    .end local v9    # "numberOfAvailableDevices":I
    .end local v10    # "numberOfPairedDevices":I
    :pswitch_1
    const v8, 0x7f0e013f

    .line 703
    goto/16 :goto_0

    .line 706
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setOffMessage()V

    .line 708
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 709
    const v8, 0x7f0e0126

    .line 712
    :cond_11
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 716
    :pswitch_3
    const v8, 0x7f0e013e

    .line 717
    iput-boolean v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateScan:Z

    .line 718
    iput-boolean v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    goto/16 :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDeviceName()V
    .locals 4

    .prologue
    .line 963
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, "mDeviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 966
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 967
    const-string v1, "BluetoothSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDeviceName :: change device name to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_0
    return-void
.end method


# virtual methods
.method public ShowChinaPermissionPopUp()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 983
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 984
    .local v1, "context":Landroid/content/Context;
    const-string v7, "layout_inflater"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 985
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040049

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 987
    .local v3, "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "bluetooth_security_on_check"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 989
    .local v5, "settingValue":I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 990
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0e0152

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 992
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f110026

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 994
    .local v4, "radioButtonItems":[Ljava/lang/CharSequence;
    if-ne v5, v6, :cond_0

    :goto_0
    new-instance v7, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    invoke-virtual {v0, v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1015
    const v6, 0x7f0e01ba

    new-instance v7, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1022
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->dialog:Landroid/app/AlertDialog;

    .line 1023
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v9, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1024
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 1025
    return-void

    .line 994
    :cond_0
    const/4 v6, 0x2

    goto :goto_0
.end method

.method addPreferencesForActivity()V
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz v0, :cond_0

    .line 282
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 288
    :goto_0
    return-void

    .line 285
    :cond_0
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 959
    const v0, 0x7f0e0d86

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 203
    const/16 v0, 0x18

    return v0
.end method

.method initDevicePreference(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 895
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 896
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 898
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    :cond_0
    return-void
.end method

.method public isChinaSpecOption()Z
    .locals 4

    .prologue
    .line 972
    const/4 v1, 0x0

    .line 973
    .local v1, "ret":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 974
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, "ChinaNalSecurityType":Ljava/lang/String;
    const-string v2, "ChinaNalSecurity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 976
    const/4 v1, 0x1

    .line 979
    .end local v0    # "ChinaNalSecurityType":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .locals 6
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 946
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 947
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 948
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 949
    .local v1, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 950
    const/4 v4, 0x1

    .line 953
    .end local v1    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 208
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 209
    iput-boolean v13, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 210
    if-nez p1, :cond_3

    move v1, v13

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateScan:Z

    .line 211
    const-string v1, "BluetoothSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityCreated :: mInitiateScan : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateScan:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x1020004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 214
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 215
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 216
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f0f01ed

    invoke-virtual {v1, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 217
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a010a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 220
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v1, :cond_5

    .line 221
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 222
    .local v12, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0c00a2

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f0c00b0

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    const v3, 0x7f0c00ac

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v4, v1, v3

    .line 225
    .local v4, "divider_inset_size":I
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 226
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 227
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 233
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    check-cast v11, Lcom/android/settings_ex/SettingsActivity;

    .line 234
    .local v11, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v11}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 236
    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-direct {v1, v11, v2}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/settings_ex/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    .line 237
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setupSwitchBar()V

    .line 238
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->requestFocus()Z

    .line 247
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v4    # "divider_inset_size":I
    .end local v11    # "activity":Lcom/android/settings_ex/SettingsActivity;
    .end local v12    # "resources":Landroid/content/res/Resources;
    :cond_0
    :goto_2
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ro.build.scafe.size"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setMinimumHeight(I)V

    .line 251
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz v1, :cond_6

    .line 253
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.bluetooth"

    const-string v3, "BLSM"

    const-string v5, "BluetoothScanDialog"

    invoke-static {v1, v2, v3, v5}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-ne v1, v13, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.bluetooth"

    const-string v3, "BLHM"

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 210
    goto/16 :goto_0

    .line 229
    .restart local v4    # "divider_inset_size":I
    .restart local v12    # "resources":Landroid/content/res/Resources;
    :cond_4
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v0

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 230
    .restart local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 242
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v4    # "divider_inset_size":I
    .end local v12    # "resources":Landroid/content/res/Resources;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x7f02009c

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollIndicators(I)V

    goto/16 :goto_2

    .line 256
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.bluetooth"

    const-string v3, "BLSM"

    const-string v5, "BluetoothSettings"

    invoke-static {v1, v2, v3, v5}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 197
    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/BluetoothScanDialog;

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    .line 198
    const-string v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttach, mIsBtScanDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .param p1, "bluetoothState"    # I

    .prologue
    .line 784
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 785
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 786
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 787
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 792
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateScan:Z

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 793
    return-void

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 419
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 420
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 887
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 904
    const-string v2, "BluetoothSettings"

    const-string v5, "onCreate"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 907
    sput-boolean v4, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    .line 911
    :try_start_0
    const-string v2, "com.samsung.helphub"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v5, 0x2

    if-lt v2, v5, :cond_2

    move v2, v3

    :goto_0
    sput-boolean v2, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInteractiveHelp:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 920
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 921
    .local v1, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 922
    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsEmergencyMode:Z

    .line 923
    sput-boolean v4, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInteractiveHelp:Z

    .line 928
    .end local v1    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 929
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/guide/GuideFragment;->dismissHelpDialog(Landroid/app/Activity;)V

    .line 931
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 911
    goto :goto_0

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 424
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-nez v3, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-nez v3, :cond_6

    move v0, v2

    .line 429
    .local v0, "isEnabled":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 430
    .local v1, "mIsDiscovering":Z
    if-eqz v1, :cond_7

    const v3, 0x7f0e0874

    :goto_2
    invoke-interface {p1, v2, v5, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    .line 432
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 435
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v3

    if-eq v3, v5, :cond_0

    .line 440
    const-string v3, "SPR"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v5, :cond_2

    const-string v3, "VMU"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v5, :cond_2

    const-string v3, "BST"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v5, :cond_2

    const-string v3, "XAS"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v5, :cond_2

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_4

    .line 445
    :cond_2
    const/4 v3, 0x3

    const v4, 0x7f0e0131

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 448
    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsEmergencyMode:Z

    if-nez v3, :cond_3

    .line 449
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 450
    const v3, 0x7f0e10e8

    invoke-interface {p1, v2, v6, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 457
    :cond_3
    :goto_3
    sget-boolean v3, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInteractiveHelp:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 458
    const/4 v3, 0x4

    const v4, 0x7f0e0132

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 462
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isChinaSpecOption()Z

    move-result v3

    if-ne v3, v5, :cond_5

    .line 463
    const/4 v3, 0x5

    const v4, 0x7f0e0152

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 467
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto/16 :goto_0

    .line 428
    .end local v0    # "isEnabled":Z
    .end local v1    # "mIsDiscovering":Z
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    goto/16 :goto_1

    .line 430
    .restart local v0    # "isEnabled":Z
    .restart local v1    # "mIsDiscovering":Z
    :cond_7
    const v3, 0x7f0e0121

    goto/16 :goto_2

    .line 453
    :cond_8
    const v3, 0x7f0e10e9

    invoke-interface {p1, v2, v6, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDestroyView()V

    .line 271
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->destroy()V

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->teardownSwitchBar()V

    .line 277
    :cond_0
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 849
    const-string v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceBondStateChanged :: bondState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 851
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateScan:Z

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 852
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "btPreference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 544
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    .line 545
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 472
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 530
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :cond_0
    :goto_0
    return v6

    .line 474
    :pswitch_0
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v7}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_0

    .line 475
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v7}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 476
    const-string v7, "BluetoothSettings"

    const-string v8, "onOptionsItemSelected :: Stop scanning"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v7}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_0

    .line 479
    :cond_1
    const-string v7, "BluetoothSettings"

    const-string v8, "onOptionsItemSelected :: Start scanning"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/16 v8, 0xa0

    invoke-static {v7, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 481
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0

    .line 487
    :pswitch_1
    const-string v7, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 488
    const v4, 0x7f0e10e8

    .line 493
    .local v4, "mTitleResId":I
    :goto_1
    invoke-static {v4}, Lcom/android/settings_ex/DeviceNameSettings;->newInstance(I)Lcom/android/settings_ex/DeviceNameSettings;

    move-result-object v5

    .line 494
    .local v5, "newFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "dialog"

    invoke-virtual {v5, v7, v8}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/16 v8, 0xa1

    invoke-static {v7, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    .line 490
    .end local v4    # "mTitleResId":I
    .end local v5    # "newFragment":Landroid/app/DialogFragment;
    :cond_2
    const v4, 0x7f0e10e9

    .restart local v4    # "mTitleResId":I
    goto :goto_1

    .line 499
    .end local v4    # "mTitleResId":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/16 v8, 0xa2

    invoke-static {v7, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 501
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 503
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 507
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_3
    sget-boolean v7, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInteractiveHelp:Z

    if-eqz v7, :cond_0

    .line 510
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.samsung.helphub"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 511
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v7, v7, 0xa

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 512
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.samsung.helphub.HELP"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    .local v3, "intent_help":Landroid/content/Intent;
    const-string v7, "helphub:section"

    const-string v8, "bluetooth"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 520
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "intent_help":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 515
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    :try_start_1
    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v7, v7, 0xa

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 516
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.samsung.helphub.HELP"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    .restart local v3    # "intent_help":Landroid/content/Intent;
    const-string v7, "helphub:appid"

    const-string v8, "bluetooth"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 527
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "intent_help":Landroid/content/Intent;
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->ShowChinaPermissionPopUp()V

    goto/16 :goto_0

    .line 472
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 8

    .prologue
    const/4 v1, 0x5

    const/4 v3, 0x0

    .line 367
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 369
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v0, :cond_0

    .line 370
    sput-boolean v3, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setProgressBarVisible(Z)V

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const v2, 0x7f0e0121

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 382
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 386
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 389
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_4

    .line 390
    const-string v0, "BluetoothSettings"

    const-string v2, "onPause :: set Discoverable mode to SCAN_MODE_CONNECTABLE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->setDiscoverableEnable(Z)Z

    .line 392
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 395
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_5

    .line 396
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->pause()V

    .line 400
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 405
    const-string v6, " User Interaction: User actionDiscoverable mode status has changed to not discoverable succeeded"

    .line 406
    .local v6, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    move v2, v1

    invoke-static/range {v0 .. v7}, Lcom/android/settings_ex/bluetooth/Utils;->insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 411
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->checkNoDeviceUi()V

    .line 413
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 416
    :cond_6
    return-void
.end method

.method public onProfileStateChanged(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;II)V
    .locals 0
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .param p2, "newState"    # I
    .param p3, "oldState"    # I

    .prologue
    .line 886
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 292
    sget-boolean v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    if-eqz v0, :cond_0

    .line 293
    iput-boolean v11, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateScan:Z

    .line 294
    sput-boolean v11, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    .line 297
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v0, :cond_1

    .line 298
    sput-boolean v10, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 306
    :cond_2
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 310
    const-string v0, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 311
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x1

    .line 312
    .local v8, "isDiscoverableEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isDiscoverableEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 314
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 316
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 317
    const-string v0, "isDiscoverableEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    move v8, v10

    .line 324
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 328
    :cond_3
    :goto_1
    if-nez v8, :cond_4

    .line 329
    iput-boolean v10, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    .line 331
    :cond_4
    const-string v0, "BluetoothSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDiscoverableEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPolicyEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v9, Landroid/content/IntentFilter;

    const-string v0, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 336
    .local v9, "mIntentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    iput-boolean v10, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 339
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_5

    .line 340
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->resume(Landroid/content/Context;)V

    .line 343
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 344
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 346
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x7f0e0126

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 363
    :goto_2
    return-void

    .end local v9    # "mIntentFilter":Landroid/content/IntentFilter;
    :cond_6
    move v8, v11

    .line 317
    goto :goto_0

    .line 319
    :catch_0
    move-exception v7

    .line 320
    .local v7, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string v0, "BluetoothSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CursorWindowAllocationException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 321
    .end local v7    # "e":Landroid/database/CursorWindowAllocationException;
    :catch_1
    move-exception v7

    .line 322
    .local v7, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_2
    const-string v0, "BluetoothSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CursorIndexOutOfBoundsException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v7    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 350
    .restart local v9    # "mIntentFilter":Landroid/content/IntentFilter;
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_8

    .line 351
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateScan:Z

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 354
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-ne v0, v10, :cond_9

    invoke-static {}, Lcom/android/settings_ex/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isHelpDialogHidden:Z

    if-eqz v0, :cond_9

    .line 355
    const-string v0, "BluetoothSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before showing help dialog in tablet + isHelpDialogHidden = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isHelpDialogHidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/guide/GuideFragment;->showHelpDialog(Landroid/app/Activity;)V

    .line 357
    const-string v0, "BluetoothSettings"

    const-string v2, "after showing help dialog in tablet"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iput-boolean v11, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isHelpDialogHidden:Z

    goto/16 :goto_2

    .line 361
    :cond_9
    const-string v0, "BluetoothSettings"

    const-string v2, "showing help dialog in tablet failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 935
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 936
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 7
    .param p1, "started"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 797
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 799
    const-string v1, "BluetoothSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScanningStateChanged :: is start scanning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v1, :cond_0

    .line 802
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/widget/SwitchBar;->setProgressBarVisible(Z)V

    .line 805
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v1, :cond_1

    .line 806
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz p1, :cond_6

    const v1, 0x7f0e0874

    :goto_0
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 810
    :cond_1
    if-nez p1, :cond_8

    .line 812
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 813
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v1, :cond_7

    move v0, v2

    .line 814
    .local v0, "logCount":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "com.android.bluetooth"

    const-string v4, "BSDC"

    mul-int/lit16 v5, v0, 0x3e8

    invoke-static {v1, v3, v4, v5}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 818
    .end local v0    # "logCount":I
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 820
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 821
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    if-nez v1, :cond_3

    .line 822
    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothNoDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/android/settings_ex/bluetooth/BluetoothNoDevicePreference;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    .line 824
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const v3, 0x7f040048

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 825
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 826
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 827
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 842
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 843
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 845
    :cond_5
    return-void

    .line 806
    :cond_6
    const v1, 0x7f0e0121

    goto/16 :goto_0

    .line 813
    :cond_7
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    goto/16 :goto_1

    .line 830
    :cond_8
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_9

    .line 831
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 832
    iput-boolean v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 836
    :cond_9
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 837
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    goto :goto_2
.end method

.method public startScanning()V
    .locals 2

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method
