.class public Lcom/android/settings_ex/OtherSecuritySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OtherSecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/OtherSecuritySettings$3;,
        Lcom/android/settings_ex/OtherSecuritySettings$SecuritySearchIndexProvider;,
        Lcom/android/settings_ex/OtherSecuritySettings$PWState;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewPassword:Ljava/lang/String;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPWState:Lcom/android/settings_ex/OtherSecuritySettings$PWState;

.field mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

.field private mResetCredentials:Landroid/preference/Preference;

.field mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSecurityPolicyUpdates:Landroid/preference/Preference;

.field private mSecurityReports:Landroid/preference/SwitchPreference;

.field private mShowPassword:Landroid/preference/SwitchPreference;

.field private mSimLockPreferences:Landroid/preference/Preference;

.field private mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mZenAccess:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/OtherSecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 149
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "security_reports"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/OtherSecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 155
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings_ex/OtherSecuritySettings;->MY_USER_ID:I

    .line 837
    new-instance v0, Lcom/android/settings_ex/OtherSecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings_ex/OtherSecuritySettings$SecuritySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings_ex/OtherSecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 195
    sget-object v0, Lcom/android/settings_ex/OtherSecuritySettings$PWState;->CURRENT:Lcom/android/settings_ex/OtherSecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mPWState:Lcom/android/settings_ex/OtherSecuritySettings$PWState;

    .line 198
    new-instance v0, Lcom/android/settings_ex/OtherSecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/OtherSecuritySettings$1;-><init>(Lcom/android/settings_ex/OtherSecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 840
    return-void
.end method

.method private SetFirstTimePhonepassword(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v4, 0x7f0e1352

    const/16 v3, 0x64

    .line 720
    sget-object v0, Lcom/android/settings_ex/OtherSecuritySettings$3;->$SwitchMap$com$android$settings$OtherSecuritySettings$PWState:[I

    iget-object v1, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mPWState:Lcom/android/settings_ex/OtherSecuritySettings$PWState;

    invoke-virtual {v1}, Lcom/android/settings_ex/OtherSecuritySettings$PWState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 744
    :goto_0
    return-void

    .line 722
    :pswitch_0
    const-string v0, ".password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mNewPassword:Ljava/lang/String;

    .line 723
    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1new phone password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    sget-object v0, Lcom/android/settings_ex/OtherSecuritySettings$PWState;->CONFIRM:Lcom/android/settings_ex/OtherSecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mPWState:Lcom/android/settings_ex/OtherSecuritySettings$PWState;

    .line 725
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e1354

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings_ex/OtherSecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 730
    :pswitch_1
    sget-object v0, Lcom/android/settings_ex/OtherSecuritySettings$PWState;->CURRENT:Lcom/android/settings_ex/OtherSecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mPWState:Lcom/android/settings_ex/OtherSecuritySettings$PWState;

    .line 731
    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2new phone password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-virtual {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    iget-object v2, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 736
    :pswitch_2
    sget-object v0, Lcom/android/settings_ex/OtherSecuritySettings$PWState;->NEW:Lcom/android/settings_ex/OtherSecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mPWState:Lcom/android/settings_ex/OtherSecuritySettings$PWState;

    .line 737
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e1351

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e1355

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings_ex/OtherSecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 720
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private StartPassword()V
    .locals 5

    .prologue
    const v3, 0x7f0e1350

    .line 691
    invoke-virtual {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, "phone_password":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 695
    sget-object v1, Lcom/android/settings_ex/OtherSecuritySettings$PWState;->NEW:Lcom/android/settings_ex/OtherSecuritySettings$PWState;

    iput-object v1, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mPWState:Lcom/android/settings_ex/OtherSecuritySettings$PWState;

    .line 696
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e1351

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e1355

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings_ex/OtherSecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 703
    :goto_0
    return-void

    .line 699
    :cond_0
    sget-object v1, Lcom/android/settings_ex/OtherSecuritySettings$PWState;->CURRENT:Lcom/android/settings_ex/OtherSecuritySettings$PWState;

    iput-object v1, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mPWState:Lcom/android/settings_ex/OtherSecuritySettings$PWState;

    .line 700
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e1353

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/settings_ex/OtherSecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/OtherSecuritySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/OtherSecuritySettings;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->updateSIMLockEnable()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/android/settings_ex/OtherSecuritySettings;->MY_USER_ID:I

    return v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 23

    .prologue
    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 244
    .local v13, "root":Landroid/preference/PreferenceScreen;
    if-eqz v13, :cond_0

    .line 245
    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 247
    :cond_0
    const v19, 0x7f08009f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/OtherSecuritySettings;->addPreferencesFromResource(I)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 250
    sget v19, Lcom/android/settings_ex/OtherSecuritySettings;->MY_USER_ID:I

    if-nez v19, :cond_b

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/OtherSecuritySettings;->mIsPrimary:Z

    .line 253
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    if-nez v19, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    const v20, 0x7f0e1350

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    const-string v20, "mPhonePasswordPreference"

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 257
    new-instance v11, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 258
    .local v11, "phonePasswordCat":Landroid/preference/PreferenceCategory;
    const v19, 0x7f0e134f

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 259
    invoke-virtual {v13, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 266
    .end local v11    # "phonePasswordCat":Landroid/preference/PreferenceCategory;
    :cond_1
    const v19, 0x7f0800a8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/OtherSecuritySettings;->addPreferencesFromResource(I)V

    .line 268
    const-string v19, "manage_notification_access"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/OtherSecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 270
    const-string v19, "manage_zen_access"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/OtherSecuritySettings;->mZenAccess:Landroid/preference/Preference;

    .line 271
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->refreshNotificationListeners()V

    .line 274
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v16

    .line 275
    .local v16, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string v20, "carrier_config"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    .line 277
    .local v4, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v4}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 278
    .local v3, "b":Landroid/os/PersistableBundle;
    const-string v19, "sim_lock"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e0616

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    const-string v19, "sim_lock_settings"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e0615

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 280
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v19

    const-string v20, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SECURITY_EMBEDEDSIMCARD"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 281
    const-string v19, "sim_lock"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 294
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "lock_to_app_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_2

    .line 296
    const-string v19, "screen_pinning_settings"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e0ea6

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    :cond_2
    const-string v19, "show_password"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    .line 302
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    if-eqz v19, :cond_3

    .line 303
    const-string v19, "category_show_passwords"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    .line 305
    .local v9, "mShowPasswordCategory":Landroid/preference/PreferenceGroup;
    invoke-virtual {v13, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 308
    .end local v9    # "mShowPasswordCategory":Landroid/preference/PreferenceGroup;
    :cond_3
    const-string v19, "credentials_reset"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/OtherSecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string v20, "user"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    .line 312
    .local v17, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/OtherSecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 313
    const-string v19, "no_config_credentials"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_14

    .line 314
    const-string v19, "credential_storage_type"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 316
    .local v5, "credentialStorageType":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v19

    if-eqz v19, :cond_13

    const v15, 0x7f0e0b90

    .line 319
    .local v15, "storageSummaryRes":I
    :goto_2
    invoke-virtual {v5, v15}, Landroid/preference/Preference;->setSummary(I)V

    .line 329
    .end local v5    # "credentialStorageType":Landroid/preference/Preference;
    .end local v15    # "storageSummaryRes":I
    :goto_3
    const-string v19, "security_policy_updates"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/OtherSecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    .line 330
    const-string v19, "security_reports"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/OtherSecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "send_security_reports"

    const/16 v21, -0x1

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 340
    :goto_4
    const-string v19, "DCM"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "KDI"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mIsPrimary:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 341
    :cond_4
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mIsPrimary:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 342
    :cond_5
    const-string v19, "new_security_update_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceGroup;

    .line 343
    .local v14, "securityUpdateServiceCategory":Landroid/preference/PreferenceGroup;
    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 349
    .end local v14    # "securityUpdateServiceCategory":Landroid/preference/PreferenceGroup;
    :cond_6
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v19

    if-eqz v19, :cond_7

    const-string v19, "GOOGLE_POLICY"

    const-string v20, "selinux.policy_version"

    const-string v21, "Unknown"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 350
    :cond_7
    const-string v19, "new_security_update_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/android/settings_ex/OtherSecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 366
    :goto_5
    const-string v19, "advanced_security"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 368
    .local v2, "advancedCategory":Landroid/preference/PreferenceGroup;
    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settings_ex/OtherSecuritySettings;->MY_USER_ID:I

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v19

    if-nez v19, :cond_8

    .line 369
    const-string v19, "manage_trust_agents"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 370
    .local v10, "manageAgents":Landroid/preference/Preference;
    if-eqz v10, :cond_8

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 375
    .end local v10    # "manageAgents":Landroid/preference/Preference;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v19

    if-nez v19, :cond_9

    .line 377
    const-string v19, "smartcard_credential_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/OtherSecuritySettings;->removePreference(Ljava/lang/String;)V

    .line 383
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v19

    const-class v20, Lcom/android/settings_ex/OtherSecuritySettings;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 386
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    sget-object v19, Lcom/android/settings_ex/OtherSecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_19

    .line 387
    sget-object v19, Lcom/android/settings_ex/OtherSecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v19, v19, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 388
    .local v12, "pref":Landroid/preference/Preference;
    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 386
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 250
    .end local v2    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .end local v3    # "b":Landroid/os/PersistableBundle;
    .end local v4    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .end local v7    # "i":I
    .end local v12    # "pref":Landroid/preference/Preference;
    .end local v16    # "tm":Landroid/telephony/TelephonyManager;
    .end local v17    # "um":Landroid/os/UserManager;
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 282
    .restart local v3    # "b":Landroid/os/PersistableBundle;
    .restart local v4    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .restart local v16    # "tm":Landroid/telephony/TelephonyManager;
    :cond_c
    const-string v19, "USC"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    const-string v19, "SPR"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    const-string v19, "VMU"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    const-string v19, "BST"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    const-string v19, "XAS"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    const-string v19, "TFN"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 285
    :cond_d
    const-string v19, "sim_lock"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 286
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mIsPrimary:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->isSimIccReady()Z

    move-result v19

    if-nez v19, :cond_10

    .line 287
    :cond_f
    const-string v19, "sim_lock"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 288
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings_ex/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_11

    invoke-static {}, Lcom/android/settings_ex/Utils;->isLDUModel()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 289
    :cond_11
    const-string v19, "sim_lock"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 292
    :cond_12
    const-string v19, "sim_lock"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/OtherSecuritySettings;->mSimLockPreferences:Landroid/preference/Preference;

    goto/16 :goto_1

    .line 316
    .restart local v5    # "credentialStorageType":Landroid/preference/Preference;
    .restart local v17    # "um":Landroid/os/UserManager;
    :cond_13
    const v15, 0x7f0e0b91

    goto/16 :goto_2

    .line 321
    .end local v5    # "credentialStorageType":Landroid/preference/Preference;
    :cond_14
    const-string v19, "credentials_management"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 323
    .local v6, "credentialsManager":Landroid/preference/PreferenceGroup;
    const-string v19, "credentials_reset"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 324
    const-string v19, "credentials_install"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    const-string v19, "credential_storage_type"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 335
    .end local v6    # "credentialsManager":Landroid/preference/PreferenceGroup;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_4

    .line 352
    :cond_16
    invoke-static {}, Lcom/android/settings_ex/Utils;->isUSA()Z

    move-result v19

    if-nez v19, :cond_17

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0e1324

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_5

    .line 355
    :cond_17
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v19

    if-nez v19, :cond_18

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0e1325

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_5

    .line 358
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0e1326

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_5

    .line 392
    .restart local v2    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .restart local v7    # "i":I
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    .line 393
    .local v8, "isKioskContainer":Z
    if-eqz v8, :cond_1a

    .line 394
    const-string v19, "credentials_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/android/settings_ex/OtherSecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 395
    if-eqz v2, :cond_1a

    .line 396
    const-string v19, "usage_access"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 397
    .local v18, "usageAccess":Landroid/preference/Preference;
    if-eqz v18, :cond_1a

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 403
    .end local v18    # "usageAccess":Landroid/preference/Preference;
    :cond_1a
    const-string v19, "2016A"

    const-string v20, "ro.build.scafe.version"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 405
    const/4 v7, 0x0

    :goto_7
    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_1d

    .line 406
    invoke-virtual {v13, v7}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/preference/PreferenceCategory;

    move/from16 v19, v0

    if-eqz v19, :cond_1b

    .line 407
    if-nez v7, :cond_1c

    .line 408
    invoke-virtual {v13, v7}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v19

    const v20, 0x7f040042

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 405
    :cond_1b
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 410
    :cond_1c
    const-string v19, "advanced_security"

    invoke-virtual {v13, v7}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1b

    .line 411
    invoke-virtual {v13, v7}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 418
    :cond_1d
    const-string v19, "screen_pinning_settings"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 421
    :cond_1e
    return-object v13
.end method

.method private isSimIccReady()Z
    .locals 5

    .prologue
    .line 427
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 428
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 431
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    .line 432
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 433
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 434
    const/4 v4, 0x1

    .line 439
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isSimReady()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 446
    const/4 v1, 0x0

    .line 447
    .local v1, "simState":I
    iget-object v5, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 449
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 450
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 451
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 452
    if-eq v1, v4, :cond_0

    if-eqz v1, :cond_0

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    const/4 v5, 0x7

    if-eq v1, v5, :cond_0

    .line 460
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isUCSEmpty()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1084
    :try_start_0
    const-string v2, "com.samsung.ucs.ucsservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v0

    .line 1085
    .local v0, "ucmeService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    if-eqz v0, :cond_0

    .line 1086
    invoke-interface {v0}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->isUserCertificatesExistInUCS()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 1091
    .end local v0    # "ucmeService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    :cond_0
    :goto_0
    return v1

    .line 1086
    .restart local v0    # "ucmeService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1088
    .end local v0    # "ucmeService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private refreshNotificationListeners()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    .line 479
    :cond_0
    return-void
.end method

.method private removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceScreen;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 483
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 485
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 488
    :cond_0
    return-void
.end method

.method private updateSIMLockEnable()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 779
    iget-object v2, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mSimLockPreferences:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 780
    iget-object v2, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mSimLockPreferences:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->isSimReady()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 781
    invoke-virtual {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->getSRomaingVirtualSlot(Landroid/content/Context;)I

    move-result v0

    .line 782
    .local v0, "isSRoamingEnable":I
    sget v2, Lcom/android/settings_ex/Utils;->SOFTSIM_STATUS_ENABLE:I

    if-ne v0, v2, :cond_1

    .line 783
    iget-object v2, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mSimLockPreferences:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 788
    .end local v0    # "isSRoamingEnable":I
    :cond_0
    :goto_0
    return-void

    .line 784
    .restart local v0    # "isSRoamingEnable":I
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMultisimModel()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CTC"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 785
    iget-object v2, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mSimLockPreferences:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/settings_ex/Utils;->isSimReady()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 831
    const v0, 0x7f0e0d93

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 208
    const/16 v0, 0x57

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 752
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 753
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_1

    if-ne p2, v3, :cond_1

    .line 754
    iget-object v1, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 756
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/OtherSecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 776
    :cond_0
    :goto_1
    return-void

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 766
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 767
    const/16 v1, 0x64

    if-eq p1, v1, :cond_2

    const/16 v1, 0x66

    if-ne p1, v1, :cond_3

    .line 769
    :cond_2
    if-ne p2, v3, :cond_3

    .line 770
    invoke-direct {p0, p3}, Lcom/android/settings_ex/OtherSecuritySettings;->SetFirstTimePhonepassword(Landroid/content/Intent;)V

    .line 775
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 217
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 219
    invoke-virtual {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    .line 220
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OtherSecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 222
    invoke-virtual {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 230
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 234
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 531
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 532
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 644
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 645
    iget-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 648
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 792
    const/4 v2, 0x1

    .line 793
    .local v2, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, "key":Ljava/lang/String;
    const-string v6, "show_password"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 795
    invoke-virtual {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "show_password"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 826
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v4, v5

    .line 795
    goto :goto_0

    .line 798
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v6, "security_reports"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "send_security_reports"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v3, v4

    .line 800
    .local v3, "state":Z
    :goto_2
    const-string v4, "OtherSecuritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state in db: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    if-eqz v3, :cond_4

    .line 804
    const/4 v3, 0x0

    .line 805
    invoke-virtual {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "send_security_reports"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 820
    :goto_3
    const-string v4, "OtherSecuritySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state for intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.setting.intent.send_security_report_checked"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 822
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "IS_SEND_SECURITY_REPORT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 823
    invoke-virtual {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "state":Z
    :cond_3
    move v3, v5

    .line 799
    goto :goto_2

    .line 807
    .restart local v3    # "state":Z
    :cond_4
    const-string v4, "Utils"

    const-string v6, "other security settings: KEY_SECURITY_REPORTS"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-virtual {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 809
    iget-object v4, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 810
    const/4 v2, 0x0

    .line 815
    :cond_5
    const/4 v3, 0x1

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 652
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 653
    .local v4, "key":Ljava/lang/String;
    const-string v5, "trust_agent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 654
    new-instance v2, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 656
    .local v2, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 657
    const/16 v5, 0x7e

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v0

    .line 659
    .local v0, "confirmationLaunched":Z
    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v5, :cond_0

    .line 663
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/OtherSecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :goto_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 687
    .end local v0    # "confirmationLaunched":Z
    .end local v2    # "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    :cond_0
    :goto_1
    const/4 v5, 0x1

    :goto_2
    return v5

    .line 664
    .restart local v0    # "confirmationLaunched":Z
    .restart local v2    # "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    :catch_0
    move-exception v1

    .line 665
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 669
    .end local v0    # "confirmationLaunched":Z
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 671
    invoke-direct {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->StartPassword()V

    goto :goto_1

    .line 673
    :cond_2
    const-string v5, "smartCardConfig"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 675
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 676
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "com.sec.smartcard.pinservice.action.SMARTCARDCREDENTIALSETTINGSPAGE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    invoke-virtual {p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 678
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 679
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 685
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto :goto_2
.end method

.method public onResume()V
    .locals 18

    .prologue
    .line 544
    invoke-super/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 548
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 551
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v14, :cond_0

    .line 552
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v15}, Landroid/app/enterprise/PasswordPolicy;->isPasswordVisibilityEnabled()Z

    move-result v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 557
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/admin/DevicePolicyManager;->getAllowUnsignedInstallationPkg(Landroid/content/ComponentName;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/admin/DevicePolicyManager;->getAllowUnsignedApp(Landroid/content/ComponentName;)Z

    move-result v14

    if-nez v14, :cond_a

    :cond_1
    const/4 v3, 0x1

    .line 558
    .local v3, "blockUnsignedAppInstall":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v16, "isPasswordVisibilityEnabled"

    invoke-static/range {v14 .. v16}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 560
    .local v7, "isPasswordVisibilityEnabled":I
    if-nez v3, :cond_2

    .line 561
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 562
    .local v2, "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/admin/DevicePolicyManager;->getAllowAppListThirdParty(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 563
    const-string v14, ""

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 564
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    const/4 v3, 0x1

    .line 567
    .end local v2    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    if-eqz v14, :cond_3

    .line 570
    if-eqz v7, :cond_d

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "show_password"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    const/4 v4, 0x1

    .line 572
    .local v4, "checked":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-virtual {v14, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 573
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 583
    .end local v4    # "checked":Z
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v14, :cond_6

    .line 584
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v14}, Landroid/security/KeyStore;->isEmptyForSystemCredential()Z

    move-result v14

    if-nez v14, :cond_e

    const/4 v14, 0x1

    :goto_4
    invoke-virtual {v15, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 588
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    invoke-virtual {v14}, Landroid/preference/Preference;->isEnabled()Z

    move-result v14

    if-nez v14, :cond_4

    .line 589
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->isUCSEmpty()Z

    move-result v14

    if-nez v14, :cond_f

    const/4 v14, 0x1

    :goto_5
    invoke-virtual {v15, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 594
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 597
    .local v5, "context":Landroid/content/Context;
    const-string v14, "content://com.sec.knox.provider/CertificatePolicy"

    const-string v15, "isUserRemoveCertificatesAllowed"

    invoke-static {v5, v14, v15}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 598
    .local v10, "isUserRemoveCertificatesAllowed":I
    const/4 v14, 0x1

    new-array v13, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "false"

    aput-object v15, v13, v14

    .line 599
    .local v13, "selectionArgs":[Ljava/lang/String;
    const-string v14, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v15, "isUserChangeProfilesAllowed"

    invoke-static {v5, v14, v15, v13}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 601
    .local v9, "isUserChangeProfilesAllowed":I
    if-eqz v10, :cond_5

    if-nez v9, :cond_6

    .line 603
    :cond_5
    const-string v14, "OtherSecuritySettings"

    const-string v15, "protect credentials"

    invoke-static {v14, v15}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 610
    .end local v5    # "context":Landroid/content/Context;
    .end local v9    # "isUserChangeProfilesAllowed":I
    .end local v10    # "isUserRemoveCertificatesAllowed":I
    .end local v13    # "selectionArgs":[Ljava/lang/String;
    :cond_6
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 611
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v14, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 612
    const-string v14, "com.samsung.android.softsim.ServiceStatus"

    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v14, v15, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 614
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->updateSIMLockEnable()V

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings_ex/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getListView()Landroid/widget/ListView;

    move-result-object v11

    .line 618
    .local v11, "listView":Landroid/widget/ListView;
    new-instance v14, Lcom/android/settings_ex/OtherSecuritySettings$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11}, Lcom/android/settings_ex/OtherSecuritySettings$2;-><init>(Lcom/android/settings_ex/OtherSecuritySettings;Landroid/widget/ListView;)V

    const-wide/16 v16, 0x5

    move-wide/from16 v0, v16

    invoke-virtual {v11, v14, v0, v1}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 626
    .end local v11    # "listView":Landroid/widget/ListView;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    if-eqz v14, :cond_8

    .line 627
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v16, "show_password"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_10

    const/4 v14, 0x1

    :goto_6
    invoke-virtual {v15, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 631
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    .line 632
    .local v12, "mUserManager":Landroid/os/UserManager;
    const-string v14, "no_adjust_volume"

    invoke-virtual {v12, v14}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    .line 633
    .local v8, "isRestricted":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mZenAccess:Landroid/preference/Preference;

    if-eqz v14, :cond_9

    .line 634
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mZenAccess:Landroid/preference/Preference;

    if-nez v8, :cond_11

    const/4 v14, 0x1

    :goto_7
    invoke-virtual {v15, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 638
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OtherSecuritySettings;->buildPreferenceForCOM()V

    .line 640
    return-void

    .line 557
    .end local v3    # "blockUnsignedAppInstall":Z
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "isPasswordVisibilityEnabled":I
    .end local v8    # "isRestricted":Z
    .end local v12    # "mUserManager":Landroid/os/UserManager;
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 564
    .restart local v2    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3    # "blockUnsignedAppInstall":Z
    .restart local v7    # "isPasswordVisibilityEnabled":I
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 571
    .end local v2    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 575
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 576
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 584
    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 589
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 627
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    :cond_10
    const/4 v14, 0x0

    goto :goto_6

    .line 634
    .restart local v8    # "isRestricted":Z
    .restart local v12    # "mUserManager":Landroid/os/UserManager;
    :cond_11
    const/4 v14, 0x0

    goto :goto_7
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 536
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 537
    iget-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 538
    const-string v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/settings_ex/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 540
    :cond_0
    return-void
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "requestCode"    # I

    .prologue
    .line 707
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 708
    .local v1, "pickIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Password"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    const-string v2, ".title"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    const-string v2, ".subject"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    const-string v2, ".password"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    const-string v2, ".from"

    const-string v3, "FromOtherSecurity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    invoke-virtual {p0, v1, p4}, Lcom/android/settings_ex/OtherSecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    .end local v1    # "pickIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
