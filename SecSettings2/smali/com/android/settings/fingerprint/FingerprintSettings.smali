.class public Lcom/android/settings_ex/fingerprint/FingerprintSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/SettingsActivity$onEditButtonClicked;
.implements Lcom/android/settings_ex/fingerprint/FingerprintSamsungAccountDialog$SamsungAccountDialogFragmentListener;
.implements Lcom/android/settings_ex/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fingerprint/FingerprintSettings$9;,
        Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;,
        Lcom/android/settings_ex/fingerprint/FingerprintSettings$ItemLongClickListener;,
        Lcom/android/settings_ex/fingerprint/FingerprintSettings$Survey;
    }
.end annotation


# static fields
.field private static final ENABLE_SURVEY_MODE:Ljava/lang/String;

.field private static isKeepEnrollSession:Z

.field private static mDeviceProvisioned:I

.field private static mListView:Landroid/widget/ListView;


# instance fields
.field TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

.field private colorId_identifiedId:I

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mAlipayPayment:Landroid/preference/Preference;

.field private mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mBuilder:Landroid/app/Notification;

.field private mEnrolledFingerCount:I

.field private mFeatureCategory:Landroid/preference/PreferenceCategory;

.field private mFingerprintCancel:Landroid/os/CancellationSignal;

.field private final mFingerprintLockoutReset:Ljava/lang/Runnable;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field final mH:Landroid/os/Handler;

.field private final mHandler:Landroid/os/Handler;

.field private mIdentifyFingerprint:Z

.field private mInFingerprintLockout:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mRegister:Landroid/preference/Preference;

.field private mRegisterCategory:Landroid/preference/PreferenceCategory;

.field private mRenameDialog:Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;

.field private mResetPassword:Landroid/preference/Preference;

.field private mSamsungAccount:Landroid/preference/SwitchPreference;

.field private mSamsungAccountContext:Landroid/content/Context;

.field private mSamsungPay:Landroid/preference/Preference;

