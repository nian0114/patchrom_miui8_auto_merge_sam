.class public Lcom/android/settings_ex/LockscreenMenuSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/LockscreenMenuSettings$ScreenLockSearchIndexProvider;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field public static mContext:Landroid/content/Context;


# instance fields
.field private isKioskContainer:Z

.field private mAppOpsSettings:Landroid/preference/Preference;

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mFindMyMobile:Landroid/preference/Preference;

.field private mFingerSanner:Landroid/preference/Preference;

.field private mFromPackageInstaller:Z

.field private mHasSPenFeature:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockType:Landroid/preference/PreferenceScreen;

.field private mLockscreenNotification:Landroid/preference/PreferenceScreen;

.field private mSecuredLockSettings:Landroid/preference/PreferenceScreen;

.field private mShowInfomation:Landroid/preference/PreferenceScreen;

.field private mSwipeLockSettings:Landroid/preference/PreferenceScreen;

.field private mToggleAppInstallation:Landroid/preference/SwitchPreference;

.field private mUnlockEffect:Landroid/preference/PreferenceScreen;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings_ex/LockscreenMenuSettings;->MY_USER_ID:I

    .line 880
    new-instance v0, Lcom/android/settings_ex/LockscreenMenuSettings$ScreenLockSearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings_ex/LockscreenMenuSettings$ScreenLockSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings_ex/LockscreenMenuSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 101
    iput-boolean v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mHasSPenFeature:Z

    .line 129
    iput-boolean v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->isKioskContainer:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFromPackageInstaller:Z

    .line 881
    return-void
.end method

