.class public Lcom/android/settings/fingerprint/RegisterFingerprint;
.super Landroid/app/Activity;
.source "RegisterFingerprint.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;
    }
.end annotation


# instance fields
.field private animID:Landroid/graphics/drawable/AnimationDrawable;

.field private conf:Landroid/content/res/Configuration;

.field private first_line_text:Landroid/widget/TextView;

.field private fromShowGuidewithTipDialog:Z

.field private isBackSecond:Z

.field private isEnrolling:Z

.field private isError:Z

.field private isFinish:Z

.field private isFirstGuideShow:Z

.field private isKeyboardMounted:Z

.field private isLiftMsgCalled:Z

.field private isPauseRegistration:Z

.field private isPreEnrolled:Z

.field private keyboardDialog:Landroid/app/AlertDialog;

.field private mBackEnabled:Z

.field private mBackHandler:Landroid/os/Handler;

.field private mChallenge:J

.field private mConfirmedDisclaimer:Z

.field private mDirectFingerprintLock:Z

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mEnrollmentCancel:Landroid/os/CancellationSignal;

.field mErrorMessage:Landroid/widget/RelativeLayout;

.field mErrorText:Landroid/widget/TextView;

.field private mEventProgressBarCount:I

.field mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFirstGuideScreen:Landroid/widget/RelativeLayout;

.field mGuideText:Landroid/widget/RelativeLayout;

.field private mHandler:Landroid/os/Handler;

.field private mIdentifyFingerprint:Z

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mIsFromKnoxKeyguardEnroll:Z

.field private mIsFromKnoxOtherCases:Z

.field private mIsFromKnoxSetupWizard:Z

.field private mIsFromKnoxTwoStep:Z

.field private mIsSharedDevice:Z

.field private mLiftMsgShow:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMsgHandler:Landroid/os/Handler;

.field private mMsgRunnable:Ljava/lang/Runnable;

.field private mPreviousStage:Ljava/lang/String;

.field mRegisterErrorHandler:Landroid/os/Handler;

.field mRegisterErrorRunnable:Ljava/lang/Runnable;