.field private mScreenLock:Landroid/preference/SwitchPreference;

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mToken:[B

.field private mWebSignIn:Landroid/preference/SwitchPreference;

.field private notificationManager:Landroid/app/NotificationManager;

.field private origin_color_identifiedId:Landroid/content/res/ColorStateList;

.field private origin_typeface:Landroid/graphics/Typeface;

.field private retryFingerprintRunnable:Ljava/lang/Runnable;

.field private samsungaccount_do_not_show_again:Z

.field private samsungaccount_objvalue:Z

.field private skipHuntip:Z

.field private through_onpreferencechange:Z

.field private twselectionChecklist:[Z

.field private updatedIdentiedFingerIdx:I

.field private websignin_do_not_show_again:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    .line 162
    const/4 v0, 0x1

    sput v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mDeviceProvisioned:I

    .line 195
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 128
    invoke-static {}, Lcom/android/settings_ex/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->twselectionChecklist:[Z

    .line 129
    iput v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->colorId_identifiedId:I

    .line 130
    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    .line 131
    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    .line 132
    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;

    .line 135
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->websignin_do_not_show_again:Z

    .line 136
    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    .line 137
    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mBuilder:Landroid/app/Notification;

    .line 139
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->samsungaccount_do_not_show_again:Z

    .line 140
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    .line 141
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->samsungaccount_objvalue:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->skipHuntip:Z

    .line 144
    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mH:Landroid/os/Handler;

    .line 163
    iput v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->updatedIdentiedFingerIdx:I

    .line 169
    iput v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    .line 204
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    .line 206
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 231
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$2;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    .line 361
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$3;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->retryFingerprintRunnable:Ljava/lang/Runnable;

    .line 732
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$4;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    .line 1290
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$7;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    .line 1947
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/fingerprint/FingerprintSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->updateTwMultiSelected(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings_ex/fingerprint/FingerprintSettings;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings;
    .param p1, "x1"    # Landroid/os/CancellationSignal;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/fingerprint/FingerprintSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/settings_ex/fingerprint/FingerprintSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mInFingerprintLockout:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/settings_ex/fingerprint/FingerprintSettings;Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings;
    .param p1, "x1"    # Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/fingerprint/FingerprintSettings;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->updateIdentifiedFinger(ZI)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings_ex/fingerprint/FingerprintSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->updatedIdentiedFingerIdx:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->retryFingerprint()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->registerAuthenticate()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/fingerprint/FingerprintSettings;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setTwselectionChecklist(ZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    .prologue
    .line 91
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->twselectionChecklist:[Z

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/fingerprint/FingerprintSettings;I[Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Z

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startSelectListUI(I[Z)V

    return-void
.end method

.method private addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V
    .locals 8
    .param p1, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v7, 0x0

    .line 525
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 527
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 528
    iput-object v7, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    .line 530
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    .line 531
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    .line 534
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_2

    .line 535
    move v2, v0

    .line 536
    .local v2, "j":I
    :goto_1
    if-lez v2, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    if-le v5, v4, :cond_1

    .line 538
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    iget-object v6, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 539
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 540
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 534
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    .end local v2    # "j":I
    :cond_2
    iget v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 545
    const-string v4, "FpstFingerprintSettings"

    const-string v5, "addFingerprintItemPreferences : Sort Error"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iput-object v7, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    .line 547
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    .line 548
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    .line 552
    :cond_3
    const-string v4, "FpstFingerprintSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addFingerprintItemPreferences : mEnrolledFingerCount["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v0, 0x0

    :goto_2
    iget v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_4

    .line 556
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 557
    .local v1, "item":Landroid/hardware/fingerprint/Fingerprint;
    const-string v4, "FpstFingerprintSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addFingerprintItemPreferences : fid["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], Name["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], Gid["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 561
    .end local v1    # "item":Landroid/hardware/fingerprint/Fingerprint;
    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_5

    .line 562
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 563
    .restart local v1    # "item":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v3, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings;Landroid/content/Context;)V

    .line 564
    .local v3, "pref":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-static {v4}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->genKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->setKey(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 566
    invoke-virtual {v3, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 567
    const v4, 0x7f0400e2

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->setLayoutResource(I)V

    .line 568
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->setPersistent(Z)V

    .line 569
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 570
    invoke-virtual {v3, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 578
    .end local v1    # "item":Landroid/hardware/fingerprint/Fingerprint;
    .end local v3    # "pref":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->updateAddPreference()V

    .line 579
    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 2

    .prologue
    .line 277
    const-string v0, "FpstFingerprintSettings"

    const-string v1, "cancelAndSessionEnd() "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->stopFingerprint()V

    .line 281
    sget-boolean v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    .line 289
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->finishFingerprintSettings()V

    goto :goto_0
.end method

.method private checkMobileKeyboard()Z
    .locals 4

    .prologue
    .line 1936
    const/4 v0, 0x0

    .line 1938
    .local v0, "hasKeyboard":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1939
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1940
    const/4 v0, 0x1

    .line 1943
    :cond_0
    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMobileKeyboard. return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAdded() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->isAdded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    return v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 3

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 507
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 508
    const-string v1, "FpstFingerprintSettings"

    const-string v2, "createPreferenceHierarchy : remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 511
    :cond_0
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    const v1, 0x7f080053

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->addPreferencesFromResource(I)V

    .line 513
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings_ex/SettingsActivity$onEditButtonClicked;)V

    .line 518
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerprintPreference()V

    .line 519
    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V

    .line 520
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->updateEditbtn()V

    .line 521
    return-object v0

    .line 515
    :cond_1
    const v1, 0x7f080052

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFingerprintSamsungAccountConfirmedVerification()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1512
    const/4 v0, 0x0

    .line 1513
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_samsungaccount_confirmed"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1514
    :goto_0
    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFingerprintSamsungAccountConfirmedVerification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    return v0

    :cond_0
    move v0, v1

    .line 1513
    goto :goto_0
.end method

.method private getFingerprintScreenLockVerification()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1569
    const/4 v0, 0x0

    .line 1570
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_screen_lock"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1571
    :goto_0
    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFingerprintScreenLockVerification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    return v0

    :cond_0
    move v0, v1

    .line 1570
    goto :goto_0
.end method

.method private getFingerprintVerification()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1504
    const/4 v0, 0x0

    .line 1505
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_webpass"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1506
    :goto_0
    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFingerprintVerification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    return v0

    :cond_0
    move v0, v1

    .line 1505
    goto :goto_0
.end method

.method private getIndexForRegisteration()I
    .locals 1

    .prologue
    .line 1810
    const/4 v0, -0x1

    .line 1818
    .local v0, "index":I
    return v0
.end method

.method private getLoggingExtraValue(Z)Ljava/lang/String;
    .locals 5
    .param p1, "withFP"    # Z

    .prologue
    .line 1729
    const/4 v1, 0x0

    .line 1730
    .local v1, "passwordQuality":I
    const-string v0, ""

    .line 1732
    .local v0, "extraValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1733
    const-string v0, "Fingerprint"

    .line 1736
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    .line 1737
    const-string v2, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "passwordQuality : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    sparse-switch v1, :sswitch_data_0

    .line 1753
    :goto_0
    const-string v2, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extraValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    return-object v0

    .line 1742
    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PIN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1743
    goto :goto_0

    .line 1747
    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1748
    goto :goto_0

    .line 1750
    :sswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Pattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1739
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private isFingerprintDisabled()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 472
    const/4 v3, 0x0

    .line 473
    .local v3, "isDisabledByEDM":Z
    const/4 v2, 0x0

    .line 474
    .local v2, "isDisabledByDPM":Z
    const-string v7, "device_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 477
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_1

    .line 478
    const-string v5, "FpstFingerprintSettings"

    const-string v7, "isFingerprintDisabled :  dpm is NULL"

    invoke-static {v5, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_0
    :goto_0
    return v6

    .line 482
    :cond_1
    invoke-virtual {v0, v10}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_4

    move v2, v5

    .line 486
    :goto_1
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 487
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v9, "isBiometricAuthenticationEnabled"

    invoke-static {v7, v8, v9, v4}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 488
    .local v1, "isBiometricAuthenticationEnabled":I
    invoke-virtual {v0, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v7

    if-lez v7, :cond_2

    .line 489
    if-nez v1, :cond_2

    .line 490
    const-string v7, "FpstFingerprintSettings"

    const-string v8, "isBiometricAuthenticationEnabled == Utils.EDM_FALSE"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v3, 0x1

    .line 496
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

    .line 482
    goto :goto_1
.end method

.method private isSamsungAccountSignedIn(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1551
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 1552
    .local v0, "manager":Landroid/accounts/AccountManager;
    const-string v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1554
    .local v1, "samsungAccnts":[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 1555
    const-string v2, "FpstFingerprintSettings"

    const-string v3, "isHaveSA() - true"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const/4 v2, 0x1

    .line 1559
    :goto_0
    return v2

    .line 1558
    :cond_0
    const-string v2, "FpstFingerprintSettings"

    const-string v3, "isHaveSA() - false"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSharedDeviceEnabled()Z
    .locals 4

    .prologue
    .line 961
    const/4 v1, 0x0

    .line 962
    .local v1, "isSharedDevice":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 963
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 964
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    .line 967
    :cond_0
    return v1
.end method

.method private registerAuthenticate()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 369
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 370
    :cond_0
    const-string v0, "FpstFingerprintSettings"

    const-string v1, "registerAuthenticate : Skip"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    :goto_0
    return-void

    .line 374
    :cond_2
    const/4 v0, -0x1

    invoke-direct {p0, v3, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->updateIdentifiedFinger(ZI)V

    .line 376
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mInFingerprintLockout:Z

    if-nez v0, :cond_1

    .line 377
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 378
    const/16 v6, -0x2710

    .line 380
    .local v6, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 385
    .local v7, "attr":Landroid/os/Bundle;
    const-string v0, "privileged_attr"

    const/4 v2, 0x2

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 387
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-object v5, v1

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 381
    .end local v7    # "attr":Landroid/os/Bundle;
    :catch_0
    move-exception v8

    .line 382
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "FpstFingerprintSettings"

    const-string v2, "Failed to get current user id\n"

    invoke-static {v0, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private renameFingerPrint(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "renamedIndex"    # I
    .param p2, "renamedName"    # Ljava/lang/CharSequence;

    .prologue
    .line 1648
    const-string v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renameFingerPrint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;

    if-eqz v0, :cond_0

    .line 1651
    const-string v0, "FpstFingerprintSettings"

    const-string v1, "renameFingerPrint not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :goto_0
    return-void

    .line 1655
    :cond_0
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;

    invoke-direct {v0, p1, p2}, Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;

    .line 1656
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;

    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$8;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;->setConfirmationDialogFragmentListener(Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V

    .line 1681
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1683
    sget-object v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$Survey;->RENAME:Lcom/android/settings_ex/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings_ex/fingerprint/FingerprintSettings$Survey;)V

    goto :goto_0
.end method

.method private retryFingerprint()V
    .locals 4

    .prologue
    .line 344
    const-string v0, "FpstFingerprintSettings"

    const-string v1, "retryFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->retryFingerprintRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    return-void
.end method

.method private runRegister(Ljava/lang/String;)V
    .locals 4
    .param p1, "previousStage"    # Ljava/lang/String;

    .prologue
    .line 1785
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1786
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->showToastMsg()V

    .line 1807
    :goto_0
    return-void

    .line 1788
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1789
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1790
    const-string v2, "fingerIndex"

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getIndexForRegisteration()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1791
    const-string v2, "previousStage"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1792
    const-string v2, "identifyFingerprint"

    iget-boolean v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1793
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1794
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mToken:[B

    if-eqz v2, :cond_1

    .line 1795
    const-string v2, "hw_auth_token"

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mToken:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1798
    :cond_1
    :try_start_0
    iget v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v2, :cond_2

    .line 1799
    const/16 v2, 0x3e9

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1803
    :catch_0
    move-exception v0

    .line 1804
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1801
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/16 v2, 0x3e8

    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1539
    const/4 v0, 0x0

    .line 1541
    .local v0, "result":Z
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 1542
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1545
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_samsungaccount_confirmed"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 1546
    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFingerPrintOnSamsungAccountConfirmed:result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    return v0
.end method

.method private setFingerprintLock()V
    .locals 8

    .prologue
    const/4 v0, 0x5

    .line 1577
    const-string v1, "FpstFingerprintSettings"

    const-string v2, "setFingerprintLock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerprintScreenLockEnable()V

    .line 1581
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1582
    .local v7, "warningClearIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1583
    if-eqz v7, :cond_0

    .line 1584
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1588
    :cond_0
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "screen-lock enabled : fingerprint"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1591
    return-void
.end method

.method private setFingerprintPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1424
    const-string v3, "register_category"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    .line 1426
    const-string v3, "feature_category"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFeatureCategory:Landroid/preference/PreferenceCategory;

    .line 1427
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    .line 1428
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mDeviceProvisioned:I

    .line 1433
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 1435
    const-string v3, "support_web_signin"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    .line 1437
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_0

    .line 1438
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1440
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.sec.android.app.sbrowser"

    invoke-static {v3, v4}, Lcom/android/settings_ex/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1441
    const-string v3, "feature_category"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1445
    :cond_0
    const-string v3, "support_samsung_account"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    .line 1446
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    .line 1447
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1449
    :cond_1
    const-string v3, "register"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mRegister:Landroid/preference/Preference;

    .line 1451
    const-string v3, "alipay_payment"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mAlipayPayment:Landroid/preference/Preference;

    .line 1452
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mAlipayPayment:Landroid/preference/Preference;

    if-eqz v3, :cond_3

    .line 1453
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.eg.android.AlipayGphone"

    invoke-static {v3, v4}, Lcom/android/settings_ex/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1454
    :cond_2
    const-string v3, "feature_category"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mAlipayPayment:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1458
    :cond_3
    const-string v3, "samsung_pay"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungPay:Landroid/preference/Preference;

    .line 1459
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungPay:Landroid/preference/Preference;

    if-eqz v3, :cond_4

    .line 1460
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.android.spay"

    invoke-static {v3, v4}, Lcom/android/settings_ex/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1461
    const-string v3, "FpstFingerprintSettings"

    const-string v4, "Remove the SamsungPay"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    const-string v3, "feature_category"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungPay:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1476
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->isSharedDeviceEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1477
    const-string v3, "set_screen_lock"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    .line 1478
    const-string v3, "unlock_category"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 1479
    .local v1, "mUnlockGroup":Landroid/preference/PreferenceGroup;
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 1480
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1490
    .end local v1    # "mUnlockGroup":Landroid/preference/PreferenceGroup;
    :cond_5
    :goto_1
    sget v3, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mDeviceProvisioned:I

    if-eq v3, v6, :cond_6

    .line 1492
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1494
    :cond_6
    return-void

    .line 1465
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.spay"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1466
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v3, "0.0.00"

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1467
    const-string v3, "FpstFingerprintSettings"

    const-string v4, "Remove the SamsungPay. Stub application isntalled"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    const-string v3, "feature_category"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungPay:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1470
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1471
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FpstFingerprintSettings"

    const-string v4, "Getting information of SamsungPay make the Exception!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1483
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    const-string v3, "set_screen_lock"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    .line 1484
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_5

    .line 1485
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1
.end method

.method private setFingerprintScreenLockDisable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1603
    const-string v0, "FpstFingerprintSettings"

    const-string v1, "setFingerprintScreenLockDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    invoke-direct {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerprintScreenLockVerification(Z)V

    .line 1605
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    .line 1606
    return-void
.end method

.method private setFingerprintScreenLockEnable()V
    .locals 4

    .prologue
    .line 1594
    const-string v1, "FpstFingerprintSettings"

    const-string v2, "setFingerprintScreenLockEnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerprintScreenLockVerification(Z)V

    .line 1596
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    .line 1598
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.FINGERPRINT_LOCK_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1599
    .local v0, "message":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1600
    return-void
.end method

.method private setFingerprintScreenLockVerification(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 1564
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_screen_lock"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1565
    const-string v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFingerprintScreenLockVerification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    return-void

    .line 1564
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFingerprintVerification(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_webpass"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1499
    const-string v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFingerprintVerification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    return-void

    .line 1498
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTwselectionChecklist(ZI)V
    .locals 4
    .param p1, "val"    # Z
    .param p2, "position"    # I

    .prologue
    .line 769
    if-gez p2, :cond_0

    .line 770
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/android/settings_ex/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 771
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->twselectionChecklist:[Z

    aput-boolean p1, v1, v0

    .line 770
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    .end local v0    # "i":I
    :cond_0
    iget v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge p2, v1, :cond_3

    .line 774
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->twselectionChecklist:[Z

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->twselectionChecklist:[Z

    aget-boolean v1, v1, p2

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    aput-boolean v1, v2, p2

    .line 778
    :cond_1
    :goto_2
    return-void

    .line 774
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 776
    :cond_3
    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTwselectionChecklist, postion error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setUseFingerprintForSA(Landroid/content/Context;I)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1526
    const/4 v0, 0x0

    .line 1528
    .local v0, "result":Z
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 1529
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1532
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_used_samsungaccount"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 1533
    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFingerPrintOnSamsungAccountUsed:result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    return v0
.end method

.method private showHuntipForFingerprintIdentification()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 783
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "pref_huntip"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 784
    .local v1, "isFirstHuntip":Ljava/lang/Boolean;
    const-string v3, "FpstFingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showHuntipForFingerprintIdentification [mEnrolledFingerCount, isFirstHuntip] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 787
    iget-boolean v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->skipHuntip:Z

    if-nez v3, :cond_2

    .line 789
    invoke-static {}, Lcom/android/settings_ex/SettingsActivity;->getSettingsActivityContext()Landroid/content/Context;

    move-result-object v2

    .line 790
    .local v2, "mContext":Landroid/content/Context;
    if-eqz v2, :cond_1

    .line 791
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_huntip"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 793
    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    .line 794
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0400d5

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 796
    .local v0, "expandedView":Landroid/widget/RemoteViews;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0200d9

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    new-array v4, v6, [J

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mBuilder:Landroid/app/Notification;

    .line 801
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x64

    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mBuilder:Landroid/app/Notification;

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 804
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mH:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings_ex/fingerprint/FingerprintSettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$5;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)V

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 820
    .end local v0    # "expandedView":Landroid/widget/RemoteViews;
    .end local v2    # "mContext":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 813
    .restart local v2    # "mContext":Landroid/content/Context;
    :cond_1
    const-string v3, "FpstFingerprintSettings"

    const-string v4, "showHuntipForFingerprintIdentification : SettingsActivity is null, Skip Huntip, will try again"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 816
    .end local v2    # "mContext":Landroid/content/Context;
    :cond_2
    iput-boolean v6, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->skipHuntip:Z

    .line 817
    const-string v3, "FpstFingerprintSettings"

    const-string v4, "showHuntipForFingerprintIdentification : skipHuntip is true, Skip Huntip, will try again"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showToastMsg()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1779
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e14c4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0e11f6

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1780
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1782
    return-void
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1769
    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivityForResultWrapper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1772
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1776
    :goto_0
    return-void

    .line 1773
    :catch_0
    move-exception v0

    .line 1774
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startActivityWrapper(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1759
    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivityWrapper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1762
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1766
    :goto_0
    return-void

    .line 1763
    :catch_0
    move-exception v0

    .line 1764
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startSelectListUI(I[Z)V
    .locals 7
    .param p1, "fId"    # I
    .param p2, "twChecklist"    # [Z

    .prologue
    .line 1622
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    .line 1623
    const-string v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSelectListUI : fId["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], twChecklist["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1625
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "selected_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1626
    if-eqz p2, :cond_0

    .line 1627
    const-string v0, "twmultiselected_id"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 1639
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.settings.fingerprint.FingerprintSettings_MultiSelect"

    const/16 v4, 0x3ef

    const v5, 0x7f0e11f6

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 1645
    return-void
.end method

.method private stopFingerprint()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const-string v0, "FpstFingerprintSettings"

    const-string v1, "stopFingerprint cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->retryFingerprintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 274
    return-void
.end method

.method private updateAddPreference()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 592
    :try_start_0
    iget v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-static {}, Lcom/android/settings_ex/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 593
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 594
    .local v2, "pr":Landroid/preference/Preference;
    const-string v4, "key_fingerprint_add"

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 595
    const v4, 0x7f0e1234

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 596
    const v4, 0x7f0400e3

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 597
    const v4, 0x7f0400e6

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 598
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 599
    const-string v4, "key_fingerprint_add"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mRegister:Landroid/preference/Preference;

    .line 602
    .end local v2    # "pr":Landroid/preference/Preference;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "keyguard"

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 604
    .local v1, "keyguardMgr":Landroid/app/KeyguardManager;
    iget v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v4, :cond_1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v4

    if-nez v4, :cond_1

    .line 605
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 606
    .local v3, "pr_pass":Landroid/preference/Preference;
    const-string v4, "change_reset_password"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 607
    const v4, 0x7f0e122f

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 608
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 609
    const-string v4, "change_reset_password"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mResetPassword:Landroid/preference/Preference;

    .line 611
    const-string v4, "FpstFingerprintSettings"

    const-string v7, "updateAddPreference [add Change Reset Password]"

    invoke-static {v4, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .end local v3    # "pr_pass":Landroid/preference/Preference;
    :cond_1
    const-string v4, "FpstFingerprintSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAddPreference [mEnrolledFingerCount] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    .end local v1    # "keyguardMgr":Landroid/app/KeyguardManager;
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    .line 621
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getFingerprintVerification()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 623
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_3

    .line 624
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v4

    if-ne v4, v5, :cond_6

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountConfirmedVerification()Z

    move-result v4

    if-ne v4, v5, :cond_6

    .line 627
    :try_start_1
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-direct {p0, v4, v7}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 628
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 629
    const-string v7, "FpstFingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SAMSUNGACCOUNT updateRegisterPreference setChecked : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v9, "fingerprint_used_samsungaccount"

    const/4 v10, 0x0

    invoke-static {v4, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 645
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->isSharedDeviceEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 646
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->isFingerprintDisabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 647
    const-string v4, "FpstFingerprintSettings"

    const-string v5, "Screen lock switch disable!"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 649
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 650
    invoke-direct {p0, v6}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerprintScreenLockVerification(Z)V

    .line 662
    :cond_4
    :goto_3
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v4, "FpstFingerprintSettings"

    const-string v7, "updateAddPreference : IllegalStateException"

    invoke-static {v4, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_5
    move v4, v6

    .line 629
    goto :goto_1

    .line 630
    :catch_1
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 635
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_2
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {p0, v4, v7}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 636
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {p0, v4, v7}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 637
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 638
    const-string v7, "FpstFingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SAMSUNGACCOUNT updateRegisterPreference setChecked : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v9, "fingerprint_used_samsungaccount"

    const/4 v10, 0x0

    invoke-static {v4, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_7

    move v4, v5

    :goto_4
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 639
    :catch_2
    move-exception v0

    .line 640
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    move v4, v6

    .line 638
    goto :goto_4

    .line 652
    :cond_8
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 653
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v4

    if-ne v4, v5, :cond_9

    .line 654
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 655
    invoke-direct {p0, v5}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerprintScreenLockVerification(Z)V

    goto :goto_3

    .line 657
    :cond_9
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 658
    invoke-direct {p0, v6}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerprintScreenLockVerification(Z)V

    goto :goto_3
.end method

.method private updateEditbtn()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 349
    const-string v1, "FpstFingerprintSettings"

    const-string v2, "updateEditbtn"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_button_background"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 353
    .local v0, "isEnabledShowBtnBg":Z
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v1

    if-nez v1, :cond_2

    .line 354
    :cond_1
    const-string v1, "FpstFingerprintSettings"

    const-string v2, "skip update Edit BG catetory"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    return-void

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0400d6

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    goto :goto_0
.end method

.method private declared-synchronized updateIdentifiedFinger(ZI)V
    .locals 12
    .param p1, "mode"    # Z
    .param p2, "idx"    # I

    .prologue
    const/4 v11, 0x1

    .line 1380
    monitor-enter p0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    iget v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge v4, v8, :cond_5

    .line 1381
    iget-object v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->items:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v8}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    .line 1382
    .local v2, "fId":I
    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->genKey(I)Ljava/lang/String;

    move-result-object v5

    .line 1383
    .local v5, "prefName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 1384
    .local v3, "fpref":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-virtual {v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->getView()Landroid/view/View;

    move-result-object v7

    .line 1385
    .local v7, "view":Landroid/view/View;
    const/4 v6, 0x0

    .line 1387
    .local v6, "tv":Landroid/widget/TextView;
    if-eqz v7, :cond_0

    .line 1388
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "tv":Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 1390
    .restart local v6    # "tv":Landroid/widget/TextView;
    :cond_0
    if-eqz v6, :cond_3

    .line 1391
    iget-object v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    if-nez v8, :cond_1

    .line 1392
    invoke-virtual {v6}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    .line 1394
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    if-nez v8, :cond_2

    .line 1395
    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    .line 1398
    :cond_2
    if-ne p1, v11, :cond_4

    .line 1399
    if-ne p2, v2, :cond_3

    .line 1400
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1401
    iget v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->colorId_identifiedId:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1402
    const-string v8, "FpstFingerprintSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateIdentifiedFinger identified["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1406
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->origin_typeface:Landroid/graphics/Typeface;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1407
    iget-object v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->origin_color_identifiedId:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1408
    const-string v8, "FpstFingerprintSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateIdentifiedFinger["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1414
    .end local v2    # "fId":I
    .end local v3    # "fpref":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;
    .end local v5    # "prefName":Ljava/lang/String;
    .end local v6    # "tv":Landroid/widget/TextView;
    .end local v7    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 1415
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v8, "FpstFingerprintSettings"

    const-string v9, "updateIdentifiedFinger : IllegalStateException"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1421
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    .line 1417
    :catch_1
    move-exception v1

    .line 1418
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "FpstFingerprintSettings"

    const-string v9, "updateIdentifiedFinger : Exception"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1380
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private updatePreferences()V
    .locals 0

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 824
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->retryFingerprint()V

    .line 826
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->buildPreferenceForCOM()V

    .line 828
    return-void
.end method

.method private updateTwMultiSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 761
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-ge p1, v0, :cond_0

    .line 762
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setTwselectionChecklist(ZI)V

    .line 766
    :goto_0
    return-void

    .line 764
    :cond_0
    const-string v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTwMultiSelected : postion error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public editKeyPressed()V
    .locals 2

    .prologue
    .line 1989
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startSelectListUI(I[Z)V

    .line 1990
    return-void
.end method

.method protected finishFingerprintSettings()V
    .locals 2

    .prologue
    .line 293
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 300
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 309
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintRenameDialog;->cancelRenameDialog()V

    .line 312
    :cond_2
    return-void

    .line 301
    :cond_3
    sget-boolean v0, Lcom/android/settings_ex/fingerprint/FingerprintEntry;->isSearchEntry:Z

    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->finishFragment()V

    goto :goto_0

    .line 306
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1054
    const v0, 0x7f0e0d96

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 394
    const/16 v0, 0x31

    return v0
.end method

.method protected handleError(ILjava/lang/CharSequence;)V
    .locals 6
    .param p1, "errMsgId"    # I
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 318
    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleError errMsgId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 321
    packed-switch p1, :pswitch_data_0

    .line 334
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 335
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 336
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 341
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    :pswitch_1
    return-void

    .line 325
    :pswitch_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mInFingerprintLockout:Z

    .line 327
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1059
    invoke-super/range {p0 .. p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1060
    const-string v10, "FpstFingerprintSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "=====onActivityResult requestCode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resultCode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/16 v10, 0x65

    move/from16 v0, p1

    if-ne v0, v10, :cond_4

    .line 1062
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_2

    .line 1064
    :try_start_0
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 1065
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 1066
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountConfirmedVerification()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1067
    const-string v11, "FpstFingerprintSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SAMSUNGACCOUNT_EXISTING_REQUEST RESULT_OK setChecked : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "fingerprint_used_samsungaccount"

    const/4 v14, 0x0

    invoke-static {v10, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    :cond_0
    :goto_1
    return-void

    .line 1067
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1068
    :catch_0
    move-exception v1

    .line 1069
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1073
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 1074
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 1075
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountConfirmedVerification()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1076
    const-string v11, "FpstFingerprintSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SAMSUNGACCOUNT_EXISTING_REQUEST RESULT_NOK setChecked : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "fingerprint_used_samsungaccount"

    const/4 v14, 0x0

    invoke-static {v10, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_3

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1077
    :catch_1
    move-exception v1

    .line 1078
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1076
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 1081
    :cond_4
    const/16 v10, 0x66

    move/from16 v0, p1

    if-ne v0, v10, :cond_9

    .line 1082
    const/4 v10, -0x1

    move/from16 v0, p2

    if-eq v0, v10, :cond_5

    const/4 v10, 0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_7

    .line 1084
    :cond_5
    :try_start_2
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 1085
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 1086
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountConfirmedVerification()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1087
    const-string v11, "FpstFingerprintSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SAMSUNGACCOUNT_REQUEST RESULT_OK setChecked : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "fingerprint_used_samsungaccount"

    const/4 v14, 0x0

    invoke-static {v10, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_6

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 1088
    :catch_2
    move-exception v1

    .line 1089
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1087
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 1093
    :cond_7
    :try_start_3
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 1094
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 1095
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountConfirmedVerification()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1096
    const-string v11, "FpstFingerprintSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SAMSUNGACCOUNT_REQUEST RESULT_NOK setChecked : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "fingerprint_used_samsungaccount"

    const/4 v14, 0x0

    invoke-static {v10, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_8

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 1097
    :catch_3
    move-exception v1

    .line 1098
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1096
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v10, 0x0

    goto :goto_4

    .line 1101
    :cond_9
    const/16 v10, 0x3e8

    move/from16 v0, p1

    if-eq v0, v10, :cond_a

    const/16 v10, 0x3e9

    move/from16 v0, p1

    if-ne v0, v10, :cond_14

    .line 1103
    :cond_a
    if-eqz p3, :cond_b

    .line 1104
    const-string v10, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mToken:[B

    .line 1106
    :cond_b
    const/4 v10, -0x1

    move/from16 v0, p2

    if-eq v0, v10, :cond_c

    const/4 v10, 0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_12

    .line 1108
    :cond_c
    const/4 v4, 0x0

    .line 1109
    .local v4, "mStage":Ljava/lang/String;
    if-eqz p3, :cond_d

    .line 1110
    :try_start_4
    const-string v10, "previousStage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1112
    :cond_d
    const-string v10, "support_web_signin"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1113
    const-string v10, "FpstFingerprintSettings"

    const-string v11, "previos stage is WebSingin"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    .line 1117
    :cond_e
    const-string v10, "samsung_pay"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1118
    const-string v10, "FpstFingerprintSettings"

    const-string v11, "Fingerprint registered successfully! Launch the SamsungPay"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1120
    .local v3, "mIntent":Landroid/content/Intent;
    const-string v10, "com.samsung.android.spay"

    const-string v11, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1121
    const-string v10, "previousStage"

    const-string v11, "FingerprintSettings"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    const/16 v10, 0x3ed

    invoke-direct {p0, v3, v10}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    .line 1123
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->skipHuntip:Z

    .line 1126
    .end local v3    # "mIntent":Landroid/content/Intent;
    :cond_f
    const-string v10, "alipay_payment"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1127
    const-string v10, "FpstFingerprintSettings"

    const-string v11, "Fingerprint registered successfully! Launch the AliPay"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1129
    .restart local v3    # "mIntent":Landroid/content/Intent;
    const-string v9, "alipays://platformapi/startapp?appId=20000082&isToRegisterFingerprint=YES"

    .line 1130
    .local v9, "url":Ljava/lang/String;
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1131
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1132
    invoke-direct {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    .line 1133
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->skipHuntip:Z

    .line 1136
    .end local v3    # "mIntent":Landroid/content/Intent;
    .end local v9    # "url":Ljava/lang/String;
    :cond_10
    const-string v10, "support_samsung_account"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1137
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->skipHuntip:Z

    .line 1138
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v10}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_11

    .line 1140
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1142
    .restart local v3    # "mIntent":Landroid/content/Intent;
    const-string v10, "client_id"

    const-string v11, "s5d189ajvs"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1143
    const-string v10, "client_secret"

    const-string v11, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1154
    :try_start_5
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1159
    :goto_5
    :try_start_6
    const-string v10, "FpstFingerprintSettings"

    const-string v11, "SamsungAccountSignedIn is True."

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const/16 v10, 0x65

    invoke-direct {p0, v3, v10}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 1181
    .end local v3    # "mIntent":Landroid/content/Intent;
    :catch_4
    move-exception v1

    .line 1182
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v10, "FpstFingerprintSettings"

    const-string v11, "data is null!!"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1156
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "mIntent":Landroid/content/Intent;
    :catch_5
    move-exception v1

    .line 1157
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1162
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "mIntent":Landroid/content/Intent;
    :cond_11
    const-string v10, "FpstFingerprintSettings"

    const-string v11, "SamsungAccountSignedIn is False."

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    .line 1167
    .local v5, "manager":Landroid/accounts/AccountManager;
    const-string v10, "com.osp.app.signin"

    invoke-virtual {v5, v10}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 1168
    .local v8, "samsungAccnts":[Landroid/accounts/Account;
    array-length v7, v8

    .line 1169
    .local v7, "returnvalue_sa":I
    if-nez v7, :cond_0

    .line 1170
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1171
    .local v6, "packageName":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1174
    .restart local v3    # "mIntent":Landroid/content/Intent;
    const-string v10, "mypackage"

    invoke-virtual {v3, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    const-string v10, "OSP_VER"

    const-string v11, "OSP_02"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    const-string v10, "MODE"

    const-string v11, "ADD_ACCOUNT"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1177
    const/16 v10, 0x66

    invoke-direct {p0, v3, v10}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    .line 1184
    .end local v3    # "mIntent":Landroid/content/Intent;
    .end local v4    # "mStage":Ljava/lang/String;
    .end local v5    # "manager":Landroid/accounts/AccountManager;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "returnvalue_sa":I
    .end local v8    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_12
    if-nez p2, :cond_13

    .line 1185
    if-eqz p3, :cond_0

    .line 1186
    const-string v10, "enrollResult"

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1187
    .local v2, "enrollResult":I
    const/4 v10, 0x1

    if-ne v2, v10, :cond_0

    .line 1189
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    .line 1190
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto/16 :goto_1

    .line 1195
    .end local v2    # "enrollResult":I
    :cond_13
    :try_start_8
    const-string v10, "FpstFingerprintSettings"

    const-string v11, "SAMSUNGACCOUNT : there is no case"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 1197
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 1198
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountConfirmedVerification()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_1

    .line 1199
    :catch_6
    move-exception v1

    .line 1200
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1204
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_14
    const/16 v10, 0x3ed

    move/from16 v0, p1

    if-ne v0, v10, :cond_15

    .line 1205
    const-string v10, "FpstFingerprintSettings"

    const-string v11, "SAMSUNGPAY Finished!"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1206
    :cond_15
    const/16 v10, 0xc9

    move/from16 v0, p1

    if-ne v0, v10, :cond_17

    .line 1207
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_16

    .line 1208
    const-string v10, "FpstFingerprintSettings"

    const-string v11, "onActivityResult ChooseLockGeneric Granted"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    if-eqz p3, :cond_0

    .line 1210
    const-string v10, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mToken:[B

    goto/16 :goto_1

    .line 1214
    :cond_16
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->finish()V

    goto/16 :goto_1

    .line 1216
    :cond_17
    const/16 v10, 0x3ee

    move/from16 v0, p1

    if-ne v0, v10, :cond_19

    .line 1217
    if-eqz p3, :cond_18

    .line 1218
    const-string v10, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mToken:[B

    .line 1220
    :cond_18
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_0

    .line 1221
    iget-object v10, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getFingerprintScreenLockVerification()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 1223
    :cond_19
    const/16 v10, 0x3ef

    move/from16 v0, p1

    if-ne v0, v10, :cond_0

    .line 1224
    const-string v10, "FpstFingerprintSettings"

    const-string v11, "activity. FINGERPRINT_MULTI_SELECT"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    if-nez p2, :cond_0

    .line 1226
    if-eqz p3, :cond_0

    .line 1227
    const-string v10, "cancelsession"

    const-string v11, "reason"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1228
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->isKeepEnrollSession:Z

    .line 1229
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    goto/16 :goto_1
.end method

.method public onCancelSamsungAccountDialog()V
    .locals 3

    .prologue
    .line 1895
    const-string v1, "FpstFingerprintSettings"

    const-string v2, "onCancelSamsungAccountDialog: "

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 1898
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 1899
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1903
    :goto_0
    return-void

    .line 1900
    :catch_0
    move-exception v0

    .line 1901
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCancelWebSigninDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1930
    const-string v0, "FpstFingerprintSettings"

    const-string v1, "onCancelWebSigninDialog: "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    invoke-direct {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    .line 1932
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1933
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1301
    const-string v0, "FpstFingerprintSettings"

    const-string v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1303
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 399
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 400
    const-string v3, "FpstFingerprintSettings"

    const-string v4, "=====onCreate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 403
    .local v1, "args":Landroid/os/Bundle;
    const-string v3, "tokenFromLock"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 404
    .local v2, "token":[B
    const-string v3, "identifyFingerprint"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    .line 405
    if-eqz v2, :cond_0

    .line 406
    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mToken:[B

    .line 409
    :cond_0
    if-eqz p1, :cond_1

    .line 410
    const-string v3, "hw_auth_token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mToken:[B

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 415
    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "fingerprint"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 417
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 418
    const v3, 0x7f080053

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->addPreferencesFromResource(I)V

    .line 419
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings_ex/SettingsActivity$onEditButtonClicked;)V

    .line 423
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setHasOptionsMenu(Z)V

    .line 426
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->colorId_identifiedId:I

    .line 427
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 434
    return-void

    .line 421
    :cond_2
    const v3, 0x7f080052

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v8, 0x7f0e0f89

    const/4 v7, 0x2

    const v6, 0x7f0e1254

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1307
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1309
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 1311
    .local v0, "countryCode":Ljava/lang/String;
    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====onCreateOptionsMenu : enrolledFingerprintNum["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    .line 1315
    const-string v1, "USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1316
    iget v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v1, :cond_1

    .line 1317
    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1318
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 1323
    :cond_2
    iget v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v1, :cond_4

    .line 1324
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1325
    :cond_3
    invoke-interface {p1, v4, v7, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 1328
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1329
    :cond_5
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1330
    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1331
    invoke-interface {p1, v4, v7, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1333
    :cond_6
    invoke-interface {p1, v4, v7, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 1336
    :cond_7
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1337
    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 1244
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 1245
    const-string v1, "FpstFingerprintSettings"

    const-string v2, "=====onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-lez v1, :cond_0

    .line 1248
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/SettingsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings_ex/SettingsActivity$onEditButtonClicked;)V

    .line 1252
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result v0

    .line 1253
    .local v0, "result":I
    if-gez v0, :cond_1

    .line 1254
    const-string v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1346
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1368
    const/4 v1, 0x0

    .line 1370
    :goto_0
    return v1

    .line 1349
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1350
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1351
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:appid"

    const-string v2, "finger_scanner"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1352
    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    .line 1370
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1354
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1355
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1356
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "fingerprints"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1357
    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    goto :goto_1

    .line 1362
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1363
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startSelectListUI(I[Z)V

    goto :goto_1

    .line 1346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 832
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 833
    const-string v0, "FpstFingerprintSettings"

    const-string v1, "=====onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 838
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->cancelAndSessionEnd()V

    .line 839
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 973
    const-string v7, "FpstFingerprintSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=====onPreferenceChange : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "pref_websignin_noti"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->websignin_do_not_show_again:Z

    .line 975
    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "pref_samsungaccount_noti"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->samsungaccount_do_not_show_again:Z

    .line 977
    const/4 v4, 0x1

    .line 978
    .local v4, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 979
    .local v1, "key":Ljava/lang/String;
    const-string v5, "fingerprint_enable_keyguard_toggle"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1049
    .end local v4    # "result":Z
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return v4

    .line 981
    .restart local v4    # "result":Z
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, p2

    .line 982
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne v5, v9, :cond_1

    .line 992
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startDisclaimerFromWebSignin()Z

    move-result v4

    goto :goto_0

    .line 994
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    goto :goto_0

    .line 996
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 997
    iput-boolean v9, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    .line 998
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne v5, v9, :cond_3

    .line 999
    iput-boolean v9, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->samsungaccount_objvalue:Z

    .line 1010
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v4

    goto :goto_0

    .line 1014
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 1015
    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 1016
    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1017
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->samsungaccount_objvalue:Z

    .line 1018
    const-string v5, "FpstFingerprintSettings"

    const-string v6, "[onPreferenceChange]Samsung Account setChecked is False."

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1023
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1024
    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v3

    .line 1025
    .local v3, "passwordQuality":I
    const-string v5, "FpstFingerprintSettings"

    const-string v7, "passwordQuality : passwordQuality"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p2

    .line 1027
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1028
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerprintScreenLockDisable()V

    .line 1029
    sget-object v5, Lcom/android/settings_ex/fingerprint/FingerprintSettings$Survey;->FINGERPRINT_LOCK_DISABLE:Lcom/android/settings_ex/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings_ex/fingerprint/FingerprintSettings$Survey;)V

    goto/16 :goto_0

    .line 1030
    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x1000

    if-eq v3, v5, :cond_6

    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1033
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerprintLock()V

    .line 1034
    sget-object v5, Lcom/android/settings_ex/fingerprint/FingerprintSettings$Survey;->FINGERPRINT_LOCK_ENABLE:Lcom/android/settings_ex/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings_ex/fingerprint/FingerprintSettings$Survey;)V

    goto/16 :goto_0

    .line 1036
    :cond_6
    const-string v5, "FpstFingerprintSettings"

    const-string v7, "Launch the FingerprintLockSettings"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1038
    .local v2, "mIntent":Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-string v7, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    const-string v5, "previousStage"

    const-string v7, "fingerprint_settings_set_screen_lock"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    const-string v5, "fingerprintlockEnable"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1041
    const-string v5, "hw_auth_token"

    iget-object v7, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mToken:[B

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1042
    const-string v5, "identifyFingerprint"

    iget-boolean v7, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mIdentifyFingerprint:Z

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1043
    const/16 v5, 0x3ee

    invoke-direct {p0, v2, v5}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    move v4, v6

    .line 1044
    goto/16 :goto_0

    .line 1047
    .end local v2    # "mIntent":Landroid/content/Intent;
    .end local v3    # "passwordQuality":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    const-string v5, "FpstFingerprintSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 849
    const-string v8, "FpstFingerprintSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=====onPreferenceTreeClick"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 851
    .local v3, "key":Ljava/lang/String;
    const-string v8, "key_fingerprint_add"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 857
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->stopFingerprint()V

    .line 858
    iget-object v7, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/settings_ex/fingerprint/FingerprintSettings$6;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$6;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 955
    :cond_0
    :goto_0
    return v6

    .line 864
    :cond_1
    const-string v8, "change_reset_password"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 865
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 866
    .local v4, "mIntent":Landroid/content/Intent;
    const-string v7, "previousStage"

    const-string v8, "FingerprintSettings_changepassword"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.fingerprint.FingerprintPassword"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    const/16 v7, 0x3ea

    invoke-direct {p0, v4, v7}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_0

    .line 869
    .end local v4    # "mIntent":Landroid/content/Intent;
    :cond_2
    instance-of v8, p2, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;

    if-eqz v8, :cond_3

    move-object v2, p2

    .line 870
    check-cast v2, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 871
    .local v2, "fpref":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;
    invoke-virtual {v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    .line 873
    .local v1, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->renameFingerPrint(ILjava/lang/CharSequence;)V

    .line 874
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0

    .line 875
    .end local v1    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .end local v2    # "fpref":Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintPreference;
    :cond_3
    const-string v8, "support_samsung_account"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 876
    iget-object v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v9, "pref_samsungaccount_noti"

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->samsungaccount_do_not_show_again:Z

    .line 878
    iget-boolean v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->samsungaccount_objvalue:Z

    if-ne v8, v6, :cond_5

    .line 898
    iget-boolean v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    if-nez v8, :cond_4

    .line 899
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v6

    goto :goto_0

    .line 902
    :cond_4
    const-string v8, "FpstFingerprintSettings"

    const-string v9, "through_onpreferencechange is true onPreferenceTreeClick"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :goto_1
    iput-boolean v7, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    goto :goto_0

    .line 905
    :cond_5
    iget-boolean v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->through_onpreferencechange:Z

    if-nez v8, :cond_6

    .line 906
    const-string v6, "FpstFingerprintSettings"

    const-string v7, "through_onpreferencechange is false, samsungaccount_objvalue is false onPreferenceTreeClick"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v6

    goto :goto_0

    .line 910
    :cond_6
    :try_start_0
    iget-object v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setUseFingerprintForSA(Landroid/content/Context;I)Z

    .line 911
    iget-object v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z

    .line 912
    iget-object v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 913
    const-string v8, "FpstFingerprintSettings"

    const-string v9, "[onPreferenceTreeClick]Samsung Account setChecked is False."

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 921
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v8, "alipay_payment"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 922
    iget v7, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v7, :cond_9

    .line 923
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 924
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->showToastMsg()V

    goto/16 :goto_0

    .line 926
    :cond_8
    const-string v7, "FpstFingerprintSettings"

    const-string v8, "There is no registered fingerprint"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string v7, "alipay_payment"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 930
    :cond_9
    const-string v7, "FpstFingerprintSettings"

    const-string v8, "There is Registered Fingerprint. Launch the AliPay"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 932
    .restart local v4    # "mIntent":Landroid/content/Intent;
    const-string v5, "alipays://platformapi/startapp?appId=20000082&isToRegisterFingerprint=YES"

    .line 933
    .local v5, "url":Ljava/lang/String;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 935
    invoke-direct {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 937
    .end local v4    # "mIntent":Landroid/content/Intent;
    .end local v5    # "url":Ljava/lang/String;
    :cond_a
    const-string v8, "samsung_pay"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 939
    iget v6, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v6, :cond_c

    .line 940
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 941
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->showToastMsg()V

    :goto_2
    move v6, v7

    .line 953
    goto/16 :goto_0

    .line 943
    :cond_b
    const-string v6, "FpstFingerprintSettings"

    const-string v8, "There is no registered fingerprint"

    invoke-static {v6, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-string v6, "samsung_pay"

    invoke-direct {p0, v6}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_2

    .line 947
    :cond_c
    const-string v6, "FpstFingerprintSettings"

    const-string v8, "There is Registered Fingerprint. Launch the SamsungPay"

    invoke-static {v6, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 949
    .restart local v4    # "mIntent":Landroid/content/Intent;
    const-string v6, "com.samsung.android.spay"

    const-string v8, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 950
    const-string v6, "previousStage"

    const-string v8, "FingerprintSettings"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 951
    invoke-direct {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startActivityWrapper(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 670
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 671
    const-string v0, "FpstFingerprintSettings"

    const-string v1, "=====onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->updatePreferences()V

    .line 676
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getFingerprintVerification()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getFingerprintSamsungAccountConfirmedVerification()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 681
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 682
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->isSharedDeviceEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 686
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->isFingerprintDisabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 687
    const-string v0, "FpstFingerprintSettings"

    const-string v1, "Screen lock switch disable!"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 689
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 690
    invoke-direct {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerprintScreenLockVerification(Z)V

    .line 702
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mToken:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-nez v0, :cond_3

    .line 703
    const-string v0, "FpstFingerprintSettings"

    const-string v1, "Enroll session close."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iput-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mToken:[B

    .line 705
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    .line 708
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    .line 709
    sget-object v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintSettings$ItemLongClickListener;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$ItemLongClickListener;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 712
    sget-object v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnableDragBlock(Z)V

    .line 713
    sget-object v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTwMultiSelectedListener(Landroid/widget/AdapterView$OnTwMultiSelectedListener;)V

    .line 715
    const/4 v0, -0x1

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->updateIdentifiedFinger(ZI)V

    .line 723
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->showHuntipForFingerprintIdentification()V

    .line 725
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mToken:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-nez v0, :cond_4

    .line 726
    const-string v0, "FpstFingerprintSettings"

    const-string v1, "Session closed! Token must be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iput-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mToken:[B

    .line 729
    :cond_4
    return-void

    .line 692
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 693
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v0

    if-ne v0, v3, :cond_6

    .line 694
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 695
    invoke-direct {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerprintScreenLockVerification(Z)V

    goto :goto_0

    .line 697
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 698
    invoke-direct {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerprintScreenLockVerification(Z)V

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 843
    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 845
    return-void
.end method

.method public onStartDisclaimerFromSamsungAccountDialog()V
    .locals 0

    .prologue
    .line 1890
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startDisclaimerFromSamsungAccount()Z

    .line 1891
    return-void
.end method

.method public onStartDisclaimerFromWebSigninDialog()V
    .locals 0

    .prologue
    .line 1925
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startDisclaimerFromWebSignin()Z

    .line 1926
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 458
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 459
    const-string v0, "FpstFingerprintSettings"

    const-string v1, "onViewCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-void
.end method

.method protected sendSurvey(Lcom/android/settings_ex/fingerprint/FingerprintSettings$Survey;)V
    .locals 4
    .param p1, "sv"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$Survey;

    .prologue
    .line 1688
    const-string v2, "TRUE"

    sget-object v3, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1689
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1690
    .local v0, "broadcastIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1692
    .local v1, "cv":Landroid/content/ContentValues;
    sget-object v2, Lcom/android/settings_ex/fingerprint/FingerprintSettings$9;->$SwitchMap$com$android$settings$fingerprint$FingerprintSettings$Survey:[I

    invoke-virtual {p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$Survey;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1718
    :goto_0
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1719
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1720
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1722
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1723
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1726
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 1694
    .restart local v0    # "broadcastIntent":Landroid/content/Intent;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    :pswitch_0
    const-string v2, "app_id"

    const-string v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    const-string v2, "feature"

    const-string v3, "FPRN"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    const-string v2, "FpstFingerprintSettings"

    const-string v3, "renameFingerPrint sendSurveyLog - appId : com.samsung.android.fingerprint.service, Feature : FPRN, extra : null, value : null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1702
    :pswitch_1
    const-string v2, "app_id"

    const-string v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    const-string v2, "feature"

    const-string v3, "FPLI"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    const-string v2, "FpstFingerprintSettings"

    const-string v3, "identifyFingerprint sendSurveyLog - appId : com.samsung.android.fingerprint.service, Feature : FPLI, extra : null, value : null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1707
    :pswitch_2
    const-string v2, "app_id"

    const-string v3, "com.android.settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    const-string v2, "feature"

    const-string v3, "LOSC"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    const-string v2, "extra"

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getLoggingExtraValue(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1712
    :pswitch_3
    const-string v2, "app_id"

    const-string v3, "com.android.settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    const-string v2, "feature"

    const-string v3, "LOSC"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    const-string v2, "extra"

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getLoggingExtraValue(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1692
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startDisclaimerFromSamsungAccount()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1822
    const-string v8, "FpstFingerprintSettings"

    const-string v9, "startDisclaimerFromSamsungAccount"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    iget v8, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v8, :cond_1

    .line 1826
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1827
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->showToastMsg()V

    .line 1885
    :goto_0
    return v6

    .line 1829
    :cond_0
    const-string v7, "support_samsung_account"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_0

    .line 1832
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1836
    iget-object v6, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 1837
    .local v2, "manager":Landroid/accounts/AccountManager;
    const-string v6, "com.osp.app.signin"

    invoke-virtual {v2, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    .line 1838
    .local v5, "samsungAccnts":[Landroid/accounts/Account;
    array-length v4, v5

    .line 1839
    .local v4, "returnvalue_sa":I
    if-nez v4, :cond_2

    .line 1840
    iget-object v6, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1841
    .local v3, "packageName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1844
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v6, "mypackage"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1845
    const-string v6, "OSP_VER"

    const-string v8, "OSP_02"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1846
    const-string v6, "MODE"

    const-string v8, "ADD_ACCOUNT"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1847
    const/16 v6, 0x66

    invoke-direct {p0, v1, v6}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    .end local v1    # "mIntent":Landroid/content/Intent;
    .end local v2    # "manager":Landroid/accounts/AccountManager;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "returnvalue_sa":I
    .end local v5    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_2
    :goto_1
    move v6, v7

    .line 1885
    goto :goto_0

    .line 1851
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1853
    .restart local v1    # "mIntent":Landroid/content/Intent;
    const-string v6, "client_id"

    const-string v8, "s5d189ajvs"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1854
    const-string v6, "client_secret"

    const-string v8, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1862
    iget-boolean v6, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->samsungaccount_objvalue:Z

    if-ne v6, v7, :cond_4

    .line 1863
    const-string v6, "FpstFingerprintSettings"

    const-string v8, "SamsungAccount set_value is true."

    invoke-static {v6, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-direct {p0, v6, v8}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1883
    :goto_2
    const/16 v6, 0x65

    invoke-direct {p0, v1, v6}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1868
    :catch_0
    move-exception v0

    .line 1869
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1873
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v6, "FpstFingerprintSettings"

    const-string v8, "SamsungAccount set_value is false."

    invoke-static {v6, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :try_start_1
    iget-object v6, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mSamsungAccountContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {p0, v6, v8}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerPrintOnSAConfirmed(Landroid/content/Context;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1878
    :catch_1
    move-exception v0

    .line 1879
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public startDisclaimerFromWebSignin()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1906
    const-string v1, "FpstFingerprintSettings"

    const-string v2, "startDisclaimerFromWebSignin"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    iget v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->mEnrolledFingerCount:I

    if-nez v1, :cond_1

    .line 1910
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->checkMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1911
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->showToastMsg()V

    .line 1915
    :goto_0
    const/4 v0, 0x0

    .line 1920
    :goto_1
    return v0

    .line 1913
    :cond_0
    const-string v0, "support_web_signin"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_0

    .line 1917
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->setFingerprintVerification(Z)V

    goto :goto_1
.end method
