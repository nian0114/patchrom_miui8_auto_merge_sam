.class public Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    }
.end annotation


# static fields
.field private static CAC_LOCK_CHOSEN:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static mPm:Landroid/os/PersonaManager;

.field private static mUnlockMethod:Ljava/lang/String;

.field private static selectedTwoFactorType:I

.field private static usingTwoFactor:Z


# instance fields
.field private enterpriseOldPassword:Ljava/lang/String;

.field protected fromSetupwizard:Z

.field private isLaunched:Z

.field private mAgentList:[Ljava/lang/String;

.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisableSystemKey:Z

.field private mEncryptionRequestDisabled:Z

.field private mEncryptionRequestQuality:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mForAppLockBackupKey:Z

.field private mForFingerprint:Z

.field private mForPrivateModeBackupKey:Z

.field private mHasChallenge:Z

.field private mIdentifyFingerprint:Z

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordConfirmed:Z

.field private mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRequirePassword:Z

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUserPassword:Ljava/lang/String;

.field private mUserSelectedCsname:Ljava/lang/String;

.field private mWaitingForConfirmation:Z

.field private mWmanagerConnected:Landroid/database/ContentObserver;

.field private oldPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    sput-boolean v1, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->CAC_LOCK_CHOSEN:Z

    .line 231
    const/4 v0, -0x1

    sput v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 232
    sput-boolean v1, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 253
    new-instance v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$1;

    invoke-direct {v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 192
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 193
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->isLaunched:Z

    .line 195
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 196
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 201
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDisableSystemKey:Z

    .line 203
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    .line 208
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyFingerprint:Z

    .line 210
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mService:Landroid/net/IConnectivityManager;

    .line 219
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    .line 237
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserSelectedCsname:Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    .line 331
    new-instance v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$2;-><init>(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWmanagerConnected:Landroid/database/ContentObserver;

    .line 338
    new-instance v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$3;-><init>(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 2037
    return-void
.end method

.method private DisableSystemKey(Z)V
    .locals 3
    .param p1, "request"    # Z

    .prologue
    .line 1846
    const-string v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisableSystemKey() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->requestSystemKeyEvent(IZ)Z

    .line 1848
    const/16 v0, 0xbb

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->requestSystemKeyEvent(IZ)Z

    .line 1849
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->requestSystemKeyEvent(IZ)Z

    .line 1850
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 153
    sput-object p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUnlockMethod:Ljava/lang/String;

    return-object p0
.end method

.method private confirmFingerprintPassword()V
    .locals 4

    .prologue
    .line 1835
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1836
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.FingerprintConfirm"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1837
    const/16 v2, 0x2716

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1842
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1838
    :catch_0
    move-exception v0

    .line 1839
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getCacChosen()Z
    .locals 1

    .prologue
    .line 1702
    sget-boolean v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->CAC_LOCK_CHOSEN:Z

    return v0
.end method

.method private getResIdForFactoryResetProtectionWarningMessage()I
    .locals 1

    .prologue
    .line 1899
    const v0, 0x7f0e029b

    return v0
.end method

.method private getVendorId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "agentID"    # Ljava/lang/String;

    .prologue
    .line 1071
    const/4 v1, 0x0

    .line 1072
    .local v1, "vendorID":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz p1, :cond_0

    .line 1073
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1074
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1075
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1078
    .end local v0    # "index":I
    :cond_0
    return-object v1
.end method

.method private isFingerprintDisabled()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1765
    const/4 v3, 0x0

    .line 1766
    .local v3, "isDisabledByEDM":Z
    const/4 v2, 0x0

    .line 1767
    .local v2, "isDisabledByDPM":Z
    const-string v7, "device_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1770
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_1

    .line 1771
    const-string v5, "ChooseLockGenericFragment"

    const-string v7, "isFingerprintDisabled :  dpm is NULL"

    invoke-static {v5, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    :cond_0
    :goto_0
    return v6

    .line 1775
    :cond_1
    invoke-virtual {v0, v10}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_4

    move v2, v5

    .line 1779
    :goto_1
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 1780
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v9, "isBiometricAuthenticationEnabled"

    invoke-static {v7, v8, v9, v4}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1781
    .local v1, "isBiometricAuthenticationEnabled":I
    invoke-virtual {v0, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v7

    if-lez v7, :cond_2

    .line 1782
    if-nez v1, :cond_2

    .line 1783
    const-string v7, "ChooseLockGenericFragment"

    const-string v8, "isBiometricAuthenticationEnabled == Utils.EDM_FALSE"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    const/4 v3, 0x1

    .line 1789
    :cond_2
    if-nez v3, :cond_3

    if-eqz v2, :cond_0

    :cond_3
    move v6, v5

    goto :goto_0

    .end local v1    # "isBiometricAuthenticationEnabled":I
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_4
    move v2, v6

    .line 1775
    goto :goto_1
.end method

.method private isSharedDeviceExist()Z
    .locals 5

    .prologue
    .line 581
    const/4 v1, 0x0

    .line 582
    .local v1, "isSharedDevice":Z
    const-string v2, "enterprise_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 583
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    .line 585
    const-string v2, "ChooseLockGeneric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSharedDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    return v1
.end method

.method private isUnlockMethodSecure(Ljava/lang/String;)Z
    .locals 1
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    .line 1904
    const-string v0, "unlock_set_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeEnableEncryption(IZ)V
    .locals 8
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    const/4 v7, 0x0

    .line 600
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_setup_complete"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 601
    .local v0, "completeSetupWizard":I
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 602
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->isOwner()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-nez v5, :cond_0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_0

    .line 605
    iput p1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 606
    iput-boolean p2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 607
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 614
    .local v1, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v4

    .line 616
    .local v4, "required":Z
    invoke-virtual {p0, v1, p1, v4}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getEncryptionInterstitialIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v3

    .line 617
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "for_fingerprint"

    iget-boolean v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 619
    const/16 v5, 0x65

    invoke-virtual {p0, v3, v5}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 625
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "required":Z
    :goto_0
    return-void

    .line 621
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 623
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private removeEncryptionPopup(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1730
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e029c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e029d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$8;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$8;-><init>(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0f8d

    new-instance v3, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$7;

    invoke-direct {v3, p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$7;-><init>(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1746
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$9;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$9;-><init>(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1752
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1753
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "request"    # Z

    .prologue
    .line 1853
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 1855
    .local v1, "windowmanager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1859
    :goto_0
    return v2

    .line 1856
    :catch_0
    move-exception v0

    .line 1857
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setCacChosen(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1697
    sput-boolean p1, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->CAC_LOCK_CHOSEN:Z

    .line 1698
    return-void
.end method

.method private setUnlockMethod(Ljava/lang/String;)Z
    .locals 12
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x64

    const/4 v0, 0x5

    const/4 v2, 0x1

    const/4 v11, 0x0

    .line 1912
    const-string v1, "unlock_set_universal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1913
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1914
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_0

    .line 1915
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.accessibility.universallock.ChooseLockUniversal"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1917
    :try_start_0
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 1918
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2027
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v2

    .line 1919
    .restart local v9    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 1920
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1926
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, "unlock_set_ucm_agent_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_3

    const-string v1, "unlock_set_ucm_agent_"

    const-string v3, "unlock_set_ucm_agent_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1928
    const-string v0, "ChooseLockGenericFragment"

    const-string v1, "unlockmethod entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    const/4 v8, -0x1

    .line 1931
    .local v8, "index":I
    :try_start_1
    const-string v0, "unlock_set_ucm_agent_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1932
    const-string v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1938
    :goto_1
    const/4 v0, -0x1

    if-eq v8, v0, :cond_2

    .line 1939
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mAgentList:[Ljava/lang/String;

    aget-object v0, v0, v8

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserSelectedCsname:Ljava/lang/String;

    .line 1940
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserSelectedCsname:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodUCMAndFinish(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    .line 1942
    .local v10, "result":Z
    const-string v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key result from callUCMAuthenticatePin = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1933
    .end local v10    # "result":Z
    :catch_1
    move-exception v7

    .line 1934
    .local v7, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1935
    const/4 v8, -0x1

    goto :goto_1

    .line 1944
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v0, "ChooseLockGenericFragment"

    const-string v1, "Key some error on selecting plugin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1948
    .end local v8    # "index":I
    :cond_3
    const-string v1, "unlock_set_off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1950
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "screen-lock disabled : off"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1953
    invoke-virtual {p0, v11, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 1955
    :cond_4
    const-string v1, "unlock_set_none"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1957
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "screen-lock disabled : swipe"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1960
    invoke-virtual {p0, v11, v11}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 1962
    :cond_5
    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1963
    const/high16 v0, 0x10000

    invoke-direct {p0, v0, v11}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_0

    .line 1965
    :cond_6
    const-string v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1966
    const/high16 v0, 0x20000

    invoke-direct {p0, v0, v11}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_0

    .line 1968
    :cond_7
    const-string v0, "unlock_set_password"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1969
    const/high16 v0, 0x40000

    invoke-direct {p0, v0, v11}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_0

    .line 1971
    :cond_8
    const-string v0, "unlock_set_smart"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1972
    const v0, 0x9100

    invoke-virtual {p0, v0, v11}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 1975
    :cond_9
    const-string v0, "unlock_set_cac_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1978
    invoke-direct {p0, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 1979
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isCACCardRegistered()Z

    move-result v0

    if-ne v0, v2, :cond_a

    .line 1981
    invoke-direct {p0, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 1982
    const/high16 v0, 0x70000

    invoke-virtual {p0, v0, v11}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 1986
    :cond_a
    invoke-direct {p0, v11}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 1987
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->showCardNotRegisteredDialog()V

    goto/16 :goto_0

    .line 1992
    :cond_b
    const-string v0, "unlock_set_fingerprint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1993
    const v0, 0x61000

    invoke-virtual {p0, v0, v11}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 1997
    :cond_c
    const-string v0, "unlock_set_two_factor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-lt v0, v4, :cond_e

    .line 1998
    const-string v0, "ChooseLockGenericFragment"

    const-string v1, "set two-factor for knox"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2000
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2001
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e1201

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0e11f6

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v2, v11

    .line 2002
    goto/16 :goto_0

    .line 2005
    :cond_d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/android/settings_ex/KnoxChooseLockTwoFactor;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    .line 2006
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v0, "password"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2007
    const/16 v0, 0x2712

    invoke-virtual {p0, v9, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2010
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_e
    const-string v0, "unlock_set_enterprise_identity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-lt v0, v4, :cond_f

    .line 2011
    const-string v0, "ChooseLockGenericFragment"

    const-string v1, "set Enterprise identity for knox"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/android/settings_ex/ChooseLockEnterpriseIdentity;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    .line 2013
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v0, "enterprise.password_old"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->enterpriseOldPassword:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2014
    const/16 v0, 0x271a

    invoke-virtual {p0, v9, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2018
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_f
    const-string v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered unknown unlock method to set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v11

    .line 2019
    goto/16 :goto_0
.end method

.method private showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "unlockMethodToSet"    # Ljava/lang/String;

    .prologue
    .line 2031
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningMessage()I

    move-result v1

    .line 2032
    .local v1, "message":I
    invoke-static {v1, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(ILjava/lang/String;)Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    .line 2034
    .local v0, "dialog":Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "frp_warning_dialog"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2035
    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 4
    .param p1, "messageID"    # I

    .prologue
    .line 1706
    const v1, 0x7f0e11fc

    if-ne p1, v1, :cond_0

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1708
    const p1, 0x7f0e11fd

    .line 1711
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e11fa

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$5;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$5;-><init>(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1720
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$6;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$6;-><init>(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1726
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1727
    return-void
.end method

.method private startFingerprintLockSettings(Ljava/lang/String;[B)V
    .locals 9
    .param p1, "mPreviousStage"    # Ljava/lang/String;
    .param p2, "mToken"    # [B

    .prologue
    const/16 v8, 0x64

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1793
    const-string v3, "ChooseLockGenericFragment"

    const-string v4, "startFingerprintLockSettings()"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->isFingerprintDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1796
    const-string v3, "ChooseLockGenericFragment"

    const-string v4, "isFingerprintDisabled() = TURE"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :goto_0
    return-void

    .line 1800
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_1

    .line 1801
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1802
    const-string v3, "ChooseLockGenericFragment"

    const-string v4, "isHardwareDetected() of Fingerprint is FALSE."

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1807
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-lt v3, v8, :cond_2

    .line 1808
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1809
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e1201

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f0e11f6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1814
    :cond_2
    :try_start_0
    const-string v3, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1815
    .local v0, "chooseLockFingerprint":Ljava/lang/Class;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 1816
    .local v2, "mIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-lt v3, v8, :cond_3

    .line 1817
    const-string v3, "is_knox"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1819
    :cond_3
    const-string v3, "previousStage"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1820
    const-string v3, "lock_screen_fingerprint"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1821
    const-string v3, "password"

    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1823
    :cond_4
    const-string v3, "hw_auth_token"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1824
    const-string v3, "identifyFingerprint"

    iget-boolean v4, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyFingerprint:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1825
    const-string v3, "fromSetupwizard"

    iget-boolean v4, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1826
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1827
    .end local v0    # "chooseLockFingerprint":Ljava/lang/Class;
    .end local v2    # "mIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1829
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private updatePreferenceSummaryIfNeeded()V
    .locals 9

    .prologue
    const/4 v7, -0x1

    .line 1298
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1328
    :cond_0
    return-void

    .line 1302
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v8, "device_policy"

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1304
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->isEncryptedWithForceEncrypt(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1308
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1313
    const v6, 0x7f0e0a79

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1315
    .local v5, "summary":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 1316
    .local v4, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    .line 1317
    .local v3, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1318
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 1319
    .local v2, "preference":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_2
    move v6, v7

    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 1317
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1319
    :sswitch_0
    const-string v8, "unlock_set_pattern"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :sswitch_1
    const-string v8, "unlock_set_pin"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :sswitch_2
    const-string v8, "unlock_set_password"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_3
    const-string v8, "unlock_set_universal"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x3

    goto :goto_1

    .line 1324
    :pswitch_0
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1319
    nop

    :sswitch_data_0
    .sparse-switch
        -0xcc9330d -> :sswitch_3
        -0x75461c3 -> :sswitch_1
        0x27e176f3 -> :sswitch_2
        0x53ec4438 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePreferencesOrFinish()V
    .locals 47

    .prologue
    .line 793
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 794
    .local v13, "intent":Landroid/content/Intent;
    const-string v41, "lockscreen.password_type"

    const/16 v42, -0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v37

    .line 795
    .local v37, "quality":I
    const/16 v41, -0x1

    move/from16 v0, v37

    move/from16 v1, v41

    if-ne v0, v1, :cond_1c

    .line 797
    const-string v41, "minimum_quality"

    const/16 v42, -0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v37

    .line 798
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result v37

    .line 799
    const-string v41, "hide_disabled_prefs"

    const/16 v42, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 801
    .local v10, "hideDisabledPrefs":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    .line 802
    .local v35, "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz v35, :cond_0

    .line 803
    invoke-virtual/range {v35 .. v35}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 805
    :cond_0
    const v41, 0x7f0800ac

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 806
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1, v10}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(IZ)V

    .line 808
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 812
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    .line 819
    .end local v10    # "hideDisabledPrefs":Z
    .end local v35    # "prefScreen":Landroid/preference/PreferenceScreen;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string v42, "universal_lock_switch_state"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v41

    if-nez v41, :cond_1

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v39

    .line 821
    .local v39, "root":Landroid/preference/PreferenceScreen;
    const-string v41, "unlock_set_universal"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v41

    if-eqz v41, :cond_1

    .line 822
    const-string v41, "unlock_set_universal"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v41

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 828
    .end local v39    # "root":Landroid/preference/PreferenceScreen;
    :cond_1
    const-string v41, "enterprise_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 829
    .local v6, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v6, :cond_3

    .line 830
    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v16

    .line 833
    .local v16, "isSharedDevice":Z
    const-string v41, "Settings"

    const-string v42, "setting checking shared device"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    if-eqz v16, :cond_3

    .line 835
    const-string v41, "Settings"

    const-string v42, "setting checking shared device enabled"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v39

    .line 837
    .restart local v39    # "root":Landroid/preference/PreferenceScreen;
    const-string v41, "unlock_set_off"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v41

    if-eqz v41, :cond_2

    .line 838
    const-string v41, "unlock_set_off"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v41

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 842
    :cond_2
    const-string v41, "unlock_set_none"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v41

    if-eqz v41, :cond_3

    .line 843
    const-string v41, "unlock_set_none"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v41

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 850
    .end local v16    # "isSharedDevice":Z
    .end local v39    # "root":Landroid/preference/PreferenceScreen;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->wManagerChanged()V

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v39

    .line 854
    .restart local v39    # "root":Landroid/preference/PreferenceScreen;
    if-eqz v39, :cond_5

    .line 855
    const-string v41, "unlock_set_fingerprint"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    .line 856
    .local v8, "fingeprintPref":Landroid/preference/PreferenceScreen;
    if-eqz v8, :cond_4

    const-string v41, "com.android.settings.SetupChooseLockGeneric$SetupChooseLockGenericFragment"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_5

    .line 858
    :cond_4
    const-string v41, "fingerprint_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 859
    .local v9, "fingerCategory":Landroid/preference/PreferenceCategory;
    if-eqz v9, :cond_5

    .line 860
    move-object/from16 v0, v39

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 867
    .end local v8    # "fingeprintPref":Landroid/preference/PreferenceScreen;
    .end local v9    # "fingerCategory":Landroid/preference/PreferenceCategory;
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v41

    const/16 v42, 0x64

    move/from16 v0, v41

    move/from16 v1, v42

    if-lt v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v41, v0

    if-nez v41, :cond_23

    .line 868
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    .line 869
    .restart local v35    # "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz v35, :cond_1a

    .line 870
    const-string v41, "unlock_set_password"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/PreferenceScreen;

    .line 871
    .local v28, "mPrefPassword":Landroid/preference/PreferenceScreen;
    const-string v41, "unlock_set_pin"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    check-cast v30, Landroid/preference/PreferenceScreen;

    .line 872
    .local v30, "mPrefPin":Landroid/preference/PreferenceScreen;
    const-string v41, "unlock_set_pattern"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/PreferenceScreen;

    .line 873
    .local v29, "mPrefPattern":Landroid/preference/PreferenceScreen;
    const-string v41, "unlock_set_fingerprint"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceScreen;

    .line 874
    .local v27, "mPrefFinger":Landroid/preference/PreferenceScreen;
    const-string v41, "unlock_set_two_factor"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceScreen;

    .line 876
    .local v31, "mPrefTwoFactor":Landroid/preference/PreferenceScreen;
    const-string v41, "unlock_set_enterprise_identity"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/PreferenceScreen;

    .line 879
    .local v26, "mPrefEnterpriseIdentity":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {v35 .. v35}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 880
    if-eqz v28, :cond_6

    .line 881
    const/16 v41, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 882
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 884
    :cond_6
    if-eqz v30, :cond_7

    .line 885
    const/16 v41, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 886
    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 888
    :cond_7
    if-eqz v29, :cond_8

    .line 889
    const/16 v41, 0x3

    move-object/from16 v0, v29

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 890
    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 892
    :cond_8
    if-eqz v27, :cond_9

    .line 893
    const/16 v41, 0x4

    move-object/from16 v0, v27

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 894
    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 896
    :cond_9
    if-eqz v31, :cond_a

    .line 897
    const/16 v41, 0x5

    move-object/from16 v0, v31

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 898
    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 902
    :cond_a
    if-eqz v26, :cond_b

    .line 903
    const/16 v41, 0x6

    move-object/from16 v0, v26

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 904
    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 906
    :cond_b
    const/16 v21, 0x0

    .line 907
    .local v21, "mIsEnterpriseIdentityEnforced":Z
    const/16 v22, 0x0

    .line 908
    .local v22, "mIsEnterpriseIdentityHidden":Z
    const/16 v20, 0x0

    .line 909
    .local v20, "mIsEnterpriseIdentityAppInstalled":Z
    const/16 v23, 0x0

    .line 910
    .local v23, "mIsKnoxVersionSupported":Z
    const/16 v38, 0x0

    .line 911
    .local v38, "removeEnterpriseIdentity":Z
    const/16 v33, 0x0

    .line 914
    .local v33, "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 915
    const/16 v24, 0x0

    .line 916
    .local v24, "mIsMultifactorAuthEnforced":Z
    const/16 v19, 0x0

    .line 917
    .local v19, "mIsBioAuthEnabled":Z
    const/16 v25, 0x0

    .line 920
    .local v25, "mIsSDPEnabled":Z
    const-string v41, "persona"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/os/PersonaManager;

    .line 921
    .local v34, "personaManager":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v41

    move-object/from16 v0, v34

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v12

    .line 922
    .local v12, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v12, :cond_c

    iget-boolean v0, v12, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    move/from16 v41, v0

    if-eqz v41, :cond_c

    iget-boolean v0, v12, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    move/from16 v41, v0

    if-nez v41, :cond_c

    .line 923
    const/16 v25, 0x1

    .line 928
    :cond_c
    :try_start_0
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v7

    .line 929
    .local v7, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v41

    const-string v42, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v43, "isBiometricAuthenticationEnabled"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x1

    invoke-static/range {v46 .. v46}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v46

    aput-object v46, v44, v45

    invoke-static/range {v41 .. v44}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 930
    .local v14, "isBiometricAuthenticationEnabled":I
    if-eqz v7, :cond_1e

    .line 931
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v41

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v42

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v7, v0, v1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v4

    .line 932
    .local v4, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-eqz v4, :cond_d

    const/16 v41, 0x1

    move/from16 v0, v41

    if-ne v14, v0, :cond_d

    .line 933
    const/16 v19, 0x1

    .line 935
    :cond_d
    if-eqz v4, :cond_e

    .line 936
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->isMultifactorAuthenticationEnforced()Z

    move-result v24

    .line 938
    :cond_e
    const/16 v18, 0x0

    .line 939
    .local v18, "mConfig":Lcom/sec/enterprise/identity/AuthenticationConfig;
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/enterprise/PasswordPolicy;->getEnterpriseIdentityAuthentication()Lcom/sec/enterprise/identity/AuthenticationConfig;

    move-result-object v18

    if-eqz v18, :cond_f

    .line 940
    invoke-virtual/range {v18 .. v18}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v21

    .line 941
    invoke-virtual/range {v18 .. v18}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v22

    .line 942
    invoke-virtual/range {v18 .. v18}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v33

    .line 944
    :cond_f
    if-eqz v4, :cond_11

    .line 945
    if-nez v33, :cond_10

    .line 946
    const-string v33, "com.sec.android.service.singlesignon"

    .line 947
    :cond_10
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v3

    .line 948
    .local v3, "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/app/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_11

    .line 949
    const/16 v20, 0x1

    .line 952
    .end local v3    # "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    :cond_11
    sget-object v41, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static/range {v41 .. v41}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v23

    .line 953
    if-nez v25, :cond_12

    if-eqz v20, :cond_12

    if-nez v23, :cond_1d

    :cond_12
    const/16 v38, 0x1

    .line 963
    .end local v4    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v7    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v14    # "isBiometricAuthenticationEnabled":I
    .end local v18    # "mConfig":Lcom/sec/enterprise/identity/AuthenticationConfig;
    :goto_1
    if-nez v25, :cond_13

    if-nez v19, :cond_1f

    :cond_13
    if-eqz v27, :cond_1f

    .line 964
    const/16 v41, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 969
    :cond_14
    :goto_2
    if-eqz v24, :cond_16

    .line 970
    const/16 v41, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 971
    const/16 v41, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 972
    const/16 v41, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 973
    if-eqz v27, :cond_15

    .line 974
    const/16 v41, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 976
    :cond_15
    if-nez v38, :cond_20

    .line 977
    const/16 v41, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 984
    :cond_16
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/android/settings_ex/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v41

    if-nez v41, :cond_17

    .line 985
    if-eqz v31, :cond_17

    .line 986
    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 989
    :cond_17
    if-eqz v31, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v41, v0

    if-eqz v41, :cond_18

    .line 990
    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 993
    :cond_18
    if-eqz v21, :cond_21

    if-nez v38, :cond_21

    .line 994
    if-nez v24, :cond_1a

    .line 995
    const/16 v41, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 996
    const/16 v41, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 997
    const/16 v41, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 998
    if-eqz v27, :cond_19

    .line 999
    const/16 v41, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1000
    :cond_19
    if-eqz v31, :cond_1a

    .line 1001
    const/16 v41, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1032
    .end local v12    # "info":Landroid/content/pm/PersonaInfo;
    .end local v19    # "mIsBioAuthEnabled":Z
    .end local v20    # "mIsEnterpriseIdentityAppInstalled":Z
    .end local v21    # "mIsEnterpriseIdentityEnforced":Z
    .end local v22    # "mIsEnterpriseIdentityHidden":Z
    .end local v23    # "mIsKnoxVersionSupported":Z
    .end local v24    # "mIsMultifactorAuthEnforced":Z
    .end local v25    # "mIsSDPEnabled":Z
    .end local v26    # "mPrefEnterpriseIdentity":Landroid/preference/PreferenceScreen;
    .end local v27    # "mPrefFinger":Landroid/preference/PreferenceScreen;
    .end local v28    # "mPrefPassword":Landroid/preference/PreferenceScreen;
    .end local v29    # "mPrefPattern":Landroid/preference/PreferenceScreen;
    .end local v30    # "mPrefPin":Landroid/preference/PreferenceScreen;
    .end local v31    # "mPrefTwoFactor":Landroid/preference/PreferenceScreen;
    .end local v33    # "packageName":Ljava/lang/String;
    .end local v34    # "personaManager":Landroid/os/PersonaManager;
    .end local v38    # "removeEnterpriseIdentity":Z
    :cond_1a
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v41

    const-string v42, "Block"

    const/16 v43, 0x0

    invoke-virtual/range {v41 .. v43}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 1033
    .local v15, "isBlock":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyFingerprint:Z

    move/from16 v41, v0

    if-nez v41, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v41

    if-eqz v41, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v41, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v41

    if-eqz v41, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v41, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v41

    if-eqz v41, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v41, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v41

    const v42, 0x61000

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_25

    :cond_1b
    if-nez v15, :cond_25

    .line 1039
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->confirmFingerprintPassword()V

    .line 1044
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v41

    const-string v42, "lock_settings_picker"

    invoke-virtual/range {v41 .. v42}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/preference/PreferenceScreen;

    .line 1045
    .local v36, "prefroot":Landroid/preference/PreferenceScreen;
    invoke-static {}, Lcom/android/settings_ex/UCMHelpUtils;->listPasswordSupportedProviders()[Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mAgentList:[Ljava/lang/String;

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mAgentList:[Ljava/lang/String;

    move-object/from16 v41, v0

    if-eqz v41, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mAgentList:[Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    if-eqz v41, :cond_26

    .line 1047
    const-string v41, "ChooseLockGenericFragment"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Size of Agent List :"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mAgentList:[Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mAgentList:[Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    if-ge v11, v0, :cond_26

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mAgentList:[Ljava/lang/String;

    move-object/from16 v41, v0

    aget-object v41, v41, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getVendorId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1050
    .local v40, "title":Ljava/lang/String;
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "unlock_set_ucm_agent_"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1051
    .local v17, "key":Ljava/lang/String;
    const-string v41, "ChooseLockGenericFragment"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "title : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const-string v41, "ChooseLockGenericFragment"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "key : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v41

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v32

    .line 1054
    .local v32, "mPrefUCM":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 1055
    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 1056
    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1048
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 814
    .end local v6    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v11    # "i":I
    .end local v15    # "isBlock":Z
    .end local v17    # "key":Ljava/lang/String;
    .end local v32    # "mPrefUCM":Landroid/preference/PreferenceScreen;
    .end local v35    # "prefScreen":Landroid/preference/PreferenceScreen;
    .end local v36    # "prefroot":Landroid/preference/PreferenceScreen;
    .end local v39    # "root":Landroid/preference/PreferenceScreen;
    .end local v40    # "title":Ljava/lang/String;
    :cond_1c
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 953
    .restart local v4    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v6    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v7    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v12    # "info":Landroid/content/pm/PersonaInfo;
    .restart local v14    # "isBiometricAuthenticationEnabled":I
    .restart local v18    # "mConfig":Lcom/sec/enterprise/identity/AuthenticationConfig;
    .restart local v19    # "mIsBioAuthEnabled":Z
    .restart local v20    # "mIsEnterpriseIdentityAppInstalled":Z
    .restart local v21    # "mIsEnterpriseIdentityEnforced":Z
    .restart local v22    # "mIsEnterpriseIdentityHidden":Z
    .restart local v23    # "mIsKnoxVersionSupported":Z
    .restart local v24    # "mIsMultifactorAuthEnforced":Z
    .restart local v25    # "mIsSDPEnabled":Z
    .restart local v26    # "mPrefEnterpriseIdentity":Landroid/preference/PreferenceScreen;
    .restart local v27    # "mPrefFinger":Landroid/preference/PreferenceScreen;
    .restart local v28    # "mPrefPassword":Landroid/preference/PreferenceScreen;
    .restart local v29    # "mPrefPattern":Landroid/preference/PreferenceScreen;
    .restart local v30    # "mPrefPin":Landroid/preference/PreferenceScreen;
    .restart local v31    # "mPrefTwoFactor":Landroid/preference/PreferenceScreen;
    .restart local v33    # "packageName":Ljava/lang/String;
    .restart local v34    # "personaManager":Landroid/os/PersonaManager;
    .restart local v35    # "prefScreen":Landroid/preference/PreferenceScreen;
    .restart local v38    # "removeEnterpriseIdentity":Z
    .restart local v39    # "root":Landroid/preference/PreferenceScreen;
    :cond_1d
    const/16 v38, 0x0

    goto/16 :goto_1

    .line 956
    .end local v4    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v18    # "mConfig":Lcom/sec/enterprise/identity/AuthenticationConfig;
    :cond_1e
    :try_start_1
    const-string v41, "ChooseLockGenericFragment"

    const-string v42, "ekm is null"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 958
    .end local v7    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v14    # "isBiometricAuthenticationEnabled":I
    :catch_0
    move-exception v5

    .line 959
    .local v5, "e":Ljava/lang/SecurityException;
    const-string v41, "ChooseLockGenericFragment"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "SecurityException: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 965
    .end local v5    # "e":Ljava/lang/SecurityException;
    :cond_1f
    if-eqz v27, :cond_14

    .line 966
    const/16 v41, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 967
    const-string v41, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 979
    :cond_20
    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 1004
    :cond_21
    if-nez v22, :cond_22

    if-eqz v38, :cond_1a

    .line 1005
    :cond_22
    if-eqz v26, :cond_1a

    .line 1006
    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 1013
    .end local v12    # "info":Landroid/content/pm/PersonaInfo;
    .end local v19    # "mIsBioAuthEnabled":Z
    .end local v20    # "mIsEnterpriseIdentityAppInstalled":Z
    .end local v21    # "mIsEnterpriseIdentityEnforced":Z
    .end local v22    # "mIsEnterpriseIdentityHidden":Z
    .end local v23    # "mIsKnoxVersionSupported":Z
    .end local v24    # "mIsMultifactorAuthEnforced":Z
    .end local v25    # "mIsSDPEnabled":Z
    .end local v26    # "mPrefEnterpriseIdentity":Landroid/preference/PreferenceScreen;
    .end local v27    # "mPrefFinger":Landroid/preference/PreferenceScreen;
    .end local v28    # "mPrefPassword":Landroid/preference/PreferenceScreen;
    .end local v29    # "mPrefPattern":Landroid/preference/PreferenceScreen;
    .end local v30    # "mPrefPin":Landroid/preference/PreferenceScreen;
    .end local v31    # "mPrefTwoFactor":Landroid/preference/PreferenceScreen;
    .end local v33    # "packageName":Ljava/lang/String;
    .end local v34    # "personaManager":Landroid/os/PersonaManager;
    .end local v35    # "prefScreen":Landroid/preference/PreferenceScreen;
    .end local v38    # "removeEnterpriseIdentity":Z
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    .line 1014
    .restart local v35    # "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz v35, :cond_24

    const-string v41, "unlock_set_two_factor"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v41

    check-cast v41, Landroid/preference/PreferenceScreen;

    if-eqz v41, :cond_24

    .line 1015
    const-string v41, "unlock_set_two_factor"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceScreen;

    .line 1016
    .restart local v31    # "mPrefTwoFactor":Landroid/preference/PreferenceScreen;
    if-eqz v31, :cond_24

    .line 1017
    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1021
    .end local v31    # "mPrefTwoFactor":Landroid/preference/PreferenceScreen;
    :cond_24
    if-eqz v35, :cond_1a

    const-string v41, "unlock_set_enterprise_identity"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v41

    check-cast v41, Landroid/preference/PreferenceScreen;

    if-eqz v41, :cond_1a

    .line 1022
    const-string v41, "unlock_set_enterprise_identity"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/PreferenceScreen;

    .line 1023
    .restart local v26    # "mPrefEnterpriseIdentity":Landroid/preference/PreferenceScreen;
    if-eqz v26, :cond_1a

    .line 1024
    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 1041
    .end local v26    # "mPrefEnterpriseIdentity":Landroid/preference/PreferenceScreen;
    .restart local v15    # "isBlock":Z
    :cond_25
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyFingerprint:Z

    goto/16 :goto_5

    .line 1060
    .restart local v36    # "prefroot":Landroid/preference/PreferenceScreen;
    :cond_26
    return-void
.end method

.method private updateUnlockMethodUCMAndFinish(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "csname"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1426
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockUCMIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1427
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1428
    return v2
.end method

.method private upgradeQuality(I)I
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 1134
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    const/high16 v0, 0x50000

    .line 1157
    :goto_0
    return v0

    .line 1155
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    move v0, p1

    .line 1157
    goto :goto_0
.end method

.method private upgradeQualityForDPM(I)I
    .locals 4
    .param p1, "quality"    # I

    .prologue
    const/4 v3, 0x0

    .line 1162
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 1163
    .local v0, "minQuality":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v1, :cond_0

    .line 1164
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    .line 1166
    :cond_0
    if-ge p1, v0, :cond_1

    .line 1167
    move p1, v0

    .line 1169
    :cond_1
    return p1
.end method


# virtual methods
.method protected disableUnusablePreferences(IZ)V
    .locals 0
    .param p1, "quality"    # I
    .param p2, "hideDisabledPrefs"    # Z

    .prologue
    .line 1190
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    .line 1191
    return-void
.end method

.method protected disableUnusablePreferencesImpl(IZ)V
    .locals 17
    .param p1, "quality"    # I
    .param p2, "hideDisabled"    # Z

    .prologue
    .line 1201
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 1202
    .local v3, "entries":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1203
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "Block"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1204
    .local v8, "isBlock":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings_ex/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v9

    .line 1206
    .local v9, "isGuestMode":Z
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_21

    .line 1207
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v11

    .line 1208
    .local v11, "pref":Landroid/preference/Preference;
    instance-of v14, v11, Landroid/preference/PreferenceScreen;

    if-eqz v14, :cond_2

    .line 1209
    invoke-virtual {v11}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 1210
    .local v10, "key":Ljava/lang/String;
    const/4 v2, 0x1

    .line 1211
    .local v2, "enabled":Z
    const/4 v13, 0x1

    .line 1212
    .local v13, "visible":Z
    const-string v14, "unlock_set_universal"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1214
    const/16 v14, 0x1000

    move/from16 v0, p1

    if-gt v0, v14, :cond_3

    const/4 v2, 0x1

    .line 1284
    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    .line 1285
    if-eqz v13, :cond_1f

    if-eqz v2, :cond_1f

    const/4 v13, 0x1

    .line 1287
    :cond_1
    :goto_2
    if-nez v13, :cond_20

    .line 1288
    invoke-virtual {v3, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1206
    .end local v2    # "enabled":Z
    .end local v10    # "key":Ljava/lang/String;
    .end local v13    # "visible":Z
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1214
    .restart local v2    # "enabled":Z
    .restart local v10    # "key":Ljava/lang/String;
    .restart local v13    # "visible":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 1215
    :cond_4
    const-string v14, "unlock_set_off"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1216
    if-gtz p1, :cond_5

    const/4 v2, 0x1

    .line 1217
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f10000e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1218
    const/4 v2, 0x0

    .line 1219
    const/4 v13, 0x0

    goto :goto_1

    .line 1216
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 1221
    :cond_6
    const-string v14, "unlock_set_none"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1222
    if-gtz p1, :cond_7

    const/4 v2, 0x1

    :goto_5
    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    .line 1223
    :cond_8
    const-string v14, "unlock_set_pattern"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1224
    invoke-static {}, Lcom/android/settings_ex/Utils;->isExhibitionMode()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1225
    const/4 v2, 0x0

    goto :goto_1

    .line 1227
    :cond_9
    const/high16 v14, 0x10000

    move/from16 v0, p1

    if-gt v0, v14, :cond_a

    const/4 v2, 0x1

    :goto_6
    goto :goto_1

    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    .line 1229
    :cond_b
    const-string v14, "unlock_set_fingerprint"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 1230
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings_ex/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_10

    if-nez v9, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings_ex/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_10

    const/4 v13, 0x1

    .line 1232
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1233
    .local v6, "intent_finger":Landroid/content/Intent;
    const-string v14, "lockscreen.password_type"

    const/4 v15, -0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1237
    .local v1, "currentpwdquality":I
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    .line 1238
    const/4 v2, 0x0

    .line 1242
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v14, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-nez v14, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-nez v14, :cond_d

    const-string v14, "com.android.settings.SetupChooseLockGeneric$SetupChooseLockGenericFragment"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1243
    :cond_d
    const/4 v2, 0x0

    .line 1244
    const/4 v13, 0x0

    .line 1247
    :cond_e
    const/4 v14, 0x1

    new-array v12, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    .line 1248
    .local v12, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v16, "isBiometricAuthenticationEnabled"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v12}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1249
    .local v7, "isBiometricAuthenticationEnabled":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v14

    if-lez v14, :cond_f

    .line 1250
    if-nez v7, :cond_f

    .line 1251
    const/4 v2, 0x0

    .line 1255
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->isFingerprintDisabled()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1256
    const-string v14, "ChooseLockGenericFragment"

    const-string v15, "isFingerprintDisabled() = TURE"

    invoke-static {v14, v15}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1230
    .end local v1    # "currentpwdquality":I
    .end local v6    # "intent_finger":Landroid/content/Intent;
    .end local v7    # "isBiometricAuthenticationEnabled":I
    .end local v12    # "selectionArgs":[Ljava/lang/String;
    :cond_10
    const/4 v13, 0x0

    goto :goto_7

    .line 1259
    :cond_11
    const-string v14, "unlock_set_smart"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 1260
    const v14, 0x9100

    move/from16 v0, p1

    if-gt v0, v14, :cond_12

    const/4 v2, 0x1

    :goto_8
    goto/16 :goto_1

    :cond_12
    const/4 v2, 0x0

    goto :goto_8

    .line 1262
    :cond_13
    const-string v14, "unlock_set_pin"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 1263
    invoke-static {}, Lcom/android/settings_ex/Utils;->isExhibitionMode()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 1264
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1266
    :cond_14
    const/high16 v14, 0x20000

    move/from16 v0, p1

    if-gt v0, v14, :cond_15

    const/4 v2, 0x1

    :goto_9
    goto/16 :goto_1

    :cond_15
    const/4 v2, 0x0

    goto :goto_9

    .line 1268
    :cond_16
    const-string v14, "unlock_set_cac_pin"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 1269
    const/high16 v14, 0x70000

    move/from16 v0, p1

    if-gt v0, v14, :cond_17

    const/4 v2, 0x1

    .line 1270
    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v14

    if-eqz v14, :cond_18

    if-nez v9, :cond_18

    const/4 v13, 0x1

    :goto_b
    goto/16 :goto_1

    .line 1269
    :cond_17
    const/4 v2, 0x0

    goto :goto_a

    .line 1270
    :cond_18
    const/4 v13, 0x0

    goto :goto_b

    .line 1271
    :cond_19
    const-string v14, "unlock_set_password"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 1272
    invoke-static {}, Lcom/android/settings_ex/Utils;->isExhibitionMode()Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 1273
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1275
    :cond_1a
    const/high16 v14, 0x60000

    move/from16 v0, p1

    if-gt v0, v14, :cond_1b

    const/4 v2, 0x1

    :goto_c
    goto/16 :goto_1

    :cond_1b
    const/4 v2, 0x0

    goto :goto_c

    .line 1277
    :cond_1c
    const-string v14, "unlock_set_enterprise_identity"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1278
    invoke-static {}, Lcom/android/settings_ex/Utils;->isExhibitionMode()Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 1279
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1281
    :cond_1d
    const/high16 v14, 0x60000

    move/from16 v0, p1

    if-gt v0, v14, :cond_1e

    const/4 v2, 0x1

    :goto_d
    goto/16 :goto_1

    :cond_1e
    const/4 v2, 0x0

    goto :goto_d

    .line 1285
    :cond_1f
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1289
    :cond_20
    if-nez v2, :cond_2

    .line 1290
    const v14, 0x7f0e0286

    invoke-virtual {v11, v14}, Landroid/preference/Preference;->setSummary(I)V

    .line 1291
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 1295
    .end local v2    # "enabled":Z
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "pref":Landroid/preference/Preference;
    .end local v13    # "visible":Z
    :cond_21
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "required"    # Z

    .prologue
    .line 1415
    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1878
    const v0, 0x7f0e0d8d

    return v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZJLjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "challenge"    # J
    .param p8, "password"    # Ljava/lang/String;

    .prologue
    .line 1382
    invoke-static/range {p1 .. p8}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "password"    # Ljava/lang/String;

    .prologue
    .line 1388
    invoke-static/range {p1 .. p6}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "confirmCredentials"    # Z

    .prologue
    .line 1368
    invoke-static/range {p1 .. p6}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZJLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "challenge"    # J
    .param p5, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1405
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/settings_ex/ChooseLockPattern;->createIntent(Landroid/content/Context;ZJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1410
    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/ChooseLockPattern;->createIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockUCMIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "confirmCredentials"    # Z
    .param p3, "csName"    # Ljava/lang/String;

    .prologue
    .line 1420
    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/ConfirmUCMLockPassword;->createIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 360
    const/16 v0, 0x1b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 639
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 641
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 643
    if-eqz p3, :cond_0

    .line 644
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 646
    const-string v0, "enterprise_password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->enterpriseOldPassword:Ljava/lang/String;

    .line 648
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    .line 650
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 774
    :cond_1
    :goto_0
    return-void

    .line 651
    :cond_2
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_4

    .line 653
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 654
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserSelectedCsname:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/UCMHelpUtils;->saveUCMPasswordAndSetConfigurationInfo(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;)V

    .line 656
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 657
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 659
    :cond_4
    const/16 v0, 0x65

    if-ne p1, v0, :cond_5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 661
    const-string v0, "extra_require_password"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 663
    iget v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 664
    :cond_5
    const/16 v0, 0x66

    if-ne p1, v0, :cond_b

    .line 665
    const/4 v9, 0x0

    .line 666
    .local v9, "mToken":[B
    if-eqz p3, :cond_6

    .line 667
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v9

    .line 670
    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    .line 671
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_7

    if-eqz v9, :cond_7

    .line 672
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 673
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v9}, Landroid/hardware/fingerprint/FingerprintManager;->requestUpdateSID([B)Z

    .line 676
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_lockscreen_is_smart_lock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v8, 0x1

    .line 677
    .local v8, "isAutoLockEnabled":Z
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->isSharedDeviceExist()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez v8, :cond_8

    .line 678
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 679
    const-string v0, "lock_screen_pin_pattern_password"

    invoke-direct {p0, v0, v9}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startFingerprintLockSettings(Ljava/lang/String;[B)V

    .line 688
    .end local v8    # "isAutoLockEnabled":Z
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 689
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_0

    .line 676
    :cond_9
    const/4 v8, 0x0

    goto :goto_1

    .line 683
    :cond_a
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-nez v0, :cond_8

    .line 684
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    goto :goto_2

    .line 690
    .end local v9    # "mToken":[B
    :cond_b
    const/16 v0, 0x2715

    if-ne p1, v0, :cond_c

    .line 691
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 692
    sget-object v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUnlockMethod:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 693
    sget-object v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUnlockMethod:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 697
    :cond_c
    const/16 v0, 0x2716

    if-ne p1, v0, :cond_e

    .line 698
    const/4 v0, -0x1

    if-ne p2, v0, :cond_d

    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyFingerprint:Z

    goto/16 :goto_0

    .line 701
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_0

    .line 704
    :cond_e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_18

    .line 705
    const-string v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult reqCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_11

    .line 707
    const/4 v0, 0x1

    if-eq p2, v0, :cond_f

    if-eqz p2, :cond_10

    .line 709
    :cond_f
    :try_start_0
    const-string v0, "ChooseLockGenericFragment"

    const-string v1, "set two factor : 0"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "knox_finger_print_plus"

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 711
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    .line 712
    const-string v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "two factor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "knox_finger_print_plus"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :goto_3
    const-string v0, "persona"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PersonaManager;

    .line 717
    .local v10, "personaManager":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/os/PersonaManager;->setIsFingerAsSupplement(IZ)V

    .line 768
    .end local v10    # "personaManager":Landroid/os/PersonaManager;
    :cond_10
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_0

    .line 713
    :catch_0
    move-exception v7

    .line 714
    .local v7, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingNotFoundException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 719
    .end local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_11
    const/16 v0, 0x2712

    if-ne p1, v0, :cond_15

    .line 720
    const/high16 v0, 0x10000

    if-lt p2, v0, :cond_12

    const/high16 v0, 0x60000

    if-gt p2, v0, :cond_12

    .line 721
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 722
    sput p2, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 723
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 726
    :cond_12
    const/16 v0, 0x271a

    if-ne p2, v0, :cond_10

    .line 727
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 728
    const/high16 v11, 0x60000

    .line 729
    .local v11, "quality":I
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    const/high16 v1, 0x60000

    if-gt v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    const/high16 v1, 0x40000

    if-lt v0, v1, :cond_14

    .line 731
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v11

    .line 735
    :cond_13
    :goto_5
    sput p2, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 736
    move p2, v11

    .line 737
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 732
    :cond_14
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    const/high16 v1, 0x20000

    if-gt v0, v1, :cond_13

    .line 733
    const/high16 v11, 0x40000

    goto :goto_5

    .line 741
    .end local v11    # "quality":I
    :cond_15
    const/16 v0, 0x2713

    if-ne p1, v0, :cond_17

    .line 742
    const/4 v0, 0x1

    if-ne p2, v0, :cond_16

    .line 744
    :try_start_1
    const-string v0, "ChooseLockGenericFragment"

    const-string v1, "set two factor : 1"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "knox_finger_print_plus"

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 746
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    .line 747
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KNOX lock type will be set as two-step"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 749
    const-string v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "two factor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "knox_finger_print_plus"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 753
    :goto_6
    const-string v0, "persona"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PersonaManager;

    .line 754
    .restart local v10    # "personaManager":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/os/PersonaManager;->setIsFingerAsSupplement(IZ)V

    goto/16 :goto_4

    .line 750
    .end local v10    # "personaManager":Landroid/os/PersonaManager;
    :catch_1
    move-exception v7

    .line 751
    .restart local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingNotFoundException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 757
    .end local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_16
    :try_start_2
    const-string v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "two factor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "knox_finger_print_plus"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 758
    :catch_2
    move-exception v7

    .line 759
    .restart local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingNotFoundException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 763
    .end local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_17
    const/16 v0, 0x271a

    if-ne p1, v0, :cond_10

    .line 764
    const-string v0, "ChooseLockGenericFragment"

    const-string v1, "REQUEST_ENTERPRISE_IDENTITY_SET : "

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_4

    .line 771
    :cond_18
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 772
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 501
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 502
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x64

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 365
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 367
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "fingerprint"

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 368
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 369
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 370
    new-instance v3, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 371
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 374
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "confirm_credentials"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 376
    .local v0, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings_ex/ChooseLockGeneric$InternalActivity;

    if-eqz v3, :cond_0

    .line 377
    if-nez v0, :cond_9

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "has_challenge"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 382
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "challenge"

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    .line 384
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "for_fingerprint"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 386
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "forPrivateBackupKey"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    .line 388
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "forAppLockBackupKey"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    .line 393
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 396
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyFingerprint:Z

    .line 399
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v3, :cond_3

    .line 401
    if-nez v0, :cond_a

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 402
    if-nez v0, :cond_b

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyFingerprint:Z

    .line 403
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "password"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 404
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "disable_systemkey"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDisableSystemKey:Z

    .line 405
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v6, 0x7f0e125f

    invoke-virtual {v3, v6}, Landroid/app/Activity;->setTitle(I)V

    .line 407
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-lt v3, v10, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v3

    if-nez v3, :cond_3

    .line 408
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 413
    :cond_3
    if-eqz p1, :cond_4

    .line 414
    const-string v3, "password_confirmed"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 415
    const-string v3, "waiting_for_confirmation"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 416
    const-string v3, "encrypt_requested_quality"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 417
    const-string v3, "encrypt_requested_disabled"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 421
    :cond_4
    iget-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-eqz v3, :cond_6

    .line 422
    :cond_5
    iput-boolean v4, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 423
    iput-boolean v4, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyFingerprint:Z

    .line 424
    const v3, 0x7f0e11db

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 425
    .local v2, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 429
    .end local v2    # "msg":Ljava/lang/CharSequence;
    :cond_6
    if-eqz p1, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-lt v3, v10, :cond_7

    .line 430
    const-string v3, "KEY_USING_TWO_FACTOR"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 431
    const-string v3, "KEY_SELECTED_TWO_FACTOR_TYPE"

    const/4 v5, -0x1

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 433
    :cond_7
    const-string v3, "persona"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    sput-object v3, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPm:Landroid/os/PersonaManager;

    .line 436
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->isSharedDeviceExist()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v3, :cond_c

    .line 437
    const-string v3, "unlock_set_password"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    .line 451
    :cond_8
    :goto_3
    return-void

    :cond_9
    move v3, v5

    .line 377
    goto/16 :goto_0

    :cond_a
    move v3, v5

    .line 401
    goto/16 :goto_1

    :cond_b
    move v3, v5

    .line 402
    goto/16 :goto_2

    .line 438
    :cond_c
    iget-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v3, :cond_d

    .line 439
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_3

    .line 440
    :cond_d
    iget-boolean v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v3, :cond_8

    .line 441
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 443
    .local v1, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const v3, 0x7f0e025b

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v10, v3, v4}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_e

    .line 445
    iput-boolean v4, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 446
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_3

    .line 448
    :cond_e
    iput-boolean v4, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1864
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 1866
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDisableSystemKey:Z

    if-eqz v0, :cond_0

    .line 1867
    invoke-direct {p0, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->DisableSystemKey(Z)V

    .line 1870
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1871
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_lockscreen_is_smart_lock"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1874
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 561
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V

    .line 574
    :goto_0
    return v1

    .line 570
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 571
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->removeEncryptionPopup(Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 506
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 507
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v4

    .line 508
    .local v4, "isShopDemo":Z
    invoke-static {}, Lcom/android/settings_ex/Utils;->isLDUModel()Z

    move-result v3

    .line 510
    .local v3, "isLDUModel":Z
    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 512
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 515
    :cond_1
    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 516
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0e1257

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 521
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v5, :cond_3

    .line 522
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 524
    :cond_3
    const-string v5, "ChooseLockGenericFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "On resuming generic activity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getCacChosen()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getCacChosen()Z

    move-result v5

    if-ne v5, v9, :cond_4

    .line 527
    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v5, :cond_4

    .line 528
    const/high16 v5, 0x70000

    invoke-virtual {p0, v5, v8}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 533
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v5, :cond_5

    .line 534
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "turn-on"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 535
    .local v1, "isBlockTurnOn":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "Block"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 536
    .local v0, "isBlock":Z
    if-eqz v1, :cond_8

    .line 537
    const v5, 0x9100

    invoke-virtual {p0, v5, v8}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 543
    .end local v0    # "isBlock":Z
    .end local v1    # "isBlockTurnOn":Z
    :cond_5
    :goto_0
    const/4 v2, 0x0

    .line 544
    .local v2, "isFromSearch":Z
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 545
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "fromSearch"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 546
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "fromSearch"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 552
    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->isLaunched:Z

    if-nez v5, :cond_7

    .line 553
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->performClickMenuBySearch(Landroid/app/Fragment;)Z

    .line 554
    iput-boolean v9, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->isLaunched:Z

    .line 556
    :cond_7
    return-void

    .line 538
    .end local v2    # "isFromSearch":Z
    .restart local v0    # "isBlock":Z
    .restart local v1    # "isBlockTurnOn":Z
    :cond_8
    if-eqz v0, :cond_5

    .line 539
    const/high16 v5, 0x10000

    invoke-virtual {p0, v5, v8}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 549
    .end local v0    # "isBlock":Z
    .end local v1    # "isBlockTurnOn":Z
    .restart local v2    # "isFromSearch":Z
    :cond_9
    iget-boolean v2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->fromSearch:Z

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 778
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 780
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 781
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 782
    const-string v0, "encrypt_requested_quality"

    iget v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 783
    const-string v0, "encrypt_requested_disabled"

    iget-boolean v1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 785
    sget-boolean v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 786
    const-string v0, "KEY_USING_TWO_FACTOR"

    sget-boolean v1, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 787
    const-string v0, "KEY_SELECTED_TWO_FACTOR_TYPE"

    sget v1, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 790
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 455
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 456
    iget-boolean v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v6, :cond_3

    .line 457
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 458
    .local v4, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 459
    .local v5, "listView":Landroid/widget/ListView;
    const v6, 0x7f040056

    invoke-virtual {v4, v6, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 462
    .local v1, "fingerprintHeader":Landroid/view/View;
    const v6, 0x7f0d010d

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 463
    .local v2, "guide":Landroid/widget/TextView;
    const-string v0, "&#8226 "

    .line 464
    .local v0, "bullet":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 465
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e1258

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<br/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e1259

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 470
    iget-boolean v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDisableSystemKey:Z

    if-eqz v6, :cond_2

    .line 471
    invoke-direct {p0, v10}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->DisableSystemKey(Z)V

    .line 472
    new-instance v6, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$4;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$4;-><init>(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 496
    .end local v0    # "bullet":Ljava/lang/String;
    .end local v1    # "fingerprintHeader":Landroid/view/View;
    .end local v2    # "guide":Landroid/widget/TextView;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "listView":Landroid/widget/ListView;
    :cond_1
    :goto_0
    return-void

    .line 483
    .restart local v0    # "bullet":Ljava/lang/String;
    .restart local v1    # "fingerprintHeader":Landroid/view/View;
    .restart local v2    # "guide":Landroid/widget/TextView;
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "listView":Landroid/widget/ListView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 485
    .end local v0    # "bullet":Ljava/lang/String;
    .end local v1    # "fingerprintHeader":Landroid/view/View;
    .end local v2    # "guide":Landroid/widget/TextView;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "listView":Landroid/widget/ListView;
    :cond_3
    iget-boolean v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-eqz v6, :cond_4

    .line 486
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 487
    .local v3, "header":Landroid/preference/Preference;
    const v6, 0x7f040057

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 488
    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setOrder(I)V

    .line 489
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 490
    .end local v3    # "header":Landroid/preference/Preference;
    :cond_4
    iget-boolean v6, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-eqz v6, :cond_1

    .line 491
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 492
    .restart local v3    # "header":Landroid/preference/Preference;
    const v6, 0x7f040055

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 493
    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setOrder(I)V

    .line 494
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 25
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 1443
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v2, :cond_0

    .line 1444
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Tried to update password without confirming it"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1448
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyFingerprint:Z

    if-nez v2, :cond_1

    .line 1693
    :goto_0
    return-void

    .line 1452
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result p1

    .line 1454
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "Block"

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 1456
    .local v14, "isBlock":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 1458
    .local v3, "context":Landroid/content/Context;
    const/high16 v2, 0x70000

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 1459
    const-string v2, "ChooseLockGenericFragment"

    const-string v4, "Device already paired with CAC card "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v5

    .line 1461
    .local v5, "minLength":I
    const/4 v2, 0x4

    if-ge v5, v2, :cond_2

    .line 1462
    const/4 v5, 0x4

    .line 1464
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v6

    .line 1465
    .local v6, "maxLength":I
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;

    move-result-object v13

    .line 1468
    .local v13, "intent":Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getCacChosen()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 1469
    const-string v2, "choose_cac_pin"

    const/4 v4, 0x1

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1470
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 1472
    :cond_3
    const/high16 v2, 0x2000000

    invoke-virtual {v13, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1473
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1476
    .end local v5    # "minLength":I
    .end local v6    # "maxLength":I
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_4
    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-lt v0, v2, :cond_17

    const/high16 v2, 0x60000

    move/from16 v0, p1

    if-gt v0, v2, :cond_17

    .line 1477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v5

    .line 1478
    .restart local v5    # "minLength":I
    const/4 v2, 0x4

    if-ge v5, v2, :cond_5

    .line 1479
    const/4 v5, 0x4

    .line 1481
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v6

    .line 1484
    .restart local v6    # "maxLength":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_6

    .line 1485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1487
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 1491
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v2, :cond_c

    .line 1492
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 1500
    .restart local v13    # "intent":Landroid/content/Intent;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 1501
    const-string v2, "lockscreen.password_old"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1506
    :cond_7
    const/high16 v2, 0x60000

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v4, 0x64

    if-lt v2, v4, :cond_b

    .line 1509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1510
    .local v22, "minSymbol":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 1511
    .local v21, "minNumeric":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 1512
    .local v18, "minLetter":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v23

    .line 1513
    .local v23, "minUpperCase":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v19

    .line 1514
    .local v19, "minLowerCase":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v20

    .line 1515
    .local v20, "minNonLetter":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v17

    .line 1517
    .local v17, "minLen":I
    add-int v2, v22, v21

    move/from16 v0, v20

    if-le v2, v0, :cond_8

    .line 1518
    add-int v20, v22, v21

    .line 1519
    const-string v2, "lockscreen.password_min_nonletter"

    move/from16 v0, v20

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1522
    :cond_8
    add-int v2, v23, v19

    move/from16 v0, v18

    if-le v2, v0, :cond_9

    .line 1523
    add-int v18, v23, v19

    .line 1526
    :cond_9
    add-int v2, v20, v18

    move/from16 v0, v17

    if-le v2, v0, :cond_a

    .line 1527
    add-int v17, v20, v18

    .line 1528
    const-string v2, "lockscreen.password_min"

    move/from16 v0, v17

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1531
    :cond_a
    const-string v2, "lockscreen.password_min_uppercase"

    move/from16 v0, v23

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1532
    const-string v2, "lockscreen.password_min_lowercase"

    move/from16 v0, v19

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1533
    const-string v2, "lockscreen.password_min_symbols"

    move/from16 v0, v22

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1534
    const-string v2, "lockscreen.password_min_numeric"

    move/from16 v0, v21

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1535
    const-string v2, "lockscreen.password_min_letters"

    move/from16 v0, v18

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1538
    .end local v17    # "minLen":I
    .end local v18    # "minLetter":I
    .end local v19    # "minLowerCase":I
    .end local v20    # "minNonLetter":I
    .end local v21    # "minNumeric":I
    .end local v22    # "minSymbol":I
    .end local v23    # "minUpperCase":I
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v4, 0x64

    if-lt v2, v4, :cond_11

    .line 1539
    sget-boolean v2, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    if-eqz v2, :cond_e

    .line 1540
    sget v2, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    const/16 v4, 0x271a

    if-ne v2, v4, :cond_d

    .line 1541
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 1542
    const/4 v2, -0x1

    sput v2, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 1543
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v7, Lcom/android/settings_ex/ChooseLockEnterpriseIdentity;

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v13

    .line 1544
    const/16 v2, 0x2713

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1495
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .restart local v13    # "intent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 1546
    :cond_d
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 1547
    const/4 v2, -0x1

    sput v2, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 1548
    const/16 v2, 0x2713

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1551
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_10

    .line 1552
    const-string v2, "ChooseLockGenericFragment"

    const-string v4, "[KNOX FINGER] : To set deviceLock, run ChooseLockPassword"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v5

    .line 1554
    const/4 v2, 0x4

    if-ge v5, v2, :cond_f

    .line 1555
    const/4 v5, 0x4

    .line 1557
    :cond_f
    const-string v2, "lockscreen.password_min"

    invoke-virtual {v13, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1558
    const-string v2, "isFromKnoxFinger"

    const/4 v4, 0x1

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1559
    const-string v2, "for_fingerprint"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1560
    const/16 v2, 0x66

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1562
    :cond_10
    const/16 v2, 0x2711

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1567
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_12

    .line 1568
    const-string v2, "for_fingerprint"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1570
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-eqz v2, :cond_13

    .line 1571
    const-string v2, "forPrivateBackupKey"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1572
    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-ne v0, v2, :cond_15

    const/16 v16, 0x1

    .line 1573
    .local v16, "mIsPin":Z
    :goto_2
    const-string v2, "personal_mQuality"

    move/from16 v0, v16

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1575
    .end local v16    # "mIsPin":Z
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-eqz v2, :cond_14

    .line 1576
    const-string v2, "forAppLockBackupKey"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1577
    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-ne v0, v2, :cond_16

    const/16 v16, 0x1

    .line 1578
    .restart local v16    # "mIsPin":Z
    :goto_3
    const-string v2, "applock_mQuality"

    move/from16 v0, v16

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1580
    .end local v16    # "mIsPin":Z
    :cond_14
    const/16 v2, 0x66

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1572
    :cond_15
    const/16 v16, 0x0

    goto :goto_2

    .line 1577
    :cond_16
    const/16 v16, 0x0

    goto :goto_3

    .line 1582
    .end local v5    # "minLength":I
    .end local v6    # "maxLength":I
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_17
    const/high16 v2, 0x10000

    move/from16 v0, p1

    if-ne v0, v2, :cond_20

    .line 1585
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_18

    .line 1586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1588
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 1592
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v2, :cond_19

    .line 1593
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    move-object/from16 v7, p0

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 1600
    .restart local v13    # "intent":Landroid/content/Intent;
    :goto_4
    const-string v2, "Block"

    invoke-virtual {v13, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1603
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v4, 0x64

    if-lt v2, v4, :cond_1c

    .line 1604
    const-string v2, "has_challenge"

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1605
    sget-boolean v2, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    if-eqz v2, :cond_1a

    .line 1606
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 1607
    const/4 v2, -0x1

    sput v2, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 1608
    const/16 v2, 0x2713

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1596
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .restart local v13    # "intent":Landroid/content/Intent;
    goto :goto_4

    .line 1610
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_1b

    .line 1611
    const-string v2, "ChooseLockGenericFragment"

    const-string v4, "[KNOX FINGER] : To set deviceLock, run ChooseLockPattern"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    const-string v2, "isFromKnoxFinger"

    const/4 v4, 0x1

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1613
    const-string v2, "has_challenge"

    const/4 v4, 0x1

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1614
    const-string v2, "for_fingerprint"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1615
    const/16 v2, 0x66

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1617
    :cond_1b
    const/16 v2, 0x2711

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1622
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_1d

    .line 1623
    const-string v2, "for_fingerprint"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1625
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-eqz v2, :cond_1e

    .line 1626
    const-string v2, "forPrivateBackupKey"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1628
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-eqz v2, :cond_1f

    .line 1629
    const-string v2, "forAppLockBackupKey"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1631
    :cond_1f
    const/16 v2, 0x66

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1633
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_20
    const/high16 v2, 0x90000

    move/from16 v0, p1

    if-eq v0, v2, :cond_21

    const v2, 0x9100

    move/from16 v0, p1

    if-ne v0, v2, :cond_22

    .line 1634
    :cond_21
    new-instance v13, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lcom/android/settings_ex/ChooseLockBLock;

    invoke-direct {v13, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1635
    .restart local v13    # "intent":Landroid/content/Intent;
    const-string v2, "confirm_credentials"

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1636
    const-string v2, "Block"

    const/4 v4, 0x1

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1637
    const/16 v2, 0x66

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1638
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_22
    if-nez p1, :cond_26

    .line 1639
    if-eqz p2, :cond_24

    .line 1640
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "com.android.settings"

    const-string v7, "LOSC"

    const-string v8, "None"

    invoke-static {v2, v4, v7, v8}, Lcom/android/settings_ex/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 1646
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 1647
    const-string v2, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUnlockMethodAndFinish update VPN state - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v2, v2, Lcom/android/internal/net/LegacyVpnInfo;->state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_25

    .line 1651
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mService:Landroid/net/IConnectivityManager;

    const-string v4, "[Legacy VPN]"

    const-string v7, "[Legacy VPN]"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-interface {v2, v4, v7, v8}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1663
    :cond_23
    :goto_6
    invoke-static {}, Lcom/android/settings_ex/UCMHelpUtils;->resetUcmKeyguardSettings()Z

    .line 1666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    move/from16 v0, p2

    invoke-virtual {v2, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 1669
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "db_lockscreen_is_smart_lock"

    const/4 v7, 0x0

    invoke-static {v2, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1670
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "lock_to_app_exit_locked"

    const/4 v7, 0x0

    invoke-static {v2, v4, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1671
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setResult(I)V

    .line 1672
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_0

    .line 1642
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "com.android.settings"

    const-string v7, "LOSC"

    const-string v8, "Swipe"

    invoke-static {v2, v4, v7, v8}, Lcom/android/settings_ex/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1655
    :cond_25
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->updateLockdownVpn()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 1658
    :catch_0
    move-exception v2

    goto :goto_6

    .line 1673
    :cond_26
    const v2, 0x61000

    move/from16 v0, p1

    if-ne v0, v2, :cond_2a

    .line 1674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_28

    .line 1675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v15

    .line 1676
    .local v15, "isHWdetected":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v24

    .line 1677
    .local v24, "status":I
    if-eqz v15, :cond_27

    const v2, 0x186c8

    move/from16 v0, v24

    if-eq v0, v2, :cond_29

    const v2, 0x186c9

    move/from16 v0, v24

    if-eq v0, v2, :cond_29

    .line 1678
    :cond_27
    const-string v2, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUnlockMethodAndFinish isHardwareDetected = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", requestGetSensorStatus = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    const v2, 0x7f0e11fc

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog(I)V

    goto/16 :goto_0

    .line 1683
    .end local v15    # "isHWdetected":Z
    .end local v24    # "status":I
    :cond_28
    const v2, 0x7f0e11fc

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog(I)V

    goto/16 :goto_0

    .line 1687
    .restart local v15    # "isHWdetected":Z
    .restart local v24    # "status":I
    :cond_29
    const-string v2, "lock_screen_fingerprint"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->startFingerprintLockSettings(Ljava/lang/String;[B)V

    .line 1688
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_0

    .line 1691
    .end local v15    # "isHWdetected":Z
    .end local v24    # "status":I
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_0

    .line 1652
    :catch_1
    move-exception v2

    goto/16 :goto_6
.end method

.method public wManagerChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1120
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wmanager_connected"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1121
    .local v2, "state":I
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "db_smartlock_supported"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1123
    .local v0, "isSmartLockSupport":I
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1125
    .local v1, "root":Landroid/preference/PreferenceScreen;
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    if-nez v2, :cond_1

    .line 1126
    :cond_0
    const-string v3, "unlock_set_smart"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1127
    const-string v3, "unlock_set_smart"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1129
    :cond_1
    return-void
.end method