.field private mRegisterScreen:Landroid/widget/RelativeLayout;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTextureView:Landroid/view/TextureView;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private mToken:[B

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTxtVewProgress:Landroid/widget/TextView;

.field private mUserPassword:Ljava/lang/String;

.field private mWasSecureBefore:Z

.field private pRunnable:Ljava/lang/Runnable;

.field private second_line_text:Landroid/widget/TextView;

.field private selectedFingerIndex:I

.field tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    .line 94
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxKeyguardEnroll:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    .line 104
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    .line 106
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->fromShowGuidewithTipDialog:Z

    .line 107
    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    .line 108
    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 113
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    .line 128
    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    .line 130
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z

    .line 139
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z

    .line 140
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftMsgShow:Z

    .line 141
    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;

    .line 142
    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;

    .line 143
    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 146
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isKeyboardMounted:Z

    .line 147
    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->keyboardDialog:Landroid/app/AlertDialog;

    .line 149
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolling:Z

    .line 151
    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    .line 152
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mChallenge:J

    .line 153
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPreEnrolled:Z

    .line 154
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    .line 156
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIdentifyFingerprint:Z

    .line 157
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDirectFingerprintLock:Z

    .line 158
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mWasSecureBefore:Z

    .line 159
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isLiftMsgCalled:Z

    .line 160
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFinish:Z

    .line 162
    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$1;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 168
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    .line 169
    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$2;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackHandler:Landroid/os/Handler;

    .line 276
    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$3;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 283
    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$4;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 1481
    return-void
.end method

.method private DisableSystemKey()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1397
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    .line 1398
    const/16 v0, 0xbb

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    .line 1399
    return-void
.end method

.method private EnableSystemKey()V
    .locals 4

    .prologue
    const/16 v3, 0xbb

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 1402
    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    invoke-direct {p0, v2, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    .line 1406
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1407
    invoke-direct {p0, v3, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    .line 1409
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->cancelEnrollment()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxKeyguardEnroll:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolling:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showLDUDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startFingerprintLockSettings()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/fingerprint/RegisterFingerprint;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->eventProcess(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showErrorMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftMsgShow:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftMsgShow:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getFingerRegisterText()I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/view/ViewGroup;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setViewVisibility(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isLiftMsgCalled:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isLiftMsgCalled:Z

    return p1
.end method

.method static synthetic access$3602(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isKeyboardMounted:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->animID:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->fromShowGuidewithTipDialog:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->hideGuideScreen(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFinish:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFinish:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startCompleteEffect()V

    return-void
.end method

.method private cancelEnrollment()V
    .locals 2

    .prologue
    .line 270
    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "cancelEnrollment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    .line 272
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 274
    return-void
.end method

.method private eventProcess(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "msgString"    # Ljava/lang/CharSequence;

    .prologue
    .line 378
    move v0, p1

    .line 380
    .local v0, "evtId":I
    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$5;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$5;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 552
    return-void
.end method

.method private getFingerRegisterText()I
    .locals 2

    .prologue
    .line 1475
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    .line 1476
    const/16 v0, 0x190

    .line 1478
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x192

    goto :goto_0
.end method

.method private getSDAgentString()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 764
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 765
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 769
    .local v4, "s":Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 770
    const-string v5, "com.sec.enterprise.knox.shareddevice:string/fingerprint_accountpwd_as_confirmpwd"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 772
    .local v3, "resourceId":I
    if-eqz v3, :cond_0

    .line 773
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.enterprise.knox.shareddevice"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 774
    const-string v5, "FpstRegisterTouchFingerprint"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSDAgentString: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    .end local v3    # "resourceId":I
    :cond_0
    :goto_0
    return-object v4

    .line 776
    :catch_0
    move-exception v1

    .line 777
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private hideGuideScreen(I)V
    .locals 6
    .param p1, "guideNum"    # I

    .prologue
    .line 901
    packed-switch p1, :pswitch_data_0

    .line 921
    :goto_0
    return-void

    .line 903
    :pswitch_0
    const v1, 0x7f0d02c3

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 904
    .local v0, "guideText":Landroid/widget/TextView;
    const/16 v1, 0xd0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    .line 905
    const/16 v1, 0xc9

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    .line 906
    const/16 v1, 0xc8

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    .line 907
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z

    .line 909
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    .line 910
    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$8;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$8;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    .line 918
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 901
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
    .end packed-switch
.end method

.method private isFingerprintDisabled()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 785
    const/4 v3, 0x0

    .line 786
    .local v3, "isDisabledByEDM":Z
    const/4 v2, 0x0

    .line 787
    .local v2, "isDisabledByDPM":Z
    const-string v7, "device_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 790
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_1

    .line 791
    const-string v5, "FpstRegisterTouchFingerprint"

    const-string v7, "isFingerprintDisabled :  dpm is NULL"

    invoke-static {v5, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_0
    :goto_0
    return v6

    .line 795
    :cond_1
    invoke-virtual {v0, v10}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_4

    move v2, v5

    .line 799
    :goto_1
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 800
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v9, "isBiometricAuthenticationEnabled"

    invoke-static {v7, v8, v9, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 801
    .local v1, "isBiometricAuthenticationEnabled":I
    invoke-virtual {v0, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v7

    if-lez v7, :cond_2

    .line 802
    if-nez v1, :cond_2

    .line 803
    const-string v7, "FpstRegisterTouchFingerprint"

    const-string v8, "isBiometricAuthenticationEnabled == Utils.EDM_FALSE"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v3, 0x1

    .line 809
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

    .line 795
    goto :goto_1
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    .line 1423
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 1425
    .local v1, "windowmanager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1429
    :goto_0
    return v2

    .line 1426
    :catch_0
    move-exception v0

    .line 1427
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FpstRegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSystemKeyEventRequested - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private launchChooseLock()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 721
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "launchChooseLock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 723
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 725
    const-string v1, "hide_disabled_prefs"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 728
    const-string v1, "for_fingerprint"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 729
    const-string v1, "lock_screen_fingerprint"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIdentifyFingerprint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const v2, 0x61000

    if-ne v1, v2, :cond_1

    .line 734
    :cond_0
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 735
    const-string v1, "password"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxKeyguardEnroll:Z

    if-eqz v1, :cond_2

    .line 738
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 740
    :cond_2
    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startActivityForResult(Landroid/content/Intent;I)V

    .line 741
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    .line 742
    return-void
.end method

.method private launchConfirmLock()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 745
    const-string v2, "FpstRegisterTouchFingerprint"

    const-string v3, "launchConfirmLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mChallenge:J

    .line 749
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 751
    .local v1, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSDAgentString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 752
    .local v0, "s":Ljava/lang/CharSequence;
    :goto_0
    const/16 v2, 0x3ea

    const v3, 0x7f0e0206

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iget-wide v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mChallenge:J

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 755
    const-string v2, "FpstRegisterTouchFingerprint"

    const-string v3, "Fail launchConfirmationActivity!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    .line 759
    return-void

    .end local v0    # "s":Ljava/lang/CharSequence;
    :cond_1
    move-object v0, v4

    .line 751
    goto :goto_0

    .restart local v0    # "s":Ljava/lang/CharSequence;
    :cond_2
    move-object v5, v4

    .line 752
    goto :goto_1
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "request"    # Z

    .prologue
    .line 1412
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 1415
    .local v1, "windowmanager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1419
    :goto_0
    return v2

    .line 1416
    :catch_0
    move-exception v0

    .line 1417
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FpstRegisterTouchFingerprint"

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

    .line 1419
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setFingerGuideText(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    const v2, 0x7f0e14b9

    .line 1447
    packed-switch p1, :pswitch_data_0

    .line 1472
    :cond_0
    :goto_0
    return-void

    .line 1449
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->first_line_text:Landroid/widget/TextView;

    const v1, 0x7f0e14b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1450
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->second_line_text:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1454
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->first_line_text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1455
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->second_line_text:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1456
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    .line 1462
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->first_line_text:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1463
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->second_line_text:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1467
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->first_line_text:Landroid/widget/TextView;

    const v1, 0x7f0e14ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1468
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->second_line_text:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1447
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setGuideVideo(I)V
    .locals 3
    .param p1, "guideNum"    # I

    .prologue
    const/4 v2, 0x0

    .line 878
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->destroyDrawingCache()V

    .line 880
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 881
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    .line 884
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 893
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 895
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 896
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setFocusable(Z)V

    .line 898
    :cond_1
    return-void

    .line 886
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z

    .line 887
    const v0, 0x7f0d02c0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    .line 888
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 889
    const v0, 0x7f0d02c2

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    goto :goto_0

    .line 884
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
    .end packed-switch
.end method

.method private setViewVisibility(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "visible"    # Z

    .prologue
    .line 1434
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1435
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1436
    .local v0, "child":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 1437
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1438
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1434
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1440
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1441
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 1444
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private showErrorMessage(ILjava/lang/String;)V
    .locals 8
    .param p1, "imageQuality"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1234
    invoke-static {p1, p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityAnimation(ILandroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->animID:Landroid/graphics/drawable/AnimationDrawable;

    .line 1235
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->animID:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v3, :cond_0

    .line 1236
    const-string v3, "FpstRegisterTouchFingerprint"

    const-string v4, "showErrorMessage : animID == null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :goto_0
    return-void

    .line 1241
    :cond_0
    const v3, 0x7f0d02bd

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1242
    .local v1, "errorImg":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->animID:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1243
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->animID:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1245
    :try_start_0
    const-string v3, "FpstRegisterTouchFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imageQuality["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const/16 v3, 0xca

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    .line 1247
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z

    if-nez v3, :cond_2

    .line 1248
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1249
    const/16 v3, 0xcb

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    .line 1251
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z

    .line 1253
    :cond_2
    const-wide/16 v4, 0x82

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 1254
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    .line 1256
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p2, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1258
    :cond_3
    const/16 v3, 0xcc

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    .line 1259
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    .line 1260
    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$11;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$11;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    .line 1287
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 1288
    .local v2, "test":Z
    const-string v3, "FpstRegisterTouchFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Run_Runnable_ErrorMSG : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1289
    .end local v2    # "test":Z
    :catch_0
    move-exception v0

    .line 1290
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v3, "FpstRegisterTouchFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "undefined imageQuality: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1291
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuidewithTipDialog()V

    goto/16 :goto_0

    .line 1289
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private showFingerprintKeyboardDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 555
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e14c6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$7;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$7;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$6;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->keyboardDialog:Landroid/app/AlertDialog;

    .line 573
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->keyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 574
    return-void
.end method

.method private showGuidewithTipDialog()V
    .locals 4

    .prologue
    .line 1372
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "showGuidewithTipDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e11fe

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e11ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$15;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$15;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$14;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$14;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1393
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1394
    return-void
.end method

.method private showLDUDialog()V
    .locals 5

    .prologue
    .line 1212
    const v2, 0x7f0e120a

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1213
    .local v1, "popupmessage":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e14b6

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/fingerprint/RegisterFingerprint$10;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$10;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$9;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1230
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1231
    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 7
    .param p1, "eventStatus"    # I

    .prologue
    const/4 v6, 0x0

    .line 1321
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    if-eqz v2, :cond_0

    .line 1369
    :goto_0
    return-void

    .line 1325
    :cond_0
    const/4 v1, 0x0

    .line 1327
    .local v1, "errorMessage":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1335
    :pswitch_0
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1337
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e1200

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0e0c66

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1350
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e11fa

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/fingerprint/RegisterFingerprint$13;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$13;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$12;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$12;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1368
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1329
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e11fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1330
    goto :goto_1

    .line 1332
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e11ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1333
    goto :goto_1

    .line 1342
    :cond_1
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1343
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e11fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1345
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e11fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1327
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private startCompleteEffect()V
    .locals 4

    .prologue
    .line 1522
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1523
    .local v0, "mH":Landroid/os/Handler;
    const/4 v1, 0x0

    .line 1525
    .local v1, "mR":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setViewVisibility(Landroid/view/ViewGroup;Z)V

    .line 1527
    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$16;

    .end local v1    # "mR":Ljava/lang/Runnable;
    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$16;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    .line 1542
    .restart local v1    # "mR":Ljava/lang/Runnable;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1544
    return-void
.end method

.method private startEnrollment()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 241
    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "startEnrollment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->updateRegisterFingerprint()V

    .line 245
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_1

    .line 246
    :cond_0
    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "startEnrollment : mToken or mFingerprintManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    .line 267
    :goto_0
    return-void

    .line 251
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolling:Z

    .line 252
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->DisableSystemKey()V

    .line 253
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    .line 254
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 255
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    .line 265
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    goto :goto_0
.end method

.method private startFingerprintLockSettings()V
    .locals 5

    .prologue
    .line 813
    const-string v3, "FpstRegisterTouchFingerprint"

    const-string v4, "startFingerprintLockSettings()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFingerprintDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 816
    const-string v3, "FpstRegisterTouchFingerprint"

    const-string v4, "isFingerprintDisabled() = TRUE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :goto_0
    return-void

    .line 820
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v2

    .line 821
    .local v2, "passwordQuality":I
    const/16 v3, 0x1000

    if-ne v2, v3, :cond_1

    .line 822
    const-string v3, "FpstRegisterTouchFingerprint"

    const-string v4, "Directionlock Enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 826
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 827
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    const-string v3, "previousStage"

    const-string v4, "fingerprint_settings_add_fingerprint"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    const-string v3, "hw_auth_token"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 830
    const-string v3, "fingerprintlockmain"

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDirectFingerprintLock:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 831
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mWasSecureBefore:Z

    if-nez v3, :cond_2

    .line 832
    const-string v3, "WasSecureBefore"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 836
    :cond_2
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "FpstRegisterTouchFingerprint"

    const-string v4, "Activity Not Found !"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startViewAnimation(ILandroid/view/View;)V
    .locals 20
    .param p1, "animationType"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1091
    if-eqz p2, :cond_0

    .line 1092
    packed-switch p1, :pswitch_data_0

    .line 1209
    :goto_0
    :pswitch_0
    return-void

    .line 1094
    :pswitch_1
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1096
    .local v14, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1097
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1098
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1101
    .end local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    :pswitch_2
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1102
    .restart local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1103
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1104
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1105
    const/4 v6, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1108
    .end local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    :pswitch_3
    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1109
    .local v19, "textEffectOut":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v10, 0x3cf5c28f    # 0.03f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1113
    .local v2, "translateDown":Landroid/view/animation/Animation;
    const-wide/16 v6, 0x104

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1114
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1115
    .restart local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x104

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1116
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1117
    new-instance v6, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v6}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1118
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1119
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1120
    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1121
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1122
    const/4 v6, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1125
    .end local v2    # "translateDown":Landroid/view/animation/Animation;
    .end local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v19    # "textEffectOut":Landroid/view/animation/AnimationSet;
    :pswitch_4
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    new-instance v18, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1127
    .local v18, "textEffectIn":Landroid/view/animation/AnimationSet;
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, 0x3cf5c28f    # 0.03f

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1131
    .local v3, "translateUp":Landroid/view/animation/Animation;
    const-wide/16 v6, 0x104

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1132
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1133
    .restart local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x104

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1134
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1135
    new-instance v6, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v6}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1136
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1137
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1138
    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1139
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1142
    .end local v3    # "translateUp":Landroid/view/animation/Animation;
    .end local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v18    # "textEffectIn":Landroid/view/animation/AnimationSet;
    :pswitch_5
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1143
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-direct {v15, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1144
    .local v15, "completeAnimation":Landroid/view/animation/AnimationSet;
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1145
    .restart local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1146
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1147
    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1148
    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1149
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1152
    .end local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v15    # "completeAnimation":Landroid/view/animation/AnimationSet;
    :pswitch_6
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1154
    .local v16, "textEffectGuideIn":Landroid/view/animation/AnimationSet;
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v10, 0x3dcccccd    # 0.1f

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1158
    .local v4, "translateGuideUp":Landroid/view/animation/Animation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1159
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1160
    .restart local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x14a

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1161
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1162
    new-instance v6, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v6}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1163
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1164
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1165
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1166
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1169
    .end local v4    # "translateGuideUp":Landroid/view/animation/Animation;
    .end local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v16    # "textEffectGuideIn":Landroid/view/animation/AnimationSet;
    :pswitch_7
    new-instance v17, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1170
    .local v17, "textEffectGuideOut":Landroid/view/animation/AnimationSet;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v13, 0x3dcccccd    # 0.1f

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1174
    .local v5, "translateGuideDown":Landroid/view/animation/Animation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1175
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1176
    .restart local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x14a

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1177
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1178
    new-instance v6, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v6}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1179
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1180
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1181
    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1182
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1183
    const/4 v6, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1190
    .end local v5    # "translateGuideDown":Landroid/view/animation/Animation;
    .end local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v17    # "textEffectGuideOut":Landroid/view/animation/AnimationSet;
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1192
    :sswitch_0
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3d4ccccd    # 0.05f

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1193
    .restart local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x190

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1194
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v6}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->showErrorEffect()V

    goto/16 :goto_0

    .line 1199
    .end local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    :sswitch_1
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const v6, 0x3d4ccccd    # 0.05f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1200
    .restart local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x190

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1201
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v6}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->removeFingerMark()V

    goto/16 :goto_0

    .line 1092
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1190
    :sswitch_data_0
    .sparse-switch
        0xca -> :sswitch_0
        0xce -> :sswitch_1
    .end sparse-switch
.end method

.method private updateRegisterFingerprint()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 924
    const-string v3, "FpstRegisterTouchFingerprint"

    const-string v4, "updateRegisterFingerprint()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 928
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_5

    .line 929
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 931
    .local v2, "wmLp":Landroid/view/WindowManager$LayoutParams;
    const-string v3, "fingerprint_setup_wizard"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 932
    const-string v3, "#00b081"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 934
    const v3, 0x7f0400e5

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setContentView(I)V

    .line 936
    if-eqz v2, :cond_0

    .line 937
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 947
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 948
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 954
    .end local v2    # "wmLp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_1
    const v3, 0x7f0d02b6

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    .line 956
    const v3, 0x7f0d02b7

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    .line 958
    const v3, 0x7f0d02b9

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    .line 959
    const v3, 0x7f0d02ba

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->first_line_text:Landroid/widget/TextView;

    .line 960
    const v3, 0x7f0d02bb

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->second_line_text:Landroid/widget/TextView;

    .line 961
    const v3, 0x7f0d02b8

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    .line 962
    const/16 v3, 0x190

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V

    .line 963
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    const v4, 0x7f0e1221

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    const v3, 0x7f0d02bc

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/widget/RelativeLayout;

    .line 965
    const v3, 0x7f0d02ad

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorText:Landroid/widget/TextView;

    .line 967
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 968
    const v3, 0x7f0d02c3

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 969
    .local v0, "guideTextVzw":Landroid/widget/TextView;
    const v3, 0x7f0e14cb

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 972
    .end local v0    # "guideTextVzw":Landroid/widget/TextView;
    :cond_2
    invoke-static {p0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 973
    new-instance v3, Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v3, p0, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 976
    :cond_3
    const/16 v3, 0x12c

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setGuideVideo(I)V

    .line 977
    return-void

    .line 940
    .restart local v2    # "wmLp":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const v3, 0x7f0400e4

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setContentView(I)V

    .line 942
    if-eqz v2, :cond_0

    .line 943
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_0

    .line 951
    .end local v2    # "wmLp":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto/16 :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 181
    const-string v0, "FpstRegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    .line 184
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 186
    packed-switch p1, :pswitch_data_0

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 188
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 189
    if-eqz p3, :cond_1

    .line 190
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    .line 192
    :cond_1
    const-string v1, "FpstRegisterTouchFingerprint"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolling:Z

    if-nez v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startEnrollment()V

    goto :goto_0

    .line 192
    :cond_2
    const-string v0, "NULL"

    goto :goto_1

    .line 199
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_0

    .line 203
    :pswitch_1
    if-ne p2, v4, :cond_b

    .line 204
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mWasSecureBefore:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 205
    const v0, 0x7f0e125e

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 212
    :cond_4
    :goto_2
    if-eqz p3, :cond_5

    .line 213
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    .line 215
    :cond_5
    const-string v1, "FpstRegisterTouchFingerprint"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDirectFingerprintLock:Z

    .line 220
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    if-eqz v0, :cond_a

    .line 221
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolling:Z

    if-nez v0, :cond_0

    .line 222
    const-string v1, "FpstRegisterTouchFingerprint"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KNOX FINGERPRINT] : startEnroll, token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startEnrollment()V

    goto/16 :goto_0

    .line 207
    :cond_7
    const-string v0, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 208
    const v0, 0x7f0e125d

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 215
    :cond_8
    const-string v0, "NULL"

    goto :goto_3

    .line 222
    :cond_9
    const-string v0, "NULL"

    goto :goto_4

    .line 227
    :cond_a
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolling:Z

    if-nez v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startEnrollment()V

    goto/16 :goto_0

    .line 233
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto/16 :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCanceDisclaimerDialog()V
    .locals 2

    .prologue
    .line 1315
    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "onCanceDisclaimerDialog: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    .line 1317
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v6, 0x7f0e11f6

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 862
    const-string v1, "FpstRegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 864
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->conf:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v1, v4, :cond_1

    .line 865
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isKeyboardMounted:Z

    .line 866
    const v1, 0x7f0e14c5

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "msg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showFingerprintKeyboardDialog(Ljava/lang/String;)V

    .line 874
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isKeyboardMounted:Z

    if-eqz v1, :cond_0

    .line 870
    iput-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isKeyboardMounted:Z

    .line 871
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->keyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 618
    const-string v3, "FpstRegisterTouchFingerprint"

    const-string v6, "onCreate"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 622
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 623
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->conf:Landroid/content/res/Configuration;

    .line 624
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "fingerprint_disclaimer_noti"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 625
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    .line 637
    :goto_0
    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 639
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v3, :cond_4

    .line 640
    const-string v3, "FpstRegisterTouchFingerprint"

    const-string v4, "[onCreate] mFingerprintManager == null"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    .line 718
    :cond_0
    :goto_1
    return-void

    .line 627
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 628
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "fingerprint_disclaimer_noti"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 629
    iput-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    .line 630
    const-string v3, "FpstRegisterTouchFingerprint"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ConfirmedDisclaimer : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "fingerprint_disclaimer_noti"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_3
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 632
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    goto :goto_2

    :cond_3
    move v3, v5

    .line 634
    goto :goto_3

    .line 644
    :cond_4
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    .line 645
    .local v1, "isHWdetected":Z
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v2

    .line 647
    .local v2, "status":I
    if-eqz v1, :cond_5

    const v3, 0x186c8

    if-eq v2, v3, :cond_6

    const v3, 0x186c9

    if-eq v2, v3, :cond_6

    .line 648
    :cond_5
    const-string v3, "FpstRegisterTouchFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onCreate] isHardwareDetected = false, requestGetSensorStatus = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    goto :goto_1

    .line 654
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 656
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "hw_auth_token"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    .line 657
    const-string v6, "FpstRegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate: token="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v3, "fingerIndex"

    const/4 v6, -0x1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    .line 661
    const-string v3, "isSharedDevice"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    .line 663
    const-string v3, "FpstRegisterTouchFingerprint"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[selectedFingerIndex] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string v3, "previousStage"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    .line 665
    const-string v3, "FpstRegisterTouchFingerprint"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[previousStage] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const-string v3, "lock_screen_fingerprint"

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 667
    const-string v3, "password"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserPassword:Ljava/lang/String;

    .line 669
    :cond_7
    const-string v3, "identifyFingerprint"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIdentifyFingerprint:Z

    .line 671
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    .line 672
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 673
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mWasSecureBefore:Z

    .line 676
    const-string v3, "isFromKnoxSetupWizard"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    .line 677
    const-string v3, "is_knox"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    .line 678
    const-string v3, "is_reset_pwd"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxKeyguardEnroll:Z

    .line 679
    const-string v3, "is_knox_two_step"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    .line 680
    const-string v3, "FpstRegisterTouchFingerprint"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[KNOX FINGERPRINT] : init, mIsFromKnoxSetupWizard:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mIsFromKnoxOtherCases:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mIsFromKnoxTwoStep"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v3, :cond_a

    .line 685
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startEnrollment()V

    .line 714
    :cond_8
    :goto_5
    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    if-nez v3, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto/16 :goto_1

    .line 657
    :cond_9
    const-string v3, "NULL"

    goto/16 :goto_4

    .line 687
    :cond_a
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPreEnrolled:Z

    .line 690
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    if-eqz v3, :cond_d

    .line 691
    :cond_b
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_8

    .line 692
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v3

    if-nez v3, :cond_8

    .line 693
    const-string v3, "FpstRegisterTouchFingerprint"

    const-string v6, "[KNOX FINGERPRPINT] : nonFinger chooseLock CASE"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 695
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "isFromKnoxSetDigitalLock"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 696
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->launchConfirmLock()V

    goto :goto_5

    .line 698
    :cond_c
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->launchChooseLock()V

    goto :goto_5

    .line 703
    :cond_d
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "lock_screen_fingerprint"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    const v4, 0x61000

    if-eq v3, v4, :cond_f

    .line 708
    :cond_e
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->launchConfirmLock()V

    goto :goto_5

    .line 710
    :cond_f
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->launchChooseLock()V

    goto :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1054
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 1025
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1028
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-eqz v1, :cond_0

    .line 1029
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1032
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1

    .line 1034
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 1035
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPreEnrolled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "lock_screen_pin_pattern_password"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "lock_screen_fingerprint"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "google_setupwizard_fingerprint"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "personal_page"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "app_lock"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1047
    :cond_3
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "postEnroll()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    .line 1050
    :cond_4
    return-void

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FpstRegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 586
    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    .line 587
    const v3, 0x7f0e14bd

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 589
    .local v0, "exitToast":Landroid/widget/Toast;
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-eqz v3, :cond_1

    .line 590
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 591
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 592
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "enrollResult"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 594
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 595
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    .line 613
    .end local v0    # "exitToast":Landroid/widget/Toast;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 596
    .restart local v0    # "exitToast":Landroid/widget/Toast;
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    if-nez v3, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 597
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    if-nez v3, :cond_2

    .line 598
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    .line 599
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 600
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 603
    :cond_2
    iput-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    .line 604
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 605
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "enrollResult"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 606
    const-string v2, "hw_auth_token"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 607
    invoke-virtual {p0, v6, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 608
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 609
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 578
    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 581
    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setIntent(Landroid/content/Intent;)V

    .line 582
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1059
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 1069
    :goto_0
    return v1

    .line 1061
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1062
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "enrollResult"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1063
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 1064
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_0

    .line 1059
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 993
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 997
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setRequestedOrientation(I)V

    .line 999
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->EnableSystemKey()V

    .line 1001
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    .line 1003
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 1007
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 1008
    const-string v1, "FpstRegisterTouchFingerprint"

    const-string v2, "mMediaPlayer.release()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 1010
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 1011
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1014
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolling:Z

    if-eqz v1, :cond_2

    .line 1015
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->cancelEnrollment()V

    .line 1016
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1017
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "enrollResult"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1018
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 1019
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    .line 1021
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 981
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 982
    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    if-nez v0, :cond_0

    .line 985
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setRequestedOrientation(I)V

    .line 988
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    .line 989
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 845
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 846
    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "OnStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 856
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 857
    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1548
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 1551
    .local v1, "surface":Landroid/view/Surface;
    const/4 v2, 0x0

    .line 1553
    .local v2, "videoUri":Landroid/net/Uri;
    :try_start_0
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z

    if-eqz v3, :cond_0

    .line 1554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/raw/fingerprint_center"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1557
    :cond_0
    if-eqz v2, :cond_2

    .line 1559
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    .line 1560
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 1561
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 1562
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1565
    :cond_1
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1566
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1567
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v4, 0x9c4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setParameter(II)Z

    .line 1568
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 1569
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1570
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 1573
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/android/settings/fingerprint/RegisterFingerprint$17;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$17;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1599
    :cond_2
    :goto_0
    return-void

    .line 1590
    :catch_0
    move-exception v0

    .line 1591
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "FpstRegisterTouchFingerprint"

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1592
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1593
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "FpstRegisterTouchFingerprint"

    const-string v4, "SecurityException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1594
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 1595
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "FpstRegisterTouchFingerprint"

    const-string v4, "IllegalStateException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1596
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 1597
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "FpstRegisterTouchFingerprint"

    const-string v4, "IOException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1604
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "arg0"    # Landroid/graphics/SurfaceTexture;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 1611
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "arg0"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1617
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1074
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1086
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1077
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1078
    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "Remove_Error_Runnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1074
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startDisclaimerFromRegister()V
    .locals 2

    .prologue
    .line 1305
    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "startDisclaimerFromRegister: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolling:Z

    if-nez v0, :cond_0

    .line 1308
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startEnrollment()V

    .line 1311
    :cond_0
    return-void
.end method
