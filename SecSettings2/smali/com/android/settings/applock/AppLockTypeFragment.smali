.class public Lcom/android/settings/applock/AppLockTypeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppLockTypeFragment.java"


# instance fields
.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mFlags:Z

.field private mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypeCategory:Landroid/preference/Preference;

.field private mLockTypeFinger:Landroid/preference/Preference;

.field private mLockTypePassword:Landroid/preference/Preference;

.field private mLockTypePattern:Landroid/preference/Preference;

.field private mLockTypePin:Landroid/preference/Preference;

.field private mPackageInfoUtil:Lcom/android/settings/applock/PackageInfoUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private StartChooseLockPassword(I)V
    .locals 10
    .param p1, "quality"    # I

    .prologue
    const/high16 v9, 0x20000

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 219
    const-string v6, "device_policy"

    invoke-virtual {p0, v6}, Lcom/android/settings/applock/AppLockTypeFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 220
    .local v0, "DPM":Landroid/app/admin/DevicePolicyManager;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v4

    .line 222
    .local v4, "minLength":I
    const/4 v6, 0x4

    if-ge v4, v6, :cond_0

    .line 223
    const/4 v4, 0x4

    .line 226
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v3

    .line 227
    .local v3, "maxLength":I
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 228
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "lockscreen.password_type"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    const-string v6, "lockscreen.password_min"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const-string v6, "lockscreen.password_max"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    const-string v6, "confirm_credentials"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    const-string v6, "from_applock"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    if-ne p1, v9, :cond_1

    .line 234
    .local v2, "mIsPin":Z
    :goto_0
    const-string v5, "applock_mQuality"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    if-ne p1, v9, :cond_2

    const/4 v5, 0x2

    :goto_1
    invoke-virtual {p0, v1, v5}, Lcom/android/settings/applock/AppLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 237
    return-void

    .end local v2    # "mIsPin":Z
    :cond_1
    move v2, v5

    .line 233
    goto :goto_0

    .line 235
    .restart local v2    # "mIsPin":Z
    :cond_2
    const/4 v5, 0x3

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/applock/AppLockTypeFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applock/AppLockTypeFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/applock/AppLockTypeFragment;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applock/AppLockTypeFragment;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/applock/AppLockTypeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applock/AppLockTypeFragment;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mFlags:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/applock/AppLockTypeFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applock/AppLockTypeFragment;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applock/AppLockTypeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applock/AppLockTypeFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->setAppLockFingerBackupKey()V

    return-void
.end method