.method private InitValue(I)V
    .locals 10
    .param p1, "menuType"    # I

    .prologue
    const/4 v9, 0x1

    .line 370
    const-string v6, "unlock_set_or_change"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    .line 373
    const-string v6, "persist.keyguard.ucs.csname"

    const-string v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, "ucmPasswordcsName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_1

    .line 375
    if-eqz v4, :cond_b

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "none"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 376
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 377
    .local v2, "index":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 378
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 380
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 386
    .end local v2    # "index":I
    :cond_1
    :goto_0
    const-string v6, "secured_lock_settigns"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    .line 387
    const-string v6, "show_information"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    .line 388
    const-string v6, "lock_screen_menu_notifications"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    .line 389
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_2

    .line 390
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->getLockScreenShowNotificationSummary(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 393
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_3

    .line 394
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 395
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    .line 396
    .local v0, "covertype":I
    const/16 v6, 0x8

    if-eq v0, v6, :cond_3

    .line 397
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0e14f5

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 404
    .end local v0    # "covertype":I
    :cond_3
    :goto_1
    const-string v6, "swipe_lock_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSwipeLockSettings:Landroid/preference/PreferenceScreen;

    .line 405
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mHasSPenFeature:Z

    .line 407
    const-string v6, "unlock_effect_with_preview"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    .line 408
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_4

    .line 409
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen_ripple_effect"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 410
    .local v5, "value":I
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    sget-object v7, Lcom/android/settings_ex/UnlockEffect;->EffectName:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 416
    .end local v5    # "value":I
    :cond_4
    const-string v6, "toggle_install_applications"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    .line 417
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_5

    .line 418
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->isNonMarketAppsAllowed()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 419
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 420
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 421
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const v7, 0x7f0e163a

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 425
    :cond_5
    const-string v6, "find_my_mobile"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    .line 427
    const/4 v3, 0x0

    .line 428
    .local v3, "isSupportLMM":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-nez v6, :cond_6

    .line 429
    const/4 v3, 0x1

    .line 432
    :cond_6
    const/4 v1, 0x0

    .line 433
    .local v1, "hasFMMDMClient":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v1

    .line 436
    if-eqz v3, :cond_7

    if-nez v1, :cond_7

    .line 437
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    const v7, 0x7f0e1331

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 441
    :cond_7
    const-string v6, "finger_scanner"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    .line 442
    const-string v6, "app_ops_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mAppOpsSettings:Landroid/preference/Preference;

    .line 444
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_8

    .line 445
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 446
    :cond_8
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_9

    .line 447
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 448
    :cond_9
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_a

    .line 449
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 450
    :cond_a
    return-void

    .line 381
    .end local v1    # "hasFMMDMClient":Z
    .end local v3    # "isSupportLMM":Z
    :cond_b
    if-eqz p1, :cond_1

    .line 382
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, p1}, Lcom/android/settings_ex/LockscreenMenuSettings;->getLockTypeSummary(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 399
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 400
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0e14f4

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_1
.end method

.method private RemoveMenu()V
    .locals 17

    .prologue
    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings_ex/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v8

    .line 478
    .local v8, "isShopDemo":Z
    invoke-static {}, Lcom/android/settings_ex/Utils;->isLDUModel()Z

    move-result v4

    .line 480
    .local v4, "isLDUmodel":Z
    const-string v13, "lockscreen_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    .line 481
    .local v10, "lockscreen_category":Landroid/preference/PreferenceCategory;
    if-nez v10, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v14, Lcom/android/settings_ex/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    .line 484
    .local v7, "isSecured":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v14, Lcom/android/settings_ex/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    .line 486
    .local v5, "isLockScreenDisabled":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    if-eq v8, v13, :cond_2

    if-eqz v4, :cond_3

    .line 487
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 490
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_1c

    if-nez v7, :cond_1c

    .line 491
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 496
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_5

    if-eqz v5, :cond_5

    .line 497
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 500
    :cond_5
    if-eqz v5, :cond_6

    .line 501
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_6

    .line 502
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 506
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSwipeLockSettings:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_8

    .line 507
    sget-object v13, Lcom/android/settings_ex/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings_ex/Utils;->isSupportedActionMemo(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_7

    sget-object v13, Lcom/android/settings_ex/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings_ex/Utils;->isSupportedActionMemo(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_8

    if-nez v7, :cond_7

    if-eqz v5, :cond_8

    .line 508
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSwipeLockSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 512
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_9

    .line 514
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 532
    :cond_9
    sget-object v13, Lcom/android/settings_ex/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings_ex/Utils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 533
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 542
    :goto_2
    const-string v13, "security_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    .line 543
    .local v11, "security_category":Landroid/preference/PreferenceCategory;
    if-eqz v11, :cond_0

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "user"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    .line 546
    .local v12, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v13, :cond_e

    .line 548
    if-eqz v12, :cond_b

    .line 549
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v13

    if-nez v13, :cond_1e

    const/4 v13, 0x1

    :goto_3
    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 550
    const-string v13, "no_install_unknown_sources"

    invoke-virtual {v12, v13}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a

    const-string v13, "no_install_apps"

    invoke-virtual {v12, v13}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 552
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 557
    :cond_b
    const-string v13, "device_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 558
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/admin/DevicePolicyManager;->getAllowUnsignedInstallationPkg(Landroid/content/ComponentName;)Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/admin/DevicePolicyManager;->getAllowUnsignedApp(Landroid/content/ComponentName;)Z

    move-result v13

    if-nez v13, :cond_1f

    :cond_c
    const/4 v2, 0x1

    .line 560
    .local v2, "blockUnsignedAppInstall":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v15, "isNonMarketAppAllowed"

    invoke-static {v13, v14, v15}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 562
    .local v6, "isNonMarketAppAllowed":I
    if-nez v2, :cond_d

    .line 563
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 564
    .local v1, "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/admin/DevicePolicyManager;->getAllowAppListThirdParty(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 565
    const-string v13, ""

    invoke-virtual {v1, v13}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 569
    .end local v1    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_d
    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_20

    .line 570
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 571
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const v14, 0x10408a3

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummaryOff(I)V

    .line 572
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 573
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    .line 590
    .end local v2    # "blockUnsignedAppInstall":Z
    .end local v6    # "isNonMarketAppAllowed":I
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mAppOpsSettings:Landroid/preference/Preference;

    if-eqz v13, :cond_f

    .line 591
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mAppOpsSettings:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 594
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    if-eqz v13, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings_ex/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_11

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->isGuestUser()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_23

    .line 595
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 600
    :cond_12
    :goto_6
    const/4 v9, 0x0

    .line 601
    .local v9, "isSupportLMM":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings_ex/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-nez v13, :cond_13

    .line 602
    const/4 v9, 0x1

    .line 605
    :cond_13
    const/4 v3, 0x0

    .line 606
    .local v3, "hasFMMDMClient":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings_ex/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v3

    .line 608
    const-string v13, "LockscreenMenuSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isSupportLMM : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings_ex/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v13, "LockscreenMenuSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hasFMMDMClient : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v13, "LockscreenMenuSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hasMobileTracker : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "com.sec.android.app.mt"

    invoke-static/range {v15 .. v16}, Lcom/android/settings_ex/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string v13, "LockscreenMenuSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isSmsCapable : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings_ex/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    if-eqz v13, :cond_25

    invoke-static {}, Lcom/android/settings_ex/Utils;->isSprModel()Z

    move-result v13

    if-nez v13, :cond_14

    invoke-static {}, Lcom/android/settings_ex/Utils;->isT4RModel()Z

    move-result v13

    if-eqz v13, :cond_25

    .line 614
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 625
    :cond_15
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->isKioskContainer:Z

    .line 627
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->isKioskContainer:Z

    if-eqz v13, :cond_0

    .line 628
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_16

    .line 629
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 632
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_17

    .line 633
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 636
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_18

    .line 637
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 640
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_19

    .line 641
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 644
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_1a

    .line 645
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 648
    :cond_1a
    if-eqz v11, :cond_0

    .line 649
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v13, :cond_1b

    .line 650
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 653
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    if-eqz v13, :cond_0

    .line 654
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 492
    .end local v3    # "hasFMMDMClient":Z
    .end local v9    # "isSupportLMM":Z
    .end local v11    # "security_category":Landroid/preference/PreferenceCategory;
    .end local v12    # "um":Landroid/os/UserManager;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_4

    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportPowerKey()Z

    move-result v13

    if-nez v13, :cond_4

    .line 493
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 535
    :cond_1d
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_2

    .line 549
    .restart local v11    # "security_category":Landroid/preference/PreferenceCategory;
    .restart local v12    # "um":Landroid/os/UserManager;
    :cond_1e
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 558
    :cond_1f
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 574
    .restart local v2    # "blockUnsignedAppInstall":Z
    .restart local v6    # "isNonMarketAppAllowed":I
    :cond_20
    if-nez v2, :cond_e

    .line 575
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v13

    if-eqz v13, :cond_21

    .line 576
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const v14, 0x7f0e163a

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummaryOff(I)V

    .line 582
    :goto_8
    const/4 v13, -0x1

    if-eq v6, v13, :cond_e

    .line 583
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const/4 v13, 0x1

    if-ne v6, v13, :cond_22

    const/4 v13, 0x1

    :goto_9
    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 584
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->isNonMarketAppsAllowed()Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 579
    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const v14, 0x7f0e0805

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummaryOff(I)V

    goto :goto_8

    .line 583
    :cond_22
    const/4 v13, 0x0

    goto :goto_9

    .line 596
    .end local v2    # "blockUnsignedAppInstall":Z
    .end local v6    # "isNonMarketAppAllowed":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    if-eqz v13, :cond_12

    const/4 v13, 0x1

    if-eq v8, v13, :cond_24

    if-eqz v4, :cond_12

    .line 597
    :cond_24
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 615
    .restart local v3    # "hasFMMDMClient":Z
    .restart local v9    # "isSupportLMM":Z
    :cond_25
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    if-eqz v13, :cond_27

    const/4 v13, 0x1

    if-eq v8, v13, :cond_26

    if-nez v4, :cond_26

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-eqz v13, :cond_27

    .line 616
    :cond_26
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 617
    :cond_27
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    if-eqz v13, :cond_15

    if-nez v9, :cond_15

    if-nez v3, :cond_15

    .line 618
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7
.end method

.method static synthetic access$000(Lcom/android/settings_ex/LockscreenMenuSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/LockscreenMenuSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings_ex/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/LockscreenMenuSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/LockscreenMenuSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/android/settings_ex/LockscreenMenuSettings;->MY_USER_ID:I

    return v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 14

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 191
    .local v7, "root":Landroid/preference/PreferenceScreen;
    if-eqz v7, :cond_0

    .line 192
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 195
    :cond_0
    const v10, 0x7f0800a1

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 198
    const/4 v5, 0x0

    .line 200
    .local v5, "menuType":I
    const-string v10, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 201
    .local v2, "isDeviceLockTime":Z
    if-eqz v2, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "is_secured_lock"

    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v13, Lcom/android/settings_ex/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v10, v13}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_0
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    :cond_1
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v11, Lcom/android/settings_ex/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 206
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v11, Lcom/android/settings_ex/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 207
    const v5, 0x7f0e0287

    .line 241
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/settings_ex/LockscreenMenuSettings;->InitValue(I)V

    .line 242
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->RemoveMenu()V

    .line 247
    sget v10, Lcom/android/settings_ex/LockscreenMenuSettings;->MY_USER_ID:I

    if-nez v10, :cond_6

    const/4 v4, 0x1

    .line 249
    .local v4, "mIsPrimary":Z
    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {}, Lcom/android/settings_ex/Utils;->isLDUModel()Z

    move-result v10

    if-nez v10, :cond_2

    .line 250
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 252
    const v10, 0x7f0800a5

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 259
    :goto_3
    new-instance v1, Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 261
    .local v1, "epm":Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;
    new-instance v3, Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 262
    .local v3, "mDem":Landroid/dirEncryption/DirEncryptionManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 263
    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v9

    .line 264
    .local v9, "status":I
    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionManager;->getVolumeState()Ljava/lang/String;

    move-result-object v8

    .line 265
    .local v8, "state":Ljava/lang/String;
    if-nez v8, :cond_8

    .line 266
    const v10, 0x7f0800a9

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 290
    .end local v1    # "epm":Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;
    .end local v3    # "mDem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v8    # "state":Ljava/lang/String;
    .end local v9    # "status":I
    :cond_2
    :goto_4
    new-instance v6, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 291
    .local v6, "otherSecurityPreferece":Landroid/preference/Preference;
    const-string v10, "other_security_settings"

    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 292
    const v10, 0x7f0e14d6

    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 293
    const v10, 0x7f0e14d7

    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setSummary(I)V

    .line 294
    const-string v10, "com.android.settings.OtherSecuritySettings"

    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 295
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 296
    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 298
    return-object v7

    .line 202
    .end local v4    # "mIsPrimary":Z
    .end local v6    # "otherSecurityPreferece":Landroid/preference/Preference;
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 209
    :cond_4
    const v5, 0x7f0e0288

    goto/16 :goto_1

    .line 212
    :cond_5
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_1

    .line 216
    :sswitch_0
    const v5, 0x7f0e0a8f

    .line 217
    goto/16 :goto_1

    .line 221
    :sswitch_1
    const v5, 0x7f0e13c4

    .line 222
    goto/16 :goto_1

    .line 224
    :sswitch_2
    const v5, 0x7f0e0263

    .line 225
    goto/16 :goto_1

    .line 228
    :sswitch_3
    const v5, 0x7f0e0280

    .line 229
    goto/16 :goto_1

    .line 233
    :sswitch_4
    const v5, 0x7f0e0283

    .line 234
    goto/16 :goto_1

    .line 236
    :sswitch_5
    const v5, 0x7f0e0265

    goto/16 :goto_1

    .line 247
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 255
    .restart local v4    # "mIsPrimary":Z
    :cond_7
    const v10, 0x7f0800b1

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    .line 267
    .restart local v1    # "epm":Lcom/android/settings_ex/encryption/EncryptionPreferenceManager;
    .restart local v3    # "mDem":Landroid/dirEncryption/DirEncryptionManager;
    .restart local v8    # "state":Ljava/lang/String;
    .restart local v9    # "status":I
    :cond_8
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 268
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 269
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v9, :cond_9

    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionAppliedSDCard()Z

    move-result v10

    if-nez v10, :cond_a

    .line 270
    :cond_9
    const v10, 0x7f0800af

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    .line 272
    :cond_a
    if-eqz v0, :cond_b

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 273
    const v10, 0x7f0800b0

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    .line 275
    :cond_b
    const v10, 0x7f0800ae

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    .line 279
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_c
    if-nez v9, :cond_d

    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionAppliedSDCard()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 280
    :cond_d
    const v10, 0x7f0800ae

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    .line 282
    :cond_e
    const v10, 0x7f0800af

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    .line 212
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x9100 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_1
    .end sparse-switch
.end method

.method private getFingerprintLockSummary(I)Ljava/lang/String;
    .locals 6
    .param p1, "ResId"    # I

    .prologue
    .line 354
    const-string v1, ", "

    .line 356
    .local v1, "comma":Ljava/lang/String;
    const-string v0, "ar"

    .line 357
    .local v0, "ISO639_ARABIC":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "configurationLanguage":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    const-string v1, "\u060c "

    .line 361
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0e11f6

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, "summary":Ljava/lang/String;
    return-object v3
.end method

.method private getLockTypeSummary(I)Ljava/lang/String;
    .locals 8
    .param p1, "menuType"    # I

    .prologue
    const v7, 0x7f0e0283

    const v6, 0x7f0e0280

    const v5, 0x7f0e0263

    .line 302
    const/4 v2, 0x0

    .line 304
    .local v2, "summary":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/settings_ex/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 305
    iget-object v3, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/settings_ex/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    const v3, 0x7f0e0287

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 349
    :goto_0
    return-object v2

    .line 308
    :cond_0
    const v3, 0x7f0e0288

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 311
    :cond_1
    const/4 v1, 0x0

    .line 312
    .local v1, "isFingerLockEnabled":Z
    iget-object v3, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getFingerPrintLockscreenState(I)I

    move-result v0

    .line 313
    .local v0, "fingerLockEnabledType":I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 315
    :cond_2
    const/4 v1, 0x1

    .line 318
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 321
    :sswitch_0
    const v3, 0x7f0e0a8f

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 322
    goto :goto_0

    .line 326
    :sswitch_1
    const v3, 0x7f0e13c4

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 327
    goto :goto_0

    .line 329
    :sswitch_2
    if-eqz v1, :cond_4

    invoke-direct {p0, v5}, Lcom/android/settings_ex/LockscreenMenuSettings;->getFingerprintLockSummary(I)Ljava/lang/String;

    move-result-object v2

    .line 331
    :goto_1
    goto :goto_0

    .line 329
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 334
    :sswitch_3
    if-eqz v1, :cond_5

    invoke-direct {p0, v6}, Lcom/android/settings_ex/LockscreenMenuSettings;->getFingerprintLockSummary(I)Ljava/lang/String;

    move-result-object v2

    .line 336
    :goto_2
    goto :goto_0

    .line 334
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 340
    :sswitch_4
    if-eqz v1, :cond_6

    invoke-direct {p0, v7}, Lcom/android/settings_ex/LockscreenMenuSettings;->getFingerprintLockSummary(I)Ljava/lang/String;

    move-result-object v2

    .line 342
    :goto_3
    goto :goto_0

    .line 340
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 344
    :sswitch_5
    const v3, 0x7f0e0265

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 318
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x9100 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_1
    .end sparse-switch
.end method

.method private static isExistSamsungAccount(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 838
    const/4 v0, 0x0

    .line 840
    .local v0, "isSA":Z
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 841
    .local v1, "manager":Landroid/accounts/AccountManager;
    const-string v3, "com.osp.app.signin"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 843
    .local v2, "samsungAccnts":[Landroid/accounts/Account;
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v3, :cond_0

    .line 844
    const/4 v0, 0x1

    .line 849
    .end local v1    # "manager":Landroid/accounts/AccountManager;
    .end local v2    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_0
    :goto_0
    const-string v3, "LockscreenMenuSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return v0

    .line 846
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 725
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    :goto_0
    return-void

    .line 729
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private startFingerprintScanner()V
    .locals 4

    .prologue
    .line 688
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 689
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.FingerprintEntry"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 5

    .prologue
    .line 735
    const v0, 0x7f0e0809

    .line 736
    .local v0, "messageStringRes":I
    const v1, 0x104000a

    .line 737
    .local v1, "positiveStringRes":I
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 738
    const v0, 0x7f0e080a

    .line 739
    const v1, 0x7f0e15cb

    .line 741
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v2, :cond_1

    .line 742
    iget-object v2, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 744
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0804

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 750
    return-void
.end method

.method private warnAppInstallationFromPackageInstaller()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 753
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 754
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040027

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 755
    .local v1, "layout":Landroid/view/View;
    const v6, 0x7f0d00ae

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 756
    .local v3, "mDescription":Landroid/widget/TextView;
    const v6, 0x7f0d00af

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 757
    .local v2, "mCheck":Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "one_time_operate"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 758
    const v4, 0x104000a

    .line 759
    .local v4, "positiveStringRes":I
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 760
    const v5, 0x7f0e080a

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 761
    const v4, 0x7f0e15cb

    .line 763
    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0e0804

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings_ex/LockscreenMenuSettings$1;

    invoke-direct {v6, p0, v2}, Lcom/android/settings_ex/LockscreenMenuSettings$1;-><init>(Lcom/android/settings_ex/LockscreenMenuSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 799
    return-void

    .line 757
    .end local v4    # "positiveStringRes":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0x57

    return v0
.end method

.method protected isGuestUser()Z
    .locals 3

    .prologue
    .line 462
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    sget-object v1, Lcom/android/settings_ex/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 464
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    const/4 v1, 0x1

    .line 468
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public moveFindMyMobile()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 821
    sget-object v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/LockscreenMenuSettings;->isExistSamsungAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "samsung_signin"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 823
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 824
    .local v8, "mIntent":Landroid/content/Intent;
    const-string v0, "com.osp.app.signin"

    const-string v1, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    const-string v0, "MODE"

    const-string v1, "REMOTE_CONTROLS"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    const/16 v0, 0x3e9

    :try_start_0
    invoke-virtual {p0, v8, v0}, Lcom/android/settings_ex/LockscreenMenuSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    .end local v8    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 828
    .restart local v8    # "mIntent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 829
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 832
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .end local v8    # "mIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    const-class v1, Lcom/android/settings_ex/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0e1329

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 181
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 182
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    const-class v1, Lcom/android/settings_ex/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0e1329

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 187
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 803
    iget-object v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 804
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 805
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    .line 806
    iget-object v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 807
    iget-object v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 810
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 804
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    .line 148
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 149
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LockscreenMenuSettings;->setHasOptionsMenu(Z)V

    .line 152
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 855
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 857
    sget-object v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    const/4 v0, 0x1

    const v1, 0x7f0e0f89

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02013e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 862
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 814
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 815
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 818
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 866
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 873
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 868
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 869
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:appid"

    const-string v2, "lock_screen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 871
    const/4 v1, 0x1

    goto :goto_0

    .line 866
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 699
    const/4 v1, 0x1

    .line 700
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "key":Ljava/lang/String;
    const-string v2, "toggle_install_applications"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 703
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 704
    iget-object v2, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 705
    iget-boolean v2, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFromPackageInstaller:Z

    if-eqz v2, :cond_1

    .line 706
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->warnAppInstallationFromPackageInstaller()V

    .line 708
    const/4 v1, 0x0

    .line 719
    :cond_0
    :goto_0
    return v1

    .line 710
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->warnAppInstallation()V

    .line 713
    const/4 v1, 0x0

    goto :goto_0

    .line 716
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings_ex/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    .line 664
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 665
    .local v7, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    .line 667
    .local v8, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v0, "unlock_set_or_change"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0e025b

    const/16 v4, 0x7b

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :goto_0
    move v0, v9

    .line 684
    :goto_1
    return v0

    .line 669
    :cond_0
    const-string v0, "unlock_effect_with_preview"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.samsung.settings.UnlockEffect"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 671
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v0, 0x24000000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 672
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 673
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v0, "find_my_mobile"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 674
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->moveFindMyMobile()V

    goto :goto_0

    .line 675
    :cond_2
    const-string v0, "finger_scanner"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 676
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v9

    .line 677
    goto :goto_1

    .line 679
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->startFingerprintScanner()V

    goto :goto_0

    .line 681
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "callingPackage":Ljava/lang/String;
    const-string v1, "com.android.packageinstaller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.packageinstaller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.android.packageinstaller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFromPackageInstaller:Z

    .line 169
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->buildPreferenceForCOM()V

    .line 171
    return-void

    .line 166
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mFromPackageInstaller:Z

    goto :goto_0
.end method