.method private identifyFinger(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 357
    const-string v1, "setToFingerprintNotConfirm"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mFlags:Z

    .line 359
    iget-object v1, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/settings/applock/AppLockTypeFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/applock/AppLockTypeFragment$2;-><init>(Lcom/android/settings/applock/AppLockTypeFragment;)V

    invoke-virtual {v1, v2, v3, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v0

    .line 421
    .local v0, "result":I
    return v0
.end method

.method private setAppLockFingerBackupKey()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 425
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 428
    const-string v1, "hide_disabled_prefs"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 429
    const-string v1, "forAppLockBackupKey"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    const/16 v1, 0x3ec

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applock/AppLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 432
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0x57

    return v0
.end method

.method public initPref()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 127
    const-string v4, "locktype_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/applock/AppLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mLockTypeCategory:Landroid/preference/Preference;

    .line 128
    const-string v4, "applock_locktype_pattern"

    invoke-virtual {p0, v4}, Lcom/android/settings/applock/AppLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mLockTypePattern:Landroid/preference/Preference;

    .line 129
    const-string v4, "applock_locktype_pin"

    invoke-virtual {p0, v4}, Lcom/android/settings/applock/AppLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mLockTypePin:Landroid/preference/Preference;

    .line 130
    const-string v4, "applock_locktype_password"

    invoke-virtual {p0, v4}, Lcom/android/settings/applock/AppLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mLockTypePassword:Landroid/preference/Preference;

    .line 131
    const-string v4, "applock_locktype_fingerprint"

    invoke-virtual {p0, v4}, Lcom/android/settings/applock/AppLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mLockTypeFinger:Landroid/preference/Preference;

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 136
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v4, "firstStart"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 143
    .local v1, "getRequestCodeValue":I
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v2, 0x1

    .line 147
    .local v2, "hasEnrolledFingers":Z
    :goto_1
    if-nez v2, :cond_0

    .line 148
    iget-object v4, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mLockTypeFinger:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 149
    iget-object v3, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mLockTypeFinger:Landroid/preference/Preference;

    const v4, 0x7f0e0282

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .end local v2    # "hasEnrolledFingers":Z
    :cond_2
    move v2, v3

    .line 146
    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 282
    const-string v2, "AppPageLockTypeFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", received - resultCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 284
    .local v0, "SettingsActivity":Lcom/android/settings/SettingsActivity;
    const/4 v1, 0x0

    .line 286
    .local v1, "bSuccess":I
    sparse-switch p1, :sswitch_data_0

    .line 341
    :goto_0
    return-void

    .line 290
    :sswitch_0
    if-lez p2, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "applock_lock_type"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    const/4 v1, 0x1

    .line 293
    iget-object v2, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mPackageInfoUtil:Lcom/android/settings/applock/PackageInfoUtil;

    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/android/settings/applock/PackageInfoUtil;->setMasterValue(Landroid/content/Context;Z)V

    .line 296
    :cond_0
    invoke-virtual {v0, p0, v1, v5}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 301
    :sswitch_1
    if-eqz p2, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "applock_lock_type"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    const/4 v1, 0x1

    .line 304
    iget-object v2, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mPackageInfoUtil:Lcom/android/settings/applock/PackageInfoUtil;

    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/android/settings/applock/PackageInfoUtil;->setMasterValue(Landroid/content/Context;Z)V

    .line 307
    :cond_1
    invoke-virtual {v0, p0, v1, v5}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 311
    :sswitch_2
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 312
    invoke-direct {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->setAppLockFingerBackupKey()V

    goto :goto_0

    .line 314
    :cond_2
    const/4 v1, -0x1

    .line 315
    invoke-virtual {v0, p0, v1, v5}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 320
    :sswitch_3
    if-eqz p2, :cond_3

    .line 321
    const-string v2, "AppPageLockTypeFragment"

    const-string v3, "CONFIRM_REQUEST_ENTER success"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    :cond_3
    const-string v2, "AppPageLockTypeFragment"

    const-string v3, "Failed to CONFIRM_REQUEST_ENTER"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v1, -0x1

    .line 325
    invoke-virtual {v0, p0, v1, v5}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 330
    :sswitch_4
    const-string v2, "AppPageLockTypeFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FOR_APP_LOCK_BACKUP_KEY  Result Code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    if-eqz p2, :cond_4

    .line 333
    const/4 v1, 0x1

    .line 334
    iget-object v2, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mPackageInfoUtil:Lcom/android/settings/applock/PackageInfoUtil;

    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/android/settings/applock/PackageInfoUtil;->setMasterValue(Landroid/content/Context;Z)V

    .line 336
    :cond_4
    invoke-virtual {v0, p0, v1, v5}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 286
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0xb -> :sswitch_3
        0x3ec -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 90
    invoke-static {}, Lcom/android/settings/applock/PackageInfoUtil;->getInstance()Lcom/android/settings/applock/PackageInfoUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mPackageInfoUtil:Lcom/android/settings/applock/PackageInfoUtil;

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    const v1, 0x7f04003b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/android/settings/applock/AppLockTypeFragment;->addPreferencesFromResource(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0e11f0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->initPref()V

    .line 99
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "AppPageLockTypeFragment"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 112
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 243
    iget-object v4, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mLockTypePattern:Landroid/preference/Preference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "from_applock"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    const-string v4, "key_lock_method"

    const-string v5, "pattern"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0, v1, v6}, Lcom/android/settings/applock/AppLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 277
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    .line 248
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mLockTypePin:Landroid/preference/Preference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 249
    const/high16 v4, 0x20000

    invoke-direct {p0, v4}, Lcom/android/settings/applock/AppLockTypeFragment;->StartChooseLockPassword(I)V

    goto :goto_0

    .line 250
    :cond_2
    iget-object v4, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mLockTypePassword:Landroid/preference/Preference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 251
    const/high16 v4, 0x40000

    invoke-direct {p0, v4}, Lcom/android/settings/applock/AppLockTypeFragment;->StartChooseLockPassword(I)V

    goto :goto_0

    .line 252
    :cond_3
    iget-object v4, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mLockTypeFinger:Landroid/preference/Preference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    iget-object v4, p0, Lcom/android/settings/applock/AppLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v4

    if-nez v4, :cond_5

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e1201

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0x7f0e11f6

    invoke-virtual {p0, v7}, Lcom/android/settings/applock/AppLockTypeFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/applock/AppLockTypeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 257
    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v2, "mIntent":Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v4, "previousStage"

    const-string v5, "app_lock"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v4, "fingerIndex"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string v4, "fromApplock"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/applock/AppLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 265
    .end local v2    # "mIntent":Landroid/content/Intent;
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "setToFingerprintNotConfirm"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    invoke-direct {p0, v0}, Lcom/android/settings/applock/AppLockTypeFragment;->identifyFinger(Landroid/os/Bundle;)I

    move-result v3

    .line 269
    .local v3, "result":I
    const/4 v4, -0x4

    if-eq v3, v4, :cond_0

    .line 272
    const-string v4, "AppPageLockTypeFragment"

    const-string v5, "identifyFinger called "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "AppPageLockTypeFragment"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 106
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 117
    const-string v0, "AppPageLockTypeFragment"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method
